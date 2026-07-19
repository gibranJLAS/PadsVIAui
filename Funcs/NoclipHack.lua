local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
noclip = false

-- 2. LOGIKA RESPOND CHARACTER
player.CharacterAdded:Connect(function(newCharacter)
	character = newCharacter
end)

-- 4. PROSES NOCLIP
RunService.Stepped:Connect(function()
    if character then
        for _, part in pairs(character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = not noclip
            end
        end
    end
end)