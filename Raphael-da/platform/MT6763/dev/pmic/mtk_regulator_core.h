#ifndef __SSPM_MTK_REGULATOR_CORE_H
#define __SSPM_MTK_REGULATOR_CORE_H

#include "mtk_regulator.h"

#define LDO_SUPPORT
/*#define LDO_VOTRIM_SUPPORT*/

enum {
	MTK_REGULATOR_VS1,
	MTK_REGULATOR_VMODEM,
	MTK_REGULATOR_VCORE,
	MTK_REGULATOR_VSRAM_OTHERS,
	MTK_REGULATOR_VSRAM_GPU,
	MTK_REGULATOR_VPROC,
	MTK_REGULATOR_VS2,
	MTK_REGULATOR_VSRAM_PROC,
	MTK_REGULATOR_VPA,
#ifdef LDO_SUPPORT
	MTK_REGULATOR_VDRAM,
	MTK_REGULATOR_LDO_SUPPORT = MTK_REGULATOR_VDRAM,
	MTK_REGULATOR_VSIM1,
	MTK_REGULATOR_VSIM2,
	MTK_REGULATOR_VMC,
#endif /*--LDO_SUPPORT--*/
	MTK_REGULATOR_EXT_BUCK_PROC,
	MTK_REGULATOR_MAX_NR,
};

struct regulator_ctrl {
	int (*set_voltage)(unsigned char id, unsigned int min_vol, unsigned int max_vol);
	int (*get_voltage)(unsigned char id);
	/* enable/disable regulator */
	int (*enable)(unsigned char id, unsigned char en);
	int (*is_enabled)(unsigned char id);
	int (*set_mode)(unsigned char id, unsigned char mode);
	int (*get_mode)(unsigned char id);
#ifdef LDO_VOTRIM_SUPPORT
	int (*set_votrim)(unsigned char id, int trim_volt);
	int (*get_votrim)(unsigned char id);
#endif /*--LDO_TRIM_SUPPORT--*/
};

extern int mtk_simple_regulator_register(struct mtk_regulator *mreg);

#endif /* __SSPM_MTK_REGULATOR_CORE_H */