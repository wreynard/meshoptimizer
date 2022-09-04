-- meshoptimizer/premake5.lua

	-------------------------------
	-- [ PROJECT CONFIGURATION ] --
	-------------------------------
	project "meshoptimizer"
		kind "StaticLib"
		language "C++"
		cppdialect "C++17"
		targetdir ("%{prj.location}/bin/%{cfg.platform}/%{cfg.buildcfg}")
		objdir "%{prj.location}/obj/%{prj.name}/%{cfg.platform}/%{cfg.buildcfg}"

		local srcDir = "./src/"

		files
		{
			srcDir .. "*.h",
			srcDir .. "*.hpp",
			srcDir .. "*.inl",
			srcDir .. "*.c",
			srcDir .. "*.cpp",
		}

		includedirs { srcDir }
