
	; Microchip MPLAB XC8 C Compiler V2.10
	; Copyright (C) 2019 Microchip Technology Inc.

	; Auto-generated runtime startup code for final link stage.

	;
	; Compiler options:
	;
	; -q --opt=none --chip=18f27k42 \
	; -Mdist/MBRTU/production/PIC18F27K42.production.map -DXPRJ_MBRTU=MBRTU \
	; -L--defsym=__MPLAB_BUILD=1 --double=32 --float=32 --emi=wordwrite \
	; --opt=+2 --opt=+asmfile --addrqual=ignore -DMBRTU -P -I../app/app_inc \
	; -I../hal/hal_inc -I../nwk/nwk_inc -I../phy/sx1216/phy_inc \
	; -I../sys/sys_inc -Imcc_generated_files -I../modbus/mb_inc \
	; -I../modbus/port -I../modbus/rtu -I../modbus/functions --warn=-3 \
	; --asmlist --summary=-psect,-class,+mem,-hex,-file --output=+inhx032 \
	; --runtime=+clear --runtime=+init --runtime=+keep --runtime=-download \
	; --runtime=+config --std=c99 --output=+elf:multilocs \
	; --stack=hybrid:256:auto:auto --summary=+xml \
	; --summarydir=dist/MBRTU/production/memoryfile.xml \
	; -oPIC18F27K42.production.elf --objdir=dist/MBRTU/production \
	; --outdir=dist/MBRTU/production \
	; build/MBRTU/production/_ext/669684871/mbfunccoils.p1 \
	; build/MBRTU/production/_ext/669684871/mbfuncdiag.p1 \
	; build/MBRTU/production/_ext/669684871/mbfuncdisc.p1 \
	; build/MBRTU/production/_ext/669684871/mbfuncholding.p1 \
	; build/MBRTU/production/_ext/669684871/mbfuncinput.p1 \
	; build/MBRTU/production/_ext/669684871/mbfuncother.p1 \
	; build/MBRTU/production/_ext/669684871/mbutils.p1 \
	; build/MBRTU/production/_ext/815087133/portevent.p1 \
	; build/MBRTU/production/_ext/815087133/portserial.p1 \
	; build/MBRTU/production/_ext/815087133/porttimer.p1 \
	; build/MBRTU/production/_ext/2104501039/mbcrc.p1 \
	; build/MBRTU/production/_ext/2104501039/mbrtu.p1 \
	; build/MBRTU/production/_ext/423217399/application.p1 \
	; build/MBRTU/production/_ext/423217399/circular buffer.p1 \
	; build/MBRTU/production/_ext/423217399/crc.p1 \
	; build/MBRTU/production/_ext/423217399/EEPROM.p1 \
	; build/MBRTU/production/_ext/423217399/led.p1 \
	; build/MBRTU/production/_ext/984464531/mb.p1 \
	; build/MBRTU/production/_ext/1339929363/Timers.p1 \
	; build/MBRTU/production/mcc_generated_files/spi1.p1 \
	; build/MBRTU/production/mcc_generated_files/tmr0.p1 \
	; build/MBRTU/production/mcc_generated_files/memory.p1 \
	; build/MBRTU/production/mcc_generated_files/device_config.p1 \
	; build/MBRTU/production/mcc_generated_files/interrupt_manager.p1 \
	; build/MBRTU/production/mcc_generated_files/mcc.p1 \
	; build/MBRTU/production/mcc_generated_files/uart1.p1 \
	; build/MBRTU/production/mcc_generated_files/pin_manager.p1 \
	; build/MBRTU/production/mcc_generated_files/crc.p1 \
	; build/MBRTU/production/mcc_generated_files/tmr3.p1 \
	; build/MBRTU/production/_ext/93605685/nwk.p1 \
	; build/MBRTU/production/_ext/93605685/nwkDataReq.p1 \
	; build/MBRTU/production/_ext/93605685/nwkFrame.p1 \
	; build/MBRTU/production/_ext/93605685/nwkGroup.p1 \
	; build/MBRTU/production/_ext/93605685/nwkRoute.p1 \
	; build/MBRTU/production/_ext/93605685/nwkRouteDiscovery.p1 \
	; build/MBRTU/production/_ext/93605685/nwkRx.p1 \
	; build/MBRTU/production/_ext/93605685/nwkSecurity.p1 \
	; build/MBRTU/production/_ext/93605685/nwkTx.p1 \
	; build/MBRTU/production/_ext/1350403839/phy.p1 \
	; build/MBRTU/production/_ext/2045976161/sys.p1 \
	; build/MBRTU/production/_ext/2045976161/sysEncrypt.p1 \
	; build/MBRTU/production/_ext/2045976161/sysTimer.p1 \
	; build/MBRTU/production/main.p1 --errformat=%f:%l:%c: error: (%n) %s \
	; --warnformat=%f:%l:%c: warning: (%n) %s \
	; --msgformat=%f:%l:%c: advisory: (%n) %s
	;


	processor	18F27K42
	opt include "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\18f27k42.cgen.inc"

	GLOBAL	_main,start
	FNROOT	_main

	pic18cxx	equ	1

	psect	config,class=CONFIG,delta=1,noexec
	psect	idloc,class=IDLOC,delta=1,noexec
	psect	const,class=CONST,delta=1,reloc=2,noexec
	psect	smallconst,class=SMALLCONST,delta=1,reloc=2,noexec
	psect	mediumconst,class=MEDIUMCONST,delta=1,reloc=2,noexec
	psect	rbss,class=COMRAM,space=1,noexec
	psect	bss,class=RAM,space=1,noexec
	psect	rdata,class=COMRAM,space=1,noexec
	psect	irdata,class=CODE,space=0,reloc=2,noexec
	psect	bss,class=RAM,space=1,noexec
	psect	data,class=RAM,space=1,noexec
	psect	idata,class=CODE,space=0,reloc=2,noexec
	psect	nvrram,class=COMRAM,space=1,noexec
	psect	nvbit,class=COMRAM,bit,space=1,noexec
	psect	temp,ovrld,class=COMRAM,space=1,noexec
	psect	struct,ovrld,class=COMRAM,space=1,noexec
	psect	rbit,class=COMRAM,bit,space=1,noexec
	psect	bigbss,class=BIGRAM,space=1,noexec
	psect	bigdata,class=BIGRAM,space=1,noexec
	psect	ibigdata,class=CODE,space=0,reloc=2,noexec
	psect	farbss,class=FARRAM,space=0,reloc=2,delta=1,noexec
	psect	nvFARRAM,class=FARRAM,space=0,reloc=2,delta=1,noexec
	psect	fardata,class=FARRAM,space=0,reloc=2,delta=1,noexec
	psect	ifardata,class=CODE,space=0,reloc=2,delta=1,noexec

	psect	reset_vec,class=CODE,delta=1,reloc=2
	psect	powerup,class=CODE,delta=1,reloc=2
	psect	init,class=CODE,delta=1,reloc=2
	psect	text,class=CODE,delta=1,reloc=2
