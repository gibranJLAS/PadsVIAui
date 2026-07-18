local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "MenuPadsVIAui"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")


local Main = Instance.new("Frame")
Main.Name = "Main"
Main.Parent = ScreenGui

-- Posisi di tengah
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.Position = UDim2.fromScale(0.5, 0.5)

-- Size bisa diubah nanti
Main.Size = UDim2.new(0, 430, 0, 300)

Main.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Main.BorderSizePixel = 0


local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0, 1)
Corner.Parent = Main



local Title = Instance.new("TextLabel")
Title.Name = "TitlePadsVIAui"
Title.Parent = Main

Title.Size = UDim2.new(1, 0, 0, 40)

Title.Font = Enum.Font.GothamBold
Title.Text = "MenuPads"
Title.TextSize = 20
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundColor3 = Color3.fromRGB(23, 23, 23)

Title.TextXAlignment = Enum.TextXAlignment.Left

local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0, 1)
Corner.Parent = Title

-- Setelah Title

local Close = Instance.new("TextButton")
Close.Name = "Close"
Close.Parent = Main

Close.AnchorPoint = Vector2.new(1, 0)
Close.Position = UDim2.new(1, -10, 0, 8)
Close.Size = UDim2.new(0, 24, 0, 24)

Close.Text = "X"
Close.Font = Enum.Font.GothamBold
Close.TextSize = 18
Close.TextColor3 = Color3.new(1, 1, 1)

Close.BackgroundColor3 = Color3.fromRGB(220, 60, 60)
Close.BorderSizePixel = 0

Close.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0, 50)
Corner.Parent = Close


local ScrollFrame = Instance.new("Frame")
ScrollFrame.Name = "ScrollFrameIns"
ScrollFrame.Parent = Main

ScrollFrame.Position = UDim2.new(0, 0, 0, 41)
ScrollFrame.Size = UDim2.new(0.3, 0, 1, -41)

ScrollFrame.BackgroundTransparency = 1
ScrollFrame.BorderSizePixel = 1



local Scroll = Instance.new("ScrollingFrame")
Scroll.Name = "ScrollFrameVIAui"
Scroll.Parent = ScrollFrame

-- Posisi di bawah Title
Scroll.Position = UDim2.new(0, 0, 0, -1)

-- Mengisi sisa Main
Scroll.Size = UDim2.new(1.2, 0, 1, 1)

Scroll.BorderSizePixel = 0

Scroll.ScrollBarThickness = 4
Scroll.CanvasSize = UDim2.new(0, 0, 0, 0)

Scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
Scroll.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Scroll.ClipsDescendants = true


local Button = Instance.new("TextButton")
Button.Name = "Button1"
Button.Parent = Scroll

Button.Size = UDim2.new(1, -10, 0, 35)
Button.Position = UDim2.new(0, 5, 0, 8) -- UIListLayout yang mengatur posisi
Button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Button.BorderSizePixel = 0

Button.Text = "Players"
Button.Font = Enum.Font.Gotham
Button.TextSize = 16
Button.TextColor3 = Color3.fromRGB(255, 255, 255)

local ButtonCorner = Instance.new("UICorner")
ButtonCorner.CornerRadius = UDim.new(0, 6)
ButtonCorner.Parent = Button

Button.MouseButton1Click:Connect(function()
    print("Button ditekan")
end)