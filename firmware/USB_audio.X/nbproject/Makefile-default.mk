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
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/USB_audio.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/USB_audio.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/system_config/default/framework/driver/spi/src/drv_spi_static.c ../src/system_config/default/framework/system/clk/src/sys_clk_static.c ../src/system_config/default/framework/system/ports/src/sys_ports_static.c ../src/system_config/default/system_init.c ../src/system_config/default/system_interrupt.c ../src/system_config/default/system_tasks.c ../src/app.c ../src/main.c ../../../../../../microchip/harmony/v1_03_01/framework/driver/i2s/src/dynamic/drv_i2s.c ../../../../../../microchip/harmony/v1_03_01/framework/driver/usb/usbfs/src/dynamic/drv_usb.c ../../../../../../microchip/harmony/v1_03_01/framework/driver/usb/usbfs/src/dynamic/drv_usb_device.c ../../../../../../microchip/harmony/v1_03_01/framework/system/devcon/src/sys_devcon.c ../../../../../../microchip/harmony/v1_03_01/framework/system/devcon/src/sys_devcon_pic32mx.c ../../../../../../microchip/harmony/v1_03_01/framework/system/int/src/sys_int_pic32.c ../../../../../../microchip/harmony/v1_03_01/framework/system/ports/src/sys_ports.c ../../../../../../microchip/harmony/v1_03_01/framework/usb/src/dynamic/usb_device.c ../../../../../../microchip/harmony/v1_03_01/framework/usb/src/dynamic/usb_device_audio_v1_0.c ../../../../../../microchip/harmony/v1_03_01/framework/usb/src/dynamic/usb_device_audio_read_write.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/2077795248/drv_spi_static.o ${OBJECTDIR}/_ext/639803181/sys_clk_static.o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ${OBJECTDIR}/_ext/1688732426/system_init.o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1068317977/drv_i2s.o ${OBJECTDIR}/_ext/172804285/drv_usb.o ${OBJECTDIR}/_ext/172804285/drv_usb_device.o ${OBJECTDIR}/_ext/35725571/sys_devcon.o ${OBJECTDIR}/_ext/35725571/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/1707904131/sys_int_pic32.o ${OBJECTDIR}/_ext/1502646426/sys_ports.o ${OBJECTDIR}/_ext/1283518026/usb_device.o ${OBJECTDIR}/_ext/1283518026/usb_device_audio_v1_0.o ${OBJECTDIR}/_ext/1283518026/usb_device_audio_read_write.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/2077795248/drv_spi_static.o.d ${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d ${OBJECTDIR}/_ext/1688732426/system_init.o.d ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1068317977/drv_i2s.o.d ${OBJECTDIR}/_ext/172804285/drv_usb.o.d ${OBJECTDIR}/_ext/172804285/drv_usb_device.o.d ${OBJECTDIR}/_ext/35725571/sys_devcon.o.d ${OBJECTDIR}/_ext/35725571/sys_devcon_pic32mx.o.d ${OBJECTDIR}/_ext/1707904131/sys_int_pic32.o.d ${OBJECTDIR}/_ext/1502646426/sys_ports.o.d ${OBJECTDIR}/_ext/1283518026/usb_device.o.d ${OBJECTDIR}/_ext/1283518026/usb_device_audio_v1_0.o.d ${OBJECTDIR}/_ext/1283518026/usb_device_audio_read_write.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/2077795248/drv_spi_static.o ${OBJECTDIR}/_ext/639803181/sys_clk_static.o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ${OBJECTDIR}/_ext/1688732426/system_init.o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1068317977/drv_i2s.o ${OBJECTDIR}/_ext/172804285/drv_usb.o ${OBJECTDIR}/_ext/172804285/drv_usb_device.o ${OBJECTDIR}/_ext/35725571/sys_devcon.o ${OBJECTDIR}/_ext/35725571/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/1707904131/sys_int_pic32.o ${OBJECTDIR}/_ext/1502646426/sys_ports.o ${OBJECTDIR}/_ext/1283518026/usb_device.o ${OBJECTDIR}/_ext/1283518026/usb_device_audio_v1_0.o ${OBJECTDIR}/_ext/1283518026/usb_device_audio_read_write.o

# Source Files
SOURCEFILES=../src/system_config/default/framework/driver/spi/src/drv_spi_static.c ../src/system_config/default/framework/system/clk/src/sys_clk_static.c ../src/system_config/default/framework/system/ports/src/sys_ports_static.c ../src/system_config/default/system_init.c ../src/system_config/default/system_interrupt.c ../src/system_config/default/system_tasks.c ../src/app.c ../src/main.c ../../../../../../microchip/harmony/v1_03_01/framework/driver/i2s/src/dynamic/drv_i2s.c ../../../../../../microchip/harmony/v1_03_01/framework/driver/usb/usbfs/src/dynamic/drv_usb.c ../../../../../../microchip/harmony/v1_03_01/framework/driver/usb/usbfs/src/dynamic/drv_usb_device.c ../../../../../../microchip/harmony/v1_03_01/framework/system/devcon/src/sys_devcon.c ../../../../../../microchip/harmony/v1_03_01/framework/system/devcon/src/sys_devcon_pic32mx.c ../../../../../../microchip/harmony/v1_03_01/framework/system/int/src/sys_int_pic32.c ../../../../../../microchip/harmony/v1_03_01/framework/system/ports/src/sys_ports.c ../../../../../../microchip/harmony/v1_03_01/framework/usb/src/dynamic/usb_device.c ../../../../../../microchip/harmony/v1_03_01/framework/usb/src/dynamic/usb_device_audio_v1_0.c ../../../../../../microchip/harmony/v1_03_01/framework/usb/src/dynamic/usb_device_audio_read_write.c


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/USB_audio.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX220F032B
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
${OBJECTDIR}/_ext/2077795248/drv_spi_static.o: ../src/system_config/default/framework/driver/spi/src/drv_spi_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2077795248" 
	@${RM} ${OBJECTDIR}/_ext/2077795248/drv_spi_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/2077795248/drv_spi_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2077795248/drv_spi_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O3 -I"../src" -I"../src/system_config/default" -I"../../../../../../microchip/harmony/v1_03_01/framework" -MMD -MF "${OBJECTDIR}/_ext/2077795248/drv_spi_static.o.d" -o ${OBJECTDIR}/_ext/2077795248/drv_spi_static.o ../src/system_config/default/framework/driver/spi/src/drv_spi_static.c   
	
${OBJECTDIR}/_ext/639803181/sys_clk_static.o: ../src/system_config/default/framework/system/clk/src/sys_clk_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/639803181" 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O3 -I"../src" -I"../src/system_config/default" -I"../../../../../../microchip/harmony/v1_03_01/framework" -MMD -MF "${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d" -o ${OBJECTDIR}/_ext/639803181/sys_clk_static.o ../src/system_config/default/framework/system/clk/src/sys_clk_static.c   
	
${OBJECTDIR}/_ext/822048611/sys_ports_static.o: ../src/system_config/default/framework/system/ports/src/sys_ports_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/822048611" 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O3 -I"../src" -I"../src/system_config/default" -I"../../../../../../microchip/harmony/v1_03_01/framework" -MMD -MF "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ../src/system_config/default/framework/system/ports/src/sys_ports_static.c   
	
${OBJECTDIR}/_ext/1688732426/system_init.o: ../src/system_config/default/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O3 -I"../src" -I"../src/system_config/default" -I"../../../../../../microchip/harmony/v1_03_01/framework" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_init.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_init.o ../src/system_config/default/system_init.c   
	
${OBJECTDIR}/_ext/1688732426/system_interrupt.o: ../src/system_config/default/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O3 -I"../src" -I"../src/system_config/default" -I"../../../../../../microchip/harmony/v1_03_01/framework" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ../src/system_config/default/system_interrupt.c   
	
${OBJECTDIR}/_ext/1688732426/system_tasks.o: ../src/system_config/default/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O3 -I"../src" -I"../src/system_config/default" -I"../../../../../../microchip/harmony/v1_03_01/framework" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ../src/system_config/default/system_tasks.c   
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O3 -I"../src" -I"../src/system_config/default" -I"../../../../../../microchip/harmony/v1_03_01/framework" -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c   
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O3 -I"../src" -I"../src/system_config/default" -I"../../../../../../microchip/harmony/v1_03_01/framework" -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c   
	
${OBJECTDIR}/_ext/1068317977/drv_i2s.o: ../../../../../../microchip/harmony/v1_03_01/framework/driver/i2s/src/dynamic/drv_i2s.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1068317977" 
	@${RM} ${OBJECTDIR}/_ext/1068317977/drv_i2s.o.d 
	@${RM} ${OBJECTDIR}/_ext/1068317977/drv_i2s.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1068317977/drv_i2s.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O3 -I"../src" -I"../src/system_config/default" -I"../../../../../../microchip/harmony/v1_03_01/framework" -MMD -MF "${OBJECTDIR}/_ext/1068317977/drv_i2s.o.d" -o ${OBJECTDIR}/_ext/1068317977/drv_i2s.o ../../../../../../microchip/harmony/v1_03_01/framework/driver/i2s/src/dynamic/drv_i2s.c   
	
${OBJECTDIR}/_ext/172804285/drv_usb.o: ../../../../../../microchip/harmony/v1_03_01/framework/driver/usb/usbfs/src/dynamic/drv_usb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/172804285" 
	@${RM} ${OBJECTDIR}/_ext/172804285/drv_usb.o.d 
	@${RM} ${OBJECTDIR}/_ext/172804285/drv_usb.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/172804285/drv_usb.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O3 -I"../src" -I"../src/system_config/default" -I"../../../../../../microchip/harmony/v1_03_01/framework" -MMD -MF "${OBJECTDIR}/_ext/172804285/drv_usb.o.d" -o ${OBJECTDIR}/_ext/172804285/drv_usb.o ../../../../../../microchip/harmony/v1_03_01/framework/driver/usb/usbfs/src/dynamic/drv_usb.c   
	
${OBJECTDIR}/_ext/172804285/drv_usb_device.o: ../../../../../../microchip/harmony/v1_03_01/framework/driver/usb/usbfs/src/dynamic/drv_usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/172804285" 
	@${RM} ${OBJECTDIR}/_ext/172804285/drv_usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/172804285/drv_usb_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/172804285/drv_usb_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O3 -I"../src" -I"../src/system_config/default" -I"../../../../../../microchip/harmony/v1_03_01/framework" -MMD -MF "${OBJECTDIR}/_ext/172804285/drv_usb_device.o.d" -o ${OBJECTDIR}/_ext/172804285/drv_usb_device.o ../../../../../../microchip/harmony/v1_03_01/framework/driver/usb/usbfs/src/dynamic/drv_usb_device.c   
	
${OBJECTDIR}/_ext/35725571/sys_devcon.o: ../../../../../../microchip/harmony/v1_03_01/framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/35725571" 
	@${RM} ${OBJECTDIR}/_ext/35725571/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/35725571/sys_devcon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/35725571/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O3 -I"../src" -I"../src/system_config/default" -I"../../../../../../microchip/harmony/v1_03_01/framework" -MMD -MF "${OBJECTDIR}/_ext/35725571/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/35725571/sys_devcon.o ../../../../../../microchip/harmony/v1_03_01/framework/system/devcon/src/sys_devcon.c   
	
${OBJECTDIR}/_ext/35725571/sys_devcon_pic32mx.o: ../../../../../../microchip/harmony/v1_03_01/framework/system/devcon/src/sys_devcon_pic32mx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/35725571" 
	@${RM} ${OBJECTDIR}/_ext/35725571/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/35725571/sys_devcon_pic32mx.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/35725571/sys_devcon_pic32mx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O3 -I"../src" -I"../src/system_config/default" -I"../../../../../../microchip/harmony/v1_03_01/framework" -MMD -MF "${OBJECTDIR}/_ext/35725571/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/35725571/sys_devcon_pic32mx.o ../../../../../../microchip/harmony/v1_03_01/framework/system/devcon/src/sys_devcon_pic32mx.c   
	
${OBJECTDIR}/_ext/1707904131/sys_int_pic32.o: ../../../../../../microchip/harmony/v1_03_01/framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1707904131" 
	@${RM} ${OBJECTDIR}/_ext/1707904131/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1707904131/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1707904131/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O3 -I"../src" -I"../src/system_config/default" -I"../../../../../../microchip/harmony/v1_03_01/framework" -MMD -MF "${OBJECTDIR}/_ext/1707904131/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/1707904131/sys_int_pic32.o ../../../../../../microchip/harmony/v1_03_01/framework/system/int/src/sys_int_pic32.c   
	
${OBJECTDIR}/_ext/1502646426/sys_ports.o: ../../../../../../microchip/harmony/v1_03_01/framework/system/ports/src/sys_ports.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1502646426" 
	@${RM} ${OBJECTDIR}/_ext/1502646426/sys_ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1502646426/sys_ports.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1502646426/sys_ports.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O3 -I"../src" -I"../src/system_config/default" -I"../../../../../../microchip/harmony/v1_03_01/framework" -MMD -MF "${OBJECTDIR}/_ext/1502646426/sys_ports.o.d" -o ${OBJECTDIR}/_ext/1502646426/sys_ports.o ../../../../../../microchip/harmony/v1_03_01/framework/system/ports/src/sys_ports.c   
	
${OBJECTDIR}/_ext/1283518026/usb_device.o: ../../../../../../microchip/harmony/v1_03_01/framework/usb/src/dynamic/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1283518026" 
	@${RM} ${OBJECTDIR}/_ext/1283518026/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1283518026/usb_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1283518026/usb_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O3 -I"../src" -I"../src/system_config/default" -I"../../../../../../microchip/harmony/v1_03_01/framework" -MMD -MF "${OBJECTDIR}/_ext/1283518026/usb_device.o.d" -o ${OBJECTDIR}/_ext/1283518026/usb_device.o ../../../../../../microchip/harmony/v1_03_01/framework/usb/src/dynamic/usb_device.c   
	
${OBJECTDIR}/_ext/1283518026/usb_device_audio_v1_0.o: ../../../../../../microchip/harmony/v1_03_01/framework/usb/src/dynamic/usb_device_audio_v1_0.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1283518026" 
	@${RM} ${OBJECTDIR}/_ext/1283518026/usb_device_audio_v1_0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1283518026/usb_device_audio_v1_0.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1283518026/usb_device_audio_v1_0.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O3 -I"../src" -I"../src/system_config/default" -I"../../../../../../microchip/harmony/v1_03_01/framework" -MMD -MF "${OBJECTDIR}/_ext/1283518026/usb_device_audio_v1_0.o.d" -o ${OBJECTDIR}/_ext/1283518026/usb_device_audio_v1_0.o ../../../../../../microchip/harmony/v1_03_01/framework/usb/src/dynamic/usb_device_audio_v1_0.c   
	
${OBJECTDIR}/_ext/1283518026/usb_device_audio_read_write.o: ../../../../../../microchip/harmony/v1_03_01/framework/usb/src/dynamic/usb_device_audio_read_write.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1283518026" 
	@${RM} ${OBJECTDIR}/_ext/1283518026/usb_device_audio_read_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/1283518026/usb_device_audio_read_write.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1283518026/usb_device_audio_read_write.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O3 -I"../src" -I"../src/system_config/default" -I"../../../../../../microchip/harmony/v1_03_01/framework" -MMD -MF "${OBJECTDIR}/_ext/1283518026/usb_device_audio_read_write.o.d" -o ${OBJECTDIR}/_ext/1283518026/usb_device_audio_read_write.o ../../../../../../microchip/harmony/v1_03_01/framework/usb/src/dynamic/usb_device_audio_read_write.c   
	
else
${OBJECTDIR}/_ext/2077795248/drv_spi_static.o: ../src/system_config/default/framework/driver/spi/src/drv_spi_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2077795248" 
	@${RM} ${OBJECTDIR}/_ext/2077795248/drv_spi_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/2077795248/drv_spi_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2077795248/drv_spi_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O3 -I"../src" -I"../src/system_config/default" -I"../../../../../../microchip/harmony/v1_03_01/framework" -MMD -MF "${OBJECTDIR}/_ext/2077795248/drv_spi_static.o.d" -o ${OBJECTDIR}/_ext/2077795248/drv_spi_static.o ../src/system_config/default/framework/driver/spi/src/drv_spi_static.c   
	
${OBJECTDIR}/_ext/639803181/sys_clk_static.o: ../src/system_config/default/framework/system/clk/src/sys_clk_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/639803181" 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O3 -I"../src" -I"../src/system_config/default" -I"../../../../../../microchip/harmony/v1_03_01/framework" -MMD -MF "${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d" -o ${OBJECTDIR}/_ext/639803181/sys_clk_static.o ../src/system_config/default/framework/system/clk/src/sys_clk_static.c   
	
${OBJECTDIR}/_ext/822048611/sys_ports_static.o: ../src/system_config/default/framework/system/ports/src/sys_ports_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/822048611" 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O3 -I"../src" -I"../src/system_config/default" -I"../../../../../../microchip/harmony/v1_03_01/framework" -MMD -MF "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ../src/system_config/default/framework/system/ports/src/sys_ports_static.c   
	
${OBJECTDIR}/_ext/1688732426/system_init.o: ../src/system_config/default/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O3 -I"../src" -I"../src/system_config/default" -I"../../../../../../microchip/harmony/v1_03_01/framework" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_init.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_init.o ../src/system_config/default/system_init.c   
	
${OBJECTDIR}/_ext/1688732426/system_interrupt.o: ../src/system_config/default/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O3 -I"../src" -I"../src/system_config/default" -I"../../../../../../microchip/harmony/v1_03_01/framework" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ../src/system_config/default/system_interrupt.c   
	
${OBJECTDIR}/_ext/1688732426/system_tasks.o: ../src/system_config/default/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O3 -I"../src" -I"../src/system_config/default" -I"../../../../../../microchip/harmony/v1_03_01/framework" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ../src/system_config/default/system_tasks.c   
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O3 -I"../src" -I"../src/system_config/default" -I"../../../../../../microchip/harmony/v1_03_01/framework" -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c   
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O3 -I"../src" -I"../src/system_config/default" -I"../../../../../../microchip/harmony/v1_03_01/framework" -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c   
	
${OBJECTDIR}/_ext/1068317977/drv_i2s.o: ../../../../../../microchip/harmony/v1_03_01/framework/driver/i2s/src/dynamic/drv_i2s.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1068317977" 
	@${RM} ${OBJECTDIR}/_ext/1068317977/drv_i2s.o.d 
	@${RM} ${OBJECTDIR}/_ext/1068317977/drv_i2s.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1068317977/drv_i2s.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O3 -I"../src" -I"../src/system_config/default" -I"../../../../../../microchip/harmony/v1_03_01/framework" -MMD -MF "${OBJECTDIR}/_ext/1068317977/drv_i2s.o.d" -o ${OBJECTDIR}/_ext/1068317977/drv_i2s.o ../../../../../../microchip/harmony/v1_03_01/framework/driver/i2s/src/dynamic/drv_i2s.c   
	
${OBJECTDIR}/_ext/172804285/drv_usb.o: ../../../../../../microchip/harmony/v1_03_01/framework/driver/usb/usbfs/src/dynamic/drv_usb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/172804285" 
	@${RM} ${OBJECTDIR}/_ext/172804285/drv_usb.o.d 
	@${RM} ${OBJECTDIR}/_ext/172804285/drv_usb.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/172804285/drv_usb.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O3 -I"../src" -I"../src/system_config/default" -I"../../../../../../microchip/harmony/v1_03_01/framework" -MMD -MF "${OBJECTDIR}/_ext/172804285/drv_usb.o.d" -o ${OBJECTDIR}/_ext/172804285/drv_usb.o ../../../../../../microchip/harmony/v1_03_01/framework/driver/usb/usbfs/src/dynamic/drv_usb.c   
	
${OBJECTDIR}/_ext/172804285/drv_usb_device.o: ../../../../../../microchip/harmony/v1_03_01/framework/driver/usb/usbfs/src/dynamic/drv_usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/172804285" 
	@${RM} ${OBJECTDIR}/_ext/172804285/drv_usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/172804285/drv_usb_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/172804285/drv_usb_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O3 -I"../src" -I"../src/system_config/default" -I"../../../../../../microchip/harmony/v1_03_01/framework" -MMD -MF "${OBJECTDIR}/_ext/172804285/drv_usb_device.o.d" -o ${OBJECTDIR}/_ext/172804285/drv_usb_device.o ../../../../../../microchip/harmony/v1_03_01/framework/driver/usb/usbfs/src/dynamic/drv_usb_device.c   
	
${OBJECTDIR}/_ext/35725571/sys_devcon.o: ../../../../../../microchip/harmony/v1_03_01/framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/35725571" 
	@${RM} ${OBJECTDIR}/_ext/35725571/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/35725571/sys_devcon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/35725571/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O3 -I"../src" -I"../src/system_config/default" -I"../../../../../../microchip/harmony/v1_03_01/framework" -MMD -MF "${OBJECTDIR}/_ext/35725571/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/35725571/sys_devcon.o ../../../../../../microchip/harmony/v1_03_01/framework/system/devcon/src/sys_devcon.c   
	
${OBJECTDIR}/_ext/35725571/sys_devcon_pic32mx.o: ../../../../../../microchip/harmony/v1_03_01/framework/system/devcon/src/sys_devcon_pic32mx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/35725571" 
	@${RM} ${OBJECTDIR}/_ext/35725571/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/35725571/sys_devcon_pic32mx.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/35725571/sys_devcon_pic32mx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O3 -I"../src" -I"../src/system_config/default" -I"../../../../../../microchip/harmony/v1_03_01/framework" -MMD -MF "${OBJECTDIR}/_ext/35725571/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/35725571/sys_devcon_pic32mx.o ../../../../../../microchip/harmony/v1_03_01/framework/system/devcon/src/sys_devcon_pic32mx.c   
	
${OBJECTDIR}/_ext/1707904131/sys_int_pic32.o: ../../../../../../microchip/harmony/v1_03_01/framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1707904131" 
	@${RM} ${OBJECTDIR}/_ext/1707904131/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1707904131/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1707904131/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O3 -I"../src" -I"../src/system_config/default" -I"../../../../../../microchip/harmony/v1_03_01/framework" -MMD -MF "${OBJECTDIR}/_ext/1707904131/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/1707904131/sys_int_pic32.o ../../../../../../microchip/harmony/v1_03_01/framework/system/int/src/sys_int_pic32.c   
	
${OBJECTDIR}/_ext/1502646426/sys_ports.o: ../../../../../../microchip/harmony/v1_03_01/framework/system/ports/src/sys_ports.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1502646426" 
	@${RM} ${OBJECTDIR}/_ext/1502646426/sys_ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1502646426/sys_ports.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1502646426/sys_ports.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O3 -I"../src" -I"../src/system_config/default" -I"../../../../../../microchip/harmony/v1_03_01/framework" -MMD -MF "${OBJECTDIR}/_ext/1502646426/sys_ports.o.d" -o ${OBJECTDIR}/_ext/1502646426/sys_ports.o ../../../../../../microchip/harmony/v1_03_01/framework/system/ports/src/sys_ports.c   
	
${OBJECTDIR}/_ext/1283518026/usb_device.o: ../../../../../../microchip/harmony/v1_03_01/framework/usb/src/dynamic/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1283518026" 
	@${RM} ${OBJECTDIR}/_ext/1283518026/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1283518026/usb_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1283518026/usb_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O3 -I"../src" -I"../src/system_config/default" -I"../../../../../../microchip/harmony/v1_03_01/framework" -MMD -MF "${OBJECTDIR}/_ext/1283518026/usb_device.o.d" -o ${OBJECTDIR}/_ext/1283518026/usb_device.o ../../../../../../microchip/harmony/v1_03_01/framework/usb/src/dynamic/usb_device.c   
	
${OBJECTDIR}/_ext/1283518026/usb_device_audio_v1_0.o: ../../../../../../microchip/harmony/v1_03_01/framework/usb/src/dynamic/usb_device_audio_v1_0.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1283518026" 
	@${RM} ${OBJECTDIR}/_ext/1283518026/usb_device_audio_v1_0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1283518026/usb_device_audio_v1_0.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1283518026/usb_device_audio_v1_0.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O3 -I"../src" -I"../src/system_config/default" -I"../../../../../../microchip/harmony/v1_03_01/framework" -MMD -MF "${OBJECTDIR}/_ext/1283518026/usb_device_audio_v1_0.o.d" -o ${OBJECTDIR}/_ext/1283518026/usb_device_audio_v1_0.o ../../../../../../microchip/harmony/v1_03_01/framework/usb/src/dynamic/usb_device_audio_v1_0.c   
	
${OBJECTDIR}/_ext/1283518026/usb_device_audio_read_write.o: ../../../../../../microchip/harmony/v1_03_01/framework/usb/src/dynamic/usb_device_audio_read_write.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1283518026" 
	@${RM} ${OBJECTDIR}/_ext/1283518026/usb_device_audio_read_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/1283518026/usb_device_audio_read_write.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1283518026/usb_device_audio_read_write.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O3 -I"../src" -I"../src/system_config/default" -I"../../../../../../microchip/harmony/v1_03_01/framework" -MMD -MF "${OBJECTDIR}/_ext/1283518026/usb_device_audio_read_write.o.d" -o ${OBJECTDIR}/_ext/1283518026/usb_device_audio_read_write.o ../../../../../../microchip/harmony/v1_03_01/framework/usb/src/dynamic/usb_device_audio_read_write.c   
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/USB_audio.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../../microchip/harmony/v1_03_01/bin/framework/peripheral/PIC32MX220F032B_peripherals.a  
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION) -O3 -o dist/${CND_CONF}/${IMAGE_TYPE}/USB_audio.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\..\microchip\harmony\v1_03_01\bin\framework\peripheral\PIC32MX220F032B_peripherals.a       -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC00490:0x1FC00BEF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=0,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/USB_audio.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../../microchip/harmony/v1_03_01/bin/framework/peripheral/PIC32MX220F032B_peripherals.a 
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -O3 -o dist/${CND_CONF}/${IMAGE_TYPE}/USB_audio.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\..\microchip\harmony\v1_03_01\bin\framework\peripheral\PIC32MX220F032B_peripherals.a      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=0,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/USB_audio.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
