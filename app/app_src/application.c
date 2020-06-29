#include "mcc.h"
#include "application.h"
#include "Timers.h"
#include "crc.h"
#include "EEPROM.h"
#include <stdlib.h>
#include "sys.h"
#include <stdbool.h>

#define swap_16(x) ((x << 8) | (x >> 8))
extern void queue_serial_led_event(void);
extern uint16_t crc16_app(void* dptr, uint16_t len, uint16_t seed);
static void free_tx_buffer(NWK_DataReq_t *req);
static bool get_free_rx_buffer(uint8_t *buf_id);
static void exract_sink_addr(uint8_t* dataptr);

#ifdef MBRTU
#include "mb.h"
extern void prvvTIMERExpiredISR( void );
extern void prvvUARTTxReadyISR( void );
extern void prvvUARTRxISR( void );

//MODBUS register map
static uint16_t read_only_mb_regs[READ_ONLY_REG_NUM + 1] = {};
static uint16_t write_only_mb_regs[WRITE_ONLY_REG_NUM + 1] = {};
static uint16_t read_write_mb_regs[RW_REG_NUM + 1] = {};
static uint16_t tx_ctl_mb_regs[TX_REG_NUM + 1] = {};
static uint16_t rx_ctl_mb_regs[RX_REG_NUM + 1] = {};
static uint8_t write_only_mb_regs_update = 0;
static uint8_t read_write_mb_regs_update = 0;
static uint8_t tx_ctl_mb_regs_upadte     = 0;
static uint8_t rx_ctl_mb_regs_upadte     = 0;
#endif

void appDataConf(NWK_DataReq_t *req)
{
 if (NWK_SUCCESS_STATUS == req->status){
    // frame was sent successfully  
#ifdef ATCOMM
     printf("ACK:%04X\r\n", req->dstAddr);
#endif
 } 
 else{
#ifdef ATCOMM
     printf("NACK:%04X\r\n", req->dstAddr);
#endif
 }
 //Free the app tx buffer any way
 free_tx_buffer(req);
}

static bool appDataInd(NWK_DataInd_t *ind)
{
    // process the frame
    uint8_t buf_id;
    if(get_free_rx_buffer(&buf_id)){
       uint8_t* dataptr = ind->data;
       memset(rx_buffer[buf_id].payload, 0 , sizeof(NWK_MAX_PAYLOAD_SIZE)); 
       rx_buffer[buf_id].rx_ind = *ind;
       memcpy(rx_buffer[buf_id].payload,dataptr, ind->size);
       CircularBufferPushBack(&rx_buffer_queue_context, &buf_id);
    }
    return true;
}

static bool appManagementEp(NWK_DataInd_t *ind){
    //Check if there is Sink node command
    uint8_t* dataptr = ind->data;
    uint8_t *ptr = (uint8_t*)strstr(dataptr,"SINK");
    if(ptr){
        exract_sink_addr(dataptr);
    }
    return true;
}

static bool get_free_tx_buffer(uint8_t *buf_id){
    *buf_id = 0;
    while(*buf_id < APP_TX_BUFFER_DEPTH){
        if(tx_buffer[*buf_id].free){
            tx_buffer[*buf_id].free = 0;
            return true;
        }
        (*buf_id)++;
    }
    return false;
}

static void free_tx_buffer(NWK_DataReq_t *req){
    uint8_t buf_id = 0;
    //Find which NWK_DataReq_t matches with the one passed as argument
    while(buf_id < APP_TX_BUFFER_DEPTH){
        if(req == &tx_buffer[buf_id].nwkDataReq){
            //Found the tx buffer we need to free
            tx_buffer[buf_id].free = 1;
            return;
        }
        buf_id++;
    }    
}

static bool get_free_rx_buffer(uint8_t *buf_id){
    *buf_id = 0;
    while(*buf_id < APP_RX_BUFFER_DEPTH){
        if(rx_buffer[*buf_id].free){
            rx_buffer[*buf_id].free = 0;
            return true;
        }
        (*buf_id)++;
    }
    return false;
}

/*!
 * \brief UART error handle
 *
 * \param [OUT] None.
 * \param [IN] Parity mode.
 */
static void UART_error_handler(){
    volatile temp = U1RXB;
    //Clear the RX buffer
    while(UART1_is_rx_ready()){
        UART1_Read();
    }
    
}

/*!
 * \brief Set the parity on the serial UART
 *
 * \param [OUT] None.
 * \param [IN] Parity mode.
 */
static uint8_t set_parity(uint8_t parity)
{
    if((parity >= UART_PARITY_SENTINAL) || (UART_7BIT_MODE == parity)){
        return ILLEGALPARAMETER; //illegal value
    }
    U1CON1 &= 0b01111111; //Disable the UART
    U1CON0 &= 0b11110000; //Clear old mode
    U1CON0 |= (parity & 0b00001111); //Reprogram new mode
    U1CON2 &=~ (0b00110000); //Set one stop bit
    U1CON1 |= 0b10000000; //Reenable the UART
    switch(parity){
        case UART_8BIT_NO_PARITY:
            uart_parity = UART_8BIT_NO_PARITY;
#ifdef MBRTU                    
            curent_parity = MB_PAR_NONE;
#endif
            break;
        case UART_9BIT_ODD_PARITY:
            uart_parity = UART_9BIT_ODD_PARITY;
#ifdef MBRTU
            curent_parity = MB_PAR_ODD;
#endif
            break;
        case UART_9BIT_EVEN_PARITY:
            uart_parity = UART_9BIT_EVEN_PARITY;
#ifdef MBRTU
            curent_parity = MB_PAR_EVEN;
#endif
            break;
        default:
            uart_parity = UART_8BIT_NO_PARITY;
#ifdef MBRTU
            curent_parity = MB_PAR_NONE;
#endif
    }
    return E_OK;
}

/*!
 * \brief Set the baud rate on the serial UART
 *
 * \param [OUT] None.
 * \param [IN] Baud rate.
 */
static uint8_t set_uart_baud(uint8_t i)
{
    U1CON1 &= ~(1<<7); //Disable the UART    
    switch(i)
    {
        case UART_BAUD_9600:
            //Set normal speed
            U1CON0 &=~ (1<<7);
            U1BRGL = 0xA0;
            U1BRGH = 0x01;
            current_baud_rate = 9600;
            uart_baud_rate = UART_BAUD_9600;
            break;
        case UART_BAUD_19200:
            //Set normal speed
            U1CON0 &=~ (1<<7);
            U1BRGL = 0xCF;
            U1BRGH = 0x00;
            current_baud_rate = 19200;
            uart_baud_rate = UART_BAUD_19200;
            break;
        case UART_BAUD_38400:
            //Set normal speed
            U1CON0 &=~ (1<<7);
            U1BRGL = 0x67;
            U1BRGH = 0x00;
            current_baud_rate = 38400;
            uart_baud_rate = UART_BAUD_38400;
            break;
        case UART_BAUD_57600:
            //Set  high speed
            U1CON0 |= (1<<7);
            U1BRGL = 0x14;
            U1BRGH = 0x01;
            current_baud_rate = 57600;
            uart_baud_rate = UART_BAUD_57600;
            break;
        case UART_BAUD_115200:
            //Set  high speed
            U1CON0 |= (1<<7);
            U1BRGL = 0x89;
            U1BRGH = 0x00;
            current_baud_rate = 115200;
            uart_baud_rate = UART_BAUD_115200;
            break;
        default:
            return ILLEGALPARAMETER;
    }
    U1CON1 |= (1<<7); //Reenable the UART
    return E_OK;
}

#ifdef ATCOMM
/*!
 * \brief execute AT commands
 *
 * \param [OUT] None.
 * \param [IN] None.
 */
static void cmdI()
{
    sendInfo(); //Display the information message
}

/*!
 * \brief Send a message to a node
 *
 * \param [OUT] None.
 * \param [IN] At command.
 */
