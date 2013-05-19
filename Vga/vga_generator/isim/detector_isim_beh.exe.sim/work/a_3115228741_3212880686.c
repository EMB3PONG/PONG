/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/klaus/PONG/PongFT/detector.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1006216973935724872_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_3307759752501467860_1035706684(char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_3307759752501539734_1035706684(char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3115228741_3212880686_p_0(char *t0)
{
    char t33[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    int t7;
    int t8;
    int t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    int t17;
    int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    unsigned char t23;
    unsigned char t24;
    unsigned char t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t34;
    char *t35;

LAB0:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3904);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(64, ng0);
    t3 = (t0 + 2312U);
    t4 = *((char **)t3);
    t3 = (t0 + 2608U);
    t5 = *((char **)t3);
    t3 = (t5 + 0);
    memcpy(t3, t4, 4U);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 6270);
    *((int *)t1) = 0;
    t3 = (t0 + 6274);
    *((int *)t3) = 2;
    t6 = 0;
    t7 = 2;

LAB5:    if (t6 <= t7)
        goto LAB6;

LAB8:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t23 = (t2 == (unsigned char)2);
    if (t23 != 0)
        goto LAB10;

LAB12:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 2608U);
    t3 = *((char **)t1);
    t6 = (3 - 3);
    t11 = (t6 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t1 = (t3 + t13);
    *((unsigned char *)t1) = (unsigned char)3;

LAB11:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 2608U);
    t3 = *((char **)t1);
    t1 = (t0 + 3984);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t14 = (t5 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t3, 4U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(80, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t1 = (t0 + 6120U);
    t23 = ieee_p_1242562249_sub_3307759752501539734_1035706684(IEEE_P_1242562249, t3, t1, 19);
    if (t23 == 1)
        goto LAB16;

LAB17:    t2 = (unsigned char)0;

LAB18:    if (t2 != 0)
        goto LAB13;

LAB15:    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t1 = (t0 + 6120U);
    t23 = ieee_p_1242562249_sub_3307759752501539734_1035706684(IEEE_P_1242562249, t3, t1, 41);
    if (t23 == 1)
        goto LAB30;

LAB31:    t2 = (unsigned char)0;

LAB32:    if (t2 != 0)
        goto LAB28;

LAB29:    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t1 = (t0 + 6120U);
    t23 = ieee_p_1242562249_sub_3307759752501539734_1035706684(IEEE_P_1242562249, t3, t1, 601);
    if (t23 == 1)
        goto LAB44;

LAB45:    t2 = (unsigned char)0;

LAB46:    if (t2 != 0)
        goto LAB42;

LAB43:
LAB14:    goto LAB3;

LAB6:    xsi_set_current_line(67, ng0);
    t4 = (t0 + 2608U);
    t5 = *((char **)t4);
    t4 = (t0 + 6270);
    t8 = *((int *)t4);
    t9 = (t8 + 1);
    t10 = (t9 - 3);
    t11 = (t10 * -1);
    xsi_vhdl_check_range_of_index(3, 0, -1, t9);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t14 = (t5 + t13);
    t2 = *((unsigned char *)t14);
    t15 = (t0 + 2608U);
    t16 = *((char **)t15);
    t15 = (t0 + 6270);
    t17 = *((int *)t15);
    t18 = (t17 - 3);
    t19 = (t18 * -1);
    xsi_vhdl_check_range_of_index(3, 0, -1, *((int *)t15));
    t20 = (1U * t19);
    t21 = (0 + t20);
    t22 = (t16 + t21);
    *((unsigned char *)t22) = t2;

LAB7:    t1 = (t0 + 6270);
    t6 = *((int *)t1);
    t3 = (t0 + 6274);
    t7 = *((int *)t3);
    if (t6 == t7)
        goto LAB8;

LAB9:    t8 = (t6 + 1);
    t6 = t8;
    t4 = (t0 + 6270);
    *((int *)t4) = t6;
    goto LAB5;

LAB10:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 2608U);
    t4 = *((char **)t1);
    t6 = (3 - 3);
    t11 = (t6 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t1 = (t4 + t13);
    *((unsigned char *)t1) = (unsigned char)2;
    goto LAB11;

LAB13:    xsi_set_current_line(81, ng0);
    t14 = (t0 + 2312U);
    t15 = *((char **)t14);
    t14 = (t0 + 6278);
    t25 = 1;
    if (4U == 4U)
        goto LAB22;

LAB23:    t25 = 0;

LAB24:    if (t25 != 0)
        goto LAB19;

LAB21:
LAB20:    goto LAB14;

LAB16:    t4 = (t0 + 1512U);
    t5 = *((char **)t4);
    t4 = (t0 + 6120U);
    t24 = ieee_p_1242562249_sub_3307759752501467860_1035706684(IEEE_P_1242562249, t5, t4, 41);
    t2 = t24;
    goto LAB18;

LAB19:    xsi_set_current_line(82, ng0);
    t27 = (t0 + 1352U);
    t28 = *((char **)t27);
    t27 = (t0 + 4048);
    t29 = (t27 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    memcpy(t32, t28, 10U);
    xsi_driver_first_trans_fast_port(t27);
    goto LAB20;

LAB22:    t11 = 0;

LAB25:    if (t11 < 4U)
        goto LAB26;
    else
        goto LAB24;

LAB26:    t22 = (t15 + t11);
    t26 = (t14 + t11);
    if (*((unsigned char *)t22) != *((unsigned char *)t26))
        goto LAB23;

LAB27:    t11 = (t11 + 1);
    goto LAB25;

LAB28:    xsi_set_current_line(85, ng0);
    t14 = (t0 + 2312U);
    t15 = *((char **)t14);
    t14 = (t0 + 6282);
    t25 = 1;
    if (4U == 4U)
        goto LAB36;

LAB37:    t25 = 0;

LAB38:    if (t25 != 0)
        goto LAB33;

LAB35:
LAB34:    goto LAB14;

LAB30:    t4 = (t0 + 1512U);
    t5 = *((char **)t4);
    t4 = (t0 + 6120U);
    t24 = ieee_p_1242562249_sub_3307759752501467860_1035706684(IEEE_P_1242562249, t5, t4, 601);
    t2 = t24;
    goto LAB32;

LAB33:    xsi_set_current_line(86, ng0);
    t27 = (t0 + 1512U);
    t28 = *((char **)t27);
    t27 = (t0 + 6120U);
    t29 = ieee_p_1242562249_sub_1006216973935724872_1035706684(IEEE_P_1242562249, t33, t28, t27, 4);
    t30 = (t0 + 4112);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    t34 = (t32 + 56U);
    t35 = *((char **)t34);
    memcpy(t35, t29, 10U);
    xsi_driver_first_trans_fast_port(t30);
    xsi_set_current_line(87, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t1 = (t0 + 4176);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t14 = (t5 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t3, 10U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB34;

LAB36:    t11 = 0;

LAB39:    if (t11 < 4U)
        goto LAB40;
    else
        goto LAB38;

LAB40:    t22 = (t15 + t11);
    t26 = (t14 + t11);
    if (*((unsigned char *)t22) != *((unsigned char *)t26))
        goto LAB37;

LAB41:    t11 = (t11 + 1);
    goto LAB39;

LAB42:    xsi_set_current_line(90, ng0);
    t14 = (t0 + 2312U);
    t15 = *((char **)t14);
    t14 = (t0 + 6286);
    t25 = 1;
    if (4U == 4U)
        goto LAB50;

LAB51:    t25 = 0;

LAB52:    if (t25 != 0)
        goto LAB47;

LAB49:
LAB48:    goto LAB14;

LAB44:    t4 = (t0 + 1512U);
    t5 = *((char **)t4);
    t4 = (t0 + 6120U);
    t24 = ieee_p_1242562249_sub_3307759752501467860_1035706684(IEEE_P_1242562249, t5, t4, 621);
    t2 = t24;
    goto LAB46;

LAB47:    xsi_set_current_line(91, ng0);
    t27 = (t0 + 1352U);
    t28 = *((char **)t27);
    t27 = (t0 + 4240);
    t29 = (t27 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    memcpy(t32, t28, 10U);
    xsi_driver_first_trans_fast_port(t27);
    goto LAB48;

LAB50:    t11 = 0;

LAB53:    if (t11 < 4U)
        goto LAB54;
    else
        goto LAB52;

LAB54:    t22 = (t15 + t11);
    t26 = (t14 + t11);
    if (*((unsigned char *)t22) != *((unsigned char *)t26))
        goto LAB51;

LAB55:    t11 = (t11 + 1);
    goto LAB53;

}


extern void work_a_3115228741_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3115228741_3212880686_p_0};
	xsi_register_didat("work_a_3115228741_3212880686", "isim/detector_isim_beh.exe.sim/work/a_3115228741_3212880686.didat");
	xsi_register_executes(pe);
}
