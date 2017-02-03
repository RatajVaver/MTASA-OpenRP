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
	setGameType("OpenRP v"..currentVersion)
	setMapName("San Andreas")
	setRuleValue("OpenRP-version", currentVersion)
	outputDebugString("OpenRP v"..currentVersion.." initialized successfully!")
end
addEventHandler("onResourceStart", resourceRoot, setupServer)