-- 🌸 SakuraHub Script - Khởi tạo cơ bản
repeat task.wait() until game:IsLoaded()

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
local Humanoid = Character:WaitForChild("Humanoid")

print("✅ Script đã khởi động cho người chơi:", LocalPlayer.Name)

-- 🌸 SakuraHub UI cơ bản
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local AutoFarmButton = Instance.new("TextButton")

-- Gắn UI vào người chơi
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Frame (khung chính)
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Frame.Size = UDim2.new(0, 300, 0, 200)
Frame.Position = UDim2.new(0.3, 0, 0.3, 0)
Frame.Active = true
Frame.Draggable = true

-- Tiêu đề
Title.Parent = Frame
Title.Text = "🌸 SakuraHub - Blox Fruits"
Title.Size = UDim2.new(1, 0, 0, 40)
Title.BackgroundColor3 = Color3.fromRGB(255, 100, 150)
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true

-- Nút Auto Farm
AutoFarmButton.Parent = Frame
AutoFarmButton.Text = "Bật Auto Farm"
AutoFarmButton.Size = UDim2.new(0.8, 0, 0, 40)
AutoFarmButton.Position = UDim2.new(0.1, 0, 0.6, 0)
AutoFarmButton.BackgroundColor3 = Color3.fromRGB(100, 150, 255)
AutoFarmButton.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoFarmButton.TextScaled = true

-- 🌸 SakuraHub UI chính
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Khung chính
local MainFrame = Instance.new("Frame")
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
MainFrame.Size = UDim2.new(0, 400, 0, 300)
MainFrame.Position = UDim2.new(0.3, 0, 0.3, 0)
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Name = "SakuraHubMain"

-- Tiêu đề
local Title = Instance.new("TextLabel")
Title.Parent = MainFrame
Title.Text = "🌸 SakuraHub - Blox Fruits"
Title.Size = UDim2.new(1, 0, 0, 40)
Title.BackgroundColor3 = Color3.fromRGB(255, 100, 150)
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.Font = Enum.Font.SourceSansBold

-- Khung chứa các tab
local TabHolder = Instance.new("Frame")
TabHolder.Parent = MainFrame
TabHolder.Size = UDim2.new(0, 120, 1, -40)
TabHolder.Position = UDim2.new(0, 0, 0, 40)
TabHolder.BackgroundColor3 = Color3.fromRGB(45, 45, 45)

-- Danh sách tab
local tabs = {
    "Farm", "Server", "Local Player", "Other", "Raid", "Sea Event", "Teleport", "Setting"
}

local activeTab = nil
local tabFrames = {}

for i, name in ipairs(tabs) do
    local button = Instance.new("TextButton")
    button.Parent = TabHolder
    button.Size = UDim2.new(1, 0, 0, 30)
    button.Position = UDim2.new(0, 0, 0, (i - 1) * 30)
    button.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Text = name
    button.TextScaled = true
    button.Font = Enum.Font.SourceSansBold

    -- Frame nội dung tab
    local frame = Instance.new("Frame")
    frame.Parent = MainFrame
    frame.Size = UDim2.new(1, -120, 1, -40)
    frame.Position = UDim2.new(0, 120, 0, 40)
    frame.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
    frame.Visible = false

    -- Nhãn trong mỗi tab
    local label = Instance.new("TextLabel")
    label.Parent = frame
    label.Text = "🌸 Tab: " .. name
    label.Size = UDim2.new(1, 0, 1, 0)
    label.TextScaled = true
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.BackgroundTransparency = 1

    tabFrames[name] = frame

    button.MouseButton1Click:Connect(function()
        if activeTab then
            tabFrames[activeTab].Visible = false
        end
        activeTab = name
        frame.Visible = true
        print("🌸 Đang mở tab:", name)
    end)
end

print("✅ SakuraHub UI đã tạo thành công!")
-- 🌸 Khung nội dung cho Tab Farm
local FarmFrame = Instance.new("Frame")
FarmFrame.Parent = MainFrame
FarmFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
FarmFrame.Size = UDim2.new(1, 0, 0.65, 0)
FarmFrame.Position = UDim2.new(0, 0, 0.35, 0)
FarmFrame.Visible = false
-- 🌸 Nút bật/tắt Auto Farm trong tab Farm
local AutoFarmButton = Instance.new("TextButton")
AutoFarmButton.Parent = FarmFrame
AutoFarmButton.Size = UDim2.new(0.4, 0, 0, 40)
AutoFarmButton.Position = UDim2.new(0.3, 0, 0.1, 0)
AutoFarmButton.BackgroundColor3 = Color3.fromRGB(100, 150, 255)
AutoFarmButton.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoFarmButton.TextScaled = true
AutoFarmButton.Text = "Bật Auto Farm"
-- 🌸 Xử lý khi bấm vào các tab
for i, tabName in ipairs(Tabs) do
	local TabButton = Instance.new("TextButton")
	TabButton.Parent = MainFrame
	TabButton.Size = UDim2.new(0.23, 0, 0, 30)
	TabButton.Position = UDim2.new(0.02 + (i-1) * 0.24, 0, 0.15, 0)
	TabButton.BackgroundColor3 = Color3.fromRGB(100, 150, 255)
	TabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	TabButton.Text = tabName
	TabButton.TextScaled = true
	TabButton.BackgroundTransparency = 0.1
	TabButton.BorderSizePixel = 0
	TabButton.AutoButtonColor = true

	TabButton.MouseButton1Click:Connect(function()
		-- Ẩn tất cả frame trước
		FarmFrame.Visible = false
		
		-- Chỉ hiển thị tab được chọn
		if tabName == "Farm" then
		    -- 🌸 Xử lý khi bấm vào các tab
for i, tabName in ipairs(Tabs) do
	local TabButton = Instance.new("TextButton")
	TabButton.Parent = MainFrame
	TabButton.Size = UDim2.new(0.23, 0, 0, 30)
	TabButton.Position = UDim2.new(0.02 + (i-1) * 0.24, 0, 0.15, 0)
	TabButton.BackgroundColor3 = Color3.fromRGB(100, 150, 255)
	TabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	TabButton.Text = tabName
	TabButton.TextScaled = true
	TabButton.BackgroundTransparency = 0.1
	TabButton.BorderSizePixel = 0
	TabButton.AutoButtonColor = true

	TabButton.MouseButton1Click:Connect(function()
		-- Ẩn tất cả frame trước
		FarmFrame.Visible = false
		
		-- Chỉ hiển thị tab được chọn
		if tabName == "Farm" then
		    for i, tabName in ipairs(Tabs) do
    local TabButton = Instance.new("TextButton")
    TabButton.Parent = MainFrame
    ...
end
		    -- 🌸 Chuyển nội dung theo tab
for _, button in pairs(MainFrame:GetChildren()) do
	if button:IsA("TextButton") then
		button.MouseButton1Click:Connect(function()
			if button.Text == "Farm" then
				ContentFrame.Visible = true
				print("🔹 Tab Farm đã mở")
			else
				ContentFrame.Visible = false
			end
		end)
	end
end