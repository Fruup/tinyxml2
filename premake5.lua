project "tinyxml2"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "on"

	targetdir "bin/%{prj.name}/%{cfg.buildcfg}"
	objdir "bin-int/%{prj.name}/%{cfg.buildcfg}"

	files {
		"tinyxml2.h",
		"tinyxml2.cpp"
	}

	includedirs { "." }

	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"
