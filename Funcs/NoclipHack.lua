local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

noclip = false
local lastNoclipState = false

player.CharacterAdded:Connect(function(newCharacter)
	character = newCharacter
end)

RunService.Stepped:Connect(function()
	if not character then
		return
	end

	-- Saat noclip baru dimatikan
	if lastNoclipState and not noclip then
		local root = character:FindFirstChild("HumanoidRootPart")
		if root then
			root.AssemblyLinearVelocity = Vector3.zero
			root.AssemblyAngularVelocity = Vector3.zero
			root.CFrame = root.CFrame + Vector3.new(0, 0.2, 0)
		end
	end

	lastNoclipState = noclip

	for _, part in ipairs(character:GetDescendants()) do
		if part:IsA("BasePart") then
			local target

			if part.Name == "HumanoidRootPart" then
				target = false
			else
				target = not noclip
			end

			if part.CanCollide ~= target then
				part.CanCollide = target
			end
		end
	end
end)