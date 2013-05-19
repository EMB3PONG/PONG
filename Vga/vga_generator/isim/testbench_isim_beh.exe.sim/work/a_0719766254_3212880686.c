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
static const char *ng0 = "/home/klaus/PONG/PongV2/pixel_pointer.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1006216973935652998_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0719766254_3212880686_p_0(char *t0)
{
    char t14[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned char t13;
    unsigned int t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5096);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(56, ng0);
    t3 = (t0 + 1832U);
    t4 = *((char **)t3);
    t3 = (t0 + 5240);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t4, 10U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t1 = (t0 + 5304);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 10U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 2472U);
    t3 = *((char **)t1);
    t9 = (0 - 1);
    t10 = (t9 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t1 = (t3 + t12);
    t2 = *((unsigned char *)t1);
    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t13 = *((unsigned char *)t5);
    t6 = ((IEEE_P_2592010699) + 4000);
    t4 = xsi_base_array_concat(t4, t14, t6, (char)99, t2, (char)99, t13, (char)101);
    t15 = (1U + 1U);
    t16 = (2U != t15);
    if (t16 == 1)
        goto LAB5;

LAB6:    t7 = (t0 + 5368);
    t8 = (t7 + 56U);
    t17 = *((char **)t8);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t4, 2U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 2632U);
    t3 = *((char **)t1);
    t9 = (0 - 1);
    t10 = (t9 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t1 = (t3 + t12);
    t2 = *((unsigned char *)t1);
    t4 = (t0 + 1352U);
    t5 = *((char **)t4);
    t13 = *((unsigned char *)t5);
    t6 = ((IEEE_P_2592010699) + 4000);
    t4 = xsi_base_array_concat(t4, t14, t6, (char)99, t2, (char)99, t13, (char)101);
    t15 = (1U + 1U);
    t16 = (2U != t15);
    if (t16 == 1)
        goto LAB7;

LAB8:    t7 = (t0 + 5432);
    t8 = (t7 + 56U);
    t17 = *((char **)t8);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t4, 2U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 2472U);
    t3 = *((char **)t1);
    t1 = (t0 + 8023);
    t2 = 1;
    if (2U == 2U)
        goto LAB12;

LAB13:    t2 = 0;

LAB14:    if (t2 != 0)
        goto LAB9;

LAB11:    t1 = (t0 + 2632U);
    t3 = *((char **)t1);
    t1 = (t0 + 8025);
    t2 = 1;
    if (2U == 2U)
        goto LAB20;

LAB21:    t2 = 0;

LAB22:    if (t2 != 0)
        goto LAB18;

LAB19:
LAB10:    goto LAB3;

LAB5:    xsi_size_not_matching(2U, t15, 0);
    goto LAB6;

LAB7:    xsi_size_not_matching(2U, t15, 0);
    goto LAB8;

LAB9:    xsi_set_current_line(65, ng0);
    t7 = xsi_get_transient_memory(10U);
    memset(t7, 0, 10U);
    t8 = t7;
    memset(t8, (unsigned char)2, 10U);
    t17 = (t0 + 5240);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t7, 10U);
    xsi_driver_first_trans_fast(t17);
    xsi_set_current_line(66, ng0);
    t1 = xsi_get_transient_memory(10U);
    memset(t1, 0, 10U);
    t3 = t1;
    memset(t3, (unsigned char)2, 10U);
    t4 = (t0 + 5304);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 10U);
    xsi_driver_first_trans_fast(t4);
    goto LAB10;

LAB12:    t10 = 0;

LAB15:    if (t10 < 2U)
        goto LAB16;
    else
        goto LAB14;

LAB16:    t5 = (t3 + t10);
    t6 = (t1 + t10);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB13;

LAB17:    t10 = (t10 + 1);
    goto LAB15;

LAB18:    xsi_set_current_line(68, ng0);
    t7 = (t0 + 1992U);
    t8 = *((char **)t7);
    t7 = (t0 + 5240);
    t17 = (t7 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t8, 10U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(69, ng0);
    t1 = xsi_get_transient_memory(10U);
    memset(t1, 0, 10U);
    t3 = t1;
    memset(t3, (unsigned char)2, 10U);
    t4 = (t0 + 5304);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 10U);
    xsi_driver_first_trans_fast(t4);
    goto LAB10;

LAB20:    t10 = 0;

LAB23:    if (t10 < 2U)
        goto LAB24;
    else
        goto LAB22;

LAB24:    t5 = (t3 + t10);
    t6 = (t1 + t10);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB21;

LAB25:    t10 = (t10 + 1);
    goto LAB23;

}

static void work_a_0719766254_3212880686_p_1(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(75, ng0);

LAB3:    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t2 = (t0 + 7872U);
    t4 = ieee_p_1242562249_sub_1006216973935652998_1035706684(IEEE_P_1242562249, t1, t3, t2, 1);
    t5 = (t1 + 12U);
    t6 = *((unsigned int *)t5);
    t7 = (1U * t6);
    t8 = (10U != t7);
    if (t8 == 1)
        goto LAB5;

LAB6:    t9 = (t0 + 5496);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t4, 10U);
    xsi_driver_first_trans_fast(t9);

LAB2:    t14 = (t0 + 5112);
    *((int *)t14) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(10U, t7, 0);
    goto LAB6;

}

static void work_a_0719766254_3212880686_p_2(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(76, ng0);

LAB3:    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t2 = (t0 + 7904U);
    t4 = ieee_p_1242562249_sub_1006216973935652998_1035706684(IEEE_P_1242562249, t1, t3, t2, 1);
    t5 = (t1 + 12U);
    t6 = *((unsigned int *)t5);
    t7 = (1U * t6);
    t8 = (10U != t7);
    if (t8 == 1)
        goto LAB5;

LAB6:    t9 = (t0 + 5560);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t4, 10U);
    xsi_driver_first_trans_fast(t9);

LAB2:    t14 = (t0 + 5128);
    *((int *)t14) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(10U, t7, 0);
    goto LAB6;

}

static void work_a_0719766254_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(78, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 5624);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 10U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5144);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0719766254_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(79, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 5688);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 10U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5160);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0719766254_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0719766254_3212880686_p_0,(void *)work_a_0719766254_3212880686_p_1,(void *)work_a_0719766254_3212880686_p_2,(void *)work_a_0719766254_3212880686_p_3,(void *)work_a_0719766254_3212880686_p_4};
	xsi_register_didat("work_a_0719766254_3212880686", "isim/testbench_isim_beh.exe.sim/work/a_0719766254_3212880686.didat");
	xsi_register_executes(pe);
}
