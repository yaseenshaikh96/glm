project "glm"
	kind "StaticLib"
	language "C++"
	cppdialect "C++20"
		
	
    	targetdir ( "%{wks.location}/bin/" .. outputdir)
    	objdir ( "%{wks.location}/bin-int/" .. outputdir)
	

	files
	{
		"include/**.hpp",
		"include/**.inl",
		"src/**.cpp"
	}

	includedirs
	{
		"src",
		"include"
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