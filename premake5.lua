workspace "Rupee"
    architecture "x64"    
    configurations {
        "Debug",
        "Release",
        "Dist"
    }

OUTPUTDIR = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

project "Rupee"
    location "Rupee"
    kind "SharedLib"
    language "C++"

    targetdir("bin/" .. OUTPUTDIR .. "/%{prj.name}")
    objdir("bin-obj/" .. OUTPUTDIR .. "/%{prj.name}")

	pchheader "pch.h"
	pchsource "Rupee/src/pch.cpp"

    files {
        "%{prj.name}/src/**.h",
        "%{prj.name}/src/**.cpp"
    }

    includedirs {
        "%{prj.name}/src"
    }

    filter "system:windows"
        cppdialect "C++17"
        staticruntime "On"
        systemversion "latest"

        defines {
            "RP_PLATFORM_WINDOWS",
            "RP_BUILD_DLL"
        }

        postbuildcommands {
            "{COPYFILE} %{cfg.buildtarget.abspath} ../bin/" .. OUTPUTDIR .. "/Claypot"
        }

    filter "configurations:Debug"
        defines "RP_DEBUG"
        symbols "On"

    filter "configurations:Release"
        defines "RP_RELEASE"
        optimize "On"

    filter "configurations:Dist"
        defines "RP_DIST"
        optimize "On"

project "Claypot"
    location "Claypot"
	kind "ConsoleApp"
    language "C++"
    staticruntime "off"

    targetdir("bin/" .. OUTPUTDIR .. "/%{prj.name}")
    objdir("bin-obj/" .. OUTPUTDIR .. "/%{prj.name}")

    files {
        "%{prj.name}/src/**.h",
        "%{prj.name}/src/**.cpp"
    }

    includedirs {
        "Rupee/src"
    }

    links {
        "Rupee"
    }

    filter "system:windows"
        cppdialect "C++17"
        staticruntime "On"
        systemversion "latest"

        defines {
            "RP_PLATFORM_WINDOWS",
        }

    filter "configurations:Debug"
        defines "RP_DEBUG"
        runtime "Debug"
        symbols "On"

    filter "configurations:Release"
        defines "RP_RELEASE"
        runtime "Release"
        optimize "On"

    filter "configurations:Dist"
        defines "RP_DIST"
        runtime "Release"
        optimize "On"    

