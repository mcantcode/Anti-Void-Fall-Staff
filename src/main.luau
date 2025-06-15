local players = game:GetService("Players")
local localPlayer = players.LocalPlayer

local groupId = 33986332

local function kickIfStaff(player)
	if getgenv()["Ignore Friend"] and player:IsFriendsWith(localPlayer.UserId) then
		return
	end

	if player:IsInGroup(groupId) then
		localPlayer:Kick("Staff detected: " .. player.Name .. " (" .. player:GetRoleInGroup(groupId):lower() .. ").")
	end

	if game.PlaceId == 15186202290 then
		local playerGui = player:FindFirstChild("PlayerGui")
		local gui = playerGui and playerGui:FindFirstChild("gui")
		local mod = gui and gui:FindFirstChild("Mod")
		local admin = gui and gui:FindFirstChild("Admin")

		if mod and mod.Visible then
			localPlayer:Kick("Staff detected: " .. player.Name .. " (mod).")
		elseif admin and admin.Visible then
			localPlayer:Kick("Staff detected: " .. player.Name .. " (admin).")
		end
	end
end

for _, player in pairs(players:GetChildren()) do
	kickIfStaff(player)
end

players.PlayerAdded:Connect(kickIfStaff)