static void cmdSend(char* cmd){
	uint16_t tempaddr;
	char *p1,*p2;
	char destaddr[5];
        destaddr[4] = 0;
	p1 = strstr(cmd,":") + 1;
	memcpy(destaddr,p1,4);
	//Now convert the string number to a int
	tempaddr = strtoul(destaddr,&p2,16);
	//Now find the message and queue it
	p1 = strstr(cmd,"=") + 1;
	if(strlen(p1) > NWK_MAX_PAYLOAD_SIZE){
		printf("NOT OK:%u\r\n", MESSAGE_TOO_LONG);
	}
	else{
        uint8_t buf_id;
        if(!get_free_tx_buffer(&buf_id)){
            printf("NOT OK:%u\r\n", NO_FREE_BUF);
            return;
        }
        memset(&tx_buffer[buf_id].payload, 0, NWK_MAX_PAYLOAD_SIZE);
		memcpy(&tx_buffer[buf_id].payload,p1,strlen(p1));
		tx_buffer[buf_id].nwkDataReq.dstAddr = tempaddr;
        tx_buffer[buf_id].nwkDataReq.dstEndpoint = DATA_EP;
        tx_buffer[buf_id].nwkDataReq.srcEndpoint = DATA_EP;
        tx_buffer[buf_id].nwkDataReq.options = NWK_OPT_ACK_REQUEST;
        tx_buffer[buf_id].nwkDataReq.data = &tx_buffer[buf_id].payload;
        tx_buffer[buf_id].nwkDataReq.size = strlen(p1);
        tx_buffer[buf_id].nwkDataReq.confirm = appDataConf;
        tx_buffer[buf_id].msgid = msgIDCounter++;
        NWK_DataReq(&tx_buffer[buf_id].nwkDataReq); 
		printf("OK:%u\r\n", tx_buffer[buf_id].msgid);
	}
	return;
}

/*!
 * \brief Send a broad cast message
 *
 * \param [OUT] None.
 * \param [IN] At command.
 */
static void cmdBcast(char* cmd){
	char *p1,*p2;
	//Now find the message and queue it
	p1 = strstr(cmd,"=") + 1;
	//Report error and reset state machine if length if bigger than payload max
	if((!p1) || (strlen(p1) > NWK_MAX_PAYLOAD_SIZE)){
		printf("NOT OK:%u\r\n", MESSAGE_TOO_LONG);
	}
	else{
		uint8_t buf_id;
        if(!get_free_tx_buffer(&buf_id)){           
            printf("NOT OK:%u\r\n", NO_FREE_BUF);
            return;
        }
        memset(&tx_buffer[buf_id].payload, 0, NWK_MAX_PAYLOAD_SIZE);
		memcpy(&tx_buffer[buf_id].payload,p1,strlen(p1));
		tx_buffer[buf_id].nwkDataReq.dstAddr = NWK_BROADCAST_ADDR;
        tx_buffer[buf_id].nwkDataReq.dstEndpoint = DATA_EP;
        tx_buffer[buf_id].nwkDataReq.srcEndpoint = DATA_EP;
        tx_buffer[buf_id].nwkDataReq.options = 0;
        tx_buffer[buf_id].nwkDataReq.data = &tx_buffer[buf_id].payload;
        tx_buffer[buf_id].nwkDataReq.size = strlen(p1);
        tx_buffer[buf_id].nwkDataReq.confirm = (void*)&appDataConf;
        tx_buffer[buf_id].msgid = msgIDCounter++;
        NWK_DataReq(&tx_buffer[buf_id].nwkDataReq); 
		printf("OK:%u\r\n", tx_buffer[buf_id].msgid);
	}
	return;
}

/*!
 * \brief Get node address
 *
 * \param [OUT] None.
 * \param [IN] At command.
 */
static void cmdAddr(){
	printf("ADDR=%02X%02X\r\n",currentAddr0,currentAddr1);
	return;
}

/*!
 * \brief Set node address
 *
 * \param [OUT] None.
 * \param [IN] At command.
 */
static void cmdSetAddr(char* cmd){
	uint16_t tempaddr;
	char *p1,*p2;
	p1 = strstr(atCommand,"=") + 1;
	//Now convert the string number to a int
	tempaddr = strtoul(p1,p2,16);
	//Check if the address is a valid address
	if((tempaddr != 0x0000) && (tempaddr != 0xFFFF)){
		currentAddr0 = (uint8_t)(tempaddr >> 8);
		currentAddr1 = (uint8_t)(tempaddr & 0xFF);
        NWK_SetAddr((currentAddr0 << 8) | currentAddr1);
		printf("OK\r\n");
	}
	else{
		printf("NOT OK:%u\r\n", NOT_VADLID_ADDR);
	}
	return;
}

/*!
 * \brief Get node address
 *
 * \param [OUT] None.
 * \param [IN] At command.
 */
static void cmdNaddr(){
	printf("NADDR=%04X\r\n",pan_id);
	return;
}

/*!
 * \brief Set node address
 *
 * \param [OUT] None.
 * \param [IN] At command.
 */
static void cmdSetNaddr(char* cmd){
	uint16_t tempaddr;
	char *p1,*p2;
	p1 = strstr(atCommand,"=") + 1;
	//Now convert the string number to an int
	tempaddr = strtoul(p1,p2,16);
	pan_id = tempaddr;
	//Now copy to memory location in EEPROM
	DATAEE_WriteByte_Platform(networkID,(pan_id >> 8) & 0xFF);
    DATAEE_WriteByte_Platform(networkID_LSB,pan_id & 0xFF);
    initRadio();
	printf("OK\r\n");
	return;
}

/*!
 * \brief Send the last message for this node to serial
 *
 * \param [OUT] None.
 * \param [IN] None.
 */
static void cmdRecv(){
    //Find if there is a message to be returned
    if(!CircularBufferEmpty(&rx_buffer_queue_context)){
        uint8_t buf_id;
        CircularBufferPopFront(&rx_buffer_queue_context, &buf_id);
        if(!rx_buffer[buf_id].free){
            uint8_t i = 0;
            //Found first RX message to be sent to the user
            printf("%04X:", rx_buffer[buf_id].rx_ind.srcAddr);
            while(rx_buffer[buf_id].rx_ind.size--){
                putch(rx_buffer[buf_id].payload[i++]);
            }
            rx_buffer[buf_id].free = 1;
            printf("\r\n");
        }
        else{
            printf("NOT OK:%u\r\n", (uint16_t)NO_RX_MESSAGES);
        }
    }
    else{
        printf("NOT OK:%u\r\n", (uint16_t)NO_RX_MESSAGES);
    }
	return;
}

/*!
 * \brief Send the MAC address of this node
 *
 * \param [OUT] None.
 * \param [IN] None.
 */
static void cmdMac(){
	printf("MAC=");
	for(uint8_t i = 0; i < sizeof(EUIDbyte); i++){
		printf("%02X", EUIDbyte[i]);
	}
	printf("\r\n");
	return;
}
#endif

/*!
 * \brief Set this node as sink adress
 *
 * \param [OUT] None.
 * \param [IN] None.
 */
static void cmdSetSink(*cmd){
	char msgstr[16];
	uint8_t buf_id;    
    memset(msgstr, 0, sizeof(msgstr));
	//Set this node as sink
	sinkAddr0 = currentAddr0;
	sinkAddr1 = currentAddr1;
	//Set the internal EEPROM address to self ID
	DATAEE_WriteByte(sinkAddrEE0,currentAddr0);
	DATAEE_WriteByte(sinkAddrEE1,currentAddr1);
	//Send a message on network end point to all the node as BCAST
	sprintf(msgstr,"SINK=%02X%02X",currentAddr0,currentAddr1);
    if(!get_free_tx_buffer(&buf_id)){
#ifdef ATCOMM
        printf("NOT OK:%u\r\n", NO_FREE_BUF);
#endif
        return;
    }
    memset(&tx_buffer[buf_id].payload, 0, NWK_MAX_PAYLOAD_SIZE);
    memcpy(&tx_buffer[buf_id].payload,msgstr,strlen(msgstr));
    tx_buffer[buf_id].nwkDataReq.dstAddr = NWK_BROADCAST_ADDR;
    tx_buffer[buf_id].nwkDataReq.dstEndpoint = MANAGEMENT_EP;
    tx_buffer[buf_id].nwkDataReq.srcEndpoint = MANAGEMENT_EP;
    tx_buffer[buf_id].nwkDataReq.options = 0;
    tx_buffer[buf_id].nwkDataReq.data = &tx_buffer[buf_id].payload;
    tx_buffer[buf_id].nwkDataReq.size = strlen(msgstr);
    tx_buffer[buf_id].nwkDataReq.confirm = (void*)&appDataConf;
    tx_buffer[buf_id].msgid = msgIDCounter++;
    NWK_DataReq(&tx_buffer[buf_id].nwkDataReq); 
#ifdef ATCOMM
    printf("OK:%u\r\n", tx_buffer[buf_id].msgid);
#endif
}

