local frame = Instance.new("Frame", game.CoreGui.TopBarApp.TopBarFrame.LeftFrame)
frame.Size = UDim2.new(0, 90, 1, 0)
frame.LayoutOrder = 3
frame.BackgroundTransparency = 1

local TweenService = game:GetService("TweenService")

function UpdateTime(menu)
    menu.Text = os.date("%H:%M:%S")
end

local frame2 = Instance.new("TextLabel", frame)
frame2.Size = UDim2.new(1, 0, 0, 32)
frame2.BorderSizePixel = 0
frame2.AnchorPoint = Vector2.new(0, 1)
frame2.Position = UDim2.new(0,-10,0,0)
frame2.BackgroundColor3 = Color3.fromRGB(0,0,0)
frame2.BackgroundTransparency = 0.5
frame2.TextColor3 = Color3.fromRGB(255,255,255)
frame2.Text = os.date("%H:%M:%S")
frame2.Font = "Code"
frame2.TextSize = 15

local anim = TweenService:Create(frame2, TweenInfo.new(0.5), {Position = UDim2.new(0, -10, 1, 0)})

anim:Play()

local uicorner = Instance.new("UICorner", frame2)
uicorner.CornerRadius = UDim.new(0,8)

while wait(1) do
    UpdateTime(frame2)
end