GLOBAL	intlevel0,intlevel1,intlevel2
intlevel0:
intlevel1:
intlevel2:
GLOBAL	intlevel3
intlevel3:
	psect	clrtext,class=CODE,delta=1,reloc=2

	psect	eeprom_data,class=EEDATA,delta=1,noexec
	psect	smallconst
	GLOBAL	__smallconst
__smallconst:
	psect	mediumconst
	GLOBAL	__mediumconst
__mediumconst:
	PSECT	ramtop,class=RAM,noexec
	GLOBAL	__S1			; top of RAM usage
	GLOBAL	__ramtop
	GLOBAL	__LRAM,__HRAM
__ramtop:

	psect	reset_vec
reset_vec:
	; No powerup routine
	global start

; jump to start
	goto start
	GLOBAL __accesstop
__accesstop EQU 96

;Initialize the stack pointer (FSR1)
	global stacklo, stackhi
	stacklo	equ	0134Fh
	stackhi	equ	01FFFh


	psect	stack,class=STACK,space=2,noexec
	global ___sp,___inthi_sp,___intlo_sp
___sp:

ds 256

___inthi_sp:

ds 1496

___intlo_sp:

ds 1497



	psect	init
start:
	lfsr	1,4943
	global start_initialization
	goto start_initialization	;jump to C runtime clear & initialization

