#ifndef CORE_H
#define CORE_H

#ifdef RP_PLATFORM_WINDOWS
    #ifdef RP_BUILD_DLL
        #define RUPEE_API __declspec(dllexport)
    #else
        #define RUPEE_API __declspec(dllimport)
    #endif
#else
    #error Rupee only found on Windows 
#endif

#endif
