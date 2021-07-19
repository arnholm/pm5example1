-- premake5 script, genrated by Code::Blocks plugin premake5cb by cacb
workspace "pm5example1"
	location "buildpm5"
	configurations { "debug","release" } 

	project "staticlib1"
		location "buildpm5/long/path/staticlib1"
		architecture  ( "x86_64" ) 
		cppdialect  ( "c++17" ) 
		defines ( "STATICLIB1_IMPLEMENTATION" ) 
		exceptionhandling  ( "on" ) 
		includedirs ( "staticlib1" ) 
		language  ( "c++" ) 
		pic  ( "on" ) 
		rtti  ( "on" ) 
		staticruntime  ( "off" ) 

		-- 'files' paths are relative to premake file
		files {
			"long/path/staticlib1/staticlib1_class.cpp"
			,"long/path/staticlib1/staticlib1_class.h"
			}

		filter { "configurations:debug" }
			cppdialect ( "c++11" ) 
			defines  ( "DEBUG" ) 
			kind ( "StaticLib" ) 
			symbols  ( "on" ) 
		filter { }

		filter { "configurations:release" }
			cppdialect ( "c++11" ) 
			defines  ( "NDEBUG" ) 
			kind ( "StaticLib" ) 
			optimize  ( "on" ) 
		filter { }

	project "dynlib1"
		location "buildpm5/dynlib1"
		architecture  ( "x86_64" ) 
		cppdialect  ( "c++17" ) 
		defines ( "DYNLIB1_IMPLEMENTATION" ) 
		dependson ( "staticlib1" ) 
		exceptionhandling  ( "on" ) 
		includedirs { "dynlib1","long/path/","long/path/staticlib1" } 
		language  ( "c++" ) 
		pic  ( "on" ) 
		rtti  ( "on" ) 
		staticruntime  ( "off" ) 

		-- 'files' paths are relative to premake file
		files {
			"dynlib1/dynlib1_class.cpp"
			,"dynlib1/dynlib1_class.h"
			,"dynlib1/dynlib1_config.h"
			}

		filter { "configurations:debug" }
			cppdialect ( "c++11" ) 
			defines  ( "DEBUG" ) 
			kind ( "SharedLib" ) 
			-- When linking within workspace, 'links' refer to project name.
			links ( "staticlib1" ) 
			symbols  ( "on" ) 
		filter { }

		filter { "configurations:release" }
			cppdialect ( "c++11" ) 
			defines  ( "NDEBUG" ) 
			kind ( "SharedLib" ) 
			-- When linking within workspace, 'links' refer to project name.
			links ( "staticlib1" ) 
			optimize  ( "on" ) 
		filter { }

	project "testconsole"
		location "buildpm5/testconsole"
		architecture  ( "x86_64" ) 
		cppdialect  ( "c++17" ) 
		dependson { "dynlib1","staticlib1" } 
		exceptionhandling  ( "on" ) 
		includedirs { ".","dynlib1","long/path/","long/path/staticlib1","testconsole" } 
		language  ( "c++" ) 
		pic  ( "on" ) 
		rtti  ( "on" ) 
		staticruntime  ( "off" ) 

		-- 'files' paths are relative to premake file
		files {
			"testconsole/main.cpp"
			}

		filter { "configurations:debug" }
			cppdialect ( "c++11" ) 
			defines  ( "DEBUG" ) 
			kind ( "ConsoleApp" ) 
			-- When linking within workspace, 'links' refer to project name.
			links { "dynlib1","staticlib1" } 
			symbols  ( "on" ) 
		filter { }

		filter { "configurations:release" }
			cppdialect ( "c++11" ) 
			defines  ( "NDEBUG" ) 
			kind ( "ConsoleApp" ) 
			-- When linking within workspace, 'links' refer to project name.
			links { "dynlib1","staticlib1" } 
			optimize  ( "on" ) 
		filter { }
