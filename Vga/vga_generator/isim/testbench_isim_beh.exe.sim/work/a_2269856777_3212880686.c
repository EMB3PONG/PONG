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


static void work_a_2269856777_3212880686_p_0(char *t0)
{
    char t33[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    int t13;
    int t14;
    int t15;
    int t16;
    int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    int t21;
    int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned char t26;
    unsigned char t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t34;
    char *t35;
    static char *nl0[] = {&&LAB6, &&LAB7};

LAB0:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4064);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(66, ng0);
    t3 = (t0 + 2312U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t3 = (char *)((nl0) + t5);
    goto **((char **)t3);

LAB5:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 2472U);
    t3 = *((char **)t1);
    t1 = (t0 + 2768U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    memcpy(t1, t3, 4U);
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 6679);
    *((int *)t1) = 0;
    t3 = (t0 + 6683);
    *((int *)t3) = 2;
    t13 = 0;
    t14 = 2;

LAB8:    if (t13 <= t14)
        goto LAB9;

LAB11:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)2);
    if (t5 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(85, ng0);
    t1 = (t0 + 2768U);
    t3 = *((char **)t1);
    t13 = (3 - 3);
    t18 = (t13 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t1 = (t3 + t20);
    *((unsigned char *)t1) = (unsigned char)3;

LAB14:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 2768U);
    t3 = *((char **)t1);
    t1 = (t0 + 4464);
    t4 = (t1 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t3, 4U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(92, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t1 = (t0 + 6528U);
    t5 = ieee_p_1242562249_sub_3307759752501539734_1035706684(IEEE_P_1242562249, t3, t1, 67);
    if (t5 == 1)
        goto LAB19;

LAB20:    t2 = (unsigned char)0;

LAB21:    if (t2 != 0)
        goto LAB16;

LAB18:    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t1 = (t0 + 6528U);
    t5 = ieee_p_1242562249_sub_3307759752501539734_1035706684(IEEE_P_1242562249, t3, t1, 88);
    if (t5 == 1)
        goto LAB33;

LAB34:    t2 = (unsigned char)0;

LAB35:    if (t2 != 0)
        goto LAB31;

LAB32:    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t1 = (t0 + 6528U);
    t5 = ieee_p_1242562249_sub_3307759752501539734_1035706684(IEEE_P_1242562249, t3, t1, 647);
    if (t5 == 1)
        goto LAB47;

LAB48:    t2 = (unsigned char)0;

LAB49:    if (t2 != 0)
        goto LAB45;

LAB46:
LAB17:    goto LAB3;

LAB6:    xsi_set_current_line(68, ng0);
    t6 = xsi_get_transient_memory(10U);
    memset(t6, 0, 10U);
    t7 = t6;
    memset(t7, (unsigned char)2, 10U);
    t8 = (t0 + 4144);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t6, 10U);
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(69, ng0);
    t1 = xsi_get_transient_memory(10U);
    memset(t1, 0, 10U);
    t3 = t1;
    memset(t3, (unsigned char)2, 10U);
    t4 = (t0 + 4208);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 10U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(70, ng0);
    t1 = xsi_get_transient_memory(10U);
    memset(t1, 0, 10U);
    t3 = t1;
    memset(t3, (unsigned char)2, 10U);
    t4 = (t0 + 4272);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 10U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(71, ng0);
    t1 = xsi_get_transient_memory(10U);
    memset(t1, 0, 10U);
    t3 = t1;
    memset(t3, (unsigned char)2, 10U);
    t4 = (t0 + 4336);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 10U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(72, ng0);
    t1 = (t0 + 4400);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB5;

LAB7:    goto LAB5;

LAB9:    xsi_set_current_line(79, ng0);
    t4 = (t0 + 2768U);
    t6 = *((char **)t4);
    t4 = (t0 + 6679);
    t15 = *((int *)t4);
    t16 = (t15 + 1);
    t17 = (t16 - 3);
    t18 = (t17 * -1);
    xsi_vhdl_check_range_of_index(3, 0, -1, t16);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t7 = (t6 + t20);
    t2 = *((unsigned char *)t7);
    t8 = (t0 + 2768U);
    t9 = *((char **)t8);
    t8 = (t0 + 6679);
    t21 = *((int *)t8);
    t22 = (t21 - 3);
    t23 = (t22 * -1);
    xsi_vhdl_check_range_of_index(3, 0, -1, *((int *)t8));
    t24 = (1U * t23);
    t25 = (0 + t24);
    t10 = (t9 + t25);
    *((unsigned char *)t10) = t2;

LAB10:    t1 = (t0 + 6679);
    t13 = *((int *)t1);
    t3 = (t0 + 6683);
    t14 = *((int *)t3);
    if (t13 == t14)
        goto LAB11;

LAB12:    t15 = (t13 + 1);
    t13 = t15;
    t4 = (t0 + 6679);
    *((int *)t4) = t13;
    goto LAB8;

LAB13:    xsi_set_current_line(83, ng0);
    t1 = (t0 + 2768U);
    t4 = *((char **)t1);
    t13 = (3 - 3);
    t18 = (t13 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t1 = (t4 + t20);
    *((unsigned char *)t1) = (unsigned char)2;
    goto LAB14;

LAB16:    xsi_set_current_line(93, ng0);
    t7 = (t0 + 2472U);
    t8 = *((char **)t7);
    t7 = (t0 + 6687);
    t27 = 1;
    if (4U == 4U)
        goto LAB25;

LAB26:    t27 = 0;

LAB27:    if (t27 != 0)
        goto LAB22;

LAB24:
LAB23:    goto LAB17;

LAB19:    t4 = (t0 + 1512U);
    t6 = *((char **)t4);
    t4 = (t0 + 6528U);
    t26 = ieee_p_1242562249_sub_3307759752501467860_1035706684(IEEE_P_1242562249, t6, t4, 89);
    t2 = t26;
    goto LAB21;

LAB22:    xsi_set_current_line(94, ng0);
    t12 = (t0 + 1352U);
    t28 = *((char **)t12);
    t12 = (t0 + 4272);
    t29 = (t12 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    memcpy(t32, t28, 10U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB23;

LAB25:    t18 = 0;

LAB28:    if (t18 < 4U)
        goto LAB29;
    else
        goto LAB27;

LAB29:    t10 = (t8 + t18);
    t11 = (t7 + t18);
    if (*((unsigned char *)t10) != *((unsigned char *)t11))
        goto LAB26;

LAB30:    t18 = (t18 + 1);
    goto LAB28;

LAB31:    xsi_set_current_line(97, ng0);
    t7 = (t0 + 2472U);
    t8 = *((char **)t7);
    t7 = (t0 + 6691);
    t27 = 1;
    if (4U == 4U)
        goto LAB39;

LAB40:    t27 = 0;

LAB41:    if (t27 != 0)
        goto LAB36;

LAB38:
LAB37:    goto LAB17;

LAB33:    t4 = (t0 + 1512U);
    t6 = *((char **)t4);
    t4 = (t0 + 6528U);
    t26 = ieee_p_1242562249_sub_3307759752501467860_1035706684(IEEE_P_1242562249, t6, t4, 648);
    t2 = t26;
    goto LAB35;

LAB36:    xsi_set_current_line(98, ng0);
    t12 = (t0 + 1512U);
    t28 = *((char **)t12);
    t12 = (t0 + 6528U);
    t29 = ieee_p_1242562249_sub_1006216973935724872_1035706684(IEEE_P_1242562249, t33, t28, t12, 4);
    t30 = (t0 + 4208);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    t34 = (t32 + 56U);
    t35 = *((char **)t34);
    memcpy(t35, t29, 10U);
    xsi_driver_first_trans_fast_port(t30);
    xsi_set_current_line(99, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t1 = (t0 + 4144);
    t4 = (t1 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t3, 10U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB37;

LAB39:    t18 = 0;

LAB42:    if (t18 < 4U)
        goto LAB43;
    else
        goto LAB41;

LAB43:    t10 = (t8 + t18);
    t11 = (t7 + t18);
    if (*((unsigned char *)t10) != *((unsigned char *)t11))
        goto LAB40;

LAB44:    t18 = (t18 + 1);
    goto LAB42;

LAB45:    xsi_set_current_line(102, ng0);
    t7 = (t0 + 2472U);
    t8 = *((char **)t7);
    t7 = (t0 + 6695);
    t27 = 1;
    if (4U == 4U)
        goto LAB53;

LAB54:    t27 = 0;

LAB55:    if (t27 != 0)
        goto LAB50;

LAB52:
LAB51:    goto LAB17;

LAB47:    t4 = (t0 + 1512U);
    t6 = *((char **)t4);
    t4 = (t0 + 6528U);
    t26 = ieee_p_1242562249_sub_3307759752501467860_1035706684(IEEE_P_1242562249, t6, t4, 669);
    t2 = t26;
    goto LAB49;

LAB50:    xsi_set_current_line(103, ng0);
    t12 = (t0 + 1352U);
    t28 = *((char **)t12);
    t12 = (t0 + 4336);
    t29 = (t12 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    memcpy(t32, t28, 10U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB51;

LAB53:    t18 = 0;

LAB56:    if (t18 < 4U)
        goto LAB57;
    else
        goto LAB55;

LAB57:    t10 = (t8 + t18);
    t11 = (t7 + t18);
    if (*((unsigned char *)t10) != *((unsigned char *)t11))
        goto LAB54;

LAB58:    t18 = (t18 + 1);
    goto LAB56;

}


extern void work_a_2269856777_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2269856777_3212880686_p_0};
	xsi_register_didat("work_a_2269856777_3212880686", "isim/testbench_isim_beh.exe.sim/work/a_2269856777_3212880686.didat");
	xsi_register_executes(pe);
}
