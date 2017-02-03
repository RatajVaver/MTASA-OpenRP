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

function getPosition()
	local x,y,z = getElementPosition(localPlayer)
	local _,_,r = getElementRotation(localPlayer)
	outputChatBox("XYZ: "..x..", "..y..", "..z, 255, 130, 20)
	outputChatBox("ROT: "..r, 255, 130, 20)
	setClipboard(x..", "..y..", "..z)
end
addCommandHandler("getpos", getPosition)