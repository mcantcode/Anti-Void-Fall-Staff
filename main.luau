local players = game:GetService("Players")
local localPlayer = players.LocalPlayer

local vfStaffGroupId = 33986332

local function kickIfStaff(player)
	if getgenv()["Ignore Friend"] and player:IsFriendsWith(localPlayer.UserId) then
		return
	end

	if player:IsInGroup(vfStaffGroupId) then
		localPlayer:Kick("Staff detected: " .. player.Name .. " (" .. player:GetRoleInGroup(vfStaffGroupId) .. ").")
	end
end

for _, player in pairs(players:GetChildren()) do
	kickIfStaff(player)
end

players.PlayerAdded:Connect(kickIfStaff)
