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
static const char *ng0 = "/home/klaus/PONG/Vga/vga_generator/VGA_READER.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_17126692536656888728_1035706684(char *, char *, int , int );


static void work_a_2728709758_3212880686_p_0(char *t0)
{
    char t6[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    unsigned char t11;
    unsigned char t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    int64 t16;

LAB0:    t1 = (t0 + 3288U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(54, ng0);

LAB4:    if ((unsigned char)1 != 0)
        goto LAB5;

LAB7:    goto LAB2;

LAB5:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 2208U);
    t3 = *((char **)t2);
    t2 = (t0 + 2536U);
    t4 = (t0 + 6189);
    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 1;
    t8 = (t7 + 4U);
    *((int *)t8) = 19;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t9 = (19 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    t11 = std_textio_file_open2(t2, t4, t6, (unsigned char)0);
    *((unsigned char *)t3) = t11;
    xsi_set_current_line(57, ng0);

LAB8:    t2 = (t0 + 2536U);
    t11 = std_textio_endfile(t2);
    t12 = (!(t11));
    if (t12 != 0)
        goto LAB9;

LAB11:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 2536U);
    std_textio_file_close(t2);
    goto LAB4;

LAB6:;
LAB9:    xsi_set_current_line(59, ng0);
    t3 = (t0 + 2536U);
    t4 = (t0 + 2088U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    t9 = std_textio_read_int(t3);
    *((int *)t4) = t9;
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 2088U);
    t3 = *((char **)t2);
    t9 = *((int *)t3);
    t2 = ieee_p_1242562249_sub_17126692536656888728_1035706684(IEEE_P_1242562249, t6, t9, 32);
    t4 = (t0 + 1968U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    t7 = (t6 + 12U);
    t10 = *((unsigned int *)t7);
    t10 = (t10 * 1U);
    memcpy(t4, t2, t10);
    t8 = (t0 + 1912U);
    xsi_variable_act(t8);
    xsi_set_current_line(62, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t10 = (31 - 9);
    t13 = (t10 * 1U);
    t14 = (0 + t13);
    t2 = (t3 + t14);
    t4 = (t0 + 3672);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    t8 = (t7 + 56U);
    t15 = *((char **)t8);
    memcpy(t15, t2, 10U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t10 = (31 - 19);
    t13 = (t10 * 1U);
    t14 = (0 + t13);
    t2 = (t3 + t14);
    t4 = (t0 + 3736);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    t8 = (t7 + 56U);
    t15 = *((char **)t8);
    memcpy(t15, t2, 10U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t10 = (31 - 29);
    t13 = (t10 * 1U);
    t14 = (0 + t13);
    t2 = (t3 + t14);
    t4 = (t0 + 3800);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    t8 = (t7 + 56U);
    t15 = *((char **)t8);
    memcpy(t15, t2, 10U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(65, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t9 = (30 - 31);
    t10 = (t9 * -1);
    t13 = (1U * t10);
    t14 = (0 + t13);
    t2 = (t3 + t14);
    t11 = *((unsigned char *)t2);
    t4 = (t0 + 3864);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    t8 = (t7 + 56U);
    t15 = *((char **)t8);
    *((unsigned char *)t15) = t11;
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t9 = (31 - 31);
    t10 = (t9 * -1);
    t13 = (1U * t10);
    t14 = (0 + t13);
    t2 = (t3 + t14);
    t11 = *((unsigned char *)t2);
    t4 = (t0 + 3928);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    t8 = (t7 + 56U);
    t15 = *((char **)t8);
    *((unsigned char *)t15) = t11;
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(68, ng0);
    t16 = (40 * 1000LL);
    t2 = (t0 + 3096);
    xsi_process_wait(t2, t16);

LAB14:    *((char **)t1) = &&LAB15;

LAB1:    return;
LAB10:;
LAB12:    goto LAB8;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

}


extern void work_a_2728709758_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2728709758_3212880686_p_0};
	xsi_register_didat("work_a_2728709758_3212880686", "isim/testbench_isim_beh.exe.sim/work/a_2728709758_3212880686.didat");
	xsi_register_executes(pe);
}
