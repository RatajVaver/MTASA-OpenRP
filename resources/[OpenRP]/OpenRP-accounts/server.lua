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

function onLogin()
	spawnPlayer(source, 1743.0324, -1861.8645, 13.5769, 0, 217, 0, 0) -- Immediately spawn in LS for testing
	fadeCamera(source, true)
	setCameraTarget(source, source)
	setElementData(source, "OpenRP:logged", true, true) -- Fake login for testing
end
addEventHandler("onPlayerJoin", root, onLogin)