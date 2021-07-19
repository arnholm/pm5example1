#include <iostream>
using namespace std;

#include "staticlib1/staticlib1_class.h"
#include "dynlib1/dynlib1_class.h"

// Dependencies
// ===========
// testconsole
//     !
//     +--- dynlib1
//     !      !
//     !      +--\
//     !          +--staticlib1
//     +---------/

int main(int argc, char **argv)
{
   staticlib1_class::hello("testconsole",std::cout);
   dynlib1_class::hello("testconsole",std::cout);
   return 0;
}


