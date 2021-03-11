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
${OBJECTDIR}/_ext/298884965/AES.o: ../aes/aes_src/AES.c  .generated_files/f2e89553426a84cbc7f3024751bb277daccb5216.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/298884965" 
	@${RM} ${OBJECTDIR}/_ext/298884965/AES.o.d 
	@${RM} ${OBJECTDIR}/_ext/298884965/AES.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/298884965/AES.o.d" -o ${OBJECTDIR}/_ext/298884965/AES.o ../aes/aes_src/AES.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/423217399/application.o: ../app/app_src/application.c  .generated_files/a6c87ab7d67062a3a6f8840272b4f33ebabf2b4b.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/423217399" 
	@${RM} ${OBJECTDIR}/_ext/423217399/application.o.d 
	@${RM} ${OBJECTDIR}/_ext/423217399/application.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/423217399/application.o.d" -o ${OBJECTDIR}/_ext/423217399/application.o ../app/app_src/application.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/423217399/crc.o: ../app/app_src/crc.c  .generated_files/c77f57a94d03f070f29e603760458da8a9ee7ba0.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/423217399" 
	@${RM} ${OBJECTDIR}/_ext/423217399/crc.o.d 
	@${RM} ${OBJECTDIR}/_ext/423217399/crc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/423217399/crc.o.d" -o ${OBJECTDIR}/_ext/423217399/crc.o ../app/app_src/crc.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/423217399/EEPROM.o: ../app/app_src/EEPROM.c  .generated_files/6d13bc69facee7c714f0e5e218403c4a6345798b.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/423217399" 
	@${RM} ${OBJECTDIR}/_ext/423217399/EEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/423217399/EEPROM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/423217399/EEPROM.o.d" -o ${OBJECTDIR}/_ext/423217399/EEPROM.o ../app/app_src/EEPROM.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/423217399/led.o: ../app/app_src/led.c  .generated_files/3270d847a91c302983095aaf1afa8b4ea779d4a3.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/423217399" 
	@${RM} ${OBJECTDIR}/_ext/423217399/led.o.d 
	@${RM} ${OBJECTDIR}/_ext/423217399/led.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/423217399/led.o.d" -o ${OBJECTDIR}/_ext/423217399/led.o ../app/app_src/led.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/423217399/uart_default_control.o: ../app/app_src/uart_default_control.c  .generated_files/24f49b980bae636a58863cbb7eda9a475556a126.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/423217399" 
	@${RM} ${OBJECTDIR}/_ext/423217399/uart_default_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/423217399/uart_default_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/423217399/uart_default_control.o.d" -o ${OBJECTDIR}/_ext/423217399/uart_default_control.o ../app/app_src/uart_default_control.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/423217399/circular_buffer.o: ../app/app_src/circular_buffer.c  .generated_files/3d9ec9ce0ca50c14e5ed5cebffda7508cb9b0113.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/423217399" 
	@${RM} ${OBJECTDIR}/_ext/423217399/circular_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/423217399/circular_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/423217399/circular_buffer.o.d" -o ${OBJECTDIR}/_ext/423217399/circular_buffer.o ../app/app_src/circular_buffer.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/995956265/w25q.o: ../memory/flash/flash_src/w25q.c  .generated_files/bff7f906574fe9f4d6b2bfd0ad617376cf4b387f.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/995956265" 
	@${RM} ${OBJECTDIR}/_ext/995956265/w25q.o.d 
	@${RM} ${OBJECTDIR}/_ext/995956265/w25q.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/995956265/w25q.o.d" -o ${OBJECTDIR}/_ext/995956265/w25q.o ../memory/flash/flash_src/w25q.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1339929363/Timers.o: ../hal/hal_src/Timers.c  .generated_files/62ad22388f5f2c87489de77609261467b62fd41d.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1339929363" 
	@${RM} ${OBJECTDIR}/_ext/1339929363/Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1339929363/Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/1339929363/Timers.o.d" -o ${OBJECTDIR}/_ext/1339929363/Timers.o ../hal/hal_src/Timers.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1106471511/lfs.o: ../memory/lfs/lfs_src/lfs.c  .generated_files/152cffbcca88f467cbbc1a0497c10480213e3127.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1106471511" 
	@${RM} ${OBJECTDIR}/_ext/1106471511/lfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106471511/lfs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/1106471511/lfs.o.d" -o ${OBJECTDIR}/_ext/1106471511/lfs.o ../memory/lfs/lfs_src/lfs.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1106471511/lfs_util.o: ../memory/lfs/lfs_src/lfs_util.c  .generated_files/2b35eba0fccb2aa495c97c34fbfc4199cb5076f5.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1106471511" 
	@${RM} ${OBJECTDIR}/_ext/1106471511/lfs_util.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106471511/lfs_util.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/1106471511/lfs_util.o.d" -o ${OBJECTDIR}/_ext/1106471511/lfs_util.o ../memory/lfs/lfs_src/lfs_util.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/memory/flash.o: mcc_generated_files/memory/flash.c  .generated_files/c2e6a21181596c15ca19b8726631baafe3632809.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/memory/flash.o.d" -o ${OBJECTDIR}/mcc_generated_files/memory/flash.o mcc_generated_files/memory/flash.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/ab684a1e2ef0fca6de284713929f45f868d77927.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d" -o ${OBJECTDIR}/mcc_generated_files/clock.o mcc_generated_files/clock.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/exceptions.o: mcc_generated_files/exceptions.c  .generated_files/3b19e0e6a601e96b62d53b3dec164894b671d62e.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/exceptions.o.d" -o ${OBJECTDIR}/mcc_generated_files/exceptions.o mcc_generated_files/exceptions.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/9b516a337800dd88d161d8f99b99ad9b4b7432c.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d" -o ${OBJECTDIR}/mcc_generated_files/system.o mcc_generated_files/system.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/f9a3a20b985fca7a9fe1cee4c97d61999ac072e7.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/eee4bf36f267214143c5d64b21186b10ad5c51a6.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o mcc_generated_files/pin_manager.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/3eced995d133417ceae45004cd6cdfa39d3ee702.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o mcc_generated_files/interrupt_manager.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/uart3.o: mcc_generated_files/uart3.c  .generated_files/eb5cc7e127aa3844c94a467a725f03e7808129e0.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart3.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart3.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart3.o mcc_generated_files/uart3.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/spi2.o: mcc_generated_files/spi2.c  .generated_files/bd8db0103e7ef2f853c066f13f72e81016487383.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi2.o.d" -o ${OBJECTDIR}/mcc_generated_files/spi2.o mcc_generated_files/spi2.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/coretimer.o: mcc_generated_files/coretimer.c  .generated_files/ed19a8e39827b757790b645a31f76279c2f2c35a.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/coretimer.o.d" -o ${OBJECTDIR}/mcc_generated_files/coretimer.o mcc_generated_files/coretimer.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/dma.o: mcc_generated_files/dma.c  .generated_files/86d629f791a8f91233cebe2680f76819d7cf5114.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/dma.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/dma.o.d" -o ${OBJECTDIR}/mcc_generated_files/dma.o mcc_generated_files/dma.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/crc.o: mcc_generated_files/crc.c  .generated_files/8effd2d52e448ba9ae6e3f45527d3d97ba37afd5.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/crc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/crc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/crc.o.d" -o ${OBJECTDIR}/mcc_generated_files/crc.o mcc_generated_files/crc.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/tmr3.o: mcc_generated_files/tmr3.c  .generated_files/8a46c1faefc83454a2c665a3bc5ef273570dbbbb.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr3.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr3.o.d" -o ${OBJECTDIR}/mcc_generated_files/tmr3.o mcc_generated_files/tmr3.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/uart2.o: mcc_generated_files/uart2.c  .generated_files/489846385778cdf0c678d96458b7ce7ab1ce549.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart2.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart2.o mcc_generated_files/uart2.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2104501039/mbcrc.o: ../modbus/rtu/mbcrc.c  .generated_files/aed1daea0ad01175c51689ec29e2b51cdd86ee96.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2104501039" 
	@${RM} ${OBJECTDIR}/_ext/2104501039/mbcrc.o.d 
	@${RM} ${OBJECTDIR}/_ext/2104501039/mbcrc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/2104501039/mbcrc.o.d" -o ${OBJECTDIR}/_ext/2104501039/mbcrc.o ../modbus/rtu/mbcrc.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwk.o: ../nwk/nwk_src/nwk.c  .generated_files/cf82349d125c691cf005c51ff284150cb021b4f8.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwk.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwk.o.d" -o ${OBJECTDIR}/_ext/93605685/nwk.o ../nwk/nwk_src/nwk.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwkDataReq.o: ../nwk/nwk_src/nwkDataReq.c  .generated_files/b91915580f6843545a261680116e2c0af9a5b413.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkDataReq.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkDataReq.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwkDataReq.o.d" -o ${OBJECTDIR}/_ext/93605685/nwkDataReq.o ../nwk/nwk_src/nwkDataReq.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwkFrame.o: ../nwk/nwk_src/nwkFrame.c  .generated_files/df7098f58702a153edfb0cddfb68ef81efff2d13.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkFrame.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkFrame.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwkFrame.o.d" -o ${OBJECTDIR}/_ext/93605685/nwkFrame.o ../nwk/nwk_src/nwkFrame.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwkGroup.o: ../nwk/nwk_src/nwkGroup.c  .generated_files/73ba4e5384ce83bfb434294306cd2d56c9ab7722.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkGroup.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkGroup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwkGroup.o.d" -o ${OBJECTDIR}/_ext/93605685/nwkGroup.o ../nwk/nwk_src/nwkGroup.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwkRoute.o: ../nwk/nwk_src/nwkRoute.c  .generated_files/4a0e8a75ae2e6366f8147e4d053cc9026c76984.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkRoute.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkRoute.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwkRoute.o.d" -o ${OBJECTDIR}/_ext/93605685/nwkRoute.o ../nwk/nwk_src/nwkRoute.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.o: ../nwk/nwk_src/nwkRouteDiscovery.c  .generated_files/a8e1deea13056588cf89aacc51985fce50602acc.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.o.d" -o ${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.o ../nwk/nwk_src/nwkRouteDiscovery.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwkRx.o: ../nwk/nwk_src/nwkRx.c  .generated_files/689619778744d191d7cf3df697d5f835bfb04f73.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkRx.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkRx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwkRx.o.d" -o ${OBJECTDIR}/_ext/93605685/nwkRx.o ../nwk/nwk_src/nwkRx.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwkSecurity.o: ../nwk/nwk_src/nwkSecurity.c  .generated_files/a244742e0bad451a9c0bfb4fe77accbb04360de7.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkSecurity.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkSecurity.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwkSecurity.o.d" -o ${OBJECTDIR}/_ext/93605685/nwkSecurity.o ../nwk/nwk_src/nwkSecurity.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwkTx.o: ../nwk/nwk_src/nwkTx.c  .generated_files/90e9248d367f5c91c1d0e43bd050d4b5d7cc1473.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkTx.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkTx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwkTx.o.d" -o ${OBJECTDIR}/_ext/93605685/nwkTx.o ../nwk/nwk_src/nwkTx.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1084134857/phy.o: ../phy/phy_src/phy.c  .generated_files/d15704b812a775c3a70a6f4b13395fc47a2154ee.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1084134857" 
	@${RM} ${OBJECTDIR}/_ext/1084134857/phy.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084134857/phy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/1084134857/phy.o.d" -o ${OBJECTDIR}/_ext/1084134857/phy.o ../phy/phy_src/phy.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1971803433/sx1276.o: ../phy/sx1276/sx1276_src/sx1276.c  .generated_files/4936dbe6981130e7c03ae342797ed3ae811439af.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1971803433" 
	@${RM} ${OBJECTDIR}/_ext/1971803433/sx1276.o.d 
	@${RM} ${OBJECTDIR}/_ext/1971803433/sx1276.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/1971803433/sx1276.o.d" -o ${OBJECTDIR}/_ext/1971803433/sx1276.o ../phy/sx1276/sx1276_src/sx1276.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1278352567/sx1280-hal.o: ../phy/sx1280/sx1280_src/sx1280-hal.c  .generated_files/c0c88d54c4228c483ad033e423afaa72f7079aa5.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1278352567" 
	@${RM} ${OBJECTDIR}/_ext/1278352567/sx1280-hal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1278352567/sx1280-hal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/1278352567/sx1280-hal.o.d" -o ${OBJECTDIR}/_ext/1278352567/sx1280-hal.o ../phy/sx1280/sx1280_src/sx1280-hal.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1278352567/sx1280.o: ../phy/sx1280/sx1280_src/sx1280.c  .generated_files/6117781858a0d0e4754c58ef9b017fb63c78b875.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1278352567" 
	@${RM} ${OBJECTDIR}/_ext/1278352567/sx1280.o.d 
	@${RM} ${OBJECTDIR}/_ext/1278352567/sx1280.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/1278352567/sx1280.o.d" -o ${OBJECTDIR}/_ext/1278352567/sx1280.o ../phy/sx1280/sx1280_src/sx1280.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1278352567/sx1280_drv.o: ../phy/sx1280/sx1280_src/sx1280_drv.c  .generated_files/87b7af9b94b1c2b87ec5ac680ae344106af8265b.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1278352567" 
	@${RM} ${OBJECTDIR}/_ext/1278352567/sx1280_drv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1278352567/sx1280_drv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/1278352567/sx1280_drv.o.d" -o ${OBJECTDIR}/_ext/1278352567/sx1280_drv.o ../phy/sx1280/sx1280_src/sx1280_drv.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2045976161/sys.o: ../sys/sys_src/sys.c  .generated_files/e605d1453dda1c77682d3df409aed2f4f1b76e08.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2045976161" 
	@${RM} ${OBJECTDIR}/_ext/2045976161/sys.o.d 
	@${RM} ${OBJECTDIR}/_ext/2045976161/sys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/2045976161/sys.o.d" -o ${OBJECTDIR}/_ext/2045976161/sys.o ../sys/sys_src/sys.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2045976161/sysEncrypt.o: ../sys/sys_src/sysEncrypt.c  .generated_files/129f28f1718b17f8aa0d3b5216cb6889820049b2.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2045976161" 
	@${RM} ${OBJECTDIR}/_ext/2045976161/sysEncrypt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2045976161/sysEncrypt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/2045976161/sysEncrypt.o.d" -o ${OBJECTDIR}/_ext/2045976161/sysEncrypt.o ../sys/sys_src/sysEncrypt.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2045976161/sysTimer.o: ../sys/sys_src/sysTimer.c  .generated_files/e49b29c17705e0760763c23942f969958f271a9f.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2045976161" 
	@${RM} ${OBJECTDIR}/_ext/2045976161/sysTimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/2045976161/sysTimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/2045976161/sysTimer.o.d" -o ${OBJECTDIR}/_ext/2045976161/sysTimer.o ../sys/sys_src/sysTimer.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/127225941/wdt.o: ../wdt/wdt_src/wdt.c  .generated_files/6a7db489655730597461e5fc9b201ffdee9255d7.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/127225941" 
	@${RM} ${OBJECTDIR}/_ext/127225941/wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/127225941/wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/127225941/wdt.o.d" -o ${OBJECTDIR}/_ext/127225941/wdt.o ../wdt/wdt_src/wdt.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/d93c218a0bd87aa6a833f70caff59dd9a775fc26.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/298884965/AES.o: ../aes/aes_src/AES.c  .generated_files/88bf3cd8221bc2f12ce5ba07bb5374a07b93d120.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/298884965" 
	@${RM} ${OBJECTDIR}/_ext/298884965/AES.o.d 
	@${RM} ${OBJECTDIR}/_ext/298884965/AES.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/298884965/AES.o.d" -o ${OBJECTDIR}/_ext/298884965/AES.o ../aes/aes_src/AES.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/423217399/application.o: ../app/app_src/application.c  .generated_files/39b66dc4db2809d50436411b301307c303144e7a.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/423217399" 
	@${RM} ${OBJECTDIR}/_ext/423217399/application.o.d 
	@${RM} ${OBJECTDIR}/_ext/423217399/application.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/423217399/application.o.d" -o ${OBJECTDIR}/_ext/423217399/application.o ../app/app_src/application.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/423217399/crc.o: ../app/app_src/crc.c  .generated_files/8078fd92c691dc1db911d15fdb895036f6576cc4.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/423217399" 
	@${RM} ${OBJECTDIR}/_ext/423217399/crc.o.d 
	@${RM} ${OBJECTDIR}/_ext/423217399/crc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/423217399/crc.o.d" -o ${OBJECTDIR}/_ext/423217399/crc.o ../app/app_src/crc.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/423217399/EEPROM.o: ../app/app_src/EEPROM.c  .generated_files/5598827b1537437959bd3baebc52c4cd571fbfa8.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/423217399" 
	@${RM} ${OBJECTDIR}/_ext/423217399/EEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/423217399/EEPROM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/423217399/EEPROM.o.d" -o ${OBJECTDIR}/_ext/423217399/EEPROM.o ../app/app_src/EEPROM.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/423217399/led.o: ../app/app_src/led.c  .generated_files/32264edc65db452efd63246b66a803bd0118afa6.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/423217399" 
	@${RM} ${OBJECTDIR}/_ext/423217399/led.o.d 
	@${RM} ${OBJECTDIR}/_ext/423217399/led.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/423217399/led.o.d" -o ${OBJECTDIR}/_ext/423217399/led.o ../app/app_src/led.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/423217399/uart_default_control.o: ../app/app_src/uart_default_control.c  .generated_files/7a42d921c39b6ec6f2cdf1cfff53a49866051cb9.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/423217399" 
	@${RM} ${OBJECTDIR}/_ext/423217399/uart_default_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/423217399/uart_default_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/423217399/uart_default_control.o.d" -o ${OBJECTDIR}/_ext/423217399/uart_default_control.o ../app/app_src/uart_default_control.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/423217399/circular_buffer.o: ../app/app_src/circular_buffer.c  .generated_files/b0d30cf36c1d398afe577f422ad2ed1d5882845b.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/423217399" 
	@${RM} ${OBJECTDIR}/_ext/423217399/circular_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/423217399/circular_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/423217399/circular_buffer.o.d" -o ${OBJECTDIR}/_ext/423217399/circular_buffer.o ../app/app_src/circular_buffer.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/995956265/w25q.o: ../memory/flash/flash_src/w25q.c  .generated_files/66d264f8ac8c034ac7ece37bce26b49e8dab10bf.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/995956265" 
	@${RM} ${OBJECTDIR}/_ext/995956265/w25q.o.d 
	@${RM} ${OBJECTDIR}/_ext/995956265/w25q.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/995956265/w25q.o.d" -o ${OBJECTDIR}/_ext/995956265/w25q.o ../memory/flash/flash_src/w25q.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1339929363/Timers.o: ../hal/hal_src/Timers.c  .generated_files/25d4a20f6649cbeec4550787be83e65389a36936.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1339929363" 
	@${RM} ${OBJECTDIR}/_ext/1339929363/Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1339929363/Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/1339929363/Timers.o.d" -o ${OBJECTDIR}/_ext/1339929363/Timers.o ../hal/hal_src/Timers.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1106471511/lfs.o: ../memory/lfs/lfs_src/lfs.c  .generated_files/7d773653a82e60f4c4f5f85d72fc5b3ef46aafe8.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1106471511" 
	@${RM} ${OBJECTDIR}/_ext/1106471511/lfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106471511/lfs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/1106471511/lfs.o.d" -o ${OBJECTDIR}/_ext/1106471511/lfs.o ../memory/lfs/lfs_src/lfs.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1106471511/lfs_util.o: ../memory/lfs/lfs_src/lfs_util.c  .generated_files/4c5c53d26afcd31de932b6a32729a2f0d5453b58.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1106471511" 
	@${RM} ${OBJECTDIR}/_ext/1106471511/lfs_util.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106471511/lfs_util.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/1106471511/lfs_util.o.d" -o ${OBJECTDIR}/_ext/1106471511/lfs_util.o ../memory/lfs/lfs_src/lfs_util.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/memory/flash.o: mcc_generated_files/memory/flash.c  .generated_files/9b8764219cc07fa4a08d171eb18a93312c4b1a5a.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/memory/flash.o.d" -o ${OBJECTDIR}/mcc_generated_files/memory/flash.o mcc_generated_files/memory/flash.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/85775871854d9bd0559e395a35ad0f1b413cc7cf.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d" -o ${OBJECTDIR}/mcc_generated_files/clock.o mcc_generated_files/clock.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/exceptions.o: mcc_generated_files/exceptions.c  .generated_files/274a21d29fe1e323a3031b503c0fe7ec69661ccd.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/exceptions.o.d" -o ${OBJECTDIR}/mcc_generated_files/exceptions.o mcc_generated_files/exceptions.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/1200f40d0398508df583184ff3fe24ff54f4f325.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d" -o ${OBJECTDIR}/mcc_generated_files/system.o mcc_generated_files/system.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/2e5ad53bbda45065ccf1c778077134e39fb8fd42.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/d27313987bba82f4ec9454f093e1031119f9845b.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o mcc_generated_files/pin_manager.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/abb0f416d3e7b5100b4d3957a21dee4b2c11e45.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o mcc_generated_files/interrupt_manager.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/uart3.o: mcc_generated_files/uart3.c  .generated_files/257bc3ab90da96ec256c0b059f07d492217ee0f.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart3.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart3.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart3.o mcc_generated_files/uart3.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/spi2.o: mcc_generated_files/spi2.c  .generated_files/ccc9081e54c785a395326c45155494be8e425e9b.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi2.o.d" -o ${OBJECTDIR}/mcc_generated_files/spi2.o mcc_generated_files/spi2.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/coretimer.o: mcc_generated_files/coretimer.c  .generated_files/ed8988d4945c89ed438c2b8d37764dbe0ba0807c.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/coretimer.o.d" -o ${OBJECTDIR}/mcc_generated_files/coretimer.o mcc_generated_files/coretimer.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/dma.o: mcc_generated_files/dma.c  .generated_files/be183e82a995e1d8456990b1ef4c03ba180feccd.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/dma.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/dma.o.d" -o ${OBJECTDIR}/mcc_generated_files/dma.o mcc_generated_files/dma.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/crc.o: mcc_generated_files/crc.c  .generated_files/f730d6888d4b053bc0e9e633dc28a557feb533aa.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/crc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/crc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/crc.o.d" -o ${OBJECTDIR}/mcc_generated_files/crc.o mcc_generated_files/crc.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/tmr3.o: mcc_generated_files/tmr3.c  .generated_files/1102d9cdb2d40bb9c9291399bfb4da7e0640dc45.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr3.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr3.o.d" -o ${OBJECTDIR}/mcc_generated_files/tmr3.o mcc_generated_files/tmr3.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/uart2.o: mcc_generated_files/uart2.c  .generated_files/558b9194ec7d76f96e4cfe31f1c73e60a56860ca.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart2.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart2.o mcc_generated_files/uart2.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2104501039/mbcrc.o: ../modbus/rtu/mbcrc.c  .generated_files/4cedd8c6e45b88fef265b4e30b90f458ac14a71d.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2104501039" 
	@${RM} ${OBJECTDIR}/_ext/2104501039/mbcrc.o.d 
	@${RM} ${OBJECTDIR}/_ext/2104501039/mbcrc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/2104501039/mbcrc.o.d" -o ${OBJECTDIR}/_ext/2104501039/mbcrc.o ../modbus/rtu/mbcrc.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwk.o: ../nwk/nwk_src/nwk.c  .generated_files/ba22b9c0097f0130c9015b05e1f3687a1adf1791.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwk.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwk.o.d" -o ${OBJECTDIR}/_ext/93605685/nwk.o ../nwk/nwk_src/nwk.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwkDataReq.o: ../nwk/nwk_src/nwkDataReq.c  .generated_files/30e7838709f4602f42f4acac93fdf2a5782fddde.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkDataReq.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkDataReq.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwkDataReq.o.d" -o ${OBJECTDIR}/_ext/93605685/nwkDataReq.o ../nwk/nwk_src/nwkDataReq.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwkFrame.o: ../nwk/nwk_src/nwkFrame.c  .generated_files/aa186a77a0a1840efa3e730f0917dbdd0d653c52.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkFrame.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkFrame.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwkFrame.o.d" -o ${OBJECTDIR}/_ext/93605685/nwkFrame.o ../nwk/nwk_src/nwkFrame.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwkGroup.o: ../nwk/nwk_src/nwkGroup.c  .generated_files/c1ea0ff7d327bb18e7ffced6ce8f25f402710bb0.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkGroup.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkGroup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwkGroup.o.d" -o ${OBJECTDIR}/_ext/93605685/nwkGroup.o ../nwk/nwk_src/nwkGroup.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwkRoute.o: ../nwk/nwk_src/nwkRoute.c  .generated_files/13bcbe40eab09b28f1dd5ab5c717c0b5d2cf66cb.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkRoute.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkRoute.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwkRoute.o.d" -o ${OBJECTDIR}/_ext/93605685/nwkRoute.o ../nwk/nwk_src/nwkRoute.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.o: ../nwk/nwk_src/nwkRouteDiscovery.c  .generated_files/abf42fb9d0753b6a5cfa23b8268ebdf1518f03db.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.o.d" -o ${OBJECTDIR}/_ext/93605685/nwkRouteDiscovery.o ../nwk/nwk_src/nwkRouteDiscovery.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwkRx.o: ../nwk/nwk_src/nwkRx.c  .generated_files/ad8efe25673ab17dc5331721ade8dcc41a5f734b.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkRx.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkRx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwkRx.o.d" -o ${OBJECTDIR}/_ext/93605685/nwkRx.o ../nwk/nwk_src/nwkRx.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwkSecurity.o: ../nwk/nwk_src/nwkSecurity.c  .generated_files/cf197a64c9c369e590ceb92b9420ee0bb9bb741e.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkSecurity.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkSecurity.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwkSecurity.o.d" -o ${OBJECTDIR}/_ext/93605685/nwkSecurity.o ../nwk/nwk_src/nwkSecurity.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93605685/nwkTx.o: ../nwk/nwk_src/nwkTx.c  .generated_files/709c25b897a7ba3a2f96e8639f3e6a45a57eb85b.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93605685" 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkTx.o.d 
	@${RM} ${OBJECTDIR}/_ext/93605685/nwkTx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/93605685/nwkTx.o.d" -o ${OBJECTDIR}/_ext/93605685/nwkTx.o ../nwk/nwk_src/nwkTx.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1084134857/phy.o: ../phy/phy_src/phy.c  .generated_files/dd7d749104d8075789c49ae7cd0bd6ad4938bd7e.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1084134857" 
	@${RM} ${OBJECTDIR}/_ext/1084134857/phy.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084134857/phy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/1084134857/phy.o.d" -o ${OBJECTDIR}/_ext/1084134857/phy.o ../phy/phy_src/phy.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1971803433/sx1276.o: ../phy/sx1276/sx1276_src/sx1276.c  .generated_files/474d87724b9c26d708941f753fe57907cbbd2f35.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1971803433" 
	@${RM} ${OBJECTDIR}/_ext/1971803433/sx1276.o.d 
	@${RM} ${OBJECTDIR}/_ext/1971803433/sx1276.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/1971803433/sx1276.o.d" -o ${OBJECTDIR}/_ext/1971803433/sx1276.o ../phy/sx1276/sx1276_src/sx1276.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1278352567/sx1280-hal.o: ../phy/sx1280/sx1280_src/sx1280-hal.c  .generated_files/3109eca4067fc662d58293803764de6981641e5c.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1278352567" 
	@${RM} ${OBJECTDIR}/_ext/1278352567/sx1280-hal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1278352567/sx1280-hal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/1278352567/sx1280-hal.o.d" -o ${OBJECTDIR}/_ext/1278352567/sx1280-hal.o ../phy/sx1280/sx1280_src/sx1280-hal.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1278352567/sx1280.o: ../phy/sx1280/sx1280_src/sx1280.c  .generated_files/909a3b787d269ec0a5f1acc879f30a64833b50da.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1278352567" 
	@${RM} ${OBJECTDIR}/_ext/1278352567/sx1280.o.d 
	@${RM} ${OBJECTDIR}/_ext/1278352567/sx1280.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/1278352567/sx1280.o.d" -o ${OBJECTDIR}/_ext/1278352567/sx1280.o ../phy/sx1280/sx1280_src/sx1280.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1278352567/sx1280_drv.o: ../phy/sx1280/sx1280_src/sx1280_drv.c  .generated_files/65ec5b88f17023994cad4e035a6dda55a5ae5110.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1278352567" 
	@${RM} ${OBJECTDIR}/_ext/1278352567/sx1280_drv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1278352567/sx1280_drv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/1278352567/sx1280_drv.o.d" -o ${OBJECTDIR}/_ext/1278352567/sx1280_drv.o ../phy/sx1280/sx1280_src/sx1280_drv.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2045976161/sys.o: ../sys/sys_src/sys.c  .generated_files/b02c1119546a155befaf5b2fef9777c8014cf198.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2045976161" 
	@${RM} ${OBJECTDIR}/_ext/2045976161/sys.o.d 
	@${RM} ${OBJECTDIR}/_ext/2045976161/sys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/2045976161/sys.o.d" -o ${OBJECTDIR}/_ext/2045976161/sys.o ../sys/sys_src/sys.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2045976161/sysEncrypt.o: ../sys/sys_src/sysEncrypt.c  .generated_files/8ca9e18f551cd33c73751f8e72ccc69bba27c9c2.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2045976161" 
	@${RM} ${OBJECTDIR}/_ext/2045976161/sysEncrypt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2045976161/sysEncrypt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/2045976161/sysEncrypt.o.d" -o ${OBJECTDIR}/_ext/2045976161/sysEncrypt.o ../sys/sys_src/sysEncrypt.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2045976161/sysTimer.o: ../sys/sys_src/sysTimer.c  .generated_files/3a7805eb75130cf6d2476fe74fc5377f7d1db347.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2045976161" 
	@${RM} ${OBJECTDIR}/_ext/2045976161/sysTimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/2045976161/sysTimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/2045976161/sysTimer.o.d" -o ${OBJECTDIR}/_ext/2045976161/sysTimer.o ../sys/sys_src/sysTimer.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/127225941/wdt.o: ../wdt/wdt_src/wdt.c  .generated_files/7e00298875cf0dfe5776999e1d6b537d2c2b9836.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}/_ext/127225941" 
	@${RM} ${OBJECTDIR}/_ext/127225941/wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/127225941/wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/_ext/127225941/wdt.o.d" -o ${OBJECTDIR}/_ext/127225941/wdt.o ../wdt/wdt_src/wdt.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/4ac420364e44d2972eb6631654908a47625f9f63.flag .generated_files/44c5898343e96ea7143c6467a8b0404edc693ccb.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -DATCOMM -DSX1280 -DLFS_NO_MALLOC -DLFS_NO_ASSERT -I"../aes/aes_inc" -I"../app/app_inc" -I"../hal/hal_inc" -I"../modbus/ascii" -I"../modbus/functions" -I"../modbus/mb_inc" -I"../modbus/port" -I"../modbus/rtu" -I"../nwk/nwk_inc" -I"../phy/phy_inc" -I"../phy/sx1276/sx1276_inc" -I"../phy/sx1280/sx1280_inc" -I"../sys/sys_inc" -I"../wdt/wdt_inc" -I"mcc_generated_files" -I"../modbus/port" -I"../memory/flash/flash_inc" -I"../memory/lfs/lfs_inc" -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_atcomm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -fno-builtin-memcpy -fno-builtin-memset -mdfp="${DFP_DIR}"  
	
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
