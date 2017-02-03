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

function setupServer()
	setGameType("OpenRP")
	setMapName("San Andreas")
	setRuleValue("OpenRP-version", currentVersion)
end
addEventHandler("onResourceStart", resourceRoot, setupServer)