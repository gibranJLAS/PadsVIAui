local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

noclip = false

player.CharacterAdded:Connect(function(char)
	character = char
end)

RunService.Stepped:Connect(function()
	if not character then return end

	local parts = {
		"Head",
		"Torso",
		"Left Arm",
		"Right Arm",
		"Left Leg",
		"Right Leg"
	}

	for _, name in ipairs(parts) do
		local part = character:FindFirstChild(name)

		if part then
			part.CanCollide = not noclip
		end
	end

	-- HumanoidRootPart tetap tidak collision
	local root = character:FindFirstChild("HumanoidRootPart")
	if root then
		root.CanCollide = false
	end
end)