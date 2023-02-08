project "glm"
	kind "None"
	language "C++"
	cppdialect "C++20"

	files
	{
		"glm/**.hpp",
		"glm/**.cpp",
		"glm/**.inl"
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