; Config register IDLOC0 @ 0x200000
;	unspecified using default value

	psect	idloc,class=IDLOC,delta=1,noexec
		org 0x0
		dw 0xFFF

; Config register IDLOC1 @ 0x200002
;	unspecified using default value

	psect	idloc,class=IDLOC,delta=1,noexec
		org 0x2
		dw 0xFFF

; Config register IDLOC2 @ 0x200004
;	unspecified using default value

	psect	idloc,class=IDLOC,delta=1,noexec
		org 0x4
		dw 0xFFF

; Config register IDLOC3 @ 0x200006
;	unspecified using default value

	psect	idloc,class=IDLOC,delta=1,noexec
		org 0x6
		dw 0xFFF

; Config register IDLOC4 @ 0x200008
;	unspecified using default value

	psect	idloc,class=IDLOC,delta=1,noexec
		org 0x8
		dw 0xFFF

; Config register IDLOC5 @ 0x20000A
;	unspecified using default value

	psect	idloc,class=IDLOC,delta=1,noexec
		org 0xA
		dw 0xFFF

; Config register IDLOC6 @ 0x20000C
;	unspecified using default value

	psect	idloc,class=IDLOC,delta=1,noexec
		org 0xC
		dw 0xFFF

; Config register IDLOC7 @ 0x20000E
;	unspecified using default value

	psect	idloc,class=IDLOC,delta=1,noexec
		org 0xE
		dw 0xFFF

; Config register CONFIG1L @ 0x300000
;	External Oscillator Selection
;	FEXTOSC = OFF, Oscillator not enabled
;	Reset Oscillator Selection
;	RSTOSC = HFINTOSC_64MHZ, HFINTOSC with HFFRQ = 64 MHz and CDIV = 1:1

	psect	config,class=CONFIG,delta=1,noexec
		org 0x0
		db 0x8C

; Config register CONFIG1H @ 0x300001
;	Clock out Enable bit
;	CLKOUTEN = OFF, CLKOUT function is disabled
;	PRLOCKED One-Way Set Enable bit
;	PR1WAY = ON, PRLOCK bit can be cleared and set only once
;	Clock Switch Enable bit
;	CSWEN = ON, Writing to NOSC and NDIV is allowed
;	Fail-Safe Clock Monitor Enable bit
;	FCMEN = ON, Fail-Safe Clock Monitor enabled

	psect	config,class=CONFIG,delta=1,noexec
		org 0x1
		db 0xFF

; Config register CONFIG2L @ 0x300002
;	MCLR Enable bit
;	MCLRE = EXTMCLR, If LVP = 0, MCLR pin is MCLR; If LVP = 1, RE3 pin function is MCLR
;	Power-up timer selection bits
;	PWRTS = PWRT_64, PWRT set at 64ms
;	Multi-vector enable bit
;	MVECEN = ON, Multi-vector enabled, Vector table used for interrupts
;	IVTLOCK bit One-way set enable bit
;	IVT1WAY = ON, IVTLOCK bit can be cleared and set only once
;	Low Power BOR Enable bit
;	LPBOREN = OFF, ULPBOR disabled
;	Brown-out Reset Enable bits
;	BOREN = SBORDIS, Brown-out Reset enabled , SBOREN bit is ignored

	psect	config,class=CONFIG,delta=1,noexec
		org 0x2
		db 0xFD

; Config register CONFIG2H @ 0x300003
;	Brown-out Reset Voltage Selection bits
;	BORV = VBOR_2P45, Brown-out Reset Voltage (VBOR) set to 2.45V
;	ZCD Disable bit
;	ZCD = OFF, ZCD disabled. ZCD can be enabled by setting the ZCDSEN bit of ZCDCON
;	PPSLOCK bit One-Way Set Enable bit
;	PPS1WAY = ON, PPSLOCK bit can be cleared and set only once; PPS registers remain locked after one clear/set cycle
;	Stack Full/Underflow Reset Enable bit
;	STVREN = ON, Stack full/underflow will cause Reset
;	Debugger Enable bit
;	DEBUG = OFF, Background debugger disabled
;	Extended Instruction Set Enable bit
;	XINST = OFF, Extended Instruction Set and Indexed Addressing Mode disabled

	psect	config,class=CONFIG,delta=1,noexec
		org 0x3
		db 0xFF