#ifdef ATCOMM
/*!
 * \brief Send a message to sink
 *
 * \param [OUT] None.
 * \param [IN] AT cmmand.
 */
static void cmdSendSink(char* cmd){
	char *p1;
    uint8_t buf_id;
	p1 = strstr(atCommand,"=") + 1;
	if(strlen(p1) > NWK_MAX_PAYLOAD_SIZE){
		printf("NOT OK:%u\r\n",MESSAGE_TOO_LONG);
	}
	else{
        uint8_t buf_id;
        if(!get_free_tx_buffer(&buf_id)){
            printf("NOT OK:%u\r\n", NO_FREE_BUF);
            return;
        }
        memset(&tx_buffer[buf_id].payload, 0, NWK_MAX_PAYLOAD_SIZE);
		memcpy(&tx_buffer[buf_id].payload,p1,strlen(p1));
		tx_buffer[buf_id].nwkDataReq.dstAddr = (sinkAddr0 << 8) | sinkAddr1;
        tx_buffer[buf_id].nwkDataReq.dstEndpoint = DATA_EP;
        tx_buffer[buf_id].nwkDataReq.srcEndpoint = DATA_EP;
        tx_buffer[buf_id].nwkDataReq.options = NWK_OPT_ACK_REQUEST;
        tx_buffer[buf_id].nwkDataReq.data = &tx_buffer[buf_id].payload;
        tx_buffer[buf_id].nwkDataReq.size = strlen(p1);
        tx_buffer[buf_id].nwkDataReq.confirm = appDataConf;
        tx_buffer[buf_id].msgid = msgIDCounter++;
        NWK_DataReq(&tx_buffer[buf_id].nwkDataReq); 
		printf("OK:%u\r\n", tx_buffer[buf_id].msgid); 
	}
}

/*!
 * \brief Set AES key
 *
 * \param [OUT] None.
 * \param [IN] AT cmmand.
 */
static void cmdSetAES(char* cmd){
	char *p1;
	char AESstr[32];
    uint8_t key_type = 0; // 0 is network 1 is app
	p1 = strstr(atCommand,":") + 1;
    if(!p1){
        printf("NOT OK:%u\r\n", UNDEFCMD);
        return;
    }
    switch(*p1){
        case 'N': key_type = 'N'; break;
        case 'A': key_type = 'A'; break;
        default:
            printf("NOT OK:%u\r\n", ILLEGALPARAMETER);
            return;
    }
    p1 = strstr(atCommand,"=") + 1;
    if(!p1){
        printf("NOT OK:%u\r\n", UNDEFCMD);
        return;
    }
	//Check if 32 characters are present. 16 byte key
	if(strlen(p1) != AESKEYLEN){
		printf("NOT OK:%u\r\n",KEYLENERROR);
		return;
	}
	memcpy(AESstr,p1,AESKEYLEN);

	for(uint8_t i = 0; i < 16; i++){
		char temp[3];
		char *p2;
		uint8_t byte;
		memcpy(temp,0,sizeof(temp));
		memcpy(temp,(AESstr + i*2),2);
		byte = (uint8_t)strtoul(temp,&p2,16);
        if('A' == key_type){
            aes_key[i] = byte;
            DATAEE_WriteByte_Platform((AESkey0 + i),byte);
        }
        else{
            net_key[i] = byte;
            DATAEE_WriteByte_Platform((NETkey0 + i),byte);
        }
	}
//    NWK_SetSecurityKey(net_key);
	printf("OK\r\n");
	return;
}

/*!
 * \brief Get the CAD counter
 *
 * \param [OUT] None.
 * \param [IN] None.
 */
static void cmdGetCAD(){
	printf("CAD COUNTER = %02X\r\n",cadCounter);
	return;
}

/*!
 * \brief Reset the CAD counter
 *
 * \param [OUT] None.
 * \param [IN] None.
 */
static void cmdRstCAD(){
	cadCounter = 0;
	printf("OK\r\n");
	return;
}

/*!
 * \brief Get radio mode
 *
 * \param [OUT] None.
 * \param [IN] None.
 */
static void cmdGetMode(){
	if(currentMode == ROUTER){
		printf("MODE = REPEATER\r\n");
	}
	else{
		printf("MODE = END NODE\r\n");
	}
	return;
}

/*!
 * \brief Get current RF channel
 *
 * \param [OUT] None.
 * \param [IN] None.
 */
static void cmdGetRFCH(){
	printf("CHANNEL=%u\r\n",(channel + 1));
	return;
}

/*!
 * \brief Set RF channel
 *
 * \param [OUT] None.
 * \param [IN] AT cmmand.
 */
static void cmdSetRFCH(char* cmd){
	char *p1,*p2;
	char CHstr[3];
	uint8_t temp;
	p1 = strstr(atCommand,"=") + 1;
	memcpy(CHstr,p1,2);
	temp = (uint8_t)strtoul(CHstr,&p2,16) - 1;
	if(temp > sizeof(fhssList)){
		printf("NOT OK:%u\r\n",CHOUTOFBOUNDS);
	}
	else{
		channel = temp;
		DATAEE_WriteByte_Platform(radioChannel,channel);
		initRadio();
        printf("OK\r\n");
	}
	return;
}

/*!
 * \brief Get current tx power level
 *
 * \param [OUT] None.
 * \param [IN] None.
 */
static void cmdGetTX(){
	printf("TX POWER=%u\r\n",(uint16_t)TXPower);
	return;
}

/*!
 * \brief Set current tx power level
 *
 * \param [OUT] None.
 * \param [IN] AT cmmand.
 */
static void cmdSetTX(char* cmd){
	char *p1,*p2;
	char CHstr[3];
	uint8_t temp;
	p1 = strstr(atCommand,"=") + 1;
    if(!p1){
        printf("NOT OK:%u\r\n",(uint16_t)TXOUTOFBOUNDS);
    }
    memset(CHstr, 0 , sizeof(CHstr));
	memcpy(CHstr,p1,2);
	temp = (uint8_t)strtoul(CHstr,&p2,10);
	if((temp > sx1276UpperPower) || (temp < sx1276LowerPower)){
		printf("NOT OK:%u\r\n",(uint16_t)TXOUTOFBOUNDS);
	}
	else{
		TXPower = temp;
		DATAEE_WriteByte_Platform(txPowerSetting,TXPower);
		initRadio();
		printf("OK\r\n");
	}
	return;
}

/*!
 * \brief Get current CAD RSSI level for channel clear
 *
 * \param [OUT] None.
 * \param [IN] None.
 */
static void cmdGetCADRSSI(){
	printf("CAD RSSI=%i\r\n",RSSITarget);
	return;
}

/*!
 * \brief et current CAD RSSI level for channel clear
 *
 * \param [OUT] None.
 * \param [IN] None.
 */
static void cmdSetCADRSSI(char* atCommand){
	char *p1,*p2;
	char CHstr[3];
	int8_t temp;
	p1 = strstr(atCommand,"=") + 1;
	memcpy(CHstr,p1,3);
	temp = (uint8_t)strtol(CHstr,&p2,10);
	if((temp > 0) || (temp < -120)){
		printf("NOT OK:%u\r\n",TXOUTOFBOUNDS);
	}
	else{
		RSSITarget = temp;
		DATAEE_WriteByte_Platform(RSSITargetSetting,RSSITarget);
		initRadio();
		printf("OK\r\n");
	}
	return;
}

