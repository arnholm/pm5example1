#ifndef STATICLIB1_CLASS_H
#define STATICLIB1_CLASS_H

#include <ostream>
#include <string>

// source code in staticlib1 project (static library)
class staticlib1_class {
public:
   staticlib1_class();
   virtual ~staticlib1_class();

   static void hello(const std::string& caller, std::ostream& out);
};

#endif // STATICLIB1_CLASS_H
