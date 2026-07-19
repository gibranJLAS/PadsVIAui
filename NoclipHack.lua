local player = game:GetService("Players").LocalPlayer
local runservice = game:GetService("RunService")

local isnoclipping = false

runservice.Stepped:Connect(function()
    if player.Character then
        if isnoclipping == true then
            for i, v in pairs(player.Character:GetDescendants()) do
               if v:IsA("BasePart") then
                   v.CanCollide = false
                 end
            end
        end
    end
end