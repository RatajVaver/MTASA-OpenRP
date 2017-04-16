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
	outputChatBox("Use /login to spawn (testing)", source, 200, 150, 0)
end
addEventHandler("onPlayerJoin", root, onLogin)

function cmdLogin(thePlayer, cmd, username, password)
	spawnPlayer(thePlayer, 1743.0324, -1861.8645, 13.5769, 0, 217, 0, 0) -- Immediately spawn in LS for testing
	fadeCamera(thePlayer, true)
	setCameraTarget(thePlayer, thePlayer)
	setElementData(thePlayer, "OpenRP:logged", true, true) -- Fake login for testing
end
addCommandHandler("login", cmdLogin, false, false)