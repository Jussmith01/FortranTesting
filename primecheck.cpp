#include <stdio.h>
#include <iostream>

//**********************************!
//    Checks if number is prime     !
//**********************************!
extern "C"
{
    int functiontest_();
}

int functiontest_()
{
    printf("Hello World!");
    std::cout << "Testing!!\n" << std::endl;

    return (1);
};
