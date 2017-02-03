--[[
========================================================================================
	MTA:SA OpenRP
========================================================================================
	Github repository: MTASA-OpenRP
	Licensed under: MIT license
	Made by: OpenRPdevs
	Authors of this specific file: Rataj
========================================================================================
]]--

function setupClient()
	setAmbientSoundEnabled("gunfire", false)
end
addEventHandler("onClientResourceStart", resourceRoot, setupClient)