/*!
 * \brief Reset the MCU and the module
 *
 * \param [OUT] None.
 * \param [IN] None.
 */
static void cmdReset(){
	RESET();
	while(1);
}

/*!
 * \brief Set uart baud parity
 *
 * \param [OUT] None.
 * \param [IN] AT command.
 */
static void cmdSetParity(char* atCommand){
    if(strstr(atCommand,"=ODD"))
    {
        set_parity(UART_9BIT_ODD_PARITY);
    }
    else if(strstr(atCommand,"=NONE"))
    {
        set_parity(UART_8BIT_NO_PARITY);
    }
    else if(strstr(atCommand,"=EVEN"))
    {
        set_parity(UART_9BIT_EVEN_PARITY);
    }
    else
    {
        printf("NOT OK:%u\r\n",ILLEGALPARAMETER);
    }
    return;
}

/*!
 * \brief Enter bootloader mode
 *
 * \param [OUT] None.
 * \param [IN] None.
 */
static void cmdBootLoad(){
    DATAEE_WriteByte_Platform(REQBootLoad,0x00);
    printf("OK\r\n");
    __delay_ms(1000);
    RESET();
}

/*!
 * \brief Set uart baud rate
 *
 * \param [OUT] None.
 * \param [IN] AT command.
 */
static void cmdSetBaud(char* atCommand)
{
    uint8_t tempbaud;
    char *ptr;
    ptr = strtok(atCommand,"=");
    ptr = strtok(NULL,"\r");
    tempbaud = (uint8_t)strtoul(ptr,NULL,10);
    tempbaud++;
}

/*!
 * \brief Prints the current spreading factor
 *
 * \param [OUT] None.
 * \param [IN] AT command.
 */
static void cmdGetSF(void){
    printf("SF=%u\r\n", current_sf);
}

/*!
 * \brief et current CAD RSSI level for channel clear
 *
 * \param [OUT] None.
 * \param [IN] None.
 */
static void cmdSetSF(char* atCommand){
	char *p1,*p2;
	char CHstr[3];
	int8_t temp;
	p1 = strstr(atCommand,"=") + 1;
	memcpy(CHstr,p1,2);
	temp = (uint8_t)strtol(CHstr,&p2,16);
	if((temp > sx1276SFMAX) || (temp < sx1276SFMIN)){
		printf("NOT OK:%u\r\n", ILLEGALPARAMETER);
	}
	else{
		current_sf = temp;
		DATAEE_WriteByte_Platform(SF,temp);
		initRadio();
		printf("OK\r\n");
	}
	return;
}

/*!
 * \brief Get the number of rx messages queued up
 *
 * \param [OUT] None.
 * \param [IN] None.
 */
static void cmdGetRxCnt(char* cmd){
    uint8_t count = 0, buf_id = 0;
    while(buf_id++ < APP_RX_BUFFER_DEPTH){
        if(!rx_buffer[buf_id].free){
            count++;
        }
    }
    printf("RXCNT=%u/%u\r\n", count, APP_RX_BUFFER_DEPTH);
}

/*!
 * \brief Get the number of rx messages queued up
 *
 * \param [OUT] None.
 * \param [IN] None.
 */
static void print_hop_table(char* cmd){
    NWK_RouteTableEntry_t *entry = NWK_RouteTable();
    printf("Routing Table\r\n");
    for(uint8_t i = 0; i < NWK_ROUTE_TABLE_SIZE; i++){
        if(NWK_ROUTE_UNKNOWN != (entry+i)->dstAddr){
            printf("DST:%04X NXT:%04X SCO:%u LQI:%u\r\n", (entry+i)->dstAddr, 
            (entry+i)->nextHopAddr, (entry+i)->score, (entry+i)->lqi);
        }        
    }
}

/*!
 * \brief Get the packet acceptance threshold
 *
 * \param [OUT] None.
 * \param [IN] AT command.
 */
static void cmdGetPacketRssi(char* cmd){
    printf("%d\r\n", PHY_Get_Packet_Rssi_Threshold());
}

/*!
 * \brief Get the packet acceptance threshold
 *
 * \param [OUT] None.
 * \param [IN] AT command.
 */
static void cmdSetPacketRssi(char* cmd){
    char *p1,*p2;
	char CHstr[4];
	int8_t temp, min, max;
	p1 = strstr(cmd,"=") + 1;
    memset(CHstr, 0, sizeof(CHstr));
	memcpy(CHstr,p1,3);
	temp = (uint8_t)strtol(CHstr,&p2,10);
    PHY_Get_Packet_Rssi_Threshold_Limits(&max, &min);
    if((temp < min) || (temp > max)){
        temp = min;
    }
    PHY_Set_Packet_Rssi_Threshold(temp);
    eeprom_write_flags.flag_good_rssi = 1;
    eeprom_write_flags.flag_master = 1;
    printf("OK\r\n");
}

/*!
 * \brief Set the hop table entry time to live
 *
 * \param [OUT] None.
 * \param [IN] AT command.
 */
static void set_hop_table_ttl(char* cmd){
    printf("OK\r\n");
}

/*!
 * \brief execute AT commands
 *
 * \param [OUT] None.
 * \param [IN] None.
 */
static uint8_t executeATCommand(char* cmd){
    uint8_t retcode = 0;
    //Find command start letter
    switch(*(cmd+1))
    {
        case 'S':
        	if(strstr(cmd,"+SEND:")){
        		cmdSend(cmd);
        	}
        	else if(strstr(cmd,"+SETSINK")){
        		cmdSetSink(cmd);
        	}
        	else if(strstr(cmd,"+SSINK")){
        		cmdSendSink(cmd);
        	}
            else if(strstr(cmd,"+SF?")){
        		cmdGetSF();
        	}
            else if(strstr(cmd,"+SF=")){
        		cmdSetSF(cmd);
        	}
            else if(strstr(cmd,"+SHOWHOPS?")){
                print_hop_table(cmd);
            }
            else{
                goto undefcmd;
            }
            break;
        case 'B':
        	if(strstr(cmd,"+BCAST=")){
				cmdBcast(cmd);
			}
            else if(strstr(cmd,"+BAUD=")){
                cmdSetBaud(cmd);
            }
            else if(strstr(cmd,"+BOOTLOAD")){
                cmdBootLoad();
            }
            else{
                goto undefcmd;
            }
            break;
        case 'A':
        	if(strstr(cmd,"+ADDR?")){
        		cmdAddr();
        	}
        	else if(strstr(cmd,"+ADDR=")){
				cmdSetAddr(cmd);
			}
        	else if(strstr(cmd,"+AESKEY:")){
        		cmdSetAES(cmd);
        	}
            else{
                goto undefcmd;
            }
            break;
        case 'C':
        	if(strstr(cmd,"+CADCOUNTER?")){
        		cmdGetCAD();
        	}
        	else if(strstr(cmd,"+CADCOUNTERRST")){
        		cmdRstCAD();
        	}
        	else if(strstr(cmd,"+CADRSSI?")){
        		cmdGetCADRSSI();
        	}
        	else if(strstr(cmd,"+CADRSSI=")){
        		cmdSetCADRSSI(cmd);
        	}
            else{
                goto undefcmd;
            }
            break;
        case 'H':
            if(strstr(cmd,"+HOPTTL=")){
                set_hop_table_ttl(cmd);
            }
            else{
                goto undefcmd;
            }
            break;
        case 'I':            
            if(strstr(cmd,"+I")){
                cmdI();
            }
            else{
                goto undefcmd;
            }
            break;
        case 'M':
        	if(strstr(cmd,"+MAC?")){
        		cmdMac();
        	}
        	else if(strstr(cmd,"+MODE?")){
        		cmdGetMode();
        	}
            else{
                goto undefcmd;
            }
            break;
        case 'N':
        	if(strstr(cmd,"+NADDR?")){
				cmdNaddr();
			}
			else if(strstr(cmd,"+NADDR=")){
				cmdSetNaddr(cmd);
			}
            else{
                goto undefcmd;
            }
            break;
        case 'P':
            if(strstr(cmd,"+PARITY=")){
                cmdSetParity(cmd);
            }
            else{
                goto undefcmd;
            }
        case 'R':
        	if(strstr(cmd,"+RECV")){
        		cmdRecv();
        	}
        	else if(strstr(cmd,"+RFCH?")){
        		cmdGetRFCH();
        	}
        	else if(strstr(cmd,"+RFCH=")){
        		cmdSetRFCH(cmd);
        	}
        	else if(strstr(cmd,"+RST")){
        		cmdReset();
        	}
            else if(strstr(cmd,"+RXCT?")){
        		cmdGetRxCnt(cmd);
        	}
            else{
                goto undefcmd;
            }
            break;
        case 'T':
        	if(strstr(cmd,"+TXPOWER?")){
        		cmdGetTX();
        	}
        	else if(strstr(cmd,"+TXPOWER=")){
        		cmdSetTX(cmd);
        	}
            else{
                goto undefcmd;
            }
            break;
        case 'G':
            if(strstr(cmd,"+GOODRSSI=")){
                cmdSetPacketRssi(cmd);
            }
            else if(strstr(cmd,"+GOODRSSI?")){
                cmdGetPacketRssi(cmd);
            }
            else{
                goto undefcmd;
            }
            break;
        default:
            //reached end of this case means command was not found.
            //Return Error UNDEFCMD 5
undefcmd:
            printf("NOT OK:%u\r\n", (uint16_t)UNDEFCMD);
            break;
    }
    return (retcode);
}

