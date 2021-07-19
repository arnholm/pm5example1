#ifndef DYNLIB1_CLASS_H
#define DYNLIB1_CLASS_H

#include <string>
#include "dynlib1_config.h"

// source code in dynlib1 project (shared library)
class DYNLIB1_PUBLIC dynlib1_class {
public:
   dynlib1_class();
   virtual ~dynlib1_class();

   static void hello(const std::string& caller, std::ostream& out);
};

#endif // DYNLIB1_CLASS_H
