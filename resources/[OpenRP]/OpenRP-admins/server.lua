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


-- /tpto - Teleport admin to player
function teleportToPlayer(thePlayer, cmd, targetPlayer)
	local x,y,z = getElementPosition(getPlayerFromName(targetPlayer)) -- TODO: Export to core, finding player by partial string or ID
	setElementPosition(thePlayer, x+1, y, z) -- TODO: Teleport him in front of player
end
addCommandHandler("tpto", teleportToPlayer, false, false)

-- /tphere - Teleport player to admin
function teleportHerePlayer(thePlayer, cmd, targetPlayer)
	local x,y,z = getElementPosition(thePlayer)
	setElementPosition(getPlayerFromName(targetPlayer), x+1, y, z) -- TODO: Export to core, finding player by partial string or ID, teleport him in front of player
end
addCommandHandler("tphere", teleportHerePlayer, false, false)


-- /x - Move admin relatively on X coord
function movex(thePlayer, cmd, x)
	if not x then x = 1 end
	exports['OpenRP-core']:movePlayerRelative(thePlayer, x, 0, 0)
end
addCommandHandler("x", movex, false, false)

-- /y - Move admin relatively on Y coord
function movey(thePlayer, cmd, y)
	if not y then y = 1 end
	exports['OpenRP-core']:movePlayerRelative(thePlayer, 0, y, 0)
end
addCommandHandler("y", movey, false, false)

-- /z - Move admin relatively on Z coord
function movez(thePlayer, cmd, z)
	if not z then z = 1 end
	exports['OpenRP-core']:movePlayerRelative(thePlayer, 0, 0, z)
end
addCommandHandler("z", movez, false, false)