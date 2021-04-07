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
SOURCEFILES_QUOTED_IF_SPACED=../aes/aes_src/AES.c ../app/app_src/application.c ../app/app_src/crc.c ../app/app_src/EEPROM.c ../app/app_src/led.c ../app/app_src/uart_default_control.c ../app/app_src/circular_buffer.c ../memory/flash/flash_src/w25q.c ../hal/hal_src/Timers.c ../memory/lfs/lfs_src/lfs.c ../memory/lfs/lfs_src/lfs_util.c mcc_generated_files/memory/flash.c mcc_generated_files/clock.c mcc_generated_files/exceptions.c mcc_generated_files/system.c mcc_generated_files/mcc.c mcc_generated_files/pin_manager.c mcc_generated_files/interrupt_manager.c mcc_generated_files/uart3.c mcc_generated_files/spi2.c mcc_generated_files/coretimer.c mcc_generated_files/dma.c mcc_generated_files/crc.c mcc_generated_files/tmr3.c mcc_generated_files/uart2.c ../modbus/rtu/mbcrc.c ../nwk/nwk_src/nwk.c ../nwk/nwk_src/nwkDataReq.c ../nwk/nwk_src/nwkFrame.c ../nwk/nwk_src/nwkGroup.c ../nwk/nwk_src/nwkRoute.c ../nwk/nwk_src/nwkRouteDiscovery.c ../nwk/nwk_src/nwkRx.c ../nwk/nwk_src/nwkSecurity.c ../nwk/nwk_src/nwkTx.c ../phy/phy_src/phy.c ../phy/sx1276/sx1276_src/sx1276.c ../phy/sx1280/sx1280_src/sx1280-hal.c ../phy/sx1280/sx1280_src/sx1280.c ../phy/sx1280/sx1280_src/sx1280_drv.c ../sys/sys_src/sys.c ../sys/sys_src/sysEncrypt.c ../sys/sys_src/sysTimer.c ../wdt/wdt_src/wdt.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/298884965/AES.o ${OBJECTDIR}/_ext/423217399/application.o ${OBJECTDIR}/_ext/423217399/crc.o ${OBJECTDIR}/_ext/423217399/EEPROM.o ${OBJECTDIR}/_ext/423217399/led.o ${OBJECTDIR}/_ext/423217399/uart_default_control.o ${OBJECTDIR}/_ext/423217399/circular_buffer.o ${OBJECTDIR}/_ext/995956265/w25q.o ${OBJECTDIR}/_ext/1339929363/Timers.o ${OBJECTDIR}/_ext/1106471511/lfs.o ${OBJECTDIR}/_ext/1106471511/lfs_util.o ${OBJECTDIR}/mcc_generated_files/memory/flash.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/exceptions.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/uart3.o ${OBJECTDIR}/mcc_generated_files/spi2.o ${OBJECTDIR}/mcc_generated_files/coretimer.o ${OBJECTDIR}/mcc_generated_files/dma.o ${OBJECTDIR}/mcc_generated_files/crc.o ${OBJECTDIR}/mcc_generated_files/tmr3.o ${OBJECTDIR}/mcc_generated_files/uart2.o ${OBJECTDIR}/_ext/2104501039/mbcrc.o ${OBJECTDIR}/_ext/93605685/nwk.o ${OBJECTDIR}/_ext/93605685/nwkDataReq.o ${OBJECTDIR}/_ext/93605685/nwkFrame.o ${OBJECTDIR}/_ext/93605685/nwkGroup.o ${OBJECTDIR}/_ext/93605685/nwkRoute.o ${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.o ${OBJECTDIR}/_ext/93605685/nwkRx.o ${OBJECTDIR}/_ext/93605685/nwkSecurity.o ${OBJECTDIR}/_ext/93605685/nwkTx.o ${OBJECTDIR}/_ext/1084134857/phy.o ${OBJECTDIR}/_ext/1971803433/sx1276.o ${OBJECTDIR}/_ext/1278352567/sx1280-hal.o ${OBJECTDIR}/_ext/1278352567/sx1280.o ${OBJECTDIR}/_ext/1278352567/sx1280_drv.o ${OBJECTDIR}/_ext/2045976161/sys.o ${OBJECTDIR}/_ext/2045976161/sysEncrypt.o ${OBJECTDIR}/_ext/2045976161/sysTimer.o ${OBJECTDIR}/_ext/127225941/wdt.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/298884965/AES.o.d ${OBJECTDIR}/_ext/423217399/application.o.d ${OBJECTDIR}/_ext/423217399/crc.o.d ${OBJECTDIR}/_ext/423217399/EEPROM.o.d ${OBJECTDIR}/_ext/423217399/led.o.d ${OBJECTDIR}/_ext/423217399/uart_default_control.o.d ${OBJECTDIR}/_ext/423217399/circular_buffer.o.d ${OBJECTDIR}/_ext/995956265/w25q.o.d ${OBJECTDIR}/_ext/1339929363/Timers.o.d ${OBJECTDIR}/_ext/1106471511/lfs.o.d ${OBJECTDIR}/_ext/1106471511/lfs_util.o.d ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d ${OBJECTDIR}/mcc_generated_files/clock.o.d ${OBJECTDIR}/mcc_generated_files/exceptions.o.d ${OBJECTDIR}/mcc_generated_files/system.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/uart3.o.d ${OBJECTDIR}/mcc_generated_files/spi2.o.d ${OBJECTDIR}/mcc_generated_files/coretimer.o.d ${OBJECTDIR}/mcc_generated_files/dma.o.d ${OBJECTDIR}/mcc_generated_files/crc.o.d ${OBJECTDIR}/mcc_generated_files/tmr3.o.d ${OBJECTDIR}/mcc_generated_files/uart2.o.d ${OBJECTDIR}/_ext/2104501039/mbcrc.o.d ${OBJECTDIR}/_ext/93605685/nwk.o.d ${OBJECTDIR}/_ext/93605685/nwkDataReq.o.d ${OBJECTDIR}/_ext/93605685/nwkFrame.o.d ${OBJECTDIR}/_ext/93605685/nwkGroup.o.d ${OBJECTDIR}/_ext/93605685/nwkRoute.o.d ${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.o.d ${OBJECTDIR}/_ext/93605685/nwkRx.o.d ${OBJECTDIR}/_ext/93605685/nwkSecurity.o.d ${OBJECTDIR}/_ext/93605685/nwkTx.o.d ${OBJECTDIR}/_ext/1084134857/phy.o.d ${OBJECTDIR}/_ext/1971803433/sx1276.o.d ${OBJECTDIR}/_ext/1278352567/sx1280-hal.o.d ${OBJECTDIR}/_ext/1278352567/sx1280.o.d ${OBJECTDIR}/_ext/1278352567/sx1280_drv.o.d ${OBJECTDIR}/_ext/2045976161/sys.o.d ${OBJECTDIR}/_ext/2045976161/sysEncrypt.o.d ${OBJECTDIR}/_ext/2045976161/sysTimer.o.d ${OBJECTDIR}/_ext/127225941/wdt.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/298884965/AES.o ${OBJECTDIR}/_ext/423217399/application.o ${OBJECTDIR}/_ext/423217399/crc.o ${OBJECTDIR}/_ext/423217399/EEPROM.o ${OBJECTDIR}/_ext/423217399/led.o ${OBJECTDIR}/_ext/423217399/uart_default_control.o ${OBJECTDIR}/_ext/423217399/circular_buffer.o ${OBJECTDIR}/_ext/995956265/w25q.o ${OBJECTDIR}/_ext/1339929363/Timers.o ${OBJECTDIR}/_ext/1106471511/lfs.o ${OBJECTDIR}/_ext/1106471511/lfs_util.o ${OBJECTDIR}/mcc_generated_files/memory/flash.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/exceptions.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/uart3.o ${OBJECTDIR}/mcc_generated_files/spi2.o ${OBJECTDIR}/mcc_generated_files/coretimer.o ${OBJECTDIR}/mcc_generated_files/dma.o ${OBJECTDIR}/mcc_generated_files/crc.o ${OBJECTDIR}/mcc_generated_files/tmr3.o ${OBJECTDIR}/mcc_generated_files/uart2.o ${OBJECTDIR}/_ext/2104501039/mbcrc.o ${OBJECTDIR}/_ext/93605685/nwk.o ${OBJECTDIR}/_ext/93605685/nwkDataReq.o ${OBJECTDIR}/_ext/93605685/nwkFrame.o ${OBJECTDIR}/_ext/93605685/nwkGroup.o ${OBJECTDIR}/_ext/93605685/nwkRoute.o ${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.o ${OBJECTDIR}/_ext/93605685/nwkRx.o ${OBJECTDIR}/_ext/93605685/nwkSecurity.o ${OBJECTDIR}/_ext/93605685/nwkTx.o ${OBJECTDIR}/_ext/1084134857/phy.o ${OBJECTDIR}/_ext/1971803433/sx1276.o ${OBJECTDIR}/_ext/1278352567/sx1280-hal.o ${OBJECTDIR}/_ext/1278352567/sx1280.o ${OBJECTDIR}/_ext/1278352567/sx1280_drv.o ${OBJECTDIR}/_ext/2045976161/sys.o ${OBJECTDIR}/_ext/2045976161/sysEncrypt.o ${OBJECTDIR}/_ext/2045976161/sysTimer.o ${OBJECTDIR}/_ext/127225941/wdt.o ${OBJECTDIR}/main.o

# Source Files
SOURCEFILES=../aes/aes_src/AES.c ../app/app_src/application.c ../app/app_src/crc.c ../app/app_src/EEPROM.c ../app/app_src/led.c ../app/app_src/uart_default_control.c ../app/app_src/circular_buffer.c ../memory/flash/flash_src/w25q.c ../hal/hal_src/Timers.c ../memory/lfs/lfs_src/lfs.c ../memory/lfs/lfs_src/lfs_util.c mcc_generated_files/memory/flash.c mcc_generated_files/clock.c mcc_generated_files/exceptions.c mcc_generated_files/system.c mcc_generated_files/mcc.c mcc_generated_files/pin_manager.c mcc_generated_files/interrupt_manager.c mcc_generated_files/uart3.c mcc_generated_files/spi2.c mcc_generated_files/coretimer.c mcc_generated_files/dma.c mcc_generated_files/crc.c mcc_generated_files/tmr3.c mcc_generated_files/uart2.c ../modbus/rtu/mbcrc.c ../nwk/nwk_src/nwk.c ../nwk/nwk_src/nwkDataReq.c ../nwk/nwk_src/nwkFrame.c ../nwk/nwk_src/nwkGroup.c ../nwk/nwk_src/nwkRoute.c ../nwk/nwk_src/nwkRouteDiscovery.c ../nwk/nwk_src/nwkRx.c ../nwk/nwk_src/nwkSecurity.c ../nwk/nwk_src/nwkTx.c ../phy/phy_src/phy.c ../phy/sx1276/sx1276_src/sx1276.c ../phy/sx1280/sx1280_src/sx1280-hal.c ../phy/sx1280/sx1280_src/sx1280.c ../phy/sx1280/sx1280_src/sx1280_drv.c ../sys/sys_src/sys.c ../sys/sys_src/sysEncrypt.c ../sys/sys_src/sysTimer.c ../wdt/wdt_src/wdt.c main.c



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
MP_LINKER_FILE_OPTION=,--script="app.ld"
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
${OBJECTDIR}/_ext/298884965/AES.o: ../aes/aes_src/AES.c  .generated_files/ce39ee57909b520dae2713568ef69e3948dcd59d.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/298884965" 
	@${RM} ${OBJECTDIR}/_ext/298884965/AES.o.d 
	@${RM} ${OBJECTDIR}/_ext/298884965/AES.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/298884965/AES.o.d" -o ${OBJECTDIR}/_ext/298884965/AES.o ../aes/aes_src/AES.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/423217399/application.o: ../app/app_src/application.c  .generated_files/d3723ee1b7031956cd3d8f1e02b34dffa56ea991.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/423217399" 
	@${RM} ${OBJECTDIR}/_ext/423217399/application.o.d 
	@${RM} ${OBJECTDIR}/_ext/423217399/application.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/423217399/application.o.d" -o ${OBJECTDIR}/_ext/423217399/application.o ../app/app_src/application.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/423217399/crc.o: ../app/app_src/crc.c  .generated_files/cea95d257d916d77e5a5b6baeb2ce30f25826095.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/423217399" 
	@${RM} ${OBJECTDIR}/_ext/423217399/crc.o.d 
	@${RM} ${OBJECTDIR}/_ext/423217399/crc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/423217399/crc.o.d" -o ${OBJECTDIR}/_ext/423217399/crc.o ../app/app_src/crc.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/423217399/EEPROM.o: ../app/app_src/EEPROM.c  .generated_files/d36297c7438b0ce96b92384244a86bc4a5b4a300.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/423217399" 
	@${RM} ${OBJECTDIR}/_ext/423217399/EEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/423217399/EEPROM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/423217399/EEPROM.o.d" -o ${OBJECTDIR}/_ext/423217399/EEPROM.o ../app/app_src/EEPROM.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/423217399/led.o: ../app/app_src/led.c  .generated_files/5ee41abbcbd9ac6c952f45c58c188a0e75c83e34.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/423217399" 
	@${RM} ${OBJECTDIR}/_ext/423217399/led.o.d 
	@${RM} ${OBJECTDIR}/_ext/423217399/led.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/423217399/led.o.d" -o ${OBJECTDIR}/_ext/423217399/led.o ../app/app_src/led.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/423217399/uart_default_control.o: ../app/app_src/uart_default_control.c  .generated_files/24d4f826be4df45fa6f50959cf7352baf6db68d0.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/423217399" 
	@${RM} ${OBJECTDIR}/_ext/423217399/uart_default_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/423217399/uart_default_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/423217399/uart_default_control.o.d" -o ${OBJECTDIR}/_ext/423217399/uart_default_control.o ../app/app_src/uart_default_control.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/423217399/circular_buffer.o: ../app/app_src/circular_buffer.c  .generated_files/5aefa258e4496797f3a7006e00f044449b4334ef.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/423217399" 
	@${RM} ${OBJECTDIR}/_ext/423217399/circular_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/423217399/circular_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/423217399/circular_buffer.o.d" -o ${OBJECTDIR}/_ext/423217399/circular_buffer.o ../app/app_src/circular_buffer.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/995956265/w25q.o: ../memory/flash/flash_src/w25q.c  .generated_files/262b085eaa247afbbc3695b631fa837435c20539.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/995956265" 
	@${RM} ${OBJECTDIR}/_ext/995956265/w25q.o.d 
	@${RM} ${OBJECTDIR}/_ext/995956265/w25q.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/995956265/w25q.o.d" -o ${OBJECTDIR}/_ext/995956265/w25q.o ../memory/flash/flash_src/w25q.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1339929363/Timers.o: ../hal/hal_src/Timers.c  .generated_files/22dc863523077e6b206beba41f819eaa268e86cc.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1339929363" 
	@${RM} ${OBJECTDIR}/_ext/1339929363/Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1339929363/Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/1339929363/Timers.o.d" -o ${OBJECTDIR}/_ext/1339929363/Timers.o ../hal/hal_src/Timers.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1106471511/lfs.o: ../memory/lfs/lfs_src/lfs.c  .generated_files/d8f841c253c9953c3ae8fc3cd78238d7b372f5cb.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1106471511" 
	@${RM} ${OBJECTDIR}/_ext/1106471511/lfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106471511/lfs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/1106471511/lfs.o.d" -o ${OBJECTDIR}/_ext/1106471511/lfs.o ../memory/lfs/lfs_src/lfs.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1106471511/lfs_util.o: ../memory/lfs/lfs_src/lfs_util.c  .generated_files/af3a8dc704e47b2a63c004fd25999b70ac0162a3.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1106471511" 
	@${RM} ${OBJECTDIR}/_ext/1106471511/lfs_util.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106471511/lfs_util.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/1106471511/lfs_util.o.d" -o ${OBJECTDIR}/_ext/1106471511/lfs_util.o ../memory/lfs/lfs_src/lfs_util.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/memory/flash.o: mcc_generated_files/memory/flash.c  .generated_files/93f1fcce617afc54593cb44518fd593a1c429ba3.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/memory/flash.o.d" -o ${OBJECTDIR}/mcc_generated_files/memory/flash.o mcc_generated_files/memory/flash.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/a66dfdd458995b7b9c19c22291163d7c48537948.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d" -o ${OBJECTDIR}/mcc_generated_files/clock.o mcc_generated_files/clock.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/exceptions.o: mcc_generated_files/exceptions.c  .generated_files/461854f116330f2e848ae4fe169d1b7767aead4f.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/exceptions.o.d" -o ${OBJECTDIR}/mcc_generated_files/exceptions.o mcc_generated_files/exceptions.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/22ebbc19bdfcdcb01af1506ac7718e9980e33161.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d" -o ${OBJECTDIR}/mcc_generated_files/system.o mcc_generated_files/system.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/ffbb84b7cfb980becaa404c6ecdacc64f869d826.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/2f957a7fa33faa259cb06bbf3ce7156d1ad864a2.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o mcc_generated_files/pin_manager.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/202871ec0c677d2e9b88a9b0aac8a5ff789f0c5.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o mcc_generated_files/interrupt_manager.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/uart3.o: mcc_generated_files/uart3.c  .generated_files/6c9465e41a44bcf84b8fbe21834685d44c54f9b.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart3.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart3.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart3.o mcc_generated_files/uart3.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/spi2.o: mcc_generated_files/spi2.c  .generated_files/4c4cf21d2b1c32ae60d06eb4f3fe559543380b56.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi2.o.d" -o ${OBJECTDIR}/mcc_generated_files/spi2.o mcc_generated_files/spi2.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/coretimer.o: mcc_generated_files/coretimer.c  .generated_files/6c3451aff561db27bc3d8532d889dab4a6a2b10a.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/coretimer.o.d" -o ${OBJECTDIR}/mcc_generated_files/coretimer.o mcc_generated_files/coretimer.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/dma.o: mcc_generated_files/dma.c  .generated_files/ce6e20fc2c40307c82ef95299c167f6512f5ac94.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/dma.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/dma.o.d" -o ${OBJECTDIR}/mcc_generated_files/dma.o mcc_generated_files/dma.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/crc.o: mcc_generated_files/crc.c  .generated_files/7688bd083440f91864fcc797b6605bb9d0a775a3.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/crc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/crc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/crc.o.d" -o ${OBJECTDIR}/mcc_generated_files/crc.o mcc_generated_files/crc.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/tmr3.o: mcc_generated_files/tmr3.c  .generated_files/128f6a0ba33970c701780fcd248356cfb071a89f.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr3.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr3.o.d" -o ${OBJECTDIR}/mcc_generated_files/tmr3.o mcc_generated_files/tmr3.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/uart2.o: mcc_generated_files/uart2.c  .generated_files/a4879a37ba792b665d4dc1f7af2c5f4832534405.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart2.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart2.o mcc_generated_files/uart2.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2104501039/mbcrc.o: ../modbus/rtu/mbcrc.c  .generated_files/565e1f6c424839d16082b87ef5fe52530e096a82.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2104501039" 
	@${RM} ${OBJECTDIR}/_ext/2104501039/mbcrc.o.d 
	@${RM} ${OBJECTDIR}/_ext/2104501039/mbcrc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/2104501039/mbcrc.o.d" -o ${OBJECTDIR}/_ext/2104501039/mbcrc.o ../modbus/rtu/mbcrc.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwk.o: ../nwk/nwk_src/nwk.c  .generated_files/13427543067a9c924a5ed96a3b4cf44d3748989e.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwk.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwk.o.d" -o ${OBJECTDIR}/_ext/93605685/nwk.o ../nwk/nwk_src/nwk.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwkDataReq.o: ../nwk/nwk_src/nwkDataReq.c  .generated_files/122f1a8524f6261190ee381dcb3357d35e6f87f7.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkDataReq.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkDataReq.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwkDataReq.o.d" -o ${OBJECTDIR}/_ext/93605685/nwkDataReq.o ../nwk/nwk_src/nwkDataReq.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwkFrame.o: ../nwk/nwk_src/nwkFrame.c  .generated_files/342cca023edc7750fbfddc95c65a7c48446b5da8.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkFrame.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkFrame.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwkFrame.o.d" -o ${OBJECTDIR}/_ext/93605685/nwkFrame.o ../nwk/nwk_src/nwkFrame.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwkGroup.o: ../nwk/nwk_src/nwkGroup.c  .generated_files/9cc1a50b685e8bfb4166483c27164616775e1a16.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkGroup.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkGroup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwkGroup.o.d" -o ${OBJECTDIR}/_ext/93605685/nwkGroup.o ../nwk/nwk_src/nwkGroup.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwkRoute.o: ../nwk/nwk_src/nwkRoute.c  .generated_files/b55f84978c0a5cf15624d5cff7e84f178d70cecf.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkRoute.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkRoute.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwkRoute.o.d" -o ${OBJECTDIR}/_ext/93605685/nwkRoute.o ../nwk/nwk_src/nwkRoute.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.o: ../nwk/nwk_src/nwkRouteDiscovery.c  .generated_files/4fddbb8653dd28f8e9b9369ee319d331701ef20b.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.o.d" -o ${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.o ../nwk/nwk_src/nwkRouteDiscovery.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwkRx.o: ../nwk/nwk_src/nwkRx.c  .generated_files/fc13bf64926168c1a3def87e4fca92bb52a9614c.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkRx.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkRx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwkRx.o.d" -o ${OBJECTDIR}/_ext/93605685/nwkRx.o ../nwk/nwk_src/nwkRx.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwkSecurity.o: ../nwk/nwk_src/nwkSecurity.c  .generated_files/cab5d73e909cde84d43720d19171ab856997a891.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkSecurity.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkSecurity.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwkSecurity.o.d" -o ${OBJECTDIR}/_ext/93605685/nwkSecurity.o ../nwk/nwk_src/nwkSecurity.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwkTx.o: ../nwk/nwk_src/nwkTx.c  .generated_files/c62a11c0e94e02dd42a82c28bb3801f63a0d07f0.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkTx.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkTx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwkTx.o.d" -o ${OBJECTDIR}/_ext/93605685/nwkTx.o ../nwk/nwk_src/nwkTx.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1084134857/phy.o: ../phy/phy_src/phy.c  .generated_files/7a6ba4cfb90599ed94577dec84bcc0aa03c2ead9.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1084134857" 
	@${RM} ${OBJECTDIR}/_ext/1084134857/phy.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084134857/phy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/1084134857/phy.o.d" -o ${OBJECTDIR}/_ext/1084134857/phy.o ../phy/phy_src/phy.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1971803433/sx1276.o: ../phy/sx1276/sx1276_src/sx1276.c  .generated_files/eaff0a80dc3660185891bf026096b97c96e43526.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1971803433" 
	@${RM} ${OBJECTDIR}/_ext/1971803433/sx1276.o.d 
	@${RM} ${OBJECTDIR}/_ext/1971803433/sx1276.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/1971803433/sx1276.o.d" -o ${OBJECTDIR}/_ext/1971803433/sx1276.o ../phy/sx1276/sx1276_src/sx1276.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1278352567/sx1280-hal.o: ../phy/sx1280/sx1280_src/sx1280-hal.c  .generated_files/56d2dcd5c3b1ead9ec2b692570135e1ef2f62a7.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1278352567" 
	@${RM} ${OBJECTDIR}/_ext/1278352567/sx1280-hal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1278352567/sx1280-hal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/1278352567/sx1280-hal.o.d" -o ${OBJECTDIR}/_ext/1278352567/sx1280-hal.o ../phy/sx1280/sx1280_src/sx1280-hal.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1278352567/sx1280.o: ../phy/sx1280/sx1280_src/sx1280.c  .generated_files/ad48238b04e481373b91c40b1eeb5343077749c6.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1278352567" 
	@${RM} ${OBJECTDIR}/_ext/1278352567/sx1280.o.d 
	@${RM} ${OBJECTDIR}/_ext/1278352567/sx1280.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/1278352567/sx1280.o.d" -o ${OBJECTDIR}/_ext/1278352567/sx1280.o ../phy/sx1280/sx1280_src/sx1280.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1278352567/sx1280_drv.o: ../phy/sx1280/sx1280_src/sx1280_drv.c  .generated_files/64b4fc5b07eafcca290340df9031ff944926819e.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1278352567" 
	@${RM} ${OBJECTDIR}/_ext/1278352567/sx1280_drv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1278352567/sx1280_drv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/1278352567/sx1280_drv.o.d" -o ${OBJECTDIR}/_ext/1278352567/sx1280_drv.o ../phy/sx1280/sx1280_src/sx1280_drv.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2045976161/sys.o: ../sys/sys_src/sys.c  .generated_files/506f55d4261eaaa2687e24a8ed07b8f8fcb3858e.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2045976161" 
	@${RM} ${OBJECTDIR}/_ext/2045976161/sys.o.d 
	@${RM} ${OBJECTDIR}/_ext/2045976161/sys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/2045976161/sys.o.d" -o ${OBJECTDIR}/_ext/2045976161/sys.o ../sys/sys_src/sys.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2045976161/sysEncrypt.o: ../sys/sys_src/sysEncrypt.c  .generated_files/758d4d84a016cb4e0d0de8c618fef135004ef79c.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2045976161" 
	@${RM} ${OBJECTDIR}/_ext/2045976161/sysEncrypt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2045976161/sysEncrypt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/2045976161/sysEncrypt.o.d" -o ${OBJECTDIR}/_ext/2045976161/sysEncrypt.o ../sys/sys_src/sysEncrypt.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2045976161/sysTimer.o: ../sys/sys_src/sysTimer.c  .generated_files/2307aa1cd266f9a2d163e3e5265235810826d60c.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2045976161" 
	@${RM} ${OBJECTDIR}/_ext/2045976161/sysTimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/2045976161/sysTimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/2045976161/sysTimer.o.d" -o ${OBJECTDIR}/_ext/2045976161/sysTimer.o ../sys/sys_src/sysTimer.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/127225941/wdt.o: ../wdt/wdt_src/wdt.c  .generated_files/7d37f0b7ff075e43fdf022435b572b16d807a26f.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/127225941" 
	@${RM} ${OBJECTDIR}/_ext/127225941/wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/127225941/wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/127225941/wdt.o.d" -o ${OBJECTDIR}/_ext/127225941/wdt.o ../wdt/wdt_src/wdt.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/f2efd8c79c076c6dce2b2dcdf1edc0d2b2c85b2e.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/298884965/AES.o: ../aes/aes_src/AES.c  .generated_files/2b7425b98db7e2d6d13c0ec7b8d192b8670dad2.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/298884965" 
	@${RM} ${OBJECTDIR}/_ext/298884965/AES.o.d 
	@${RM} ${OBJECTDIR}/_ext/298884965/AES.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/298884965/AES.o.d" -o ${OBJECTDIR}/_ext/298884965/AES.o ../aes/aes_src/AES.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/423217399/application.o: ../app/app_src/application.c  .generated_files/313099af9d0a0349f31b3364bd42f8e00b7c9c8c.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/423217399" 
	@${RM} ${OBJECTDIR}/_ext/423217399/application.o.d 
	@${RM} ${OBJECTDIR}/_ext/423217399/application.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/423217399/application.o.d" -o ${OBJECTDIR}/_ext/423217399/application.o ../app/app_src/application.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/423217399/crc.o: ../app/app_src/crc.c  .generated_files/ea51c6c54f13df6c78df4ce7080e2e3521336a22.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/423217399" 
	@${RM} ${OBJECTDIR}/_ext/423217399/crc.o.d 
	@${RM} ${OBJECTDIR}/_ext/423217399/crc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/423217399/crc.o.d" -o ${OBJECTDIR}/_ext/423217399/crc.o ../app/app_src/crc.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/423217399/EEPROM.o: ../app/app_src/EEPROM.c  .generated_files/66e7b8e02d8e816fc98f9a2bdc69fa4869bcec8e.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/423217399" 
	@${RM} ${OBJECTDIR}/_ext/423217399/EEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/423217399/EEPROM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/423217399/EEPROM.o.d" -o ${OBJECTDIR}/_ext/423217399/EEPROM.o ../app/app_src/EEPROM.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/423217399/led.o: ../app/app_src/led.c  .generated_files/dcd75360029df6169e51b207c39df417bd6ec2f1.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/423217399" 
	@${RM} ${OBJECTDIR}/_ext/423217399/led.o.d 
	@${RM} ${OBJECTDIR}/_ext/423217399/led.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/423217399/led.o.d" -o ${OBJECTDIR}/_ext/423217399/led.o ../app/app_src/led.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/423217399/uart_default_control.o: ../app/app_src/uart_default_control.c  .generated_files/a1bc2a7f9f7e9fb22eb51e3be172e36ec508d648.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/423217399" 
	@${RM} ${OBJECTDIR}/_ext/423217399/uart_default_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/423217399/uart_default_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/423217399/uart_default_control.o.d" -o ${OBJECTDIR}/_ext/423217399/uart_default_control.o ../app/app_src/uart_default_control.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/423217399/circular_buffer.o: ../app/app_src/circular_buffer.c  .generated_files/2fdf5420697d38b8a256515a606a4fae2461377a.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/423217399" 
	@${RM} ${OBJECTDIR}/_ext/423217399/circular_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/423217399/circular_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/423217399/circular_buffer.o.d" -o ${OBJECTDIR}/_ext/423217399/circular_buffer.o ../app/app_src/circular_buffer.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/995956265/w25q.o: ../memory/flash/flash_src/w25q.c  .generated_files/4ca3f0ddcbacca1263461124a5cd6de48d3bb208.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/995956265" 
	@${RM} ${OBJECTDIR}/_ext/995956265/w25q.o.d 
	@${RM} ${OBJECTDIR}/_ext/995956265/w25q.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/995956265/w25q.o.d" -o ${OBJECTDIR}/_ext/995956265/w25q.o ../memory/flash/flash_src/w25q.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1339929363/Timers.o: ../hal/hal_src/Timers.c  .generated_files/d5ce0cfbaa4f250872226cf3da25ce1095f421da.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1339929363" 
	@${RM} ${OBJECTDIR}/_ext/1339929363/Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1339929363/Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/1339929363/Timers.o.d" -o ${OBJECTDIR}/_ext/1339929363/Timers.o ../hal/hal_src/Timers.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1106471511/lfs.o: ../memory/lfs/lfs_src/lfs.c  .generated_files/70780d359c6100b489e5dd75f56765f3d4f9392f.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1106471511" 
	@${RM} ${OBJECTDIR}/_ext/1106471511/lfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106471511/lfs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/1106471511/lfs.o.d" -o ${OBJECTDIR}/_ext/1106471511/lfs.o ../memory/lfs/lfs_src/lfs.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1106471511/lfs_util.o: ../memory/lfs/lfs_src/lfs_util.c  .generated_files/e1787136eef3ca286912dcb25c13f47de9f44e08.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1106471511" 
	@${RM} ${OBJECTDIR}/_ext/1106471511/lfs_util.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106471511/lfs_util.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/1106471511/lfs_util.o.d" -o ${OBJECTDIR}/_ext/1106471511/lfs_util.o ../memory/lfs/lfs_src/lfs_util.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/memory/flash.o: mcc_generated_files/memory/flash.c  .generated_files/d1f6ee3d503ad0ca6d809a1c2bde734512443042.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/memory/flash.o.d" -o ${OBJECTDIR}/mcc_generated_files/memory/flash.o mcc_generated_files/memory/flash.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/55c5f18906b1a4ffb1c55d1a20de45b97ba9c119.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d" -o ${OBJECTDIR}/mcc_generated_files/clock.o mcc_generated_files/clock.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/exceptions.o: mcc_generated_files/exceptions.c  .generated_files/9c277ce450b389965e0e9c5dcfc491f3cb99fa51.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/exceptions.o.d" -o ${OBJECTDIR}/mcc_generated_files/exceptions.o mcc_generated_files/exceptions.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/6d51b6b25e9097685aa41a7888b09a0476ce3eda.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d" -o ${OBJECTDIR}/mcc_generated_files/system.o mcc_generated_files/system.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/f8b86a71c9eeee6bc82378a8ab4d52175ce603a.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/59fe42c171e94822a4a603ca28cfa63003176ed0.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o mcc_generated_files/pin_manager.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/943428fed697b26d40df3a679da639112e65dd1.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o mcc_generated_files/interrupt_manager.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/uart3.o: mcc_generated_files/uart3.c  .generated_files/8ae104c46ac7a98acddb293e9ee321533c4746aa.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart3.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart3.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart3.o mcc_generated_files/uart3.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/spi2.o: mcc_generated_files/spi2.c  .generated_files/39f8997d26d09151263c85f3cc6983fb637cbc25.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi2.o.d" -o ${OBJECTDIR}/mcc_generated_files/spi2.o mcc_generated_files/spi2.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/coretimer.o: mcc_generated_files/coretimer.c  .generated_files/c3f55f7373c6477f7911d1e6ba40b208c3d35441.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/coretimer.o.d" -o ${OBJECTDIR}/mcc_generated_files/coretimer.o mcc_generated_files/coretimer.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/dma.o: mcc_generated_files/dma.c  .generated_files/861209bd49c50fc519d90e0aa6e64f52efb6b379.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/dma.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/dma.o.d" -o ${OBJECTDIR}/mcc_generated_files/dma.o mcc_generated_files/dma.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/crc.o: mcc_generated_files/crc.c  .generated_files/4c621f32db9be5c511a76f16886e0e5eaa9a33d2.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/crc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/crc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/crc.o.d" -o ${OBJECTDIR}/mcc_generated_files/crc.o mcc_generated_files/crc.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/tmr3.o: mcc_generated_files/tmr3.c  .generated_files/a80d1aa35fbfcfe658e5755b12836b88199a95ad.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr3.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr3.o.d" -o ${OBJECTDIR}/mcc_generated_files/tmr3.o mcc_generated_files/tmr3.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/uart2.o: mcc_generated_files/uart2.c  .generated_files/b658d36268406584d39b684c2009df5f7968eca7.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart2.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart2.o mcc_generated_files/uart2.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2104501039/mbcrc.o: ../modbus/rtu/mbcrc.c  .generated_files/76339bdd8fa90ca4692847c9942e6d6c3d092ea.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2104501039" 
	@${RM} ${OBJECTDIR}/_ext/2104501039/mbcrc.o.d 
	@${RM} ${OBJECTDIR}/_ext/2104501039/mbcrc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/2104501039/mbcrc.o.d" -o ${OBJECTDIR}/_ext/2104501039/mbcrc.o ../modbus/rtu/mbcrc.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwk.o: ../nwk/nwk_src/nwk.c  .generated_files/8975f4dcad48d2791f204bc2152d5a0267c9d7b9.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwk.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwk.o.d" -o ${OBJECTDIR}/_ext/93605685/nwk.o ../nwk/nwk_src/nwk.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwkDataReq.o: ../nwk/nwk_src/nwkDataReq.c  .generated_files/bd630a24cdbe338510f44dad0c1b84fddcd6d424.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkDataReq.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkDataReq.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwkDataReq.o.d" -o ${OBJECTDIR}/_ext/93605685/nwkDataReq.o ../nwk/nwk_src/nwkDataReq.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwkFrame.o: ../nwk/nwk_src/nwkFrame.c  .generated_files/46c9bd1c2add16105bf3939d4b14e619ab79f30f.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkFrame.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkFrame.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwkFrame.o.d" -o ${OBJECTDIR}/_ext/93605685/nwkFrame.o ../nwk/nwk_src/nwkFrame.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwkGroup.o: ../nwk/nwk_src/nwkGroup.c  .generated_files/3b07f973b09d5bb11cff9d5c8273e5f00b43319a.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkGroup.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkGroup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwkGroup.o.d" -o ${OBJECTDIR}/_ext/93605685/nwkGroup.o ../nwk/nwk_src/nwkGroup.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwkRoute.o: ../nwk/nwk_src/nwkRoute.c  .generated_files/274a001b6c3f1d460eb9717f76ad531c83c77b1b.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkRoute.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkRoute.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwkRoute.o.d" -o ${OBJECTDIR}/_ext/93605685/nwkRoute.o ../nwk/nwk_src/nwkRoute.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.o: ../nwk/nwk_src/nwkRouteDiscovery.c  .generated_files/185d252022e63f484517148caaa110f546e52f5d.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.o.d" -o ${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.o ../nwk/nwk_src/nwkRouteDiscovery.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwkRx.o: ../nwk/nwk_src/nwkRx.c  .generated_files/bf70b1a94cd0983d04cd2ee43c07632249516f68.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkRx.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkRx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwkRx.o.d" -o ${OBJECTDIR}/_ext/93605685/nwkRx.o ../nwk/nwk_src/nwkRx.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwkSecurity.o: ../nwk/nwk_src/nwkSecurity.c  .generated_files/faca67cff4d221bb6fbe338a6b9cf5fc43d44b2e.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkSecurity.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkSecurity.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwkSecurity.o.d" -o ${OBJECTDIR}/_ext/93605685/nwkSecurity.o ../nwk/nwk_src/nwkSecurity.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwkTx.o: ../nwk/nwk_src/nwkTx.c  .generated_files/d731de55892537c0d45c7fe57cb044c46434ffea.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkTx.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkTx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwkTx.o.d" -o ${OBJECTDIR}/_ext/93605685/nwkTx.o ../nwk/nwk_src/nwkTx.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1084134857/phy.o: ../phy/phy_src/phy.c  .generated_files/8a5cfecc6611b21676325a30586768bdc5c48dbb.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1084134857" 
	@${RM} ${OBJECTDIR}/_ext/1084134857/phy.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084134857/phy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/1084134857/phy.o.d" -o ${OBJECTDIR}/_ext/1084134857/phy.o ../phy/phy_src/phy.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1971803433/sx1276.o: ../phy/sx1276/sx1276_src/sx1276.c  .generated_files/42175f5ad8d09761130cef7ca2344085a55dcb4d.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1971803433" 
	@${RM} ${OBJECTDIR}/_ext/1971803433/sx1276.o.d 
	@${RM} ${OBJECTDIR}/_ext/1971803433/sx1276.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/1971803433/sx1276.o.d" -o ${OBJECTDIR}/_ext/1971803433/sx1276.o ../phy/sx1276/sx1276_src/sx1276.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1278352567/sx1280-hal.o: ../phy/sx1280/sx1280_src/sx1280-hal.c  .generated_files/a15a6a4d5bb48a5d3d957a438d06710199ef3f51.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1278352567" 
	@${RM} ${OBJECTDIR}/_ext/1278352567/sx1280-hal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1278352567/sx1280-hal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/1278352567/sx1280-hal.o.d" -o ${OBJECTDIR}/_ext/1278352567/sx1280-hal.o ../phy/sx1280/sx1280_src/sx1280-hal.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1278352567/sx1280.o: ../phy/sx1280/sx1280_src/sx1280.c  .generated_files/f7f3dfe555f87dabba2378d205aff3fdf751d698.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1278352567" 
	@${RM} ${OBJECTDIR}/_ext/1278352567/sx1280.o.d 
	@${RM} ${OBJECTDIR}/_ext/1278352567/sx1280.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/1278352567/sx1280.o.d" -o ${OBJECTDIR}/_ext/1278352567/sx1280.o ../phy/sx1280/sx1280_src/sx1280.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1278352567/sx1280_drv.o: ../phy/sx1280/sx1280_src/sx1280_drv.c  .generated_files/35e6495c39e8a12b5a226cc3050acdfb6141ea24.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1278352567" 
	@${RM} ${OBJECTDIR}/_ext/1278352567/sx1280_drv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1278352567/sx1280_drv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/1278352567/sx1280_drv.o.d" -o ${OBJECTDIR}/_ext/1278352567/sx1280_drv.o ../phy/sx1280/sx1280_src/sx1280_drv.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2045976161/sys.o: ../sys/sys_src/sys.c  .generated_files/b51e20f8e1c6cb1e9088fa5b13076b48c00d1462.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2045976161" 
	@${RM} ${OBJECTDIR}/_ext/2045976161/sys.o.d 
	@${RM} ${OBJECTDIR}/_ext/2045976161/sys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/2045976161/sys.o.d" -o ${OBJECTDIR}/_ext/2045976161/sys.o ../sys/sys_src/sys.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2045976161/sysEncrypt.o: ../sys/sys_src/sysEncrypt.c  .generated_files/9c443b08a0b1a7a5c405970e9e85eb9c0e533e9d.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2045976161" 
	@${RM} ${OBJECTDIR}/_ext/2045976161/sysEncrypt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2045976161/sysEncrypt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/2045976161/sysEncrypt.o.d" -o ${OBJECTDIR}/_ext/2045976161/sysEncrypt.o ../sys/sys_src/sysEncrypt.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2045976161/sysTimer.o: ../sys/sys_src/sysTimer.c  .generated_files/4142cf5f8d3c5d1fef8983f3098d078bc4c8150b.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2045976161" 
	@${RM} ${OBJECTDIR}/_ext/2045976161/sysTimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/2045976161/sysTimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/2045976161/sysTimer.o.d" -o ${OBJECTDIR}/_ext/2045976161/sysTimer.o ../sys/sys_src/sysTimer.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/127225941/wdt.o: ../wdt/wdt_src/wdt.c  .generated_files/8a55b6cf2deda4a1d33cea9e28eb625d7fa47028.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/127225941" 
	@${RM} ${OBJECTDIR}/_ext/127225941/wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/127225941/wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/127225941/wdt.o.d" -o ${OBJECTDIR}/_ext/127225941/wdt.o ../wdt/wdt_src/wdt.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/1311479831dd4ad263f83b9426d12f11d69efae6.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -G 0 -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/PIC32MM0256GPM048.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    app.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  --fill=0xFF -o dist/${CND_CONF}/${IMAGE_TYPE}/PIC32MM0256GPM048.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC00490:0x1FC016FF -mreserve=boot@0x1FC00490:0x1FC00BEF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml,--allow-multiple-definition -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/PIC32MM0256GPM048.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   app.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  --fill=0xFF -o dist/${CND_CONF}/${IMAGE_TYPE}/PIC32MM0256GPM048.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml,--allow-multiple-definition -mdfp="${DFP_DIR}"
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
