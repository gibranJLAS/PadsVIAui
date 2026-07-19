local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
noclip = false
local lastNoclipState = false -- Tambahan untuk mendeteksi perubahan status

-- 2. LOGIKA RESPOND CHARACTER
player.CharacterAdded:Connect(function(newCharacter)
	character = newCharacter
end)

-- 4. PROSES NOCLIP
RunService.Stepped:Connect(function()
    if character then
        -- FIX GOYANG: Deteksi saat noclip baru saja dimatikan (OFF)
        if not noclip and lastNoclipState == true then
            local root = character:FindFirstChild("HumanoidRootPart")
            if root then
                -- Hentikan momentum gerak instan agar kaki tidak menendang lantai
                root.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                root.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
                -- Angkat sangat sedikit (0.3 stud) untuk memberi ruang animasi kaki
                root.CFrame = root.CFrame + Vector3.new(0, 0.3, 0)
            end
        end
        lastNoclipState = noclip -- Simpan status terakhir

        -- Loop CanCollide bawaan dari script kamu
        for _, part in ipairs(character:GetDescendants()) do
    if part:IsA("BasePart") then
        if part.Name == "HumanoidRootPart" then
            part.CanCollide = false
        else
            part.CanCollide = not noclip
          end
      end
  end
end)