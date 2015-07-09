#include <stdio.h>
#include <iostream>
#include "sofunctiontesting.h"

//**********************************!
//    Checks if number is prime     !
//**********************************!
extern "C"
{
    int functiontest_()
    {
        printf("CWRAPPER: Calling SO Function!!\n");
        sofunctiontest();

        return (1);
    };
}

