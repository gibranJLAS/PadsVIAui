local player = game:GetService("Players").LocalPlayer
local runservice = game:GetService("RunService")

local originalCollision = {}
local isnoclipping = false

runservice.Stepped:Connect(function()
    if not player.Character then
        return
    end

    for _, v in ipairs(player.Character:GetDescendants()) do
        if v:IsA("BasePart") then
            if isnoclipping then
                if originalCollision[v] == nil then
                    originalCollision[v] = v.CanCollide
                end

                v.CanCollide = false
            else
                if originalCollision[v] ~= nil then
                    v.CanCollide = originalCollision[v]
                end
            end
        end
    end
end)
