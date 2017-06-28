
ifeq ($(ARM_CPU),CORTEX_A9)
ARM_CORE.ARM_WITH_CP15	=1
ARM_CORE.ARM_WITH_MMU	=1 
ARM_CORE.ARM_ISA_ARMV7	=1 
ARM_CORE.ARM_WITH_VFP	=1 
ARM_CORE.ARM_WITH_NEON	=1 
ARM_CORE.ARM_WITH_THUMB	=1 
ARM_CORE.ARM_WITH_THUMB2=1 
ARM_CORE.ARM_WITH_CACHE	=1 
ARM_CORE.ARM_WITH_L2	=1
CFLAGS += -mcpu=$(ARM_CPU)
#CFLAGS += -mfpu=vfp -mfloat-abi=softfp
endif

ifeq ($(ARM_CPU),CORTEX_A8)
ARM_CORE.ARM_WITH_CP15=1 
ARM_CORE.ARM_WITH_MMU=1 
ARM_CORE.ARM_ISA_ARMV7=1 
ARM_CORE.ARM_WITH_VFP=1 
ARM_CORE.ARM_WITH_NEON=1 
ARM_CORE.ARM_WITH_THUMB=1 
ARM_CORE.ARM_WITH_THUMB2=1 
ARM_CORE.ARM_WITH_CACHE=1 
ARM_CORE.ARM_WITH_L2=1
CFLAGS += -mcpu=$(ARM_CPU)
#CFLAGS += -mcpu=arm1136jf-s # compiler doesn't understand cortex yet
#CFLAGS += -mfpu=vfp -mfloat-abi=softfp
endif

ifeq ($(ARM_CPU),CORTEX_A7)
ARM_CORE.ARM_WITH_CP15=1 
ARM_CORE.ARM_WITH_MMU=1 
ARM_CORE.ARM_ISA_ARMV7=1 
ARM_CORE.ARM_WITH_VFP=1 
ARM_CORE.ARM_WITH_NEON=1 
ARM_CORE.ARM_WITH_THUMB=1 
ARM_CORE.ARM_WITH_THUMB2=1 
ARM_CORE.ARM_WITH_CACHE=1 
ARM_CORE.ARM_WITH_L2=1
CFLAGS += -mcpu=cortex-a9
#CFLAGS += -mcpu=arm1136jf-s # compiler doesn't understand cortex yet
#CFLAGS += -mfpu=vfp -mfloat-abi=softfp
endif

ifeq ($(ARM_CPU),CORTEX_A53)

ARM_CORE.ARM_WITH_CP15=1 
ARM_CORE.ARM_WITH_MMU=1 
ARM_CORE.ARM_ISA_ARMV7=1 
ARM_CORE.ARM_WITH_VFP=1 
ARM_CORE.ARM_WITH_NEON=1 
ARM_CORE.ARM_WITH_THUMB=1 
ARM_CORE.ARM_WITH_THUMB2=1 
ARM_CORE.ARM_WITH_CACHE=1
ARM_CORE.ARM_WITH_L2=1
CFLAGS += -mcpu=cortex-a9
#CFLAGS += -mcpu=arm1136jf-s # compiler doesn't understand cortex yet
#CFLAGS += -mfpu=vfp -mfloat-abi=softfp
endif

ifeq ($(ARM_CPU),ARM1136J-S)
ARM_CORE.ARM_WITH_CP15=1 
ARM_CORE.ARM_WITH_MMU=1 
ARM_CORE.ARM_ISA_ARMV6=1 
ARM_CORE.ARM_WITH_THUMB=1 
ARM_CORE.ARM_WITH_CACHE=1 
ARM_CORE.ARM_CPU_ARM1136=1
CFLAGS += -mcpu=$(ARM_CPU)
endif

ifeq ($(ARM_CPU),ARM1176JZF-S)
ARM_CORE.ARM_WITH_CP15=1 
ARM_CORE.ARM_WITH_MMU=1 
ARM_CORE.ARM_ISA_ARMV6=1 
ARM_CORE.ARM_WITH_VFP=1 
ARM_CORE.ARM_WITH_THUMB=1 
ARM_CORE.ARM_WITH_CACHE=1 
ARM_CORE.ARM_CPU_ARM1136=1
CFLAGS += -mcpu=$(ARM_CPU)
endif

ifeq ($(ARM_CPU),ARM926EJ-S)
ARM_CORE.ARM_WITH_CP15=1 
ARM_CORE.ARM_WITH_MMU=1 
ARM_CORE.ARM_ISA_ARMV5E=1 
ARM_CORE.ARM_WITH_THUMB=1 
ARM_CORE.ARM_WITH_CACHE=1 
ARM_CORE.ARM_CPU_ARM9=1 
ARM_CORE.ARM_CPU_ARM926=1
CFLAGS += -mcpu=$(ARM_CPU)
endif

ifeq ($(ARM_CPU),ARM7TDMI)
ARM_CORE.ARM_ISA_ARMV4=1 
ARM_CORE.ARM_WITH_THUMB=1 
ARM_CORE.ARM_CPU_ARM7=1
CFLAGS += -mcpu=$(ARM_CPU)
endif