; Config register CONFIG3L @ 0x300004
;	WDT Period selection bits
;	WDTCPS = WDTCPS_31, Divider ratio 1:65536; software control of WDTPS
;	WDT operating mode
;	WDTE = OFF, WDT Disabled; SWDTEN is ignored

	psect	config,class=CONFIG,delta=1,noexec
		org 0x4
		db 0x9F

; Config register CONFIG3H @ 0x300005
;	WDT Window Select bits
;	WDTCWS = WDTCWS_7, window always open (100%); software control; keyed access not required
;	WDT input clock selector
;	WDTCCS = SC, Software Control

	psect	config,class=CONFIG,delta=1,noexec
		org 0x5
		db 0xFF

; Config register CONFIG4L @ 0x300006
;	Boot Block Size selection bits
;	BBSIZE = BBSIZE_512, Boot Block size is 512 words
;	Boot Block enable bit
;	BBEN = OFF, Boot block disabled
;	Storage Area Flash enable bit
;	SAFEN = OFF, SAF disabled
;	Application Block write protection bit
;	WRTAPP = OFF, Application Block not write protected

	psect	config,class=CONFIG,delta=1,noexec
		org 0x6
		db 0xFF

; Config register CONFIG4H @ 0x300007
;	Configuration Register Write Protection bit
;	WRTB = OFF, Configuration registers (300000-30000Bh) not write-protected
;	Boot Block Write Protection bit
;	WRTC = OFF, Boot Block (000000-0007FFh) not write-protected
;	Data EEPROM Write Protection bit
;	WRTD = OFF, Data EEPROM not write-protected
;	SAF Write protection bit
;	WRTSAF = OFF, SAF not Write Protected
;	Low Voltage Programming Enable bit
;	LVP = ON, Low voltage programming enabled. MCLR/VPP pin function is MCLR. MCLRE configuration bit is ignored

	psect	config,class=CONFIG,delta=1,noexec
		org 0x7
		db 0xFF

; Config register CONFIG5L @ 0x300008
;	PFM and Data EEPROM Code Protection bit
;	CP = OFF, PFM and Data EEPROM code protection disabled

	psect	config,class=CONFIG,delta=1,noexec
		org 0x8
		db 0xFF

; Config register CONFIG5H @ 0x300009
;	unspecified using default value

	psect	config,class=CONFIG,delta=1,noexec
		org 0x9
		db 0xFF


psect comram,class=COMRAM,space=1
psect abs1,class=ABS1,space=1
psect bigram,class=BIGRAM,space=1
psect ram,class=RAM,space=1
psect bank0,class=BANK0,space=1
psect bank1,class=BANK1,space=1
psect bank2,class=BANK2,space=1
psect bank3,class=BANK3,space=1
psect bank4,class=BANK4,space=1
psect bank5,class=BANK5,space=1
psect bank6,class=BANK6,space=1
psect bank7,class=BANK7,space=1
psect bank8,class=BANK8,space=1
psect bank9,class=BANK9,space=1
psect bank10,class=BANK10,space=1
psect bank11,class=BANK11,space=1
psect bank12,class=BANK12,space=1
psect bank13,class=BANK13,space=1
psect bank14,class=BANK14,space=1
psect bank15,class=BANK15,space=1
psect bank16,class=BANK16,space=1
psect bank17,class=BANK17,space=1
psect bank18,class=BANK18,space=1
psect bank19,class=BANK19,space=1
psect bank20,class=BANK20,space=1
psect bank21,class=BANK21,space=1
psect bank22,class=BANK22,space=1
psect bank23,class=BANK23,space=1
psect bank24,class=BANK24,space=1
psect bank25,class=BANK25,space=1
psect bank26,class=BANK26,space=1
psect bank27,class=BANK27,space=1
psect bank28,class=BANK28,space=1
psect bank29,class=BANK29,space=1
psect bank30,class=BANK30,space=1
psect bank31,class=BANK31,space=1
psect sfr,class=SFR,space=1


	end	start
