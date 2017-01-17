/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#define CC_CLANG

#include "iki.h"
#ifdef __GNUC__
#include <stdlib.h>
#else
#define alloca _alloca
#endif
#define CC_CLANG
#include "iki.h"
#include "iki_bridge.h"
void relocate(char *) _asm("_relocate");

void sensitize(char *) _asm("_sensitize");
void simulate(char *) _asm("_simulate");

int _main(int argc, char **argv)
{
    void* design_handle = _iki_create_design("xsim.dir/test_lambda_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, _isimBridge_getWdbWriter(), 0, argc, argv);
     _iki_set_sv_type_file_path_name("xsim.dir/test_lambda_behav/xsim.svtype");
_iki_heap_initialize("ms", "isimmm", 0, 0) ;
    (void* ) design_handle;
    return _iki_simulate_design();
}
