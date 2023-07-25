project "glm"
	kind "StaticLib"
	language "C++"
	cppdialect "C++20"

	files
	{
		"glm/**.hpp",
		"glm/**.inl"
	}

	includeDirs
	{
		"glm/**.hpp",
		"glm/**.inl",
		"glm/**.cpp"
	}	

	defines
	{
		"GLM_ENABLE_EXPERIMENTAL"
	}	
	
	
	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"
        	symbols "off"