/*!
 * \brief Process a message command from UART
 *
 * \param [OUT] None.
 * \param [IN] None.
 */
void processATCommand(void)
{
    //Check if RS485 tx should be turned off
    if(tx_done && U1ERRIRbits.TXMTIF){
//       TXEN_SetLow();
       tx_done = 0;
    }
    //Check if there is a command halfway thru and it timed out   
    if(((atStateVar != lookingForA) || (atStateVar != processCommand)) && 
            (!get_timer0base(&ATTimeoutTimer)))        {
        atStateVar = resetATMachine;
    }
    switch(atStateVar){
        case initMessage:            
            atStateVar = resetATMachine;
            break;
        case lookingForA:
            //Read a byte if it is available
            if(UART1_is_rx_ready()){
                //There is a byte available
                if(UART1_Read() == 'A')
                {
                    //Found 'A'
                    atStateVar = lookingForT;
                    set_timer0base(&ATTimeoutTimer, atCommandMaxTimeout);
                }
            }                
            break;        
        case lookingForT:
            if(UART1_is_rx_ready()){
                //There is a byte available
                if(UART1_Read() == 'T')
                {
                    //Found 'T'
                    atStateVar = readingCommand;
                }
                else
                {
                    atStateVar = lookingForA;
                }
            }
            break;            
        case readingCommand:
            //Found a AT command start now read till it is /r
            if(UART1_is_rx_ready())
            {
                uint8_t data = UART1_Read();
                if(data == '\r')
                {
                    //End of the AT command
                    atStateVar = endingCommand;
                    //Tack an extra \r for command processing
                    atCommand[commandByteCounter++] = '\0';
                }
                else
                {
                    atCommand[commandByteCounter++] = data;
                    if(commandByteCounter >= atCommandLen)
                    {
                        //Error found. More than 64 bytes received
                        atStateVar = resetATMachine;
                    }
                }
            }
            break;         
        case endingCommand:
            //Found an end of AT command. Wait for /n
            if(UART1_is_rx_ready())
            {
                uint8_t data = UART1_Read();
                if(data == '\n')
                {
                    //Found new line character. Now process the command
                    atStateVar = processCommand;                    
                }
                else
                {
                    //Error found. More than 64 bytes recieved
                    atStateVar = resetATMachine;
                }
            }
            break;
            
        case processCommand:
            executeATCommand(atCommand);
            queue_serial_led_event();
            atStateVar = resetATMachine;
            break;
        case resetATMachine:
            atStateVar = lookingForA;
            commandByteCounter = 0;
            //clear the ATcommand buffer
            memset(atCommand,0,sizeof(atCommand));
            set_timer0base(&ATTimeoutTimer, atCommandMaxTimeout);
            break;
            
        default:
            atStateVar = resetATMachine;
    }
}

/*!
 * \brief Send OK message over UART
 *
 * \param [OUT] None.
 * \param [IN] None.
 */
void sendOKMessage(void)
{
    char databuf[] = "OK\r\n";
    for(uint8_t i = 0;i < (sizeof(databuf)-1); i++)
    {
        UART1_Write(databuf[i]);
    }
}

/*!
 * \brief Send message over UART
 *
 * \param [OUT] None.
 * \param [IN] String pointer.
 */
void sendUARTMessage(char* msg)
{
    uint8_t sizemsg = strlen(msg);
    for(uint8_t i = 0;i < sizemsg; i++)
    {
        UART1_Write(*msg);
        msg++;
    }
}

/*!
 * \brief Send information message
 *
 * \param [OUT] None.
 * \param [IN] None.
 */
void sendInfo(void)
{
    printf("LoRa Mesh\r\n");
    printf("AT Command Set %1u.%02u\r\n",ATVersionMajor,ATVersionMinor);
    printf("Firmware Version %1u.%02u\r\n",FirmwareVersionMajor,\
            FirmwareVersionMinor);
    printf("Region ");
#ifdef REGION_NA
    printf("NA\r\n");
#else
    printf("Error\r\n");
#endif   
}

#endif

/*!
 * \brief Load the MAC address from EEPROM to global EUID array
 *
 * \param [OUT] None.
 * \param [IN] None
 */
static void loadMACAddr(void)
{    
    //Load the UUT serial number from EEPROM   
    for(uint8_t i = 0; i < sizeof(EUIDbyte);i++){
        EUIDbyte[sizeof(EUIDbyte) - 1 - i] = (uint8_t)DIA_ReadByte(0x3F0000 + i);        
    }
#ifdef MBRTU
    for(uint8_t i = 0; i < 6;i++){
        read_only_mb_regs[i + 1] = (EUIDbyte[i*2] << 8) | EUIDbyte[(i*2) + 1];
    }
#endif
}

/*!
 * \brief Load necessary information from EEPROM and bootload app
 *
 * \param [OUT] None.
 * \param [IN] None.
 */
