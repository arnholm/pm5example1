#include "dynlib1_class.h"
#include "staticlib1/staticlib1_class.h"

dynlib1_class::dynlib1_class()
{}

dynlib1_class::~dynlib1_class()
{}


void dynlib1_class::hello(const std::string& caller, std::ostream& out)
{
   staticlib1_class::hello("dynlib1_class",out);
   out << "dynlib1_class: " << caller << " said hello!" << std::endl;
}
