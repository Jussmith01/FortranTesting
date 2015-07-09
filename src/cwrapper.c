#include <stdio.h>
#include "sofunctiontesting.h"

//**********************************!
//    C Wrapper to C++ Functions    !
//**********************************!
extern "C"
{
    int functiontest_(int &maxprime)
    {
        printf("CWRAPPER: Calling SO Function %i !!\n",maxprime);
        sofunctiontest(maxprime);

        return (1);
    };
}