void bootLoadApplication(void)
{
    uint16_t temp;
    uint8_t i;
    int8_t rssimax,rssimin, temp1;
    //Initialize the message buffer
//    init_message_buffers();
    //Load the EUID of the node
    loadMACAddr();
    //Load the serial number and compute short id
    temp = crc16_app(&EUIDbyte[0], sizeof(EUIDbyte), 0);
    currentAddr0 = (temp >> 8) & 0xFF;
    currentAddr1 = (temp) & 0xFF;
    
    //Set the network address from EEPROM
    pan_id = (DATAEE_ReadByte_Platform(networkID) << 8) |
              DATAEE_ReadByte_Platform(networkID_LSB);
    if(0xFFFF == pan_id){
        pan_id = 0xAAAA;
    }
    
    //Load AES128 key from EEPROM
    for(i = 0; i < 16; i++){
        aes_key[i] = DATAEE_ReadByte_Platform(AESkey0 + i);
    }
    for(i = 0; i < 16; i++){
        net_key[i] = DATAEE_ReadByte_Platform(NETkey0 + i);
    }
#ifdef MBRTU
    //Load the keys to MODBUS memory map.
    memcpy(&write_only_mb_regs[WO_AES1], aes_key, sizeof(aes_key));
    memcpy(&write_only_mb_regs[WO_NAES1], net_key, sizeof(net_key));
#endif
    //Load the sink address from EEPROM
    sinkAddr0 = DATAEE_ReadByte_Platform(sinkAddrEE0);
    sinkAddr1 = DATAEE_ReadByte_Platform(sinkAddrEE1);
    
    //Load the RF channel setting from EEPROM
    channel = DATAEE_ReadByte_Platform(radioChannel);
    if(channel > sizeof(fhssList)){
        channel = 0;
        DATAEE_WriteByte_Platform(radioChannel,channel);
    }
    
    //Load the TX power from EEPROM
    TXPower = DATAEE_ReadByte_Platform(txPowerSetting);
    if((TXPower < sx1276LowerPower) || (TXPower > sx1276UpperPower)){
        TXPower = sx1276LowerPower;
        DATAEE_WriteByte_Platform(txPowerSetting,TXPower);
    }
    
    //Load the current save sf
    current_sf = DATAEE_ReadByte_Platform(SF);
    if((current_sf < sx1276SFMIN) || (current_sf > sx1276SFMAX)){
        current_sf = sx1276SFMIN;        
        DATAEE_WriteByte_Platform(SF, current_sf);
    }
    
    //Load the target RSSI from EEPROM
    RSSITarget = DATAEE_ReadByte_Platform(RSSITargetSetting);
    if((RSSITarget >= SX1276RSSIMAX) || (RSSITarget < SX1276RSSIMIN)){
        RSSITarget = -80;
        DATAEE_WriteByte_Platform(RSSITargetSetting,RSSITarget);
    }
    
    //Load the UART parity settings. Default is odd parity
    i = DATAEE_ReadByte_Platform(UARTParity);
    if((i > UART_9BIT_EVEN_PARITY) | (UART_7BIT_MODE == i)){
        i = UART_9BIT_EVEN_PARITY;
        DATAEE_WriteByte_Platform(UARTParity,UART_9BIT_EVEN_PARITY);
    }
    //Configure the UART
    set_parity(i);
    
    //Load the saved baud  rate
    i = DATAEE_ReadByte_Platform(UARTBaud);
    if(i > UART_BAUD_19200){
        i = UART_BAUD_19200;
        DATAEE_WriteByte_Platform(UARTBaud,UART_BAUD_19200);
    }
    set_uart_baud(i);
    PHY_Get_Packet_Rssi_Threshold_Limits(&rssimax, &rssimin);
    temp1 = DATAEE_ReadByte_Platform(RSSI_GOOD);
    if((temp1 < rssimin) || (temp1 > rssimax)){
        temp1 = rssimin;
        DATAEE_WriteByte_Platform(RSSI_GOOD, temp1);
    }
    PHY_Set_Packet_Rssi_Threshold(temp1);
        
#ifdef MBRTU
    /*Load the MB RTU address from EEPROM*/
    mb_rtu_addr = DATAEE_ReadByte_Platform(MBADDR);
    if((mb_rtu_addr < MB_RTU_ADDR_MIN) || (mb_rtu_addr > MB_RTU_ADDR_MAX)){
        mb_rtu_addr = MB_RTU_ADDR_MAX;
        DATAEE_WriteByte_Platform(MBADDR, mb_rtu_addr);
    }
    /*Load the read only RTU regs*/
    read_only_mb_regs[RO_SINK_ID] = (sinkAddr0 << 8) | (sinkAddr1);
    read_only_mb_regs[RO_FW_VER]  = FirmwareVersionMajor*100 + 
                                    FirmwareVersionMinor;
    read_only_mb_regs[RO_REGION]  = NA;
    read_only_mb_regs[RO_MODE]    = MODE_GetValue()? ROUTER:ENDDEVICE;
    read_only_mb_regs[RO_SADDR]   = (currentAddr0 << 8) | currentAddr1;
    read_only_mb_regs[RO_ADDR_DEBUG1] = 0xAA55;
    read_only_mb_regs[RO_ADDR_DEBUG2] = 0x55AA;
    
    /*Load read write regs*/
    read_write_mb_regs[RW_NET_ID]       = currentNetID;
    read_write_mb_regs[RW_TX_POW]       = TXPower;
    read_write_mb_regs[RW_SF]           = current_sf;
    read_write_mb_regs[RW_RF_CH]        = channel;
    read_write_mb_regs[RW_TARGET_RSSI]  = -RSSITarget;
    read_write_mb_regs[RW_MESH_HOPS]    = 0; //Depricated
    read_write_mb_regs[RW_MBADDR]       = mb_rtu_addr;
    read_write_mb_regs[RW_MB_BAUD_RATE] = uart_baud_rate;
    read_write_mb_regs[RW_MB_PARITY]    = curent_parity;
    read_write_mb_regs[RW_MB_RSSI_ACCEPT] = PHY_Get_Packet_Rssi_Threshold();
    
    /*Initialize the MB stack*/
    TMR3_SetInterruptHandler(prvvTIMERExpiredISR);
    eMBInit( MB_RTU, mb_rtu_addr, 0, current_baud_rate, curent_parity);
    eMBEnable();
#endif
    UART1_SetFramingErrorHandler(UART_error_handler);
    UART1_SetOverrunErrorHandler(UART_error_handler);
    UART1_SetErrorHandler(UART_error_handler);
    /*Init the Stack*/
    //Free all app buffers used with stack
    for(uint8_t buf_id = 0; buf_id < APP_TX_BUFFER_DEPTH; buf_id++){
        tx_buffer[buf_id].free = 1;
    }
    for(uint8_t buf_id = 0; buf_id < APP_RX_BUFFER_DEPTH; buf_id++){
        rx_buffer[buf_id].free = 1;
    }
    CircularBufferInit(&rx_buffer_queue_context,&rx_buffer_queue,
            sizeof(rx_buffer_queue),sizeof(uint8_t));
    NWK_SetAddr((currentAddr0 << 8) | currentAddr1);
    NWK_SetPanId(pan_id);
    NWK_SetSecurityKey(net_key);
    NWK_OpenEndpoint(DATA_EP, appDataInd);
    NWK_OpenEndpoint(MANAGEMENT_EP, appManagementEp);
    PHY_SetRxState(true);
    TMR0_SetInterruptHandler(Timer0Handler);    
}

/*!
 * \brief Load necessary information from EEPROM and bootload app
 *
 * \param [OUT] None.
 * \param [IN] None.
 */
void UART1_framing_error_handler(void)
{
    uint8_t temp;
    atStateVar = resetATMachine;
    U1FIFO |= (1<<1);
    temp = U1RXB;
    (void)temp;
    U1ERRIR &=~ (1 << 6);  //Reset the error flag
}

#ifdef MBRTU
static uint8_t keycmp(uint16_t* key, uint16_t* new, uint8_t size){
    while(size--){
        uint16_t temp = swap_16(*new);
        if(*key++ != temp){
            return 1;
        }
        new++;
    }
    return 0;
}
/*!
 * \brief Handle writes to write only regs
 *
 * \param [OUT] None.
 * \param [IN] None.
 */
static void handle_write_only_regs(){
    //Copy the application AES key from MB memory map
    uint16_t* keyptr = (uint16_t*)&write_only_mb_regs[WO_AES1];
    //Check if a new application key was programmed
    if(0 != keycmp((uint16_t*)&aes_key, keyptr, sizeof(aes_key)/2)){
        uint8_t j = 0;
        //Found new application key
        while(j < 16){
            aes_key[j++] = (*keyptr >> 8) & 0xFF;
            aes_key[j++] =  *keyptr++ & 0xFF;
        }
        set_eeprom_sync(EEPROM_APPKEY);
    }
    //Copy the network AES key from MB memory map
    keyptr = (uint16_t*)&write_only_mb_regs[WO_NAES1];
    if(0 != keycmp(&net_key, keyptr, sizeof(net_key)/2)){
        uint8_t j = 0;
        //Found new network key
        while(j < 16){
            net_key[j++] = (*keyptr >> 8) & 0xFF;
            net_key[j++] =  *keyptr++ & 0xFF;
        }
        set_eeprom_sync(EEPROM_NETKEY);
    }
    
    //Set sink if needed
    if(write_only_mb_regs[WO_SET_SINK]){
        write_only_mb_regs[WO_SET_SINK] = 0;
        cmdSetSink(NULL);
        //Update sink id in read only regs
        read_only_mb_regs[RO_SINK_ID] = (sinkAddr0 << 8) | sinkAddr1;
    }
}

