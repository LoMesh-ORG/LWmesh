#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-MBRTU.mk)" "nbproject/Makefile-local-MBRTU.mk"
include nbproject/Makefile-local-MBRTU.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=MBRTU
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PIC18F27K42.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PIC18F27K42.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../aes/aes_src/AES.c ../modbus/functions/mbfunccoils.c ../modbus/functions/mbfuncdiag.c ../modbus/functions/mbfuncdisc.c ../modbus/functions/mbfuncholding.c ../modbus/functions/mbfuncinput.c ../modbus/functions/mbfuncother.c ../modbus/functions/mbutils.c ../modbus/port/portevent.c ../modbus/port/portserial.c ../modbus/port/porttimer.c ../modbus/rtu/mbcrc.c ../modbus/rtu/mbrtu.c ../app/app_src/application.c "../app/app_src/circular buffer.c" ../app/app_src/crc.c ../app/app_src/EEPROM.c ../app/app_src/led.c ../modbus/mb.c ../app/app_src/uart_default_control.c ../memory/eeprom/eeprom_src/I2C_EEPROM.c ../memory/eeprom/eeprom_src/PIC16_I2C_BITBANG.c ../hal/hal_src/Timers.c mcc_generated_files/spi1.c mcc_generated_files/tmr0.c mcc_generated_files/memory.c mcc_generated_files/device_config.c mcc_generated_files/interrupt_manager.c mcc_generated_files/mcc.c mcc_generated_files/uart1.c mcc_generated_files/pin_manager.c mcc_generated_files/crc.c mcc_generated_files/tmr3.c mcc_generated_files/tmr5.c ../nwk/nwk_src/nwk.c ../nwk/nwk_src/nwkDataReq.c ../nwk/nwk_src/nwkFrame.c ../nwk/nwk_src/nwkGroup.c ../nwk/nwk_src/nwkRoute.c ../nwk/nwk_src/nwkRouteDiscovery.c ../nwk/nwk_src/nwkRx.c ../nwk/nwk_src/nwkSecurity.c ../nwk/nwk_src/nwkTx.c ../phy/phy_src/phy.c ../phy/sx1276/sx1276_src/sx1276.c ../phy/sx1280/sx1280_src/sx1280-hal.c ../phy/sx1280/sx1280_src/sx1280.c ../phy/sx1280/sx1280_src/sx1280_drv.c ../sys/sys_src/sys.c ../sys/sys_src/sysEncrypt.c ../sys/sys_src/sysTimer.c ../wdt/wdt_src/wdt.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/298884965/AES.p1 ${OBJECTDIR}/_ext/669684871/mbfunccoils.p1 ${OBJECTDIR}/_ext/669684871/mbfuncdiag.p1 ${OBJECTDIR}/_ext/669684871/mbfuncdisc.p1 ${OBJECTDIR}/_ext/669684871/mbfuncholding.p1 ${OBJECTDIR}/_ext/669684871/mbfuncinput.p1 ${OBJECTDIR}/_ext/669684871/mbfuncother.p1 ${OBJECTDIR}/_ext/669684871/mbutils.p1 ${OBJECTDIR}/_ext/815087133/portevent.p1 ${OBJECTDIR}/_ext/815087133/portserial.p1 ${OBJECTDIR}/_ext/815087133/porttimer.p1 ${OBJECTDIR}/_ext/2104501039/mbcrc.p1 ${OBJECTDIR}/_ext/2104501039/mbrtu.p1 ${OBJECTDIR}/_ext/423217399/application.p1 "${OBJECTDIR}/_ext/423217399/circular buffer.p1" ${OBJECTDIR}/_ext/423217399/crc.p1 ${OBJECTDIR}/_ext/423217399/EEPROM.p1 ${OBJECTDIR}/_ext/423217399/led.p1 ${OBJECTDIR}/_ext/984464531/mb.p1 ${OBJECTDIR}/_ext/423217399/uart_default_control.p1 ${OBJECTDIR}/_ext/179975797/I2C_EEPROM.p1 ${OBJECTDIR}/_ext/179975797/PIC16_I2C_BITBANG.p1 ${OBJECTDIR}/_ext/1339929363/Timers.p1 ${OBJECTDIR}/mcc_generated_files/spi1.p1 ${OBJECTDIR}/mcc_generated_files/tmr0.p1 ${OBJECTDIR}/mcc_generated_files/memory.p1 ${OBJECTDIR}/mcc_generated_files/device_config.p1 ${OBJECTDIR}/mcc_generated_files/interrupt_manager.p1 ${OBJECTDIR}/mcc_generated_files/mcc.p1 ${OBJECTDIR}/mcc_generated_files/uart1.p1 ${OBJECTDIR}/mcc_generated_files/pin_manager.p1 ${OBJECTDIR}/mcc_generated_files/crc.p1 ${OBJECTDIR}/mcc_generated_files/tmr3.p1 ${OBJECTDIR}/mcc_generated_files/tmr5.p1 ${OBJECTDIR}/_ext/93605685/nwk.p1 ${OBJECTDIR}/_ext/93605685/nwkDataReq.p1 ${OBJECTDIR}/_ext/93605685/nwkFrame.p1 ${OBJECTDIR}/_ext/93605685/nwkGroup.p1 ${OBJECTDIR}/_ext/93605685/nwkRoute.p1 ${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.p1 ${OBJECTDIR}/_ext/93605685/nwkRx.p1 ${OBJECTDIR}/_ext/93605685/nwkSecurity.p1 ${OBJECTDIR}/_ext/93605685/nwkTx.p1 ${OBJECTDIR}/_ext/1084134857/phy.p1 ${OBJECTDIR}/_ext/1971803433/sx1276.p1 ${OBJECTDIR}/_ext/1278352567/sx1280-hal.p1 ${OBJECTDIR}/_ext/1278352567/sx1280.p1 ${OBJECTDIR}/_ext/1278352567/sx1280_drv.p1 ${OBJECTDIR}/_ext/2045976161/sys.p1 ${OBJECTDIR}/_ext/2045976161/sysEncrypt.p1 ${OBJECTDIR}/_ext/2045976161/sysTimer.p1 ${OBJECTDIR}/_ext/127225941/wdt.p1 ${OBJECTDIR}/main.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/298884965/AES.p1.d ${OBJECTDIR}/_ext/669684871/mbfunccoils.p1.d ${OBJECTDIR}/_ext/669684871/mbfuncdiag.p1.d ${OBJECTDIR}/_ext/669684871/mbfuncdisc.p1.d ${OBJECTDIR}/_ext/669684871/mbfuncholding.p1.d ${OBJECTDIR}/_ext/669684871/mbfuncinput.p1.d ${OBJECTDIR}/_ext/669684871/mbfuncother.p1.d ${OBJECTDIR}/_ext/669684871/mbutils.p1.d ${OBJECTDIR}/_ext/815087133/portevent.p1.d ${OBJECTDIR}/_ext/815087133/portserial.p1.d ${OBJECTDIR}/_ext/815087133/porttimer.p1.d ${OBJECTDIR}/_ext/2104501039/mbcrc.p1.d ${OBJECTDIR}/_ext/2104501039/mbrtu.p1.d ${OBJECTDIR}/_ext/423217399/application.p1.d "${OBJECTDIR}/_ext/423217399/circular buffer.p1.d" ${OBJECTDIR}/_ext/423217399/crc.p1.d ${OBJECTDIR}/_ext/423217399/EEPROM.p1.d ${OBJECTDIR}/_ext/423217399/led.p1.d ${OBJECTDIR}/_ext/984464531/mb.p1.d ${OBJECTDIR}/_ext/423217399/uart_default_control.p1.d ${OBJECTDIR}/_ext/179975797/I2C_EEPROM.p1.d ${OBJECTDIR}/_ext/179975797/PIC16_I2C_BITBANG.p1.d ${OBJECTDIR}/_ext/1339929363/Timers.p1.d ${OBJECTDIR}/mcc_generated_files/spi1.p1.d ${OBJECTDIR}/mcc_generated_files/tmr0.p1.d ${OBJECTDIR}/mcc_generated_files/memory.p1.d ${OBJECTDIR}/mcc_generated_files/device_config.p1.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.p1.d ${OBJECTDIR}/mcc_generated_files/mcc.p1.d ${OBJECTDIR}/mcc_generated_files/uart1.p1.d ${OBJECTDIR}/mcc_generated_files/pin_manager.p1.d ${OBJECTDIR}/mcc_generated_files/crc.p1.d ${OBJECTDIR}/mcc_generated_files/tmr3.p1.d ${OBJECTDIR}/mcc_generated_files/tmr5.p1.d ${OBJECTDIR}/_ext/93605685/nwk.p1.d ${OBJECTDIR}/_ext/93605685/nwkDataReq.p1.d ${OBJECTDIR}/_ext/93605685/nwkFrame.p1.d ${OBJECTDIR}/_ext/93605685/nwkGroup.p1.d ${OBJECTDIR}/_ext/93605685/nwkRoute.p1.d ${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.p1.d ${OBJECTDIR}/_ext/93605685/nwkRx.p1.d ${OBJECTDIR}/_ext/93605685/nwkSecurity.p1.d ${OBJECTDIR}/_ext/93605685/nwkTx.p1.d ${OBJECTDIR}/_ext/1084134857/phy.p1.d ${OBJECTDIR}/_ext/1971803433/sx1276.p1.d ${OBJECTDIR}/_ext/1278352567/sx1280-hal.p1.d ${OBJECTDIR}/_ext/1278352567/sx1280.p1.d ${OBJECTDIR}/_ext/1278352567/sx1280_drv.p1.d ${OBJECTDIR}/_ext/2045976161/sys.p1.d ${OBJECTDIR}/_ext/2045976161/sysEncrypt.p1.d ${OBJECTDIR}/_ext/2045976161/sysTimer.p1.d ${OBJECTDIR}/_ext/127225941/wdt.p1.d ${OBJECTDIR}/main.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/298884965/AES.p1 ${OBJECTDIR}/_ext/669684871/mbfunccoils.p1 ${OBJECTDIR}/_ext/669684871/mbfuncdiag.p1 ${OBJECTDIR}/_ext/669684871/mbfuncdisc.p1 ${OBJECTDIR}/_ext/669684871/mbfuncholding.p1 ${OBJECTDIR}/_ext/669684871/mbfuncinput.p1 ${OBJECTDIR}/_ext/669684871/mbfuncother.p1 ${OBJECTDIR}/_ext/669684871/mbutils.p1 ${OBJECTDIR}/_ext/815087133/portevent.p1 ${OBJECTDIR}/_ext/815087133/portserial.p1 ${OBJECTDIR}/_ext/815087133/porttimer.p1 ${OBJECTDIR}/_ext/2104501039/mbcrc.p1 ${OBJECTDIR}/_ext/2104501039/mbrtu.p1 ${OBJECTDIR}/_ext/423217399/application.p1 ${OBJECTDIR}/_ext/423217399/circular\ buffer.p1 ${OBJECTDIR}/_ext/423217399/crc.p1 ${OBJECTDIR}/_ext/423217399/EEPROM.p1 ${OBJECTDIR}/_ext/423217399/led.p1 ${OBJECTDIR}/_ext/984464531/mb.p1 ${OBJECTDIR}/_ext/423217399/uart_default_control.p1 ${OBJECTDIR}/_ext/179975797/I2C_EEPROM.p1 ${OBJECTDIR}/_ext/179975797/PIC16_I2C_BITBANG.p1 ${OBJECTDIR}/_ext/1339929363/Timers.p1 ${OBJECTDIR}/mcc_generated_files/spi1.p1 ${OBJECTDIR}/mcc_generated_files/tmr0.p1 ${OBJECTDIR}/mcc_generated_files/memory.p1 ${OBJECTDIR}/mcc_generated_files/device_config.p1 ${OBJECTDIR}/mcc_generated_files/interrupt_manager.p1 ${OBJECTDIR}/mcc_generated_files/mcc.p1 ${OBJECTDIR}/mcc_generated_files/uart1.p1 ${OBJECTDIR}/mcc_generated_files/pin_manager.p1 ${OBJECTDIR}/mcc_generated_files/crc.p1 ${OBJECTDIR}/mcc_generated_files/tmr3.p1 ${OBJECTDIR}/mcc_generated_files/tmr5.p1 ${OBJECTDIR}/_ext/93605685/nwk.p1 ${OBJECTDIR}/_ext/93605685/nwkDataReq.p1 ${OBJECTDIR}/_ext/93605685/nwkFrame.p1 ${OBJECTDIR}/_ext/93605685/nwkGroup.p1 ${OBJECTDIR}/_ext/93605685/nwkRoute.p1 ${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.p1 ${OBJECTDIR}/_ext/93605685/nwkRx.p1 ${OBJECTDIR}/_ext/93605685/nwkSecurity.p1 ${OBJECTDIR}/_ext/93605685/nwkTx.p1 ${OBJECTDIR}/_ext/1084134857/phy.p1 ${OBJECTDIR}/_ext/1971803433/sx1276.p1 ${OBJECTDIR}/_ext/1278352567/sx1280-hal.p1 ${OBJECTDIR}/_ext/1278352567/sx1280.p1 ${OBJECTDIR}/_ext/1278352567/sx1280_drv.p1 ${OBJECTDIR}/_ext/2045976161/sys.p1 ${OBJECTDIR}/_ext/2045976161/sysEncrypt.p1 ${OBJECTDIR}/_ext/2045976161/sysTimer.p1 ${OBJECTDIR}/_ext/127225941/wdt.p1 ${OBJECTDIR}/main.p1

# Source Files
SOURCEFILES=../aes/aes_src/AES.c ../modbus/functions/mbfunccoils.c ../modbus/functions/mbfuncdiag.c ../modbus/functions/mbfuncdisc.c ../modbus/functions/mbfuncholding.c ../modbus/functions/mbfuncinput.c ../modbus/functions/mbfuncother.c ../modbus/functions/mbutils.c ../modbus/port/portevent.c ../modbus/port/portserial.c ../modbus/port/porttimer.c ../modbus/rtu/mbcrc.c ../modbus/rtu/mbrtu.c ../app/app_src/application.c ../app/app_src/circular buffer.c ../app/app_src/crc.c ../app/app_src/EEPROM.c ../app/app_src/led.c ../modbus/mb.c ../app/app_src/uart_default_control.c ../memory/eeprom/eeprom_src/I2C_EEPROM.c ../memory/eeprom/eeprom_src/PIC16_I2C_BITBANG.c ../hal/hal_src/Timers.c mcc_generated_files/spi1.c mcc_generated_files/tmr0.c mcc_generated_files/memory.c mcc_generated_files/device_config.c mcc_generated_files/interrupt_manager.c mcc_generated_files/mcc.c mcc_generated_files/uart1.c mcc_generated_files/pin_manager.c mcc_generated_files/crc.c mcc_generated_files/tmr3.c mcc_generated_files/tmr5.c ../nwk/nwk_src/nwk.c ../nwk/nwk_src/nwkDataReq.c ../nwk/nwk_src/nwkFrame.c ../nwk/nwk_src/nwkGroup.c ../nwk/nwk_src/nwkRoute.c ../nwk/nwk_src/nwkRouteDiscovery.c ../nwk/nwk_src/nwkRx.c ../nwk/nwk_src/nwkSecurity.c ../nwk/nwk_src/nwkTx.c ../phy/phy_src/phy.c ../phy/sx1276/sx1276_src/sx1276.c ../phy/sx1280/sx1280_src/sx1280-hal.c ../phy/sx1280/sx1280_src/sx1280.c ../phy/sx1280/sx1280_src/sx1280_drv.c ../sys/sys_src/sys.c ../sys/sys_src/sysEncrypt.c ../sys/sys_src/sysTimer.c ../wdt/wdt_src/wdt.c main.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-MBRTU.mk dist/${CND_CONF}/${IMAGE_TYPE}/PIC18F27K42.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F27K42
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/298884965/AES.p1: ../aes/aes_src/AES.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/298884965" 
	@${RM} ${OBJECTDIR}/_ext/298884965/AES.p1.d 
	@${RM} ${OBJECTDIR}/_ext/298884965/AES.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/298884965/AES.p1 ../aes/aes_src/AES.c 
	@-${MV} ${OBJECTDIR}/_ext/298884965/AES.d ${OBJECTDIR}/_ext/298884965/AES.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/298884965/AES.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/669684871/mbfunccoils.p1: ../modbus/functions/mbfunccoils.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/669684871" 
	@${RM} ${OBJECTDIR}/_ext/669684871/mbfunccoils.p1.d 
	@${RM} ${OBJECTDIR}/_ext/669684871/mbfunccoils.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/669684871/mbfunccoils.p1 ../modbus/functions/mbfunccoils.c 
	@-${MV} ${OBJECTDIR}/_ext/669684871/mbfunccoils.d ${OBJECTDIR}/_ext/669684871/mbfunccoils.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/669684871/mbfunccoils.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/669684871/mbfuncdiag.p1: ../modbus/functions/mbfuncdiag.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/669684871" 
	@${RM} ${OBJECTDIR}/_ext/669684871/mbfuncdiag.p1.d 
	@${RM} ${OBJECTDIR}/_ext/669684871/mbfuncdiag.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/669684871/mbfuncdiag.p1 ../modbus/functions/mbfuncdiag.c 
	@-${MV} ${OBJECTDIR}/_ext/669684871/mbfuncdiag.d ${OBJECTDIR}/_ext/669684871/mbfuncdiag.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/669684871/mbfuncdiag.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/669684871/mbfuncdisc.p1: ../modbus/functions/mbfuncdisc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/669684871" 
	@${RM} ${OBJECTDIR}/_ext/669684871/mbfuncdisc.p1.d 
	@${RM} ${OBJECTDIR}/_ext/669684871/mbfuncdisc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/669684871/mbfuncdisc.p1 ../modbus/functions/mbfuncdisc.c 
	@-${MV} ${OBJECTDIR}/_ext/669684871/mbfuncdisc.d ${OBJECTDIR}/_ext/669684871/mbfuncdisc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/669684871/mbfuncdisc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/669684871/mbfuncholding.p1: ../modbus/functions/mbfuncholding.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/669684871" 
	@${RM} ${OBJECTDIR}/_ext/669684871/mbfuncholding.p1.d 
	@${RM} ${OBJECTDIR}/_ext/669684871/mbfuncholding.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/669684871/mbfuncholding.p1 ../modbus/functions/mbfuncholding.c 
	@-${MV} ${OBJECTDIR}/_ext/669684871/mbfuncholding.d ${OBJECTDIR}/_ext/669684871/mbfuncholding.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/669684871/mbfuncholding.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/669684871/mbfuncinput.p1: ../modbus/functions/mbfuncinput.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/669684871" 
	@${RM} ${OBJECTDIR}/_ext/669684871/mbfuncinput.p1.d 
	@${RM} ${OBJECTDIR}/_ext/669684871/mbfuncinput.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/669684871/mbfuncinput.p1 ../modbus/functions/mbfuncinput.c 
	@-${MV} ${OBJECTDIR}/_ext/669684871/mbfuncinput.d ${OBJECTDIR}/_ext/669684871/mbfuncinput.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/669684871/mbfuncinput.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/669684871/mbfuncother.p1: ../modbus/functions/mbfuncother.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/669684871" 
	@${RM} ${OBJECTDIR}/_ext/669684871/mbfuncother.p1.d 
	@${RM} ${OBJECTDIR}/_ext/669684871/mbfuncother.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/669684871/mbfuncother.p1 ../modbus/functions/mbfuncother.c 
	@-${MV} ${OBJECTDIR}/_ext/669684871/mbfuncother.d ${OBJECTDIR}/_ext/669684871/mbfuncother.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/669684871/mbfuncother.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/669684871/mbutils.p1: ../modbus/functions/mbutils.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/669684871" 
	@${RM} ${OBJECTDIR}/_ext/669684871/mbutils.p1.d 
	@${RM} ${OBJECTDIR}/_ext/669684871/mbutils.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/669684871/mbutils.p1 ../modbus/functions/mbutils.c 
	@-${MV} ${OBJECTDIR}/_ext/669684871/mbutils.d ${OBJECTDIR}/_ext/669684871/mbutils.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/669684871/mbutils.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/815087133/portevent.p1: ../modbus/port/portevent.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/815087133" 
	@${RM} ${OBJECTDIR}/_ext/815087133/portevent.p1.d 
	@${RM} ${OBJECTDIR}/_ext/815087133/portevent.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/815087133/portevent.p1 ../modbus/port/portevent.c 
	@-${MV} ${OBJECTDIR}/_ext/815087133/portevent.d ${OBJECTDIR}/_ext/815087133/portevent.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/815087133/portevent.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/815087133/portserial.p1: ../modbus/port/portserial.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/815087133" 
	@${RM} ${OBJECTDIR}/_ext/815087133/portserial.p1.d 
	@${RM} ${OBJECTDIR}/_ext/815087133/portserial.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/815087133/portserial.p1 ../modbus/port/portserial.c 
	@-${MV} ${OBJECTDIR}/_ext/815087133/portserial.d ${OBJECTDIR}/_ext/815087133/portserial.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/815087133/portserial.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/815087133/porttimer.p1: ../modbus/port/porttimer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/815087133" 
	@${RM} ${OBJECTDIR}/_ext/815087133/porttimer.p1.d 
	@${RM} ${OBJECTDIR}/_ext/815087133/porttimer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/815087133/porttimer.p1 ../modbus/port/porttimer.c 
	@-${MV} ${OBJECTDIR}/_ext/815087133/porttimer.d ${OBJECTDIR}/_ext/815087133/porttimer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/815087133/porttimer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2104501039/mbcrc.p1: ../modbus/rtu/mbcrc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2104501039" 
	@${RM} ${OBJECTDIR}/_ext/2104501039/mbcrc.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2104501039/mbcrc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/2104501039/mbcrc.p1 ../modbus/rtu/mbcrc.c 
	@-${MV} ${OBJECTDIR}/_ext/2104501039/mbcrc.d ${OBJECTDIR}/_ext/2104501039/mbcrc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2104501039/mbcrc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2104501039/mbrtu.p1: ../modbus/rtu/mbrtu.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2104501039" 
	@${RM} ${OBJECTDIR}/_ext/2104501039/mbrtu.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2104501039/mbrtu.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/2104501039/mbrtu.p1 ../modbus/rtu/mbrtu.c 
	@-${MV} ${OBJECTDIR}/_ext/2104501039/mbrtu.d ${OBJECTDIR}/_ext/2104501039/mbrtu.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2104501039/mbrtu.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/423217399/application.p1: ../app/app_src/application.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/423217399" 
	@${RM} ${OBJECTDIR}/_ext/423217399/application.p1.d 
	@${RM} ${OBJECTDIR}/_ext/423217399/application.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/423217399/application.p1 ../app/app_src/application.c 
	@-${MV} ${OBJECTDIR}/_ext/423217399/application.d ${OBJECTDIR}/_ext/423217399/application.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/423217399/application.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/423217399/circular\ buffer.p1: ../app/app_src/circular\ buffer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/423217399" 
	@${RM} "${OBJECTDIR}/_ext/423217399/circular buffer.p1".d 
	@${RM} "${OBJECTDIR}/_ext/423217399/circular buffer.p1" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o "${OBJECTDIR}/_ext/423217399/circular buffer.p1" "../app/app_src/circular buffer.c" 
	@-${MV} "${OBJECTDIR}/_ext/423217399/circular buffer".d "${OBJECTDIR}/_ext/423217399/circular buffer.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/423217399/circular buffer.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/423217399/crc.p1: ../app/app_src/crc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/423217399" 
	@${RM} ${OBJECTDIR}/_ext/423217399/crc.p1.d 
	@${RM} ${OBJECTDIR}/_ext/423217399/crc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/423217399/crc.p1 ../app/app_src/crc.c 
	@-${MV} ${OBJECTDIR}/_ext/423217399/crc.d ${OBJECTDIR}/_ext/423217399/crc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/423217399/crc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/423217399/EEPROM.p1: ../app/app_src/EEPROM.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/423217399" 
	@${RM} ${OBJECTDIR}/_ext/423217399/EEPROM.p1.d 
	@${RM} ${OBJECTDIR}/_ext/423217399/EEPROM.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/423217399/EEPROM.p1 ../app/app_src/EEPROM.c 
	@-${MV} ${OBJECTDIR}/_ext/423217399/EEPROM.d ${OBJECTDIR}/_ext/423217399/EEPROM.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/423217399/EEPROM.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/423217399/led.p1: ../app/app_src/led.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/423217399" 
	@${RM} ${OBJECTDIR}/_ext/423217399/led.p1.d 
	@${RM} ${OBJECTDIR}/_ext/423217399/led.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/423217399/led.p1 ../app/app_src/led.c 
	@-${MV} ${OBJECTDIR}/_ext/423217399/led.d ${OBJECTDIR}/_ext/423217399/led.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/423217399/led.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/984464531/mb.p1: ../modbus/mb.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/984464531" 
	@${RM} ${OBJECTDIR}/_ext/984464531/mb.p1.d 
	@${RM} ${OBJECTDIR}/_ext/984464531/mb.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/984464531/mb.p1 ../modbus/mb.c 
	@-${MV} ${OBJECTDIR}/_ext/984464531/mb.d ${OBJECTDIR}/_ext/984464531/mb.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/984464531/mb.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/423217399/uart_default_control.p1: ../app/app_src/uart_default_control.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/423217399" 
	@${RM} ${OBJECTDIR}/_ext/423217399/uart_default_control.p1.d 
	@${RM} ${OBJECTDIR}/_ext/423217399/uart_default_control.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/423217399/uart_default_control.p1 ../app/app_src/uart_default_control.c 
	@-${MV} ${OBJECTDIR}/_ext/423217399/uart_default_control.d ${OBJECTDIR}/_ext/423217399/uart_default_control.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/423217399/uart_default_control.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/179975797/I2C_EEPROM.p1: ../memory/eeprom/eeprom_src/I2C_EEPROM.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/179975797" 
	@${RM} ${OBJECTDIR}/_ext/179975797/I2C_EEPROM.p1.d 
	@${RM} ${OBJECTDIR}/_ext/179975797/I2C_EEPROM.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/179975797/I2C_EEPROM.p1 ../memory/eeprom/eeprom_src/I2C_EEPROM.c 
	@-${MV} ${OBJECTDIR}/_ext/179975797/I2C_EEPROM.d ${OBJECTDIR}/_ext/179975797/I2C_EEPROM.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/179975797/I2C_EEPROM.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/179975797/PIC16_I2C_BITBANG.p1: ../memory/eeprom/eeprom_src/PIC16_I2C_BITBANG.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/179975797" 
	@${RM} ${OBJECTDIR}/_ext/179975797/PIC16_I2C_BITBANG.p1.d 
	@${RM} ${OBJECTDIR}/_ext/179975797/PIC16_I2C_BITBANG.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/179975797/PIC16_I2C_BITBANG.p1 ../memory/eeprom/eeprom_src/PIC16_I2C_BITBANG.c 
	@-${MV} ${OBJECTDIR}/_ext/179975797/PIC16_I2C_BITBANG.d ${OBJECTDIR}/_ext/179975797/PIC16_I2C_BITBANG.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/179975797/PIC16_I2C_BITBANG.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1339929363/Timers.p1: ../hal/hal_src/Timers.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1339929363" 
	@${RM} ${OBJECTDIR}/_ext/1339929363/Timers.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1339929363/Timers.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/1339929363/Timers.p1 ../hal/hal_src/Timers.c 
	@-${MV} ${OBJECTDIR}/_ext/1339929363/Timers.d ${OBJECTDIR}/_ext/1339929363/Timers.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1339929363/Timers.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/spi1.p1: mcc_generated_files/spi1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/spi1.p1 mcc_generated_files/spi1.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/spi1.d ${OBJECTDIR}/mcc_generated_files/spi1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/spi1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/tmr0.p1: mcc_generated_files/tmr0.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr0.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr0.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/tmr0.p1 mcc_generated_files/tmr0.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/tmr0.d ${OBJECTDIR}/mcc_generated_files/tmr0.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/tmr0.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/memory.p1: mcc_generated_files/memory.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/memory.p1 mcc_generated_files/memory.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/memory.d ${OBJECTDIR}/mcc_generated_files/memory.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/memory.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/device_config.p1: mcc_generated_files/device_config.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/device_config.p1 mcc_generated_files/device_config.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/device_config.d ${OBJECTDIR}/mcc_generated_files/device_config.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/device_config.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.p1: mcc_generated_files/interrupt_manager.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.p1 mcc_generated_files/interrupt_manager.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/mcc.p1: mcc_generated_files/mcc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/mcc.p1 mcc_generated_files/mcc.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/mcc.d ${OBJECTDIR}/mcc_generated_files/mcc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/mcc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/uart1.p1: mcc_generated_files/uart1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/uart1.p1 mcc_generated_files/uart1.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/uart1.d ${OBJECTDIR}/mcc_generated_files/uart1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/uart1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.p1: mcc_generated_files/pin_manager.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/pin_manager.p1 mcc_generated_files/pin_manager.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/pin_manager.d ${OBJECTDIR}/mcc_generated_files/pin_manager.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/pin_manager.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/crc.p1: mcc_generated_files/crc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/crc.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/crc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/crc.p1 mcc_generated_files/crc.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/crc.d ${OBJECTDIR}/mcc_generated_files/crc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/crc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/tmr3.p1: mcc_generated_files/tmr3.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr3.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr3.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/tmr3.p1 mcc_generated_files/tmr3.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/tmr3.d ${OBJECTDIR}/mcc_generated_files/tmr3.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/tmr3.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/tmr5.p1: mcc_generated_files/tmr5.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr5.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr5.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/tmr5.p1 mcc_generated_files/tmr5.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/tmr5.d ${OBJECTDIR}/mcc_generated_files/tmr5.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/tmr5.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/93605685/nwk.p1: ../nwk/nwk_src/nwk.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwk.p1.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwk.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/93605685/nwk.p1 ../nwk/nwk_src/nwk.c 
	@-${MV} ${OBJECTDIR}/_ext/93605685/nwk.d ${OBJECTDIR}/_ext/93605685/nwk.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/93605685/nwk.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/93605685/nwkDataReq.p1: ../nwk/nwk_src/nwkDataReq.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkDataReq.p1.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkDataReq.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/93605685/nwkDataReq.p1 ../nwk/nwk_src/nwkDataReq.c 
	@-${MV} ${OBJECTDIR}/_ext/93605685/nwkDataReq.d ${OBJECTDIR}/_ext/93605685/nwkDataReq.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/93605685/nwkDataReq.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/93605685/nwkFrame.p1: ../nwk/nwk_src/nwkFrame.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkFrame.p1.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkFrame.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/93605685/nwkFrame.p1 ../nwk/nwk_src/nwkFrame.c 
	@-${MV} ${OBJECTDIR}/_ext/93605685/nwkFrame.d ${OBJECTDIR}/_ext/93605685/nwkFrame.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/93605685/nwkFrame.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/93605685/nwkGroup.p1: ../nwk/nwk_src/nwkGroup.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkGroup.p1.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkGroup.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/93605685/nwkGroup.p1 ../nwk/nwk_src/nwkGroup.c 
	@-${MV} ${OBJECTDIR}/_ext/93605685/nwkGroup.d ${OBJECTDIR}/_ext/93605685/nwkGroup.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/93605685/nwkGroup.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/93605685/nwkRoute.p1: ../nwk/nwk_src/nwkRoute.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkRoute.p1.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkRoute.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/93605685/nwkRoute.p1 ../nwk/nwk_src/nwkRoute.c 
	@-${MV} ${OBJECTDIR}/_ext/93605685/nwkRoute.d ${OBJECTDIR}/_ext/93605685/nwkRoute.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/93605685/nwkRoute.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.p1: ../nwk/nwk_src/nwkRouteDiscovery.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.p1.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.p1 ../nwk/nwk_src/nwkRouteDiscovery.c 
	@-${MV} ${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.d ${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/93605685/nwkRx.p1: ../nwk/nwk_src/nwkRx.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkRx.p1.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkRx.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/93605685/nwkRx.p1 ../nwk/nwk_src/nwkRx.c 
	@-${MV} ${OBJECTDIR}/_ext/93605685/nwkRx.d ${OBJECTDIR}/_ext/93605685/nwkRx.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/93605685/nwkRx.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/93605685/nwkSecurity.p1: ../nwk/nwk_src/nwkSecurity.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkSecurity.p1.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkSecurity.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/93605685/nwkSecurity.p1 ../nwk/nwk_src/nwkSecurity.c 
	@-${MV} ${OBJECTDIR}/_ext/93605685/nwkSecurity.d ${OBJECTDIR}/_ext/93605685/nwkSecurity.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/93605685/nwkSecurity.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/93605685/nwkTx.p1: ../nwk/nwk_src/nwkTx.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkTx.p1.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkTx.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/93605685/nwkTx.p1 ../nwk/nwk_src/nwkTx.c 
	@-${MV} ${OBJECTDIR}/_ext/93605685/nwkTx.d ${OBJECTDIR}/_ext/93605685/nwkTx.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/93605685/nwkTx.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1084134857/phy.p1: ../phy/phy_src/phy.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1084134857" 
	@${RM} ${OBJECTDIR}/_ext/1084134857/phy.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1084134857/phy.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/1084134857/phy.p1 ../phy/phy_src/phy.c 
	@-${MV} ${OBJECTDIR}/_ext/1084134857/phy.d ${OBJECTDIR}/_ext/1084134857/phy.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1084134857/phy.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1971803433/sx1276.p1: ../phy/sx1276/sx1276_src/sx1276.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1971803433" 
	@${RM} ${OBJECTDIR}/_ext/1971803433/sx1276.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1971803433/sx1276.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/1971803433/sx1276.p1 ../phy/sx1276/sx1276_src/sx1276.c 
	@-${MV} ${OBJECTDIR}/_ext/1971803433/sx1276.d ${OBJECTDIR}/_ext/1971803433/sx1276.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1971803433/sx1276.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1278352567/sx1280-hal.p1: ../phy/sx1280/sx1280_src/sx1280-hal.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1278352567" 
	@${RM} ${OBJECTDIR}/_ext/1278352567/sx1280-hal.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1278352567/sx1280-hal.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/1278352567/sx1280-hal.p1 ../phy/sx1280/sx1280_src/sx1280-hal.c 
	@-${MV} ${OBJECTDIR}/_ext/1278352567/sx1280-hal.d ${OBJECTDIR}/_ext/1278352567/sx1280-hal.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1278352567/sx1280-hal.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1278352567/sx1280.p1: ../phy/sx1280/sx1280_src/sx1280.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1278352567" 
	@${RM} ${OBJECTDIR}/_ext/1278352567/sx1280.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1278352567/sx1280.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/1278352567/sx1280.p1 ../phy/sx1280/sx1280_src/sx1280.c 
	@-${MV} ${OBJECTDIR}/_ext/1278352567/sx1280.d ${OBJECTDIR}/_ext/1278352567/sx1280.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1278352567/sx1280.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1278352567/sx1280_drv.p1: ../phy/sx1280/sx1280_src/sx1280_drv.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1278352567" 
	@${RM} ${OBJECTDIR}/_ext/1278352567/sx1280_drv.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1278352567/sx1280_drv.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/1278352567/sx1280_drv.p1 ../phy/sx1280/sx1280_src/sx1280_drv.c 
	@-${MV} ${OBJECTDIR}/_ext/1278352567/sx1280_drv.d ${OBJECTDIR}/_ext/1278352567/sx1280_drv.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1278352567/sx1280_drv.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2045976161/sys.p1: ../sys/sys_src/sys.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2045976161" 
	@${RM} ${OBJECTDIR}/_ext/2045976161/sys.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2045976161/sys.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/2045976161/sys.p1 ../sys/sys_src/sys.c 
	@-${MV} ${OBJECTDIR}/_ext/2045976161/sys.d ${OBJECTDIR}/_ext/2045976161/sys.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2045976161/sys.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2045976161/sysEncrypt.p1: ../sys/sys_src/sysEncrypt.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2045976161" 
	@${RM} ${OBJECTDIR}/_ext/2045976161/sysEncrypt.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2045976161/sysEncrypt.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/2045976161/sysEncrypt.p1 ../sys/sys_src/sysEncrypt.c 
	@-${MV} ${OBJECTDIR}/_ext/2045976161/sysEncrypt.d ${OBJECTDIR}/_ext/2045976161/sysEncrypt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2045976161/sysEncrypt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2045976161/sysTimer.p1: ../sys/sys_src/sysTimer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2045976161" 
	@${RM} ${OBJECTDIR}/_ext/2045976161/sysTimer.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2045976161/sysTimer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/2045976161/sysTimer.p1 ../sys/sys_src/sysTimer.c 
	@-${MV} ${OBJECTDIR}/_ext/2045976161/sysTimer.d ${OBJECTDIR}/_ext/2045976161/sysTimer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2045976161/sysTimer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/127225941/wdt.p1: ../wdt/wdt_src/wdt.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/127225941" 
	@${RM} ${OBJECTDIR}/_ext/127225941/wdt.p1.d 
	@${RM} ${OBJECTDIR}/_ext/127225941/wdt.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/127225941/wdt.p1 ../wdt/wdt_src/wdt.c 
	@-${MV} ${OBJECTDIR}/_ext/127225941/wdt.d ${OBJECTDIR}/_ext/127225941/wdt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/127225941/wdt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/298884965/AES.p1: ../aes/aes_src/AES.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/298884965" 
	@${RM} ${OBJECTDIR}/_ext/298884965/AES.p1.d 
	@${RM} ${OBJECTDIR}/_ext/298884965/AES.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/298884965/AES.p1 ../aes/aes_src/AES.c 
	@-${MV} ${OBJECTDIR}/_ext/298884965/AES.d ${OBJECTDIR}/_ext/298884965/AES.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/298884965/AES.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/669684871/mbfunccoils.p1: ../modbus/functions/mbfunccoils.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/669684871" 
	@${RM} ${OBJECTDIR}/_ext/669684871/mbfunccoils.p1.d 
	@${RM} ${OBJECTDIR}/_ext/669684871/mbfunccoils.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/669684871/mbfunccoils.p1 ../modbus/functions/mbfunccoils.c 
	@-${MV} ${OBJECTDIR}/_ext/669684871/mbfunccoils.d ${OBJECTDIR}/_ext/669684871/mbfunccoils.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/669684871/mbfunccoils.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/669684871/mbfuncdiag.p1: ../modbus/functions/mbfuncdiag.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/669684871" 
	@${RM} ${OBJECTDIR}/_ext/669684871/mbfuncdiag.p1.d 
	@${RM} ${OBJECTDIR}/_ext/669684871/mbfuncdiag.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/669684871/mbfuncdiag.p1 ../modbus/functions/mbfuncdiag.c 
	@-${MV} ${OBJECTDIR}/_ext/669684871/mbfuncdiag.d ${OBJECTDIR}/_ext/669684871/mbfuncdiag.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/669684871/mbfuncdiag.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/669684871/mbfuncdisc.p1: ../modbus/functions/mbfuncdisc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/669684871" 
	@${RM} ${OBJECTDIR}/_ext/669684871/mbfuncdisc.p1.d 
	@${RM} ${OBJECTDIR}/_ext/669684871/mbfuncdisc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/669684871/mbfuncdisc.p1 ../modbus/functions/mbfuncdisc.c 
	@-${MV} ${OBJECTDIR}/_ext/669684871/mbfuncdisc.d ${OBJECTDIR}/_ext/669684871/mbfuncdisc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/669684871/mbfuncdisc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/669684871/mbfuncholding.p1: ../modbus/functions/mbfuncholding.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/669684871" 
	@${RM} ${OBJECTDIR}/_ext/669684871/mbfuncholding.p1.d 
	@${RM} ${OBJECTDIR}/_ext/669684871/mbfuncholding.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/669684871/mbfuncholding.p1 ../modbus/functions/mbfuncholding.c 
	@-${MV} ${OBJECTDIR}/_ext/669684871/mbfuncholding.d ${OBJECTDIR}/_ext/669684871/mbfuncholding.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/669684871/mbfuncholding.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/669684871/mbfuncinput.p1: ../modbus/functions/mbfuncinput.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/669684871" 
	@${RM} ${OBJECTDIR}/_ext/669684871/mbfuncinput.p1.d 
	@${RM} ${OBJECTDIR}/_ext/669684871/mbfuncinput.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/669684871/mbfuncinput.p1 ../modbus/functions/mbfuncinput.c 
	@-${MV} ${OBJECTDIR}/_ext/669684871/mbfuncinput.d ${OBJECTDIR}/_ext/669684871/mbfuncinput.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/669684871/mbfuncinput.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/669684871/mbfuncother.p1: ../modbus/functions/mbfuncother.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/669684871" 
	@${RM} ${OBJECTDIR}/_ext/669684871/mbfuncother.p1.d 
	@${RM} ${OBJECTDIR}/_ext/669684871/mbfuncother.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/669684871/mbfuncother.p1 ../modbus/functions/mbfuncother.c 
	@-${MV} ${OBJECTDIR}/_ext/669684871/mbfuncother.d ${OBJECTDIR}/_ext/669684871/mbfuncother.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/669684871/mbfuncother.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/669684871/mbutils.p1: ../modbus/functions/mbutils.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/669684871" 
	@${RM} ${OBJECTDIR}/_ext/669684871/mbutils.p1.d 
	@${RM} ${OBJECTDIR}/_ext/669684871/mbutils.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/669684871/mbutils.p1 ../modbus/functions/mbutils.c 
	@-${MV} ${OBJECTDIR}/_ext/669684871/mbutils.d ${OBJECTDIR}/_ext/669684871/mbutils.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/669684871/mbutils.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/815087133/portevent.p1: ../modbus/port/portevent.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/815087133" 
	@${RM} ${OBJECTDIR}/_ext/815087133/portevent.p1.d 
	@${RM} ${OBJECTDIR}/_ext/815087133/portevent.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/815087133/portevent.p1 ../modbus/port/portevent.c 
	@-${MV} ${OBJECTDIR}/_ext/815087133/portevent.d ${OBJECTDIR}/_ext/815087133/portevent.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/815087133/portevent.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/815087133/portserial.p1: ../modbus/port/portserial.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/815087133" 
	@${RM} ${OBJECTDIR}/_ext/815087133/portserial.p1.d 
	@${RM} ${OBJECTDIR}/_ext/815087133/portserial.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/815087133/portserial.p1 ../modbus/port/portserial.c 
	@-${MV} ${OBJECTDIR}/_ext/815087133/portserial.d ${OBJECTDIR}/_ext/815087133/portserial.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/815087133/portserial.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/815087133/porttimer.p1: ../modbus/port/porttimer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/815087133" 
	@${RM} ${OBJECTDIR}/_ext/815087133/porttimer.p1.d 
	@${RM} ${OBJECTDIR}/_ext/815087133/porttimer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/815087133/porttimer.p1 ../modbus/port/porttimer.c 
	@-${MV} ${OBJECTDIR}/_ext/815087133/porttimer.d ${OBJECTDIR}/_ext/815087133/porttimer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/815087133/porttimer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2104501039/mbcrc.p1: ../modbus/rtu/mbcrc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2104501039" 
	@${RM} ${OBJECTDIR}/_ext/2104501039/mbcrc.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2104501039/mbcrc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/2104501039/mbcrc.p1 ../modbus/rtu/mbcrc.c 
	@-${MV} ${OBJECTDIR}/_ext/2104501039/mbcrc.d ${OBJECTDIR}/_ext/2104501039/mbcrc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2104501039/mbcrc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2104501039/mbrtu.p1: ../modbus/rtu/mbrtu.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2104501039" 
	@${RM} ${OBJECTDIR}/_ext/2104501039/mbrtu.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2104501039/mbrtu.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/2104501039/mbrtu.p1 ../modbus/rtu/mbrtu.c 
	@-${MV} ${OBJECTDIR}/_ext/2104501039/mbrtu.d ${OBJECTDIR}/_ext/2104501039/mbrtu.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2104501039/mbrtu.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/423217399/application.p1: ../app/app_src/application.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/423217399" 
	@${RM} ${OBJECTDIR}/_ext/423217399/application.p1.d 
	@${RM} ${OBJECTDIR}/_ext/423217399/application.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/423217399/application.p1 ../app/app_src/application.c 
	@-${MV} ${OBJECTDIR}/_ext/423217399/application.d ${OBJECTDIR}/_ext/423217399/application.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/423217399/application.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/423217399/circular\ buffer.p1: ../app/app_src/circular\ buffer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/423217399" 
	@${RM} "${OBJECTDIR}/_ext/423217399/circular buffer.p1".d 
	@${RM} "${OBJECTDIR}/_ext/423217399/circular buffer.p1" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o "${OBJECTDIR}/_ext/423217399/circular buffer.p1" "../app/app_src/circular buffer.c" 
	@-${MV} "${OBJECTDIR}/_ext/423217399/circular buffer".d "${OBJECTDIR}/_ext/423217399/circular buffer.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/423217399/circular buffer.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/423217399/crc.p1: ../app/app_src/crc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/423217399" 
	@${RM} ${OBJECTDIR}/_ext/423217399/crc.p1.d 
	@${RM} ${OBJECTDIR}/_ext/423217399/crc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/423217399/crc.p1 ../app/app_src/crc.c 
	@-${MV} ${OBJECTDIR}/_ext/423217399/crc.d ${OBJECTDIR}/_ext/423217399/crc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/423217399/crc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/423217399/EEPROM.p1: ../app/app_src/EEPROM.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/423217399" 
	@${RM} ${OBJECTDIR}/_ext/423217399/EEPROM.p1.d 
	@${RM} ${OBJECTDIR}/_ext/423217399/EEPROM.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/423217399/EEPROM.p1 ../app/app_src/EEPROM.c 
	@-${MV} ${OBJECTDIR}/_ext/423217399/EEPROM.d ${OBJECTDIR}/_ext/423217399/EEPROM.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/423217399/EEPROM.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/423217399/led.p1: ../app/app_src/led.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/423217399" 
	@${RM} ${OBJECTDIR}/_ext/423217399/led.p1.d 
	@${RM} ${OBJECTDIR}/_ext/423217399/led.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/423217399/led.p1 ../app/app_src/led.c 
	@-${MV} ${OBJECTDIR}/_ext/423217399/led.d ${OBJECTDIR}/_ext/423217399/led.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/423217399/led.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/984464531/mb.p1: ../modbus/mb.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/984464531" 
	@${RM} ${OBJECTDIR}/_ext/984464531/mb.p1.d 
	@${RM} ${OBJECTDIR}/_ext/984464531/mb.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/984464531/mb.p1 ../modbus/mb.c 
	@-${MV} ${OBJECTDIR}/_ext/984464531/mb.d ${OBJECTDIR}/_ext/984464531/mb.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/984464531/mb.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/423217399/uart_default_control.p1: ../app/app_src/uart_default_control.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/423217399" 
	@${RM} ${OBJECTDIR}/_ext/423217399/uart_default_control.p1.d 
	@${RM} ${OBJECTDIR}/_ext/423217399/uart_default_control.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/423217399/uart_default_control.p1 ../app/app_src/uart_default_control.c 
	@-${MV} ${OBJECTDIR}/_ext/423217399/uart_default_control.d ${OBJECTDIR}/_ext/423217399/uart_default_control.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/423217399/uart_default_control.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/179975797/I2C_EEPROM.p1: ../memory/eeprom/eeprom_src/I2C_EEPROM.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/179975797" 
	@${RM} ${OBJECTDIR}/_ext/179975797/I2C_EEPROM.p1.d 
	@${RM} ${OBJECTDIR}/_ext/179975797/I2C_EEPROM.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/179975797/I2C_EEPROM.p1 ../memory/eeprom/eeprom_src/I2C_EEPROM.c 
	@-${MV} ${OBJECTDIR}/_ext/179975797/I2C_EEPROM.d ${OBJECTDIR}/_ext/179975797/I2C_EEPROM.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/179975797/I2C_EEPROM.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/179975797/PIC16_I2C_BITBANG.p1: ../memory/eeprom/eeprom_src/PIC16_I2C_BITBANG.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/179975797" 
	@${RM} ${OBJECTDIR}/_ext/179975797/PIC16_I2C_BITBANG.p1.d 
	@${RM} ${OBJECTDIR}/_ext/179975797/PIC16_I2C_BITBANG.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/179975797/PIC16_I2C_BITBANG.p1 ../memory/eeprom/eeprom_src/PIC16_I2C_BITBANG.c 
	@-${MV} ${OBJECTDIR}/_ext/179975797/PIC16_I2C_BITBANG.d ${OBJECTDIR}/_ext/179975797/PIC16_I2C_BITBANG.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/179975797/PIC16_I2C_BITBANG.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1339929363/Timers.p1: ../hal/hal_src/Timers.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1339929363" 
	@${RM} ${OBJECTDIR}/_ext/1339929363/Timers.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1339929363/Timers.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/1339929363/Timers.p1 ../hal/hal_src/Timers.c 
	@-${MV} ${OBJECTDIR}/_ext/1339929363/Timers.d ${OBJECTDIR}/_ext/1339929363/Timers.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1339929363/Timers.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/spi1.p1: mcc_generated_files/spi1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/spi1.p1 mcc_generated_files/spi1.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/spi1.d ${OBJECTDIR}/mcc_generated_files/spi1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/spi1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/tmr0.p1: mcc_generated_files/tmr0.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr0.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr0.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/tmr0.p1 mcc_generated_files/tmr0.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/tmr0.d ${OBJECTDIR}/mcc_generated_files/tmr0.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/tmr0.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/memory.p1: mcc_generated_files/memory.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/memory.p1 mcc_generated_files/memory.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/memory.d ${OBJECTDIR}/mcc_generated_files/memory.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/memory.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/device_config.p1: mcc_generated_files/device_config.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/device_config.p1 mcc_generated_files/device_config.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/device_config.d ${OBJECTDIR}/mcc_generated_files/device_config.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/device_config.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.p1: mcc_generated_files/interrupt_manager.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.p1 mcc_generated_files/interrupt_manager.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/mcc.p1: mcc_generated_files/mcc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/mcc.p1 mcc_generated_files/mcc.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/mcc.d ${OBJECTDIR}/mcc_generated_files/mcc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/mcc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/uart1.p1: mcc_generated_files/uart1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/uart1.p1 mcc_generated_files/uart1.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/uart1.d ${OBJECTDIR}/mcc_generated_files/uart1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/uart1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.p1: mcc_generated_files/pin_manager.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/pin_manager.p1 mcc_generated_files/pin_manager.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/pin_manager.d ${OBJECTDIR}/mcc_generated_files/pin_manager.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/pin_manager.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/crc.p1: mcc_generated_files/crc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/crc.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/crc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/crc.p1 mcc_generated_files/crc.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/crc.d ${OBJECTDIR}/mcc_generated_files/crc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/crc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/tmr3.p1: mcc_generated_files/tmr3.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr3.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr3.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/tmr3.p1 mcc_generated_files/tmr3.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/tmr3.d ${OBJECTDIR}/mcc_generated_files/tmr3.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/tmr3.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/tmr5.p1: mcc_generated_files/tmr5.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr5.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr5.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/tmr5.p1 mcc_generated_files/tmr5.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/tmr5.d ${OBJECTDIR}/mcc_generated_files/tmr5.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/tmr5.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/93605685/nwk.p1: ../nwk/nwk_src/nwk.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwk.p1.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwk.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/93605685/nwk.p1 ../nwk/nwk_src/nwk.c 
	@-${MV} ${OBJECTDIR}/_ext/93605685/nwk.d ${OBJECTDIR}/_ext/93605685/nwk.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/93605685/nwk.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/93605685/nwkDataReq.p1: ../nwk/nwk_src/nwkDataReq.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkDataReq.p1.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkDataReq.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/93605685/nwkDataReq.p1 ../nwk/nwk_src/nwkDataReq.c 
	@-${MV} ${OBJECTDIR}/_ext/93605685/nwkDataReq.d ${OBJECTDIR}/_ext/93605685/nwkDataReq.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/93605685/nwkDataReq.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/93605685/nwkFrame.p1: ../nwk/nwk_src/nwkFrame.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkFrame.p1.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkFrame.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/93605685/nwkFrame.p1 ../nwk/nwk_src/nwkFrame.c 
	@-${MV} ${OBJECTDIR}/_ext/93605685/nwkFrame.d ${OBJECTDIR}/_ext/93605685/nwkFrame.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/93605685/nwkFrame.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/93605685/nwkGroup.p1: ../nwk/nwk_src/nwkGroup.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkGroup.p1.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkGroup.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/93605685/nwkGroup.p1 ../nwk/nwk_src/nwkGroup.c 
	@-${MV} ${OBJECTDIR}/_ext/93605685/nwkGroup.d ${OBJECTDIR}/_ext/93605685/nwkGroup.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/93605685/nwkGroup.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/93605685/nwkRoute.p1: ../nwk/nwk_src/nwkRoute.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkRoute.p1.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkRoute.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/93605685/nwkRoute.p1 ../nwk/nwk_src/nwkRoute.c 
	@-${MV} ${OBJECTDIR}/_ext/93605685/nwkRoute.d ${OBJECTDIR}/_ext/93605685/nwkRoute.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/93605685/nwkRoute.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.p1: ../nwk/nwk_src/nwkRouteDiscovery.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.p1.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.p1 ../nwk/nwk_src/nwkRouteDiscovery.c 
	@-${MV} ${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.d ${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/93605685/nwkRx.p1: ../nwk/nwk_src/nwkRx.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkRx.p1.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkRx.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/93605685/nwkRx.p1 ../nwk/nwk_src/nwkRx.c 
	@-${MV} ${OBJECTDIR}/_ext/93605685/nwkRx.d ${OBJECTDIR}/_ext/93605685/nwkRx.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/93605685/nwkRx.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/93605685/nwkSecurity.p1: ../nwk/nwk_src/nwkSecurity.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkSecurity.p1.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkSecurity.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/93605685/nwkSecurity.p1 ../nwk/nwk_src/nwkSecurity.c 
	@-${MV} ${OBJECTDIR}/_ext/93605685/nwkSecurity.d ${OBJECTDIR}/_ext/93605685/nwkSecurity.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/93605685/nwkSecurity.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/93605685/nwkTx.p1: ../nwk/nwk_src/nwkTx.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkTx.p1.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkTx.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/93605685/nwkTx.p1 ../nwk/nwk_src/nwkTx.c 
	@-${MV} ${OBJECTDIR}/_ext/93605685/nwkTx.d ${OBJECTDIR}/_ext/93605685/nwkTx.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/93605685/nwkTx.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1084134857/phy.p1: ../phy/phy_src/phy.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1084134857" 
	@${RM} ${OBJECTDIR}/_ext/1084134857/phy.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1084134857/phy.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/1084134857/phy.p1 ../phy/phy_src/phy.c 
	@-${MV} ${OBJECTDIR}/_ext/1084134857/phy.d ${OBJECTDIR}/_ext/1084134857/phy.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1084134857/phy.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1971803433/sx1276.p1: ../phy/sx1276/sx1276_src/sx1276.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1971803433" 
	@${RM} ${OBJECTDIR}/_ext/1971803433/sx1276.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1971803433/sx1276.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/1971803433/sx1276.p1 ../phy/sx1276/sx1276_src/sx1276.c 
	@-${MV} ${OBJECTDIR}/_ext/1971803433/sx1276.d ${OBJECTDIR}/_ext/1971803433/sx1276.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1971803433/sx1276.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1278352567/sx1280-hal.p1: ../phy/sx1280/sx1280_src/sx1280-hal.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1278352567" 
	@${RM} ${OBJECTDIR}/_ext/1278352567/sx1280-hal.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1278352567/sx1280-hal.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/1278352567/sx1280-hal.p1 ../phy/sx1280/sx1280_src/sx1280-hal.c 
	@-${MV} ${OBJECTDIR}/_ext/1278352567/sx1280-hal.d ${OBJECTDIR}/_ext/1278352567/sx1280-hal.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1278352567/sx1280-hal.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1278352567/sx1280.p1: ../phy/sx1280/sx1280_src/sx1280.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1278352567" 
	@${RM} ${OBJECTDIR}/_ext/1278352567/sx1280.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1278352567/sx1280.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/1278352567/sx1280.p1 ../phy/sx1280/sx1280_src/sx1280.c 
	@-${MV} ${OBJECTDIR}/_ext/1278352567/sx1280.d ${OBJECTDIR}/_ext/1278352567/sx1280.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1278352567/sx1280.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1278352567/sx1280_drv.p1: ../phy/sx1280/sx1280_src/sx1280_drv.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1278352567" 
	@${RM} ${OBJECTDIR}/_ext/1278352567/sx1280_drv.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1278352567/sx1280_drv.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/1278352567/sx1280_drv.p1 ../phy/sx1280/sx1280_src/sx1280_drv.c 
	@-${MV} ${OBJECTDIR}/_ext/1278352567/sx1280_drv.d ${OBJECTDIR}/_ext/1278352567/sx1280_drv.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1278352567/sx1280_drv.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2045976161/sys.p1: ../sys/sys_src/sys.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2045976161" 
	@${RM} ${OBJECTDIR}/_ext/2045976161/sys.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2045976161/sys.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/2045976161/sys.p1 ../sys/sys_src/sys.c 
	@-${MV} ${OBJECTDIR}/_ext/2045976161/sys.d ${OBJECTDIR}/_ext/2045976161/sys.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2045976161/sys.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2045976161/sysEncrypt.p1: ../sys/sys_src/sysEncrypt.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2045976161" 
	@${RM} ${OBJECTDIR}/_ext/2045976161/sysEncrypt.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2045976161/sysEncrypt.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/2045976161/sysEncrypt.p1 ../sys/sys_src/sysEncrypt.c 
	@-${MV} ${OBJECTDIR}/_ext/2045976161/sysEncrypt.d ${OBJECTDIR}/_ext/2045976161/sysEncrypt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2045976161/sysEncrypt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2045976161/sysTimer.p1: ../sys/sys_src/sysTimer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2045976161" 
	@${RM} ${OBJECTDIR}/_ext/2045976161/sysTimer.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2045976161/sysTimer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/2045976161/sysTimer.p1 ../sys/sys_src/sysTimer.c 
	@-${MV} ${OBJECTDIR}/_ext/2045976161/sysTimer.d ${OBJECTDIR}/_ext/2045976161/sysTimer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2045976161/sysTimer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/127225941/wdt.p1: ../wdt/wdt_src/wdt.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/127225941" 
	@${RM} ${OBJECTDIR}/_ext/127225941/wdt.p1.d 
	@${RM} ${OBJECTDIR}/_ext/127225941/wdt.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/127225941/wdt.p1 ../wdt/wdt_src/wdt.c 
	@-${MV} ${OBJECTDIR}/_ext/127225941/wdt.d ${OBJECTDIR}/_ext/127225941/wdt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/127225941/wdt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -DXPRJ_MBRTU=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/PIC18F27K42.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/PIC18F27K42.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_MBRTU=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto        $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/PIC18F27K42.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/PIC18F27K42.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/PIC18F27K42.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/PIC18F27K42.${IMAGE_TYPE}.map  -DXPRJ_MBRTU=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -Og -flocal -maddrqual=ignore -DMBRTU -DDEBUGVECTOR -DSX1276 -xassembler-with-cpp -I"../app/app_inc" -I"../hal/hal_inc" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"mcc_generated_files" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../modbus/functions" -I"../aes/aes_inc" -I"../wdt/wdt_inc" -I"../memory/eeprom/eeprom_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mno-download -mdefault-config-bits -std=c99 -gdwarf-3 -mstack=hybrid:auto:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/PIC18F27K42.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/MBRTU
	${RM} -r dist/MBRTU

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
