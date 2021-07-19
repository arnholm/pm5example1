#ifndef DYNLIB1_CONFIG_H_INCLUDED
#define DYNLIB1_CONFIG_H_INCLUDED

#ifdef _MSC_VER

   /// MSVC compiler

   #ifdef DYNLIB1_IMPLEMENTATION
      #define DYNLIB1_PUBLIC __declspec(dllexport)
      #define DYNLIB1_EXTERN
   #else
      #define DYNLIB1_PUBLIC __declspec(dllimport)
      #define DYNLIB1_EXTERN extern
   #endif
   #define DYNLIB1_PRIVATE

#elif __GNUC__

   /// gnu gcc

   #define DYNLIB1_PUBLIC  __attribute__ ((visibility("default")))
   #define DYNLIB1_PRIVATE __attribute__ ((visibility("hidden")))
   #define DYNLIB1_EXTERN
	
#else

  #error "Unknown compiler"
	
#endif


#endif // DYNLIB1_CONFIG_H_INCLUDED

