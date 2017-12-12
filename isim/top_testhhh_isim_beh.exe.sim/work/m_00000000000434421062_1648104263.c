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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "//Mac/Home/Desktop/CA/exp/liushuixian/ID.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {0, 0};



static void Always_47_0(char *t0)
{
    char t6[8];
    char t7[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;

LAB0:    t1 = (t0 + 6368U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 6936);
    *((int *)t2) = 1;
    t3 = (t0 + 6400);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(47, ng0);

LAB5:    xsi_set_current_line(48, ng0);
    t4 = (t0 + 1688U);
    t5 = *((char **)t4);
    t4 = (t0 + 4488);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 32, 0LL);
    xsi_set_current_line(49, ng0);
    t2 = (t0 + 3768U);
    t3 = *((char **)t2);
    t2 = (t0 + 4648);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(50, ng0);
    t2 = (t0 + 3928U);
    t3 = *((char **)t2);
    t2 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    memset(t7, 0, 8);
    t2 = (t7 + 4);
    t4 = (t3 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (t8 >> 0);
    *((unsigned int *)t7) = t9;
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 0);
    *((unsigned int *)t2) = t11;
    t12 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t12 & 65535U);
    t13 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t13 & 65535U);
    t5 = ((char*)((ng1)));
    xsi_vlogtype_concat(t6, 32, 32, 2U, t5, 16, t7, 16);
    t14 = (t0 + 4968);
    xsi_vlogvar_wait_assign_value(t14, t6, 0, 0, 32, 0LL);
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (t8 >> 11);
    *((unsigned int *)t6) = t9;
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 11);
    *((unsigned int *)t2) = t11;
    t12 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t12 & 31U);
    t13 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t13 & 31U);
    t5 = (t0 + 5128);
    xsi_vlogvar_wait_assign_value(t5, t6, 0, 0, 5, 0LL);
    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (t8 >> 16);
    *((unsigned int *)t6) = t9;
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 16);
    *((unsigned int *)t2) = t11;
    t12 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t12 & 31U);
    t13 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t13 & 31U);
    t5 = (t0 + 5288);
    xsi_vlogvar_wait_assign_value(t5, t6, 0, 0, 5, 0LL);
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (t8 >> 0);
    *((unsigned int *)t6) = t9;
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 0);
    *((unsigned int *)t2) = t11;
    t12 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t12 & 63U);
    t13 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t13 & 63U);
    t5 = (t0 + 5448);
    xsi_vlogvar_wait_assign_value(t5, t6, 0, 0, 6, 0LL);
    goto LAB2;

}

static void Initial_56_1(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(56, ng0);

LAB2:    xsi_set_current_line(57, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 4488);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 32, 0LL);
    xsi_set_current_line(58, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 4648);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 32, 0LL);
    xsi_set_current_line(59, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 32, 0LL);
    xsi_set_current_line(60, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 4968);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 32, 0LL);
    xsi_set_current_line(61, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 5128);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 5, 0LL);
    xsi_set_current_line(62, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 5288);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 5, 0LL);
    xsi_set_current_line(63, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 5448);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 6, 0LL);

LAB1:    return;
}


extern void work_m_00000000000434421062_1648104263_init()
{
	static char *pe[] = {(void *)Always_47_0,(void *)Initial_56_1};
	xsi_register_didat("work_m_00000000000434421062_1648104263", "isim/top_testhhh_isim_beh.exe.sim/work/m_00000000000434421062_1648104263.didat");
	xsi_register_executes(pe);
}
