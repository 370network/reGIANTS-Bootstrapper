-- reGIANTS Bootstrapper
local bootstrapperVersion = "v0.1.0"
-- @author  Richard Gráčik @ 370network (mailto:morc@370.network)
-- @author  LS Mods Community (https://komeo.xyz/ls2009mods)
-- @date  2.2.2025

print("[reGIANTS Bootstrapper " .. bootstrapperVersion .. "] Bootstrapper successfully loaded!")

local bootstrapper_files = Files:new(getUserProfileAppPath() .. "mods/reGIANTS")
for k, v in pairs(bootstrapper_files.files) do
	if v.filename ~= "modDesc.xml" then
		if v.filename ~= "Bootstrapper.lua" then
			if v.filename ~= "Bootstrapper.luc" then
				if v.filename ~= "store_reGIANTSBootstrapper.png" then
					print("[reGIANTS Bootstrapper " .. bootstrapperVersion .. "] Script load: " .. v.filename)
					source(getUserProfileAppPath() .. "mods/reGIANTS/" .. v.filename) 
				end
			end
		end
	end

end