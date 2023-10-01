local frame = Instance.new("Frame", game.CoreGui.TopBarApp.TopBarFrame.LeftFrame)
frame.Size = UDim2.new(0, 90, 1, 0)
frame.LayoutOrder = 3
frame.BackgroundTransparency = 1

local TweenService = game:GetService("TweenService")

function UpdateTime(menu)
    menu.Text = os.date("%H:%M:%S")
end

local ui = {}

function ui:CreateTimer(font)
    font.Font = font.Font or "GothamMedium"

    local frame2 = Instance.new("TextLabel", frame)
    frame2.Size = UDim2.new(1, 0, 0, 32)
    frame2.BorderSizePixel = 0
    frame2.AnchorPoint = Vector2.new(0, 1)
    frame2.Position = UDim2.new(0,0,0,0)
    frame2.BackgroundColor3 = Color3.fromRGB(0,0,0)
    frame2.BackgroundTransparency = 0.5
    frame2.TextColor3 = Color3.fromRGB(255,255,255)
    frame2.Text = ""
    frame2.TextSize = 15

    local text = Instance.new("TextLabel", frame2)
    text.Size = UDim2.new(1, -10, 1, 0)
    text.AnchorPoint = Vector2.new(1,0)
    text.Position = UDim2.new(1,0,0,0)
    text.BackgroundTransparency = 1
    text.Text = os.date("%H:%M:%S")
    text.Font = font.Font
    text.TextSize = 15
    text.TextColor3 = Color3.fromRGB(255,255,255)

    local icon = Instance.new("ImageLabel", frame2)
    icon.Size = UDim2.new(0, 15, 0, 15)
    icon.Position = UDim2.new(0, 8, 0, 8)
    icon.BackgroundTransparency = 1
    icon.Image = "rbxassetid://10734984606"

    local anim = TweenService:Create(frame2, TweenInfo.new(0.5), {Position = UDim2.new(0, 0, 1, 0)})

    anim:Play()

    local uicorner = Instance.new("UICorner", frame2)
    uicorner.CornerRadius = UDim.new(0,8)

    while wait(1) do
        UpdateTime(text)
    end
end
return ui
