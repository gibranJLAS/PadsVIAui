local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local noclip = false

-- 2. LOGIKA RESPOND CHARACTER
player.CharacterAdded:Connect(function(newCharacter)
	character = newCharacter
end)

-- 4. PROSES NOCLIP
RunService.Stepped:Connect(function()
	if noclip and character then
		for _, part in pairs(character:GetDescendants()) do
			if part:IsA("BasePart") and part.CanCollide then
				part.CanCollide = false
			end
		end
	end
end)