/*!
 * \brief Handle writes to write only regs
 *
 * \param [OUT] None.
 * \param [IN] None.
 */
static void handle_rw_regs(){
    //Check if net id changed
    if(currentNetID != read_write_mb_regs[RW_NET_ID]){
        currentNetID = read_write_mb_regs[RW_NET_ID];
        //Now copy to memory location in EEPROM
        set_eeprom_sync(EEPROM_NETID);
        need_radio_reset = 1;
    }
    //Check if TX power changed
    if(TXPower != read_write_mb_regs[RW_TX_POW]){        
        if((read_write_mb_regs[RW_TX_POW] >= sx1276LowerPower) && 
            (read_write_mb_regs[RW_TX_POW] <= sx1276UpperPower)){
            TXPower = read_write_mb_regs[RW_TX_POW];
            set_eeprom_sync(EEPROM_TX_POWER);
            need_radio_reset = 1;
        }
        else{
            read_write_mb_regs[RW_TX_POW] = TXPower;
        }
    }
    //Check if SF changed
    if(current_sf != read_write_mb_regs[RW_SF]){
        if((read_write_mb_regs[RW_SF] >= sx1276SFMIN) && 
            (read_write_mb_regs[RW_SF] <= sx1276SFMAX)){
            current_sf = read_write_mb_regs[RW_SF];
            set_eeprom_sync(EEPROM_SF);
            need_radio_reset = 1;
        }      
        else{
            read_write_mb_regs[RW_SF] = current_sf;
        }
    }
    //Check if RF channel changed
    if(channel != read_write_mb_regs[RW_RF_CH]){
        if(read_write_mb_regs[RW_RF_CH] < sizeof(fhssList)){
            channel = read_write_mb_regs[RW_RF_CH];
            set_eeprom_sync(EEPROM_RADIO_CH);
            need_radio_reset = 1;
        }
        else{
            read_write_mb_regs[RW_RF_CH] = channel;
        }        
    }
    //Update all other values that do not require radio reset
    if(RSSITarget != ((int8_t) -read_write_mb_regs[RW_TARGET_RSSI])){
        if((-read_write_mb_regs[RW_TARGET_RSSI] < SX1276RSSIMAX) 
                && (-read_write_mb_regs[RW_TARGET_RSSI] > SX1276RSSIMIN)){
            RSSITarget = (int8_t)-read_write_mb_regs[RW_TARGET_RSSI];
            set_eeprom_sync(EEPROM_RSSI);
        }
        else{
            read_write_mb_regs[RW_TARGET_RSSI] = -RSSITarget;
        }
    }
    cadCounter = read_write_mb_regs[RW_CAD_COL];
    
    /*Check if an MB address change was requested*/
    if((0xAAAA == read_write_mb_regs[RW_MB_ADDR_KEY1]) && 
            (0x5555 == read_write_mb_regs[RW_MB_ADDR_KEY2])){
        //Check if address is with in bounds
        if((read_write_mb_regs[RW_MBADDR] > MB_RTU_ADDR_MIN) 
                && (read_write_mb_regs[RW_MBADDR] < MB_RTU_ADDR_MAX)){
            mb_rtu_addr = read_write_mb_regs[RW_MBADDR];
            set_eeprom_sync(EEPROM_MBADDR);
            eMBDisable();
            eMBInit( MB_RTU, mb_rtu_addr, 0, current_baud_rate, curent_parity);
            eMBEnable();
        }
    }
    /*Check if UART reg were modified*/
    if((0xAAAA == read_write_mb_regs[RW_MB_UART_KEY1]) && 
            (0x5555 == read_write_mb_regs[RW_MB_UART_KEY2])){
        if(curent_parity != read_write_mb_regs[RW_MB_PARITY]){
            curent_parity = read_write_mb_regs[RW_MB_PARITY];
            set_parity(curent_parity);
            set_eeprom_sync(EEPROM_UART_PARITY);
        }
        if(uart_baud_rate != read_write_mb_regs[RW_MB_BAUD_RATE]){
            uart_baud_rate = read_write_mb_regs[RW_MB_BAUD_RATE];
            set_uart_baud(uart_baud_rate);
            set_eeprom_sync(EEPROM_UART_BAUD);
        }
    }
    /*Check if packet good rssi changed*/
    if(read_write_mb_regs[RW_MB_RSSI_ACCEPT]!=PHY_Get_Packet_Rssi_Threshold()){
        PHY_Set_Packet_Rssi_Threshold(read_write_mb_regs[RW_MB_RSSI_ACCEPT]);
        set_eeprom_sync(EEPROM_GOOD_RSSI);
    }
    read_write_mb_regs[RW_MB_ADDR_KEY1] = 0;
    read_write_mb_regs[RW_MB_ADDR_KEY2] = 0;
    read_write_mb_regs[RW_MB_UART_KEY1] = 0;
    read_write_mb_regs[RW_MB_UART_KEY2] = 0;
}

/*!
 * \brief Handle writes to tx control regs
 *
 * \param [OUT] None.
 * \param [IN] None.
 */
static void handle_tx_regs(){
    uint8_t msg[payloadSizeMax], i = 0, src_ptr = TX_WORD1;
    if(!tx_ctl_mb_regs[TX_CONTROL]){
        return; //Nothing to do
    }
    while(i < payloadSizeMax){
        msg[i++] = tx_ctl_mb_regs[src_ptr] >> 8;
        msg[i++] = tx_ctl_mb_regs[src_ptr++];
    }
    uint8_t buf_id;
    if(get_free_tx_buffer(&buf_id)){  
        memset(&tx_buffer[buf_id].payload, 0, NWK_MAX_PAYLOAD_SIZE);
        memcpy(&tx_buffer[buf_id].payload,msg,sizeof(msg));
        tx_buffer[buf_id].nwkDataReq.dstAddr = tx_ctl_mb_regs[TX_DEST];
        tx_buffer[buf_id].nwkDataReq.dstEndpoint = DATA_EP;
        tx_buffer[buf_id].nwkDataReq.srcEndpoint = DATA_EP;
        tx_buffer[buf_id].nwkDataReq.options = 
                (tx_ctl_mb_regs[TX_DEST] == NWK_BROADCAST_ADDR)?
                    0:NWK_OPT_ACK_REQUEST;
        tx_buffer[buf_id].nwkDataReq.data = &tx_buffer[buf_id].payload;
        tx_buffer[buf_id].nwkDataReq.size = sizeof(msg);
        tx_buffer[buf_id].nwkDataReq.confirm = appDataConf;
        tx_buffer[buf_id].msgid = msgIDCounter++;
        NWK_DataReq(&tx_buffer[buf_id].nwkDataReq);
    }
    tx_ctl_mb_regs[RO_TX_MSG_ID] = tx_buffer[buf_id].msgid;
    tx_ctl_mb_regs[TX_CONTROL] = 0;
}

/*!
 * \brief Handle writes to rx control regs
 *
 * \param [OUT] None.
 * \param [IN] None.
 */
static void handle_rx_regs(){
    uint8_t count = 0, buf_id = 0;
    while(buf_id++ < APP_RX_BUFFER_DEPTH){
        if(!rx_buffer[buf_id].free){
            count++;
        }
    }
    read_only_mb_regs[RO_RX_MSG_COUNT] = count;
}

/*!
 * \brief Handle writes to rx control regs
 *
 * \param [OUT] None.
 * \param [IN] None.
 */
