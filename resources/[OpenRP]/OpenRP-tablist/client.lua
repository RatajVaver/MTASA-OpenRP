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

local sx,sy = guiGetScreenSize()
local width,height = 400, 220
local serverName = exports['OpenRP-core']:getServerName()

function drawTablist()
	if getElementData(localPlayer, "OpenRP:logged") and getKeyState("tab") then
		dxDrawRectangle(sx/2 - width/2, sy/2 - height/2, width, height, tocolor(0, 0, 0, 180))
		dxDrawRectangle(sx/2 - width/2, sy/2 - height/2, width, 20, tocolor(0, 0, 0, 180))
		dxDrawText(serverName, sx/2 - width/2 + 12, sy/2 - height/2 + 3, width - 50, 20)
		dxDrawText("Powered by OpenRP", sx/2 + height/2 - 35, sy/2 - height/2 + 3, 35, 20)
		for k,v in ipairs(getElementsByType("player"))do
			dxDrawText(getPlayerName(v), sx/2 - width/2 + 15, sy/2 - height/2 + 30 + 20 * (k-1), width - 30, 20)
		end
	end
end
addEventHandler("onClientRender", root, drawTablist)