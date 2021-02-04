
	; Microchip MPLAB XC8 C Compiler V2.31
	; Copyright (C) 2020 Microchip Technology Inc.

	; Auto-generated runtime startup code for final link stage.

	;
	; Compiler options:
	;
	; -q --opt=none --chip=18f27k42 \
	; -Mdist/MBRTU/production/PIC18F27K42.production.map -DXPRJ_MBRTU=MBRTU \
	; -L--defsym=__MPLAB_BUILD=1 \
	; --dfp=C:/Program Files/Microchip/MPLABX/v5.45/packs/Microchip/PIC18F-K_DFP/1.4.87/xc8 \
	; --double=32 --float=32 --emi=wordwrite --opt=+2 --opt=+debug \
	; --opt=+local --addrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -P \
	; -I../app/app_inc -I../hal/hal_inc -I../nwk/nwk_inc -I../phy/phy_inc \
	; -Imcc_generated_files -I../modbus/mb_inc -I../modbus/port \
	; -I../modbus/rtu -I../modbus/functions -I../aes/aes_inc \
	; -I../wdt/wdt_inc -I../memory/eeprom/eeprom_inc \
	; -I../phy/sx1276/sx1276_inc -I../phy/sx1280/sx1280_inc \
	; -I../sys/sys_inc --warn=-3 --asmlist \
	; --summary=-psect,-class,+mem,-hex,-file --output=+inhx032 \
	; --runtime=+clear --runtime=+init --runtime=+keep --runtime=-download \
	; --runtime=+config --std=c99 --output=+elf:multilocs \
	; --stack=hybrid:auto:auto:auto --summary=+xml \
	; --summarydir=dist/MBRTU/production/memoryfile.xml \
	; -oPIC18F27K42.production.elf --objdir=dist/MBRTU/production \
	; --outdir=dist/MBRTU/production \
	; build/MBRTU/production/_ext/298884965/AES.p1 \
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
	; build/MBRTU/production/_ext/423217399/uart_default_control.p1 \
	; build/MBRTU/production/_ext/179975797/I2C_EEPROM.p1 \
	; build/MBRTU/production/_ext/179975797/PIC16_I2C_BITBANG.p1 \
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
	; build/MBRTU/production/mcc_generated_files/tmr5.p1 \
	; build/MBRTU/production/_ext/93605685/nwk.p1 \
	; build/MBRTU/production/_ext/93605685/nwkDataReq.p1 \
	; build/MBRTU/production/_ext/93605685/nwkFrame.p1 \
	; build/MBRTU/production/_ext/93605685/nwkGroup.p1 \
	; build/MBRTU/production/_ext/93605685/nwkRoute.p1 \
	; build/MBRTU/production/_ext/93605685/nwkRouteDiscovery.p1 \
	; build/MBRTU/production/_ext/93605685/nwkRx.p1 \
	; build/MBRTU/production/_ext/93605685/nwkSecurity.p1 \
	; build/MBRTU/production/_ext/93605685/nwkTx.p1 \
	; build/MBRTU/production/_ext/1084134857/phy.p1 \
	; build/MBRTU/production/_ext/1971803433/sx1276.p1 \
	; build/MBRTU/production/_ext/1278352567/sx1280-hal.p1 \
	; build/MBRTU/production/_ext/1278352567/sx1280.p1 \
	; build/MBRTU/production/_ext/1278352567/sx1280_drv.p1 \
	; build/MBRTU/production/_ext/2045976161/sys.p1 \
	; build/MBRTU/production/_ext/2045976161/sysEncrypt.p1 \
	; build/MBRTU/production/_ext/2045976161/sysTimer.p1 \
	; build/MBRTU/production/_ext/127225941/wdt.p1 \
	; build/MBRTU/production/main.p1 --callgraph=none \
	; --errformat=%f:%l:%c: error: (%n) %s \
	; --warnformat=%f:%l:%c: warning: (%n) %s \
	; --msgformat=%f:%l:%c: advisory: (%n) %s
	;


	processor	18F27K42
	include "C:/Program Files/Microchip/MPLABX/v5.45/packs/Microchip/PIC18F-K_DFP/1.4.87/xc8\pic\include\proc\18f27k42.cgen.inc"

	GLOBAL	_main,start
	FNROOT	_main

	pic18cxx	equ	1

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

	psect	config,class=CONFIG,delta=1,space=4,noexec
	psect	idloc,class=IDLOC,delta=1,space=5,noexec
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
	stacklo	equ	01B3Fh
	stackhi	equ	01FFFh


	psect	stack,class=STACK,space=2,noexec
	global ___sp,___inthi_sp,___intlo_sp
___sp:

ds 407

___inthi_sp:

ds 405

___intlo_sp:

ds 405



	psect	init
start:
	lfsr	1,6975
	global start_initialization
	goto start_initialization	;jump to C runtime clear & initialization

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