static void fill_rx_regs(){
    uint8_t i = 0, dest_ptr = RX_WORD1;
    if(rx_ctl_mb_regs[RX_CONTROL]){
        return;
    }
    if(!CircularBufferEmpty(&rx_buffer_queue_context)){
        uint8_t buf_id;
        CircularBufferPopFront(&rx_buffer_queue_context, &buf_id);
        if(!rx_buffer[buf_id].free){
            uint8_t i = 0;
            //Found first RX message to be sent to the user
            rx_ctl_mb_regs[RX_SRC_ADDR] = rx_buffer[buf_id].rx_ind.srcAddr;            
            while(rx_buffer[buf_id].rx_ind.size--){
                rx_ctl_mb_regs[dest_ptr]    = 
                        (rx_buffer[buf_id].payload[i++] << 8) & 0xFF00;
                rx_ctl_mb_regs[dest_ptr++] |= rx_buffer[buf_id].payload[i++];
            }
            rx_buffer[buf_id].free = 1;
        }
    }
    read_only_mb_regs[RO_RX_MSG_ID] = 0;//@TODO find msg id
    rx_ctl_mb_regs[RX_CONTROL] = 1;
}

/*!
 * \brief Call the MBRTU protocol stack functions
 *
 * \param [OUT] None.
 * \param [IN] None.
 */
void MBRTUStack(void){
    //Check for errors in uart
//    if(U1ERRIRbits.PERIF){
//        UART_error_handler(); //Clear all error flags
//    }
    if(!uartmode && UART1_is_rx_ready()){
        prvvUARTRxISR();
    }
    eMBPoll();
    if(uartmode && UART1_is_tx_ready()){
        prvvUARTTxReadyISR();
    }
    //update Device mode
    read_only_mb_regs[RO_MODE]    = MODE_GetValue()? ROUTER:ENDDEVICE;
    currentMode = read_only_mb_regs[RO_MODE];
    
    //Check if MB regs are updated
    if(write_only_mb_regs_update){
        handle_write_only_regs();
        write_only_mb_regs_update = 0;
    }
    if(read_write_mb_regs_update){
        handle_rw_regs();
        read_write_mb_regs_update = 0;
    }
    if(tx_ctl_mb_regs_upadte){
        handle_tx_regs();
        tx_ctl_mb_regs_upadte = 0;
    }
    if(rx_ctl_mb_regs_upadte){
        handle_rx_regs();
        rx_ctl_mb_regs_upadte = 0;
    }
    if(!CircularBufferEmpty(&rx_buffer_queue_context)){
        //There is a message for modbus
        fill_rx_regs();
    }
}

/*!
 * \brief Call the MBRTU protocol stack functions
 *
 * \param [OUT] None.
 * \param [IN] None.
 */
static void rw_mb_regs(eMBRegisterMode eMode, uint16_t* tempptr, 
                        UCHAR* pucRegBuffer, USHORT usNRegs){
    if(MB_REG_READ == eMode){
        while(usNRegs){
                *pucRegBuffer++ = (*tempptr>>8) & 0xFF;
                *pucRegBuffer++ = *tempptr++ & 0xFF;
                usNRegs--;
            }
    }
    if(MB_REG_WRITE == eMode){
        while(usNRegs){
            *tempptr = (*pucRegBuffer++ << 8) & 0xFF00;
            *tempptr++ |= *pucRegBuffer++;
            usNRegs--;
        }
    }
}

eMBErrorCode
eMBRegHoldingCB( UCHAR * pucRegBuffer, USHORT usAddress, USHORT usNRegs,
                 eMBRegisterMode eMode )
{
    if((usAddress >= READ_ONLY_REG_START)
            && ((usAddress + usNRegs) <= READ_ONLY_REG_END)){
        //Regs within read only regs
        if(MB_REG_READ == eMode){
            uint16_t* tempptr = (uint16_t*)&read_only_mb_regs[usAddress - 
                                                    READ_ONLY_REG_BASE];
            rw_mb_regs(eMode, tempptr, pucRegBuffer, usNRegs);
            return MB_ENOERR;
        }
        else{
            return MB_EINVAL;
        }
    }
    else if((usAddress >= WRITE_ONLY_REG_START)
            && ((usAddress + usNRegs) <= WRITE_ONLY_REG_END)){
        //Regs within write only regs
        if(MB_REG_WRITE == eMode){
            uint16_t* tempptr = (uint16_t*)&write_only_mb_regs[usAddress - 
                                                    WRITE_ONLY_REG_BASE];
            rw_mb_regs(eMode, tempptr, pucRegBuffer, usNRegs);
            write_only_mb_regs_update = 1;
            return MB_ENOERR;
        }
        else{
            return MB_EINVAL;
        }
    }
    else if((usAddress >= RW_REG_START)
            && ((usAddress + usNRegs) <= RW_REG_END)){
        if(MB_REG_READ == eMode){
            uint16_t* tempptr = (uint16_t*)&read_write_mb_regs[usAddress - 
                                                    RW_REG_BASE];
            rw_mb_regs(eMode, tempptr, pucRegBuffer, usNRegs);
            return MB_ENOERR;
        }
        if(MB_REG_WRITE == eMode){
            uint16_t* tempptr = (uint16_t*)&read_write_mb_regs[usAddress - 
                                                    RW_REG_BASE];
            rw_mb_regs(eMode, tempptr, pucRegBuffer, usNRegs);
            read_write_mb_regs_update = 1;
            return MB_ENOERR;
        }
        else{
            return MB_EINVAL;
        }        
    }
    else if((usAddress >= TX_REG_START)
            && ((usAddress + usNRegs) <= TX_REG_END)){
        if(MB_REG_READ == eMode){
            uint16_t* tempptr = (uint16_t*)&tx_ctl_mb_regs[usAddress - 
                                                    TX_REG_BASE];
            rw_mb_regs(eMode, tempptr, pucRegBuffer, usNRegs);
            return MB_ENOERR;
        }
        if(MB_REG_WRITE == eMode){
            uint16_t* tempptr = (uint16_t*)&tx_ctl_mb_regs[usAddress - 
                                                    TX_REG_BASE];
            rw_mb_regs(eMode, tempptr, pucRegBuffer, usNRegs);
            tx_ctl_mb_regs_upadte = 1;
            return MB_ENOERR;
        }
        else{
            return MB_EINVAL;
        } 
    }
    else if((usAddress >= RX_REG_START)
            && ((usAddress + usNRegs) <= RX_REG_END)){
        if(MB_REG_READ == eMode){
            uint16_t* tempptr = (uint16_t*)&rx_ctl_mb_regs[usAddress - 
                                                    RX_REG_BASE];
            rw_mb_regs(eMode, tempptr, pucRegBuffer, usNRegs);
            return MB_ENOERR;
        }
        if(MB_REG_WRITE == eMode){
            uint16_t* tempptr = (uint16_t*)&rx_ctl_mb_regs[usAddress - 
                                                    RX_REG_BASE];
            rw_mb_regs(eMode, tempptr, pucRegBuffer, usNRegs);
            rx_ctl_mb_regs_upadte = 1;
            return MB_ENOERR;
        }
        else{
            return MB_EINVAL;
        } 
    }
    return MB_ENOREG;
}
#endif

static void exract_sink_addr(uint8_t* dataptr){
    uint16_t tempaddr;
    char *p1,*p2;
    volatile char addrstr[5];
    memset(addrstr,0,sizeof(addrstr));
    p1 = strstr(dataptr,"=");
    p1++;
    memcpy(addrstr,p1,4);
    //Now converter the string number to a int
    tempaddr = strtoul(addrstr,&p2,16);
    sinkAddr0 = (uint8_t)(tempaddr >> 8);
    sinkAddr1 = (uint8_t)(tempaddr & 0xFF);
    //Save the sink address to EEPROM
    DATAEE_WriteByte_Platform(sinkAddrEE0,sinkAddr0);
    DATAEE_WriteByte_Platform(sinkAddrEE1,sinkAddr1);
#ifdef MBRTU
    read_only_mb_regs[RO_SINK_ID] = (sinkAddr0 << 8) | (sinkAddr1);
#endif
#ifdef ATCOMM
    printf("Sink node set:%02X%02X\r\n",DATAEE_ReadByte_Platform(sinkAddrEE0),DATAEE_ReadByte_Platform(sinkAddrEE1));
#endif                    
}

inline void application(void){
#ifdef ATCOMM
    processATCommand();
#endif
#ifdef MBRTU
    MBRTUStack();
#endif
    nwkEnableRouting((MODE_GetValue()? false:true));
    sync_eeprom();
}
