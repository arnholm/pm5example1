#include "staticlib1_class.h"

staticlib1_class::staticlib1_class()
{}

staticlib1_class::~staticlib1_class()
{}

void staticlib1_class::hello(const std::string& caller, std::ostream& out)
{
   out << "staticlib1_class: " << caller << " said hello!" << std::endl;
}
