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
ifeq "$(wildcard nbproject/Makefile-local-atcomm.mk)" "nbproject/Makefile-local-atcomm.mk"
include nbproject/Makefile-local-atcomm.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=atcomm
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PIC32MM0256GPM048.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PIC32MM0256GPM048.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../aes/aes_src/AES.c ../app/app_src/application.c "../app/app_src/circular buffer.c" ../app/app_src/crc.c ../app/app_src/EEPROM.c ../app/app_src/led.c ../app/app_src/uart_default_control.c ../hal/hal_src/Timers.c mcc_generated_files/memory/flash.c mcc_generated_files/clock.c mcc_generated_files/exceptions.c mcc_generated_files/system.c mcc_generated_files/mcc.c mcc_generated_files/pin_manager.c mcc_generated_files/interrupt_manager.c mcc_generated_files/uart3.c mcc_generated_files/spi2.c mcc_generated_files/coretimer.c mcc_generated_files/dma.c mcc_generated_files/crc.c mcc_generated_files/tmr3.c mcc_generated_files/uart2.c ../modbus/rtu/mbcrc.c ../nwk/nwk_src/nwk.c ../nwk/nwk_src/nwkDataReq.c ../nwk/nwk_src/nwkFrame.c ../nwk/nwk_src/nwkGroup.c ../nwk/nwk_src/nwkRoute.c ../nwk/nwk_src/nwkRouteDiscovery.c ../nwk/nwk_src/nwkRx.c ../nwk/nwk_src/nwkSecurity.c ../nwk/nwk_src/nwkTx.c ../phy/phy_src/phy.c ../phy/sx1276/sx1276_src/sx1276.c ../phy/sx1280/sx1280_src/sx1280-hal.c ../phy/sx1280/sx1280_src/sx1280.c ../phy/sx1280/sx1280_src/sx1280_drv.c ../sys/sys_src/sys.c ../sys/sys_src/sysEncrypt.c ../sys/sys_src/sysTimer.c ../wdt/wdt_src/wdt.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/298884965/AES.o ${OBJECTDIR}/_ext/423217399/application.o "${OBJECTDIR}/_ext/423217399/circular buffer.o" ${OBJECTDIR}/_ext/423217399/crc.o ${OBJECTDIR}/_ext/423217399/EEPROM.o ${OBJECTDIR}/_ext/423217399/led.o ${OBJECTDIR}/_ext/423217399/uart_default_control.o ${OBJECTDIR}/_ext/1339929363/Timers.o ${OBJECTDIR}/mcc_generated_files/memory/flash.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/exceptions.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/uart3.o ${OBJECTDIR}/mcc_generated_files/spi2.o ${OBJECTDIR}/mcc_generated_files/coretimer.o ${OBJECTDIR}/mcc_generated_files/dma.o ${OBJECTDIR}/mcc_generated_files/crc.o ${OBJECTDIR}/mcc_generated_files/tmr3.o ${OBJECTDIR}/mcc_generated_files/uart2.o ${OBJECTDIR}/_ext/2104501039/mbcrc.o ${OBJECTDIR}/_ext/93605685/nwk.o ${OBJECTDIR}/_ext/93605685/nwkDataReq.o ${OBJECTDIR}/_ext/93605685/nwkFrame.o ${OBJECTDIR}/_ext/93605685/nwkGroup.o ${OBJECTDIR}/_ext/93605685/nwkRoute.o ${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.o ${OBJECTDIR}/_ext/93605685/nwkRx.o ${OBJECTDIR}/_ext/93605685/nwkSecurity.o ${OBJECTDIR}/_ext/93605685/nwkTx.o ${OBJECTDIR}/_ext/1084134857/phy.o ${OBJECTDIR}/_ext/1971803433/sx1276.o ${OBJECTDIR}/_ext/1278352567/sx1280-hal.o ${OBJECTDIR}/_ext/1278352567/sx1280.o ${OBJECTDIR}/_ext/1278352567/sx1280_drv.o ${OBJECTDIR}/_ext/2045976161/sys.o ${OBJECTDIR}/_ext/2045976161/sysEncrypt.o ${OBJECTDIR}/_ext/2045976161/sysTimer.o ${OBJECTDIR}/_ext/127225941/wdt.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/298884965/AES.o.d ${OBJECTDIR}/_ext/423217399/application.o.d "${OBJECTDIR}/_ext/423217399/circular buffer.o.d" ${OBJECTDIR}/_ext/423217399/crc.o.d ${OBJECTDIR}/_ext/423217399/EEPROM.o.d ${OBJECTDIR}/_ext/423217399/led.o.d ${OBJECTDIR}/_ext/423217399/uart_default_control.o.d ${OBJECTDIR}/_ext/1339929363/Timers.o.d ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d ${OBJECTDIR}/mcc_generated_files/clock.o.d ${OBJECTDIR}/mcc_generated_files/exceptions.o.d ${OBJECTDIR}/mcc_generated_files/system.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/uart3.o.d ${OBJECTDIR}/mcc_generated_files/spi2.o.d ${OBJECTDIR}/mcc_generated_files/coretimer.o.d ${OBJECTDIR}/mcc_generated_files/dma.o.d ${OBJECTDIR}/mcc_generated_files/crc.o.d ${OBJECTDIR}/mcc_generated_files/tmr3.o.d ${OBJECTDIR}/mcc_generated_files/uart2.o.d ${OBJECTDIR}/_ext/2104501039/mbcrc.o.d ${OBJECTDIR}/_ext/93605685/nwk.o.d ${OBJECTDIR}/_ext/93605685/nwkDataReq.o.d ${OBJECTDIR}/_ext/93605685/nwkFrame.o.d ${OBJECTDIR}/_ext/93605685/nwkGroup.o.d ${OBJECTDIR}/_ext/93605685/nwkRoute.o.d ${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.o.d ${OBJECTDIR}/_ext/93605685/nwkRx.o.d ${OBJECTDIR}/_ext/93605685/nwkSecurity.o.d ${OBJECTDIR}/_ext/93605685/nwkTx.o.d ${OBJECTDIR}/_ext/1084134857/phy.o.d ${OBJECTDIR}/_ext/1971803433/sx1276.o.d ${OBJECTDIR}/_ext/1278352567/sx1280-hal.o.d ${OBJECTDIR}/_ext/1278352567/sx1280.o.d ${OBJECTDIR}/_ext/1278352567/sx1280_drv.o.d ${OBJECTDIR}/_ext/2045976161/sys.o.d ${OBJECTDIR}/_ext/2045976161/sysEncrypt.o.d ${OBJECTDIR}/_ext/2045976161/sysTimer.o.d ${OBJECTDIR}/_ext/127225941/wdt.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/298884965/AES.o ${OBJECTDIR}/_ext/423217399/application.o ${OBJECTDIR}/_ext/423217399/circular\ buffer.o ${OBJECTDIR}/_ext/423217399/crc.o ${OBJECTDIR}/_ext/423217399/EEPROM.o ${OBJECTDIR}/_ext/423217399/led.o ${OBJECTDIR}/_ext/423217399/uart_default_control.o ${OBJECTDIR}/_ext/1339929363/Timers.o ${OBJECTDIR}/mcc_generated_files/memory/flash.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/exceptions.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/uart3.o ${OBJECTDIR}/mcc_generated_files/spi2.o ${OBJECTDIR}/mcc_generated_files/coretimer.o ${OBJECTDIR}/mcc_generated_files/dma.o ${OBJECTDIR}/mcc_generated_files/crc.o ${OBJECTDIR}/mcc_generated_files/tmr3.o ${OBJECTDIR}/mcc_generated_files/uart2.o ${OBJECTDIR}/_ext/2104501039/mbcrc.o ${OBJECTDIR}/_ext/93605685/nwk.o ${OBJECTDIR}/_ext/93605685/nwkDataReq.o ${OBJECTDIR}/_ext/93605685/nwkFrame.o ${OBJECTDIR}/_ext/93605685/nwkGroup.o ${OBJECTDIR}/_ext/93605685/nwkRoute.o ${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.o ${OBJECTDIR}/_ext/93605685/nwkRx.o ${OBJECTDIR}/_ext/93605685/nwkSecurity.o ${OBJECTDIR}/_ext/93605685/nwkTx.o ${OBJECTDIR}/_ext/1084134857/phy.o ${OBJECTDIR}/_ext/1971803433/sx1276.o ${OBJECTDIR}/_ext/1278352567/sx1280-hal.o ${OBJECTDIR}/_ext/1278352567/sx1280.o ${OBJECTDIR}/_ext/1278352567/sx1280_drv.o ${OBJECTDIR}/_ext/2045976161/sys.o ${OBJECTDIR}/_ext/2045976161/sysEncrypt.o ${OBJECTDIR}/_ext/2045976161/sysTimer.o ${OBJECTDIR}/_ext/127225941/wdt.o ${OBJECTDIR}/main.o

# Source Files
SOURCEFILES=../aes/aes_src/AES.c ../app/app_src/application.c ../app/app_src/circular buffer.c ../app/app_src/crc.c ../app/app_src/EEPROM.c ../app/app_src/led.c ../app/app_src/uart_default_control.c ../hal/hal_src/Timers.c mcc_generated_files/memory/flash.c mcc_generated_files/clock.c mcc_generated_files/exceptions.c mcc_generated_files/system.c mcc_generated_files/mcc.c mcc_generated_files/pin_manager.c mcc_generated_files/interrupt_manager.c mcc_generated_files/uart3.c mcc_generated_files/spi2.c mcc_generated_files/coretimer.c mcc_generated_files/dma.c mcc_generated_files/crc.c mcc_generated_files/tmr3.c mcc_generated_files/uart2.c ../modbus/rtu/mbcrc.c ../nwk/nwk_src/nwk.c ../nwk/nwk_src/nwkDataReq.c ../nwk/nwk_src/nwkFrame.c ../nwk/nwk_src/nwkGroup.c ../nwk/nwk_src/nwkRoute.c ../nwk/nwk_src/nwkRouteDiscovery.c ../nwk/nwk_src/nwkRx.c ../nwk/nwk_src/nwkSecurity.c ../nwk/nwk_src/nwkTx.c ../phy/phy_src/phy.c ../phy/sx1276/sx1276_src/sx1276.c ../phy/sx1280/sx1280_src/sx1280-hal.c ../phy/sx1280/sx1280_src/sx1280.c ../phy/sx1280/sx1280_src/sx1280_drv.c ../sys/sys_src/sys.c ../sys/sys_src/sysEncrypt.c ../sys/sys_src/sysTimer.c ../wdt/wdt_src/wdt.c main.c



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
	${MAKE}  -f nbproject/Makefile-atcomm.mk dist/${CND_CONF}/${IMAGE_TYPE}/PIC32MM0256GPM048.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MM0256GPM048
MP_LINKER_FILE_OPTION=
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
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/298884965/AES.o: ../aes/aes_src/AES.c  .generated_files/e87256a04b0dd8ddf1718c5b737ed26c8f3e9e6b.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/298884965" 
	@${RM} ${OBJECTDIR}/_ext/298884965/AES.o.d 
	@${RM} ${OBJECTDIR}/_ext/298884965/AES.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/298884965/AES.o.d" -o ${OBJECTDIR}/_ext/298884965/AES.o ../aes/aes_src/AES.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/423217399/application.o: ../app/app_src/application.c  .generated_files/7d7be2ded1a6abae26fb28deaf3ab875d4efe64f.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/423217399" 
	@${RM} ${OBJECTDIR}/_ext/423217399/application.o.d 
	@${RM} ${OBJECTDIR}/_ext/423217399/application.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/423217399/application.o.d" -o ${OBJECTDIR}/_ext/423217399/application.o ../app/app_src/application.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/423217399/circular\ buffer.o: ../app/app_src/circular\ buffer.c  .generated_files/309941ff30bacb684bd5a2e75d6b083e24d0cdf0.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/423217399" 
	@${RM} "${OBJECTDIR}/_ext/423217399/circular buffer.o".d 
	@${RM} "${OBJECTDIR}/_ext/423217399/circular buffer.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/423217399/circular buffer.o.d" -o "${OBJECTDIR}/_ext/423217399/circular buffer.o" "../app/app_src/circular buffer.c"    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/423217399/crc.o: ../app/app_src/crc.c  .generated_files/f2eca0d9892b8cc481be8a3def19d2b939cce427.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/423217399" 
	@${RM} ${OBJECTDIR}/_ext/423217399/crc.o.d 
	@${RM} ${OBJECTDIR}/_ext/423217399/crc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/423217399/crc.o.d" -o ${OBJECTDIR}/_ext/423217399/crc.o ../app/app_src/crc.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/423217399/EEPROM.o: ../app/app_src/EEPROM.c  .generated_files/880c3be0e0fd7b48732a1cf6823f47385f9ec649.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/423217399" 
	@${RM} ${OBJECTDIR}/_ext/423217399/EEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/423217399/EEPROM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/423217399/EEPROM.o.d" -o ${OBJECTDIR}/_ext/423217399/EEPROM.o ../app/app_src/EEPROM.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/423217399/led.o: ../app/app_src/led.c  .generated_files/62192fd682f22b0df679266d74cc5efab4784ddf.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/423217399" 
	@${RM} ${OBJECTDIR}/_ext/423217399/led.o.d 
	@${RM} ${OBJECTDIR}/_ext/423217399/led.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/423217399/led.o.d" -o ${OBJECTDIR}/_ext/423217399/led.o ../app/app_src/led.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/423217399/uart_default_control.o: ../app/app_src/uart_default_control.c  .generated_files/fe28213cca928b2c78c716c513c453a55ec1ba8b.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/423217399" 
	@${RM} ${OBJECTDIR}/_ext/423217399/uart_default_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/423217399/uart_default_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/423217399/uart_default_control.o.d" -o ${OBJECTDIR}/_ext/423217399/uart_default_control.o ../app/app_src/uart_default_control.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1339929363/Timers.o: ../hal/hal_src/Timers.c  .generated_files/7af6059645384d7554db4160c57caa0dd3c9c00d.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1339929363" 
	@${RM} ${OBJECTDIR}/_ext/1339929363/Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1339929363/Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/1339929363/Timers.o.d" -o ${OBJECTDIR}/_ext/1339929363/Timers.o ../hal/hal_src/Timers.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/memory/flash.o: mcc_generated_files/memory/flash.c  .generated_files/88773a73f154a132f3e17729e856e34cec036acf.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/memory/flash.o.d" -o ${OBJECTDIR}/mcc_generated_files/memory/flash.o mcc_generated_files/memory/flash.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/11534b2fb71a13d0cefe14f3a1011bea8915009.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d" -o ${OBJECTDIR}/mcc_generated_files/clock.o mcc_generated_files/clock.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/exceptions.o: mcc_generated_files/exceptions.c  .generated_files/7c449532318d7661b4c78de34b1178de544f3e66.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/exceptions.o.d" -o ${OBJECTDIR}/mcc_generated_files/exceptions.o mcc_generated_files/exceptions.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/d34e94564b00a5dd0f78a10da65b3d97deb014f5.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d" -o ${OBJECTDIR}/mcc_generated_files/system.o mcc_generated_files/system.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/f6d2eecf9acc8de6177c0e9fb04677ba889a98e6.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/bce2fe5f2fff3d8ac52b8aafde476dc5fd83b750.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o mcc_generated_files/pin_manager.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/a626ac42169503c8b8afc3e4556564888e0a03e9.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o mcc_generated_files/interrupt_manager.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/uart3.o: mcc_generated_files/uart3.c  .generated_files/add5f2ceb074cf1b4406a1a7249dd40f0cef18f.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart3.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart3.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart3.o mcc_generated_files/uart3.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/spi2.o: mcc_generated_files/spi2.c  .generated_files/28285b01c89a4d9a4ad1ea62a93b74b4a433892b.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi2.o.d" -o ${OBJECTDIR}/mcc_generated_files/spi2.o mcc_generated_files/spi2.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/coretimer.o: mcc_generated_files/coretimer.c  .generated_files/b8b977817a9e1a3c1350805677be7d2c50f9cea4.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/coretimer.o.d" -o ${OBJECTDIR}/mcc_generated_files/coretimer.o mcc_generated_files/coretimer.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/dma.o: mcc_generated_files/dma.c  .generated_files/3364c30864cdd94696964e9e10884587ddab54f1.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/dma.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/dma.o.d" -o ${OBJECTDIR}/mcc_generated_files/dma.o mcc_generated_files/dma.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/crc.o: mcc_generated_files/crc.c  .generated_files/19bca339165632b5797b43406158d55ea95c6932.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/crc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/crc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/crc.o.d" -o ${OBJECTDIR}/mcc_generated_files/crc.o mcc_generated_files/crc.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/tmr3.o: mcc_generated_files/tmr3.c  .generated_files/659e53ff8e03150a6c1bd88c890fd687313b3d00.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr3.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr3.o.d" -o ${OBJECTDIR}/mcc_generated_files/tmr3.o mcc_generated_files/tmr3.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/uart2.o: mcc_generated_files/uart2.c  .generated_files/16f6d0425bc5275b86deef61d407b8167d7c8a3.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart2.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart2.o mcc_generated_files/uart2.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2104501039/mbcrc.o: ../modbus/rtu/mbcrc.c  .generated_files/23cb79c17936c698c4728b8d321262513abebbe1.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2104501039" 
	@${RM} ${OBJECTDIR}/_ext/2104501039/mbcrc.o.d 
	@${RM} ${OBJECTDIR}/_ext/2104501039/mbcrc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/2104501039/mbcrc.o.d" -o ${OBJECTDIR}/_ext/2104501039/mbcrc.o ../modbus/rtu/mbcrc.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwk.o: ../nwk/nwk_src/nwk.c  .generated_files/31e7c262aa0d260e85d5c4a84b06e4e20f9c7fdb.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwk.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwk.o.d" -o ${OBJECTDIR}/_ext/93605685/nwk.o ../nwk/nwk_src/nwk.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwkDataReq.o: ../nwk/nwk_src/nwkDataReq.c  .generated_files/bbe1468bae523b80a2a0a0a6bc3cce9c0acf29da.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkDataReq.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkDataReq.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwkDataReq.o.d" -o ${OBJECTDIR}/_ext/93605685/nwkDataReq.o ../nwk/nwk_src/nwkDataReq.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwkFrame.o: ../nwk/nwk_src/nwkFrame.c  .generated_files/7df28ace78350950d6bebc0ad238e85260e82358.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkFrame.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkFrame.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwkFrame.o.d" -o ${OBJECTDIR}/_ext/93605685/nwkFrame.o ../nwk/nwk_src/nwkFrame.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwkGroup.o: ../nwk/nwk_src/nwkGroup.c  .generated_files/8f2fc965aee3c4c694ab0b7bca9c027bd66d86cd.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkGroup.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkGroup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwkGroup.o.d" -o ${OBJECTDIR}/_ext/93605685/nwkGroup.o ../nwk/nwk_src/nwkGroup.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwkRoute.o: ../nwk/nwk_src/nwkRoute.c  .generated_files/d3065a537e5345b18fd13aa62f505526e8d804c1.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkRoute.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkRoute.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwkRoute.o.d" -o ${OBJECTDIR}/_ext/93605685/nwkRoute.o ../nwk/nwk_src/nwkRoute.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.o: ../nwk/nwk_src/nwkRouteDiscovery.c  .generated_files/e63cd411e8bd0efa41f80da44d3ad7417b313571.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.o.d" -o ${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.o ../nwk/nwk_src/nwkRouteDiscovery.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwkRx.o: ../nwk/nwk_src/nwkRx.c  .generated_files/291dbb090ff591ccffb5d716c1f6d94ea483ce7d.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkRx.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkRx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwkRx.o.d" -o ${OBJECTDIR}/_ext/93605685/nwkRx.o ../nwk/nwk_src/nwkRx.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwkSecurity.o: ../nwk/nwk_src/nwkSecurity.c  .generated_files/65584a3f81cb6326fc394ef4885010c3da98a2fe.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkSecurity.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkSecurity.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwkSecurity.o.d" -o ${OBJECTDIR}/_ext/93605685/nwkSecurity.o ../nwk/nwk_src/nwkSecurity.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwkTx.o: ../nwk/nwk_src/nwkTx.c  .generated_files/b96c488ea490e741e9b84da8c4e8daa6fc8d2bb3.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkTx.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkTx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwkTx.o.d" -o ${OBJECTDIR}/_ext/93605685/nwkTx.o ../nwk/nwk_src/nwkTx.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1084134857/phy.o: ../phy/phy_src/phy.c  .generated_files/ed7aedf1b8f686f6b9020c036ecf6cd1c6e61be3.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1084134857" 
	@${RM} ${OBJECTDIR}/_ext/1084134857/phy.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084134857/phy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/1084134857/phy.o.d" -o ${OBJECTDIR}/_ext/1084134857/phy.o ../phy/phy_src/phy.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1971803433/sx1276.o: ../phy/sx1276/sx1276_src/sx1276.c  .generated_files/9cc3bf73db85768986308b6dab0c4a84b585af5d.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1971803433" 
	@${RM} ${OBJECTDIR}/_ext/1971803433/sx1276.o.d 
	@${RM} ${OBJECTDIR}/_ext/1971803433/sx1276.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/1971803433/sx1276.o.d" -o ${OBJECTDIR}/_ext/1971803433/sx1276.o ../phy/sx1276/sx1276_src/sx1276.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1278352567/sx1280-hal.o: ../phy/sx1280/sx1280_src/sx1280-hal.c  .generated_files/30356b1ff70da95edc86bc53f0bffce7883a58e4.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1278352567" 
	@${RM} ${OBJECTDIR}/_ext/1278352567/sx1280-hal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1278352567/sx1280-hal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/1278352567/sx1280-hal.o.d" -o ${OBJECTDIR}/_ext/1278352567/sx1280-hal.o ../phy/sx1280/sx1280_src/sx1280-hal.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1278352567/sx1280.o: ../phy/sx1280/sx1280_src/sx1280.c  .generated_files/b1eaa120df67ab123e9e056a501cbe4652d0a175.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1278352567" 
	@${RM} ${OBJECTDIR}/_ext/1278352567/sx1280.o.d 
	@${RM} ${OBJECTDIR}/_ext/1278352567/sx1280.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/1278352567/sx1280.o.d" -o ${OBJECTDIR}/_ext/1278352567/sx1280.o ../phy/sx1280/sx1280_src/sx1280.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1278352567/sx1280_drv.o: ../phy/sx1280/sx1280_src/sx1280_drv.c  .generated_files/e38f46a28642bec1dbf29d2418869dd697fc0d06.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1278352567" 
	@${RM} ${OBJECTDIR}/_ext/1278352567/sx1280_drv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1278352567/sx1280_drv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/1278352567/sx1280_drv.o.d" -o ${OBJECTDIR}/_ext/1278352567/sx1280_drv.o ../phy/sx1280/sx1280_src/sx1280_drv.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2045976161/sys.o: ../sys/sys_src/sys.c  .generated_files/d2fbb724b7f7ca36524b0ff7b5306ffa88c11f60.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2045976161" 
	@${RM} ${OBJECTDIR}/_ext/2045976161/sys.o.d 
	@${RM} ${OBJECTDIR}/_ext/2045976161/sys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/2045976161/sys.o.d" -o ${OBJECTDIR}/_ext/2045976161/sys.o ../sys/sys_src/sys.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2045976161/sysEncrypt.o: ../sys/sys_src/sysEncrypt.c  .generated_files/6f26a61cfd3e41b949823c8814975ed9dd6a2f9b.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2045976161" 
	@${RM} ${OBJECTDIR}/_ext/2045976161/sysEncrypt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2045976161/sysEncrypt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/2045976161/sysEncrypt.o.d" -o ${OBJECTDIR}/_ext/2045976161/sysEncrypt.o ../sys/sys_src/sysEncrypt.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2045976161/sysTimer.o: ../sys/sys_src/sysTimer.c  .generated_files/7821f64720482b5859e89e85ec5305c23da7e9ee.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2045976161" 
	@${RM} ${OBJECTDIR}/_ext/2045976161/sysTimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/2045976161/sysTimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/2045976161/sysTimer.o.d" -o ${OBJECTDIR}/_ext/2045976161/sysTimer.o ../sys/sys_src/sysTimer.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/127225941/wdt.o: ../wdt/wdt_src/wdt.c  .generated_files/61df09f5fa5885f7935510e44fe03ed2416e8f0b.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/127225941" 
	@${RM} ${OBJECTDIR}/_ext/127225941/wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/127225941/wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/127225941/wdt.o.d" -o ${OBJECTDIR}/_ext/127225941/wdt.o ../wdt/wdt_src/wdt.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/e558b59afe584abf1fc60f935a73e33a1b5f98d0.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/298884965/AES.o: ../aes/aes_src/AES.c  .generated_files/96272f12ef00954c14c3d32da6eee6cef1d91eb.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/298884965" 
	@${RM} ${OBJECTDIR}/_ext/298884965/AES.o.d 
	@${RM} ${OBJECTDIR}/_ext/298884965/AES.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/298884965/AES.o.d" -o ${OBJECTDIR}/_ext/298884965/AES.o ../aes/aes_src/AES.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/423217399/application.o: ../app/app_src/application.c  .generated_files/991df4225ca5e3a2facc7b4aebbc1ae327907b94.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/423217399" 
	@${RM} ${OBJECTDIR}/_ext/423217399/application.o.d 
	@${RM} ${OBJECTDIR}/_ext/423217399/application.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/423217399/application.o.d" -o ${OBJECTDIR}/_ext/423217399/application.o ../app/app_src/application.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/423217399/circular\ buffer.o: ../app/app_src/circular\ buffer.c  .generated_files/4114dd01495fd2d68731e4e97f6d02f33cae6463.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/423217399" 
	@${RM} "${OBJECTDIR}/_ext/423217399/circular buffer.o".d 
	@${RM} "${OBJECTDIR}/_ext/423217399/circular buffer.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/423217399/circular buffer.o.d" -o "${OBJECTDIR}/_ext/423217399/circular buffer.o" "../app/app_src/circular buffer.c"    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/423217399/crc.o: ../app/app_src/crc.c  .generated_files/d096f662da0132f36c40c99353e1f81d30f23adc.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/423217399" 
	@${RM} ${OBJECTDIR}/_ext/423217399/crc.o.d 
	@${RM} ${OBJECTDIR}/_ext/423217399/crc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/423217399/crc.o.d" -o ${OBJECTDIR}/_ext/423217399/crc.o ../app/app_src/crc.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/423217399/EEPROM.o: ../app/app_src/EEPROM.c  .generated_files/d379ce224efd6671483fcfdacda19a4bc51d49e1.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/423217399" 
	@${RM} ${OBJECTDIR}/_ext/423217399/EEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/423217399/EEPROM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/423217399/EEPROM.o.d" -o ${OBJECTDIR}/_ext/423217399/EEPROM.o ../app/app_src/EEPROM.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/423217399/led.o: ../app/app_src/led.c  .generated_files/433d24ab281d0ab5fa29e9eb0614003f2886448c.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/423217399" 
	@${RM} ${OBJECTDIR}/_ext/423217399/led.o.d 
	@${RM} ${OBJECTDIR}/_ext/423217399/led.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/423217399/led.o.d" -o ${OBJECTDIR}/_ext/423217399/led.o ../app/app_src/led.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/423217399/uart_default_control.o: ../app/app_src/uart_default_control.c  .generated_files/5a932cdb93ef31765152f6b2f877f79f9e0dabe4.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/423217399" 
	@${RM} ${OBJECTDIR}/_ext/423217399/uart_default_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/423217399/uart_default_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/423217399/uart_default_control.o.d" -o ${OBJECTDIR}/_ext/423217399/uart_default_control.o ../app/app_src/uart_default_control.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1339929363/Timers.o: ../hal/hal_src/Timers.c  .generated_files/580db2fc98b151d54060061bce2d5a29ea893ebb.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1339929363" 
	@${RM} ${OBJECTDIR}/_ext/1339929363/Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1339929363/Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/1339929363/Timers.o.d" -o ${OBJECTDIR}/_ext/1339929363/Timers.o ../hal/hal_src/Timers.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/memory/flash.o: mcc_generated_files/memory/flash.c  .generated_files/2b3e16cac11bcfdc6184646125b5837687c3d83d.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/memory/flash.o.d" -o ${OBJECTDIR}/mcc_generated_files/memory/flash.o mcc_generated_files/memory/flash.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/23baa533226c45f860883df5d1c54ed31f18fd91.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d" -o ${OBJECTDIR}/mcc_generated_files/clock.o mcc_generated_files/clock.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/exceptions.o: mcc_generated_files/exceptions.c  .generated_files/897fbc65acb7e5df30cc7ad371486399bf1419dd.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/exceptions.o.d" -o ${OBJECTDIR}/mcc_generated_files/exceptions.o mcc_generated_files/exceptions.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/bfb73770d1e0965b6942e91e00f325e6c1b0ce2e.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d" -o ${OBJECTDIR}/mcc_generated_files/system.o mcc_generated_files/system.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/2d1cb2c501db58ae2058f3fc3a0ff339b45d074b.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/5976388d060b76fadca462b7b7ef6b511c257397.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o mcc_generated_files/pin_manager.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/ae4f943fa35abdac85605cfec1c822f4fadbfb9c.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o mcc_generated_files/interrupt_manager.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/uart3.o: mcc_generated_files/uart3.c  .generated_files/a1ea3fc4c72c76bea52eeac0f0053667567d0506.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart3.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart3.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart3.o mcc_generated_files/uart3.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/spi2.o: mcc_generated_files/spi2.c  .generated_files/4b6a891a8c5af2c4136c31d3c234852e73018dd0.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi2.o.d" -o ${OBJECTDIR}/mcc_generated_files/spi2.o mcc_generated_files/spi2.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/coretimer.o: mcc_generated_files/coretimer.c  .generated_files/9b601b248f72be6a71aaa33f1625a0f31084cd54.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/coretimer.o.d" -o ${OBJECTDIR}/mcc_generated_files/coretimer.o mcc_generated_files/coretimer.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/dma.o: mcc_generated_files/dma.c  .generated_files/be33d9478aea449d04adbc3ad34194f54200819d.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/dma.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/dma.o.d" -o ${OBJECTDIR}/mcc_generated_files/dma.o mcc_generated_files/dma.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/crc.o: mcc_generated_files/crc.c  .generated_files/df8d612890150f4995cc6efa363ad5d1b5436d1d.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/crc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/crc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/crc.o.d" -o ${OBJECTDIR}/mcc_generated_files/crc.o mcc_generated_files/crc.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/tmr3.o: mcc_generated_files/tmr3.c  .generated_files/1753ade2b44f1bd8aad3faeaa186ca20b215880a.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr3.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr3.o.d" -o ${OBJECTDIR}/mcc_generated_files/tmr3.o mcc_generated_files/tmr3.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/uart2.o: mcc_generated_files/uart2.c  .generated_files/5db0e33d4bfa8039139f4c9d61fde0ea00788a90.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart2.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart2.o mcc_generated_files/uart2.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2104501039/mbcrc.o: ../modbus/rtu/mbcrc.c  .generated_files/e6e53848d72bb6285da4db5a47cf40556f628ca8.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2104501039" 
	@${RM} ${OBJECTDIR}/_ext/2104501039/mbcrc.o.d 
	@${RM} ${OBJECTDIR}/_ext/2104501039/mbcrc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/2104501039/mbcrc.o.d" -o ${OBJECTDIR}/_ext/2104501039/mbcrc.o ../modbus/rtu/mbcrc.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwk.o: ../nwk/nwk_src/nwk.c  .generated_files/a23ea13dc39b3dde94abda53c2327ecbbdebbc04.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwk.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwk.o.d" -o ${OBJECTDIR}/_ext/93605685/nwk.o ../nwk/nwk_src/nwk.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwkDataReq.o: ../nwk/nwk_src/nwkDataReq.c  .generated_files/285d6b927bee35d18ad514781c484dae341a77c7.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkDataReq.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkDataReq.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwkDataReq.o.d" -o ${OBJECTDIR}/_ext/93605685/nwkDataReq.o ../nwk/nwk_src/nwkDataReq.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwkFrame.o: ../nwk/nwk_src/nwkFrame.c  .generated_files/76587c501ba2fe57ef745e9c3b8551f1b7478e9f.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkFrame.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkFrame.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwkFrame.o.d" -o ${OBJECTDIR}/_ext/93605685/nwkFrame.o ../nwk/nwk_src/nwkFrame.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwkGroup.o: ../nwk/nwk_src/nwkGroup.c  .generated_files/fb43102e4bb5c9588658afec84b92cff8963b799.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkGroup.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkGroup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwkGroup.o.d" -o ${OBJECTDIR}/_ext/93605685/nwkGroup.o ../nwk/nwk_src/nwkGroup.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwkRoute.o: ../nwk/nwk_src/nwkRoute.c  .generated_files/a8060b3184ddb46f14cd3c86f80f77b3d5154ce4.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkRoute.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkRoute.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwkRoute.o.d" -o ${OBJECTDIR}/_ext/93605685/nwkRoute.o ../nwk/nwk_src/nwkRoute.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.o: ../nwk/nwk_src/nwkRouteDiscovery.c  .generated_files/e09e35af2624a91d44d150a41ddc4d592cd4f85f.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.o.d" -o ${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.o ../nwk/nwk_src/nwkRouteDiscovery.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwkRx.o: ../nwk/nwk_src/nwkRx.c  .generated_files/15893e3c2257e8326b3a21f721ac463ce319f0ff.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkRx.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkRx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwkRx.o.d" -o ${OBJECTDIR}/_ext/93605685/nwkRx.o ../nwk/nwk_src/nwkRx.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwkSecurity.o: ../nwk/nwk_src/nwkSecurity.c  .generated_files/fab4d5b7af4e043ee1d151c676407254f97cf39c.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkSecurity.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkSecurity.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwkSecurity.o.d" -o ${OBJECTDIR}/_ext/93605685/nwkSecurity.o ../nwk/nwk_src/nwkSecurity.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwkTx.o: ../nwk/nwk_src/nwkTx.c  .generated_files/3642bcc5facd5ebca0f581e6720bc4da4d0ddf17.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkTx.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkTx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwkTx.o.d" -o ${OBJECTDIR}/_ext/93605685/nwkTx.o ../nwk/nwk_src/nwkTx.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1084134857/phy.o: ../phy/phy_src/phy.c  .generated_files/b5c46a34a88fcc528f15ac6034766e94cf2c20e4.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1084134857" 
	@${RM} ${OBJECTDIR}/_ext/1084134857/phy.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084134857/phy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/1084134857/phy.o.d" -o ${OBJECTDIR}/_ext/1084134857/phy.o ../phy/phy_src/phy.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1971803433/sx1276.o: ../phy/sx1276/sx1276_src/sx1276.c  .generated_files/8f36a73ae3390c43b8d8edd49895392af5fa68a0.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1971803433" 
	@${RM} ${OBJECTDIR}/_ext/1971803433/sx1276.o.d 
	@${RM} ${OBJECTDIR}/_ext/1971803433/sx1276.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/1971803433/sx1276.o.d" -o ${OBJECTDIR}/_ext/1971803433/sx1276.o ../phy/sx1276/sx1276_src/sx1276.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1278352567/sx1280-hal.o: ../phy/sx1280/sx1280_src/sx1280-hal.c  .generated_files/1c620f3dd5cb06734f0d11d800ef179fc6f9ed88.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1278352567" 
	@${RM} ${OBJECTDIR}/_ext/1278352567/sx1280-hal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1278352567/sx1280-hal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/1278352567/sx1280-hal.o.d" -o ${OBJECTDIR}/_ext/1278352567/sx1280-hal.o ../phy/sx1280/sx1280_src/sx1280-hal.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1278352567/sx1280.o: ../phy/sx1280/sx1280_src/sx1280.c  .generated_files/db8df6a5380c40fd7d0a8cf5a782f2bac6d40fd5.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1278352567" 
	@${RM} ${OBJECTDIR}/_ext/1278352567/sx1280.o.d 
	@${RM} ${OBJECTDIR}/_ext/1278352567/sx1280.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/1278352567/sx1280.o.d" -o ${OBJECTDIR}/_ext/1278352567/sx1280.o ../phy/sx1280/sx1280_src/sx1280.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1278352567/sx1280_drv.o: ../phy/sx1280/sx1280_src/sx1280_drv.c  .generated_files/d8f6d6fa3ee44ac83178b233c8366ec3dfdd9dad.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1278352567" 
	@${RM} ${OBJECTDIR}/_ext/1278352567/sx1280_drv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1278352567/sx1280_drv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/1278352567/sx1280_drv.o.d" -o ${OBJECTDIR}/_ext/1278352567/sx1280_drv.o ../phy/sx1280/sx1280_src/sx1280_drv.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2045976161/sys.o: ../sys/sys_src/sys.c  .generated_files/77bf275cb9150c3ec48b15be74add870d763942f.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2045976161" 
	@${RM} ${OBJECTDIR}/_ext/2045976161/sys.o.d 
	@${RM} ${OBJECTDIR}/_ext/2045976161/sys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/2045976161/sys.o.d" -o ${OBJECTDIR}/_ext/2045976161/sys.o ../sys/sys_src/sys.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2045976161/sysEncrypt.o: ../sys/sys_src/sysEncrypt.c  .generated_files/bc67e6c9ba27c37abdc8d88c4b94f6dfbcb92861.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2045976161" 
	@${RM} ${OBJECTDIR}/_ext/2045976161/sysEncrypt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2045976161/sysEncrypt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/2045976161/sysEncrypt.o.d" -o ${OBJECTDIR}/_ext/2045976161/sysEncrypt.o ../sys/sys_src/sysEncrypt.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2045976161/sysTimer.o: ../sys/sys_src/sysTimer.c  .generated_files/b77ec2a9bffccd1aa8da2df98f79d67081b9686c.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2045976161" 
	@${RM} ${OBJECTDIR}/_ext/2045976161/sysTimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/2045976161/sysTimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/2045976161/sysTimer.o.d" -o ${OBJECTDIR}/_ext/2045976161/sysTimer.o ../sys/sys_src/sysTimer.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/127225941/wdt.o: ../wdt/wdt_src/wdt.c  .generated_files/a0ba8b7c5b0bde0a98b2cd4e9c391c90a08c9e42.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/127225941" 
	@${RM} ${OBJECTDIR}/_ext/127225941/wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/127225941/wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/_ext/127225941/wdt.o.d" -o ${OBJECTDIR}/_ext/127225941/wdt.o ../wdt/wdt_src/wdt.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/53faed12c5531f6140f34c6af0653b062dcb3549.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O2 -DATCOMM -DSX1280 -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/PIC32MM0256GPM048.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/PIC32MM0256GPM048.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC00490:0x1FC016FF -mreserve=boot@0x1FC00490:0x1FC00BEF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml,--allow-multiple-definition -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/PIC32MM0256GPM048.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/PIC32MM0256GPM048.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml,--allow-multiple-definition -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/PIC32MM0256GPM048.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/atcomm
	${RM} -r dist/atcomm

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
