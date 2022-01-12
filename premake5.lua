project "yaml-cpp"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-obj/" .. outputdir .. "/%{prj.name}")

	files
	{
		"src/**.h",
		"src/**.cpp",
		
		"include/**.h"
	}

	includedirs
	{
		"include"
	}

	filter "system:windows"
		systemversion "latest"

	filter "system:linux"
		pic "On"
		systemversion "latest"

    filter "configurations:Debug-OpenGL"
        symbols "On"

    filter "configurations:Debug-Vulkan"
        symbols "On"
		
    filter "configurations:Debug-DX11"
        symbols "On"

    filter "configurations:Debug-DX12"
		symbols "On"

    filter "configurations:Release-OpenGL"
        optimize "On"

    filter "configurations:Release-Vulkan"
        optimize "On"

    filter "configurations:Release-DX11"
        optimize "On"

    filter "configurations:Release-DX12"
		optimize "On"

