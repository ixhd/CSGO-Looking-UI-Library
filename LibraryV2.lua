local InputService = game:GetService('UserInputService');
local TextService = game:GetService('TextService');
local CoreGui = game:GetService('CoreGui');
local Teams = game:GetService('Teams');
local Players = game:GetService('Players');
local RunService = game:GetService('RunService')
local TweenService = game:GetService('TweenService');
local RenderStepped = RunService.RenderStepped;
local LocalPlayer = Players.LocalPlayer;
local Mouse = LocalPlayer:GetMouse();
local UserInputService = game:GetService("UserInputService")

local ProtectGui = protectgui or (syn and syn.protect_gui) or (function() end);


local function genKey()
	local real = ""
	local chars = {}
	local function setChar(a, z)
		for i = string.byte(a), string.byte(z) do
			table.insert(chars, string.char(i))
		end
	end
	local function getKey()
		local keys = {
			key1 = {},
			key2 = {},
			key3 = {},
			key4 = {}
		}
		for real1 = 1, 7 do
			keys.key1[real1] = tostring(chars[math.random(1, #chars)])
		end
		for real2 = 1, 8 do
			keys.key2[real2] = tostring(chars[math.random(1, #chars)])
		end
		for real3 = 1, 5 do
			keys.key3[real3] = tostring(chars[math.random(1, #chars)])
		end
		for real4 = 1, 7 do
			keys.key4[real4] = tostring(chars[math.random(1, #chars)])
		end
		return "7v_[" ..
			table.concat(keys.key1) ..
			"-" ..
			table.concat(keys.key2) ..
			"-" .. table.concat(keys.key3) .. "-" .. table.concat(keys.key4) .. "]:"..game.JobId
	end
	setChar("A", "Z")
	setChar("0", "9")
	return getKey()
end


local keyLibrary = genKey()







print(keyLibrary)
print(keyLibrary)


local Library = {
	options = {},
	flags = {},
	key = keyLibrary,
	gradient = {
		[0] = Color3.fromRGB(84,61,255),
		[1] = Color3.fromRGB(90,40,200)
	}
}


local isFirstTab = true

local theme = {
	accent = Color3.fromRGB(255, 0, 4),
	bgLight = Color3.fromRGB(27,27,27),
	bgDark = Color3.fromRGB(23,23,23),
	borderLight = Color3.fromRGB(50,50,50),
	borderDark = Color3.fromRGB(0,0,0),
	stroke = Color3.fromRGB(16,16,16),
	transparency = 0.3,
	text = Color3.fromRGB(255,255,255), 
	font = Enum.Font.Jura
}





local grad = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 4)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(150, 0, 2))}


function Library:New(title)

	title = title or "New Window"
		
	local dt = DateTime.now()

	
	local window = {}
	
	local ScreenGui = Instance.new('ScreenGui')
	ProtectGui(ScreenGui)
	
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global
	ScreenGui.Parent = game.Players.LocalPlayer.PlayerGui
	ScreenGui.Name = keyLibrary
	ScreenGui.ResetOnSpawn = false
	
	local MainContainer_00X0019A8B6C8E9F4D6G8H9I01J02K03L04M05N06O07P08Q09R010S011T012U013V014W015X016Y017Z01819A020B021C022D023E024F025G026H027I028J029K030L031M032N033O034P035Q036R037S038T039U040V041W042X043Y044Z04546A047B048C049D050E051F052G053H054I055J056K057L058M059N060O061P062Q063R064S065T066U067V068W069X070Y071Z07273A074B075C076D077E078F079G080H081I082J083K084L085M086N087O088P089Q090R091S092T093U094V095W096X097Y098Z09990A091B092 = Instance.new("StringValue", ScreenGui)
	MainContainer_00X0019A8B6C8E9F4D6G8H9I01J02K03L04M05N06O07P08Q09R010S011T012U013V014W015X016Y017Z01819A020B021C022D023E024F025G026H027I028J029K030L031M032N033O034P035Q036R037S038T039U040V041W042X043Y044Z04546A047B048C049D050E051F052G053H054I055J056K057L058M059N060O061P062Q063R064S065T066U067V068W069X070Y071Z07273A074B075C076D077E078F079G080H081I082J083K084L085M086N087O088P089Q090R091S092T093U094V095W096X097Y098Z09990A091B092.Value = tostring(keyLibrary)
	
	local backgroundDesign = Instance.new("Frame")
	local UIGradient = Instance.new("UIGradient")
	local UIListLayout = Instance.new("UIListLayout")
	local innerDesign = Instance.new("Frame")
	local UIListLayout_2 = Instance.new("UIListLayout")
	local Header = Instance.new("TextLabel")
	local UIPadding = Instance.new("UIPadding")
	local Folder = Instance.new("Folder")
	local TimeLabel = Instance.new("TextLabel")
	local UIPadding_2 = Instance.new("UIPadding")
	local UIListLayout_3 = Instance.new("UIListLayout")
	local backgroundDesign2 = Instance.new("Frame")
	local UIListLayout_4 = Instance.new("UIListLayout")
	local innerDesign2 = Instance.new("Frame")
	local UIListLayout_5 = Instance.new("UIListLayout")
	local Tabs = Instance.new("Frame")
	local UIListLayout_6 = Instance.new("UIListLayout")
	local backgroundPages = Instance.new("Frame")
	local innerPages = Instance.new("Frame")
	local UIListLayout_7 = Instance.new("UIListLayout")
	local UIListLayout_8 = Instance.new("UIListLayout")


	backgroundDesign.Name = "backgroundDesign"
	backgroundDesign.Parent = ScreenGui
	backgroundDesign.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	backgroundDesign.BorderColor3 = Color3.fromRGB(0, 0, 0)
	backgroundDesign.Position = UDim2.new(0.441000015, 0, 0.184, 0)
	backgroundDesign.Size = UDim2.new(0, 550, 0, 610)
	backgroundDesign.ZIndex = 100000

	UIGradient.Color = grad
	UIGradient.Rotation = 45
	UIGradient.Parent = backgroundDesign

	UIListLayout.Parent = backgroundDesign
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

	innerDesign.Name = "innerDesign"
	innerDesign.Parent = backgroundDesign
	innerDesign.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
	innerDesign.BorderColor3 = Color3.fromRGB(50, 50, 50)
	innerDesign.Position = UDim2.new(0.62364912, 0, 0.224514559, 0)
	innerDesign.Size = UDim2.new(0, 546, 0, 606)
	innerDesign.ZIndex = 100000

	UIListLayout_2.Parent = innerDesign
	UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_2.Padding = UDim.new(0, 2)

	Header.Name = "Header"
	Header.Parent = innerDesign
	Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Header.BackgroundTransparency = 1.000
	Header.Position = UDim2.new(0.119047619, 0, 0, 0)
	Header.Size = UDim2.new(0, 546, 0, 25)
	Header.ZIndex = 100001
	Header.Font = Enum.Font.Jura
	Header.Text = title
	Header.TextColor3 = Color3.fromRGB(255, 255, 255)
	Header.TextSize = 16.000
	Header.TextStrokeColor3 = Color3.fromRGB(16, 16, 16)
	Header.TextStrokeTransparency = 0.300
	Header.TextXAlignment = Enum.TextXAlignment.Left

	UIPadding.Parent = Header
	UIPadding.PaddingBottom = UDim.new(0, 1)
	UIPadding.PaddingLeft = UDim.new(0, 7)

	Folder.Parent = Header

	TimeLabel.Name = "TimeLabel"
	TimeLabel.Parent = Folder
	TimeLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TimeLabel.BackgroundTransparency = 1.000
	TimeLabel.Position = UDim2.new(0.012820513, 0, 0, 0)
	TimeLabel.Size = UDim2.new(0, 200, 0, 25)
	TimeLabel.ZIndex = 100001
	TimeLabel.Font = Enum.Font.Jura
	TimeLabel.Text = dt:FormatLocalTime("LT", "en-us").." "..dt:FormatLocalTime("l", "en-us")
	TimeLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TimeLabel.TextSize = 16.000
	TimeLabel.TextStrokeColor3 = Color3.fromRGB(16, 16, 16)
	TimeLabel.TextStrokeTransparency = 0.300
	TimeLabel.TextTransparency = 0.230
	TimeLabel.TextXAlignment = Enum.TextXAlignment.Right

	

	UIPadding_2.Parent = TimeLabel
	UIPadding_2.PaddingBottom = UDim.new(0, 1)
	UIPadding_2.PaddingRight = UDim.new(0, 7)

	UIListLayout_3.Parent = Folder
	UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Right
	UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder

	backgroundDesign2.Name = "backgroundDesign2"
	backgroundDesign2.Parent = innerDesign
	backgroundDesign2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	backgroundDesign2.BorderColor3 = Color3.fromRGB(50, 50, 50)
	backgroundDesign2.Position = UDim2.new(0.0137362638, 0, 0.0462046191, 0)
	backgroundDesign2.Size = UDim2.new(0, 531, 0, 570)
	backgroundDesign2.ZIndex = 100000

	UIListLayout_4.Parent = backgroundDesign2
	UIListLayout_4.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_4.VerticalAlignment = Enum.VerticalAlignment.Center

	innerDesign2.Name = "innerDesign2"
	innerDesign2.Parent = backgroundDesign2
	innerDesign2.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
	innerDesign2.BorderColor3 = Color3.fromRGB(50, 50, 50)
	innerDesign2.BorderSizePixel = 0
	innerDesign2.Position = UDim2.new(0.012820513, 0, 0.0462046191, 0)
	innerDesign2.Size = UDim2.new(0, 529, 0, 568)
	innerDesign2.ZIndex = 100000

	UIListLayout_5.Parent = innerDesign2
	UIListLayout_5.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_5.VerticalAlignment = Enum.VerticalAlignment.Center

	Tabs.Name = "Tabs"
	Tabs.Parent = innerDesign2
	Tabs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Tabs.BackgroundTransparency = 1.000
	Tabs.Position = UDim2.new(0.0198487714, 0, 0.480633795, 0)
	Tabs.Size = UDim2.new(0, 516, 0, 21)
	Tabs.ZIndex = 100000

	UIListLayout_6.Parent = Tabs
	UIListLayout_6.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_6.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_6.VerticalAlignment = Enum.VerticalAlignment.Bottom
	UIListLayout_6.Padding = UDim.new(0, 4)

	backgroundPages.Name = "backgroundPages"
	backgroundPages.Parent = innerDesign2
	backgroundPages.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	backgroundPages.BorderColor3 = Color3.fromRGB(0, 0, 0)
	backgroundPages.Position = UDim2.new(0.00850661658, 0, 0.0510563366, 0)
	backgroundPages.Size = UDim2.new(0, 516, 0, 532)
	backgroundPages.ZIndex = 100000

	innerPages.Name = "innerPages"
	innerPages.Parent = backgroundPages
	innerPages.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
	innerPages.BorderColor3 = Color3.fromRGB(0, 0, 0)
	innerPages.BorderSizePixel = 0
	innerPages.Position = UDim2.new(0.000564176589, 0, 0.150084764, 0)
	innerPages.Size = UDim2.new(0, 514, 0, 530)
	innerPages.ZIndex = 100005

	UIListLayout_7.Parent = innerPages
	UIListLayout_7.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_7.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_7.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_7.VerticalAlignment = Enum.VerticalAlignment.Center

	UIListLayout_8.Parent = backgroundPages
	UIListLayout_8.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_8.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_8.VerticalAlignment = Enum.VerticalAlignment.Center
	
	local gui = backgroundDesign

	local dragging
	local dragInput
	local dragStart
	local startPos

	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end

	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
	
	function window:AddTab(name)
		name = name or "New Tab"
		
		local tabz = {}
		
		local tab = Instance.new("Frame")
		local UIListLayout = Instance.new("UIListLayout")
		local btnTab = Instance.new("TextButton")
		local cutTab = Instance.new("Frame")
		local UIListLayout_2 = Instance.new("UIListLayout")

		--Properties:

		tab.Name = "tab"
		tab.Parent = Tabs
		tab.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
		tab.BorderColor3 = Color3.fromRGB(0, 0, 0)
		tab.ZIndex = 100000

		UIListLayout.Parent = tab
		UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom

		btnTab.Name = "btnTab"
		btnTab.Parent = tab
		btnTab.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
		btnTab.BorderColor3 = Color3.fromRGB(50, 50, 50)
		btnTab.Position = UDim2.new(0.0119047621, 0, 0.0476190485, 0)
		btnTab.Size = UDim2.new(0, 64, 0, 20)
		btnTab.ZIndex = 100010
		btnTab.AutoButtonColor = false
		btnTab.Font = Enum.Font.Jura
		btnTab.Text = name
		btnTab.TextColor3 = Color3.fromRGB(200, 200, 200)
		btnTab.TextSize = 14.000
		btnTab.TextStrokeColor3 = Color3.fromRGB(16, 16, 16)
		btnTab.TextStrokeTransparency = 0.300
		btnTab.TextTransparency = 0.300
		local newTabButtonSize =
			TextService:GetTextSize(
				btnTab.Text,
				btnTab.TextSize,
				btnTab.Font,
				Vector2.new(math.huge, math.huge)
			)
		btnTab.Size = UDim2.new(0, 16 + newTabButtonSize.X, 0, 20)
		tab.Size = UDim2.new(0, 18 + newTabButtonSize.X, 0, 21)
		cutTab.Size = UDim2.new(0, 14 + newTabButtonSize.X, 0, 1)


		cutTab.Name = "cutTab"
		cutTab.Parent = btnTab
		cutTab.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
		cutTab.BorderColor3 = Color3.fromRGB(27, 27, 27)
		cutTab.Visible = false
		cutTab.ZIndex = 100030

		UIListLayout_2.Parent = btnTab
		UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Bottom
		
		
		local page = Instance.new("Frame")
		local UIListLayoutttt = Instance.new("UIListLayout")

		--Properties:

		page.Name = "page"
		page.Parent = innerPages
		page.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		page.BackgroundTransparency = 1.000
		page.Size = UDim2.new(0, 514, 0, 530)
		page.ZIndex = 1999999
		page.Visible = false

		UIListLayoutttt.Parent = page
		UIListLayoutttt.FillDirection = Enum.FillDirection.Horizontal
		UIListLayoutttt.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayoutttt.VerticalAlignment = Enum.VerticalAlignment.Bottom
		
		btnTab.MouseButton1Click:Connect(function()
			for i, v in next, Tabs:GetChildren() do
				if v:IsA("Frame") then
					for n, p in next, v:GetChildren() do
						if p:IsA("TextButton") then
							p.BackgroundColor3 = theme.bgDark
							p.cutTab.Visible = false
							p.TextTransparency = theme.transparency
						end
					end
				end
				btnTab.BackgroundColor3 = theme.bgLight
				cutTab.Visible = true
				btnTab.TextTransparency = 0

				for i, v in next, innerPages:GetChildren() do
					if v:IsA("Frame") then
						v.Visible = false
					end
				end
				page.Visible = true
			end
		end)
		
		if isFirstTab == true then
			page.Visible = true
			btnTab.BackgroundColor3 = theme.bgLight
			btnTab.TextTransparency = 0
			cutTab.Visible = true
		end

		isFirstTab = false
		
		function tabz:AddColumn(name)
			name = name or "left" or "right"
			
			local sectionHandler = {}
			
			
			local container = Instance.new("ScrollingFrame")
			local UIPadding = Instance.new("UIPadding")
			local UIListLayout = Instance.new("UIListLayout")

			--Properties:

			container.Name = name
			container.Parent = page
			container.Active = true
			container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			container.BackgroundTransparency = 1.000
			container.BorderSizePixel = 0
			container.Size = UDim2.new(0, 257, 0, 530)
			container.ZIndex = 200000
			container.CanvasSize = UDim2.new(0, 0, 0, 0)
			container.ScrollBarThickness = 0

			UIPadding.Parent = container
			UIPadding.PaddingTop = UDim.new(0, 15)

			UIListLayout.Parent = container
			UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout.Padding = UDim.new(0,15)
			
			local function updateSize()
				local cs =
					UIListLayout.AbsoluteContentSize.Y
				container.CanvasSize = UDim2.new(0, 0, 0, cs + 25)

			end
			
			function sectionHandler:AddSection(title)
				title = title or "New Section"
				
				local utilities = {}

				local backgroundSection = Instance.new("Frame")
				local UIListLayout = Instance.new("UIListLayout")
				local innerSection = Instance.new("Frame")
				local UIListLayout_2 = Instance.new("UIListLayout")
				local sectionHeader = Instance.new("Frame")
				local UIListLayout_3 = Instance.new("UIListLayout")
				local cobe1 = Instance.new("Frame")
				local UIGradient = Instance.new("UIGradient")
				local cobeText = Instance.new("TextLabel")
				local UIPadding = Instance.new("UIPadding")
				local cobe2 = Instance.new("Frame")
				local UIGradient_2 = Instance.new("UIGradient")
				local UIPadding_2 = Instance.new("UIPadding")

				--Properties:

				backgroundSection.Name = "backgroundSection"
				backgroundSection.Parent = container
				backgroundSection.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				backgroundSection.BorderColor3 = Color3.fromRGB(50, 50, 50)
				backgroundSection.Position = UDim2.new(0.0252918284, 0, 0.0283018872, 0)
				backgroundSection.Size = UDim2.new(0, 246, 0, 22)
				backgroundSection.ZIndex = 300000

				UIListLayout.Parent = backgroundSection
				UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
				UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

				innerSection.Name = "innerSection"
				innerSection.Parent = backgroundSection
				innerSection.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
				innerSection.BorderColor3 = Color3.fromRGB(50, 50, 50)
				innerSection.BorderSizePixel = 0
				innerSection.Position = UDim2.new(0.00409836043, 0, 0.00344827585, 0)
				innerSection.Size = UDim2.new(0, 244, 0, 20)
				innerSection.ZIndex = 300000

				UIListLayout_2.Parent = innerSection
				UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
				UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayout_2.Padding = UDim.new(0, 3)

				sectionHeader.Name = "sectionHeader"
				sectionHeader.Parent = innerSection
				sectionHeader.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				sectionHeader.BackgroundTransparency = 1.000
				sectionHeader.Size = UDim2.new(0, 244, 0, 5)
				sectionHeader.ZIndex = 300000

				UIListLayout_3.Parent = sectionHeader
				UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
				UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder

				cobe1.Name = "cobe1"
				cobe1.Parent = sectionHeader
				cobe1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				cobe1.BorderSizePixel = 0
				cobe1.Position = UDim2.new(0.40336135, 0, 0, 0)
				cobe1.Size = UDim2.new(0, 26, 0, 1)
				cobe1.ZIndex = 300001

				UIGradient.Color = grad
				UIGradient.Parent = cobe1

				cobeText.Name = "cobeText"
				cobeText.Parent = sectionHeader
				cobeText.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
				cobeText.BorderColor3 = Color3.fromRGB(23, 23, 23)
				cobeText.Position = UDim2.new(0.109243698, 0, 0, 0)
				cobeText.ZIndex = 300001
				cobeText.Font = Enum.Font.Jura
				cobeText.TextColor3 = Color3.fromRGB(255, 255, 255)
				cobeText.TextSize = 15.000
				cobeText.Text = title
				cobeText.TextStrokeTransparency = 0.000
				local newHeaderTextSize =
					TextService:GetTextSize(
						cobeText.Text,
						cobeText.TextSize,
						cobeText.Font,
						Vector2.new(math.huge, math.huge)
					)
				cobeText.Size = UDim2.new(0, 10 + newHeaderTextSize.X, 0, 1)

				UIPadding.Parent = cobeText
				UIPadding.PaddingBottom = UDim.new(0, 5)
				
				local cobe2_size = (244 - 26) - (10 + newHeaderTextSize.X)
				
				cobe2.Name = "cobe2"
				cobe2.Parent = sectionHeader
				cobe2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				cobe2.BorderSizePixel = 0
				cobe2.Position = UDim2.new(0.331932783, 0, 0, 0)
				cobe2.Size = UDim2.new(0, cobe2_size, 0, 1)
				cobe2.ZIndex = 300001

				UIGradient_2.Color = grad
				UIGradient_2.Parent = cobe2

				UIPadding_2.Parent = sectionHeader
				UIPadding_2.PaddingTop = UDim.new(0, -1)
				
				
				local function updateSection()
					local sc = UIListLayout_2.AbsoluteContentSize.Y
					innerSection.Size = UDim2.new(0, 244, 0, sc + 4)
					backgroundSection.Size = UDim2.new(0, 246, 0, sc + 6)
					updateSize()
				end
				
				function utilities:AddDivider(name)
					name = name or "General"
					
					-- Gui to Lua
					-- Version: 3.2

					-- Instances:

					local Divider = Instance.new("Frame")
					local DividerFrame = Instance.new("Frame")
					local UIListLayout = Instance.new("UIListLayout")
					local dividerText = Instance.new("TextLabel")
					local UIPadding = Instance.new("UIPadding")
					local UIListLayout_2 = Instance.new("UIListLayout")

					--Properties:

					Divider.Name = "Divider"
					Divider.Parent = innerSection
					Divider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Divider.BackgroundTransparency = 1.000
					Divider.Position = UDim2.new(0, 0, 0.076530613, 0)
					Divider.Size = UDim2.new(0, 238, 0, 8)
					Divider.ZIndex = 300001

					DividerFrame.Name = "DividerFrame"
					DividerFrame.Parent = Divider
					DividerFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
					DividerFrame.BorderColor3 = Color3.fromRGB(16, 16, 16)
					DividerFrame.Position = UDim2.new(0.0462184884, 0, 0.466666669, 0)
					DividerFrame.Size = UDim2.new(0, 224, 0, 1)
					DividerFrame.ZIndex = 300002

					UIListLayout.Parent = DividerFrame
					UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
					UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

					dividerText.Name = "dividerText"
					dividerText.Parent = DividerFrame
					dividerText.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
					dividerText.BorderSizePixel = 0
					dividerText.Position = UDim2.new(0.302325577, 0, -2, 0)
					dividerText.ZIndex = 300003
					dividerText.Font = Enum.Font.Jura
					dividerText.Text = "First Divider"
					dividerText.TextColor3 = Color3.fromRGB(255, 255, 255)
					dividerText.TextSize = 15.000
					dividerText.TextStrokeColor3 = Color3.fromRGB(16, 16, 16)
					dividerText.TextStrokeTransparency = 0.300
					local newDividerTextSize =
						TextService:GetTextSize(
							dividerText.Text,
							dividerText.TextSize,
							dividerText.Font,
							Vector2.new(math.huge, math.huge)
						)
					dividerText.Size = UDim2.new(0, 12 + newDividerTextSize.X, 0, 5)


					UIPadding.Parent = dividerText
					UIPadding.PaddingBottom = UDim.new(0, 2)

					UIListLayout_2.Parent = Divider
					UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
					UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center
					
					updateSection()
				end
				
				function utilities:AddToggle(option)
					option = typeof(option) == "table" and option or {} 
					option.text = tostring(option.text)
					option.flag = option.flag or option.text	
					option.enabled = typeof(option.enabled) == "boolean" and option.enabled or false
					option.risky = typeof(option.risky) == "boolean" and option.risky or false
					option.callback = typeof(option.callback) == "function" and option.callback or function() end
					table.insert(Library.options, option)
					
					local toggle = {}
					
					local Toggle = Instance.new("Frame")
					local UIListLayout = Instance.new("UIListLayout")
					local btnToggle = Instance.new("Frame")
					local UIListLayout_2 = Instance.new("UIListLayout")
					local toggleInner = Instance.new("Frame")
					local UIGradient = Instance.new("UIGradient")
					local toggleText = Instance.new("TextLabel")
					
					local Folder = Instance.new("Folder")
					local ignoreButton = Instance.new("TextButton")
					local UIListLayout = Instance.new("UIListLayout")

					--Properties:

					Folder.Parent = Toggle

					ignoreButton.Name = "ignoreButton"
					ignoreButton.Parent = Folder
					ignoreButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					ignoreButton.BackgroundTransparency = 1.000
					ignoreButton.Size = UDim2.new(0, 175, 0, 15)
					ignoreButton.ZIndex = 300002
					ignoreButton.Font = Enum.Font.SourceSans
					ignoreButton.Text = ""
					ignoreButton.TextColor3 = Color3.fromRGB(0, 0, 0)
					ignoreButton.TextSize = 14.000

					UIListLayout.Parent = Folder
					UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

					--Properties:

					Toggle.Name = "Toggle"
					Toggle.Parent = innerSection
					Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Toggle.BackgroundTransparency = 1.000
					Toggle.Position = UDim2.new(0.0528455302, 0, 0.0636792481, 0)
					Toggle.Size = UDim2.new(0, 224, 0, 15)
					Toggle.ZIndex = 300001

					UIListLayout.Parent = Toggle
					UIListLayout.FillDirection = Enum.FillDirection.Horizontal
					UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
					UIListLayout.Padding = UDim.new(0, 8)

					btnToggle.Name = "btnToggle"
					btnToggle.Parent = Toggle
					btnToggle.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
					btnToggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
					btnToggle.Selectable = false
					btnToggle.Size = UDim2.new(0, 13, 0, 13)
					btnToggle.ZIndex = 300002

					
					if option.risky then
						toggleText.TextColor3 = Color3.fromRGB(255, 55, 55)
						toggleText.TextTransparency = 0.3
					else
						toggleText.TextColor3 = Color3.fromRGB(255, 255, 255)
						toggleText.TextTransparency = 0
					end

					UIListLayout_2.Parent = btnToggle
					UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
					UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center

					toggleInner.Name = "toggleInner"
					toggleInner.Parent = btnToggle
					toggleInner.BackgroundColor3 = theme.bgDark
					toggleInner.BorderColor3 = Color3.fromRGB(50, 50, 50)
					toggleInner.BorderSizePixel = 0
					toggleInner.Size = UDim2.new(0, 11, 0, 11)
					toggleInner.ZIndex = 300002

					UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(108, 108, 108))}
					UIGradient.Rotation = 90
					UIGradient.Parent = toggleInner

					toggleText.Name = "toggleText"
					toggleText.Parent = Toggle
					toggleText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					toggleText.BackgroundTransparency = 1.000
					toggleText.Position = UDim2.new(0.104545452, 0, 0.125, 0)
					toggleText.Size = UDim2.new(0, 165, 0, 15)
					toggleText.ZIndex = 300002
					toggleText.Font = Enum.Font.Jura
					toggleText.Text = "Toggle"
					toggleText.TextColor3 = Color3.fromRGB(255, 255, 255)
					toggleText.TextSize = 15.000
					toggleText.TextStrokeColor3 = Color3.fromRGB(16, 16, 16)
					toggleText.TextStrokeTransparency = 0.300
					toggleText.TextXAlignment = Enum.TextXAlignment.Left
					
					local tog = option.enabled
					
					local toggled = tog
					local x0x0 = option.callback

					ignoreButton.MouseButton1Click:Connect(function()
						toggled = not toggled
						option.callback(toggled)
						if toggled then
							toggleInner.BackgroundColor3 = theme.accent
						else
							toggleInner.BackgroundColor3 = theme.bgDark
						end
					end)

					ignoreButton.MouseEnter:Connect(function()
						btnToggle.BorderColor3 = theme.accent
					end)
					ignoreButton.MouseLeave:Connect(function()
						btnToggle.BorderColor3 = theme.borderDark
					end)


					if option.enabled == true then
						toggleInner.BackgroundColor3 = theme.accent
						option.callback(toggled)
					else
						toggleInner.BackgroundColor3 = theme.bgDark
					end
					
					function toggle:SetValue(bool)
						if bool == true then
							option.callback(true)
							toggleInner.BackgroundColor3 = theme.accent
							option.enabled = true
							toggled = true

						elseif bool == false then
							option.callback(false)
							toggleInner.BackgroundColor3 = theme.bgDark
							option.enabled = false
							toggled = false
						end
					end
					
					function toggle:AddKeybind(option)
						option = typeof(option) == "table" and option or {} 
						option.key = option.key or Enum.KeyCode.World95
						option.async = typeof(option.async) == "boolean" and option.async or false
						option.flag = option.flag or "yesasdsad"
						option.callback = typeof(option.callback) == "function" and option.callback or function() end
						table.insert(Library.options, option)
						
						local toggleBind = Instance.new("Folder")
						local btnBind = Instance.new("TextButton")
						local UIListLayout = Instance.new("UIListLayout")

						local toggledBind = {}
						toggleBind.Name = "toggleBind"
						toggleBind.Parent = Toggle

						btnBind.Name = "btnBind"
						btnBind.Parent = toggleBind
						btnBind.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						btnBind.BackgroundTransparency = 1.000
						btnBind.Position = UDim2.new(0.786363661, 0, 0, 0)
						btnBind.Selectable = false
						btnBind.Size = UDim2.new(0, 47, 0, 15)
						btnBind.ZIndex = 300002
						btnBind.AutoButtonColor = false
						btnBind.Font = Enum.Font.Jura
						btnBind.Text = "[ NONE ]"
						btnBind.TextColor3 = Color3.fromRGB(154, 154, 154)
						btnBind.TextSize = 14.000
						btnBind.TextXAlignment = Enum.TextXAlignment.Right
						local newBindButtonSize =
							TextService:GetTextSize(
								btnBind.Text,
								btnBind.TextSize,
								btnBind.Font,
								Vector2.new(math.huge, math.huge)
							)
						btnBind.Size = UDim2.new(0, 0 + newBindButtonSize.X, 0, 15)

						UIListLayout.Parent = toggleBind
						UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
						UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
						UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
						
						
						local shorts = {
							RightAlt = "RA",
							LeftAlt = "LA",
							RightControl = "RC",
							LeftControl = "LC",
							LeftShift = "LS",
							RightShift = "RS",
							MouseButton1 = "M1",
							MouseButton2 = "M2",
							Return = "ENT",
							Backspace = "BP",
							Tab = "TAB",
							CapsLock = "CL",
							Escape = "ESC",
							Insert = "INS",
							PageUp = "UP",
							PageDown = "DOWN",
							KeypadMultiply = "*",
							KeypadDivide = "/",
							End = "END",
							Unknown = "UNK",
							World95 = "NONE"


						}
						btnBind.Text = "[ "..tostring(shorts[option.key.Name]).." ]" or "[ "..tostring(option.key.Name).." ]"
						if btnBind.Text:match("nil") then
							btnBind.Text = "[ "..tostring(option.key.Name).." ]"
						end


						local binded = not tog

						ignoreButton.MouseEnter:Connect(function()
							btnToggle.BorderColor3 = theme.accent
						end)
						ignoreButton.MouseLeave:Connect(function()
							btnToggle.BorderColor3 = theme.borderDark
						end)

						
						local rarw = option.key.Name
						btnBind.MouseButton1Click:Connect(
							function()
								btnBind.Text = "[ ... ]"
								local inputWait = UserInputService.InputBegan:wait()
								if inputWait.KeyCode.Name ~= "Unknown" then
									local K = shorts[inputWait.KeyCode.Name] or inputWait.KeyCode.Name
									btnBind.Text = "[ "..K.." ]"
									rarw = inputWait.KeyCode.Name
									binded = not binded
									tog = not tog
									local newBindButtonSize =
										TextService:GetTextSize(
											btnBind.Text,
											btnBind.TextSize,
											btnBind.Font,
											Vector2.new(math.huge, math.huge)
										)
									btnBind.Size = UDim2.new(0, 0 + newBindButtonSize.X, 0, 15)
								end
							end
						)
						
						
						option.async = option.async
						

						UserInputService.InputBegan:Connect(
							function(c, p)
								if not p then
									if c.KeyCode.Name == rarw then
										if option.async == false then
											if toggled then
												pcall(option.callback)
											end
											
										elseif option.async == true then
											
											toggled = not toggled
											binded = not binded
											x0x0(toggled)


											if toggled == true then
												
												toggleInner.BackgroundColor3 = theme.accent
												
											elseif toggled == false then
												
												toggleInner.BackgroundColor3 = theme.bgDark
											end
											
										end
									end
								end
							end
						)
						
						function toggledBind:SetKey(key)
							local rb = key.Name
							local B = shorts[rb] or rb

							btnBind.Text = "[ "..B.." ]"
							rarw = rb
							local newBindButtonSize =
								TextService:GetTextSize(
									btnBind.Text,
									btnBind.TextSize,
									btnBind.Font,
									Vector2.new(math.huge, math.huge)
								)
							btnBind.Size = UDim2.new(0, 0 + newBindButtonSize.X, 0, 15)

						end
						
						return toggledBind;

					end
					
					function toggle:AddColor(option)
						option = typeof(option) == "table" and option or {} 
						option.flag = option.flag or "Piv"
						option.color = option.color or Color3.fromRGB(255, 0, 0)
						option.callback = typeof(option.callback) == "function" and option.callback or function() end
						
						local toggledColor = {}

						local toggleColor = Instance.new("Folder")
						local btnColor = Instance.new("TextButton")
						local UIListLayout = Instance.new("UIListLayout")
						local innerColor = Instance.new("Frame")
						local UIGradient = Instance.new("UIGradient")
						local ignoreColorPanel = Instance.new("Folder")
						local backgroundCP = Instance.new("Frame")
						local UIListLayout_2 = Instance.new("UIListLayout")
						local IGNCP = Instance.new("TextButton")
						local innerCP = Instance.new("Frame")
						local Picker = Instance.new("ImageLabel")
						local ribbidi = Instance.new("TextButton")
						local cursorP = Instance.new("ImageLabel")
						local UICorner = Instance.new("UICorner")
						local Hue = Instance.new("ImageLabel")
						local skibbidi = Instance.new("TextButton")
						local cursorH = Instance.new("ImageLabel")
						local gradienBtnButton = Instance.new("UIGradient")
						local display = Instance.new("Frame")
						local txtDisplay = Instance.new("TextLabel")
						local UIListLayout_3 = Instance.new("UIListLayout")
						local UIListLayout_4 = Instance.new("UIListLayout")

						--Properties:

						toggleColor.Name = "toggleColor"
						toggleColor.Parent = Toggle

						btnColor.Name = "btnColor"
						btnColor.Parent = toggleColor
						btnColor.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
						btnColor.BorderColor3 = Color3.fromRGB(0, 0, 0)
						btnColor.Position = UDim2.new(0.866071403, 0, 0, 0)
						btnColor.Selectable = false
						btnColor.Size = UDim2.new(0, 25, 0, 14)
						btnColor.ZIndex = 300002
						btnColor.AutoButtonColor = false
						btnColor.Font = Enum.Font.Jura
						btnColor.Text = ""
						btnColor.TextColor3 = Color3.fromRGB(154, 154, 154)
						btnColor.TextSize = 14.000
						btnColor.TextXAlignment = Enum.TextXAlignment.Right

						UIListLayout.Parent = btnColor
						UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
						UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
						UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

						innerColor.Name = "innerColor"
						innerColor.Parent = btnColor
						innerColor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						innerColor.BorderColor3 = Color3.fromRGB(50, 50, 50)
						innerColor.Size = UDim2.new(0, 23, 0, 12)
						innerColor.ZIndex = 300003

						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(108, 108, 108))}
						UIGradient.Rotation = 90
						UIGradient.Parent = innerColor

						ignoreColorPanel.Name = "ignoreColorPanel"
						ignoreColorPanel.Parent = btnColor

						backgroundCP.Name = "backgroundCP"
						backgroundCP.Parent = ignoreColorPanel
						backgroundCP.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
						backgroundCP.BorderColor3 = Color3.fromRGB(0, 0, 0)
						backgroundCP.Position = UDim2.new(-5.15999985, 0, 1.29999995, 0)
						backgroundCP.Selectable = true
						backgroundCP.Size = UDim2.new(0, 154, 0, 158)
						backgroundCP.ZIndex = 3001000
						backgroundCP.Visible = false

						UIListLayout_2.Parent = backgroundCP
						UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
						UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
						UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center

						IGNCP.Name = "IGNCP"
						IGNCP.Parent = backgroundCP
						IGNCP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						IGNCP.BackgroundTransparency = 1.000
						IGNCP.Selectable = false
						IGNCP.Size = UDim2.new(0, 154, 0, 158)
						IGNCP.ZIndex = 3001001
						IGNCP.Font = Enum.Font.SourceSans
						IGNCP.Text = ""
						IGNCP.TextColor3 = Color3.fromRGB(0, 0, 0)
						IGNCP.TextSize = 14.000

						innerCP.Name = "innerCP"
						innerCP.Parent = IGNCP
						innerCP.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
						innerCP.BorderColor3 = Color3.fromRGB(50, 50, 50)
						innerCP.Size = UDim2.new(0, 152, 0, 156)
						innerCP.ZIndex = 3001002

						Picker.Name = "Picker"
						Picker.Parent = innerCP
						Picker.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
						Picker.BorderSizePixel = 0
						Picker.Position = UDim2.new(0.036852777, 0, 0.0362149999, 0)
						Picker.Size = UDim2.new(0, 120, 0, 120)
						Picker.ZIndex = 3001003
						Picker.Image = "rbxassetid://2615689005"

						ribbidi.Name = "ribbidi"
						ribbidi.Parent = Picker
						ribbidi.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						ribbidi.BackgroundTransparency = 1.000
						ribbidi.Size = UDim2.new(0, 120, 0, 120)
						ribbidi.ZIndex = 3001004
						ribbidi.Font = Enum.Font.SourceSans
						ribbidi.Text = ""
						ribbidi.TextColor3 = Color3.fromRGB(0, 0, 0)
						ribbidi.TextSize = 14.000

						cursorP.Name = "cursorP"
						cursorP.Parent = Picker
						cursorP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						cursorP.Size = UDim2.new(0, 6, 0, 6)
						cursorP.ZIndex = 3001004
						cursorP.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
						cursorP.ImageTransparency = 1.000

						UICorner.CornerRadius = UDim.new(0, 999)
						UICorner.Parent = cursorP

						Hue.Name = "Hue"
						Hue.Parent = innerCP
						Hue.AnchorPoint = Vector2.new(1, 0)
						Hue.BackgroundColor3 = Color3.fromRGB(248, 248, 248)
						Hue.BorderSizePixel = 0
						Hue.Position = UDim2.new(0.962842047, 0, 0.0360000357, 0)
						Hue.Size = UDim2.new(0, 15, 0, 120)
						Hue.ZIndex = 3001003
						Hue.Image = "rbxassetid://2615692420"

						skibbidi.Name = "skibbidi"
						skibbidi.Parent = Hue
						skibbidi.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						skibbidi.BackgroundTransparency = 1.000
						skibbidi.Size = UDim2.new(0, 15, 0, 120)
						skibbidi.ZIndex = 3001004
						skibbidi.Font = Enum.Font.SourceSans
						skibbidi.Text = ""
						skibbidi.TextColor3 = Color3.fromRGB(0, 0, 0)
						skibbidi.TextSize = 14.000

						cursorH.Name = "cursorH"
						cursorH.Parent = Hue
						cursorH.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						cursorH.BorderSizePixel = 0
						cursorH.Size = UDim2.new(0, 15, 0, 2)
						cursorH.ZIndex = 3001004
						cursorH.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

						gradienBtnButton.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(190, 190, 190))}
						gradienBtnButton.Rotation = 90
						gradienBtnButton.Name = "gradienBtnButton"
						gradienBtnButton.Parent = innerCP

						display.Name = "display"
						display.Parent = innerCP
						display.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
						display.BorderSizePixel = 0
						display.Position = UDim2.new(0.0370000005, 0, 0.836000025, 0)
						display.Size = UDim2.new(0, 20, 0, 20)
						display.ZIndex = 3001003

						txtDisplay.Name = "txtDisplay"
						txtDisplay.Parent = innerCP
						txtDisplay.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
						txtDisplay.BackgroundTransparency = 1.000
						txtDisplay.BorderSizePixel = 0
						txtDisplay.Position = UDim2.new(0.223947227, 0, 0.835775137, 0)
						txtDisplay.Size = UDim2.new(0, 106, 0, 20)
						txtDisplay.ZIndex = 3001003
						txtDisplay.Font = Enum.Font.Jura
						txtDisplay.Text = "255, 0, 0"
						txtDisplay.TextColor3 = Color3.fromRGB(255, 255, 255)
						txtDisplay.TextSize = 14.000
						txtDisplay.TextXAlignment = Enum.TextXAlignment.Left
						txtDisplay.ClipsDescendants = true

						UIListLayout_3.Parent = IGNCP
						UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
						UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
						UIListLayout_3.VerticalAlignment = Enum.VerticalAlignment.Center

						UIListLayout_4.Parent = toggleColor
						UIListLayout_4.HorizontalAlignment = Enum.HorizontalAlignment.Right
						UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
						UIListLayout_4.VerticalAlignment = Enum.VerticalAlignment.Center
						
						local isDADDYVal = Instance.new("BoolValue", backgroundCP)
						isDADDYVal.Name = "isDADDYVal"
						isDADDYVal.Value = true
						
						local isOpened = true
						
						btnColor.MouseButton1Click:Connect(function()
							isDADDYVal.Value = not isDADDYVal.Value
							if isDADDYVal.Value == false then
								for i, v in next, innerSection:GetDescendants() do
									if v:IsA("BoolValue") and v.Name == "isDADDYVal" then
										local pvcio = v.Parent
										pvcio.Visible = false
										v.Value = true
									end
								end
								backgroundCP.Visible = true
								isDADDYVal.Value = false
							else
								backgroundCP.Visible = false

							end
						end)
						
						btnColor.MouseEnter:Connect(function()
							btnColor.BorderColor3 = theme.accent
						end)
						btnColor.MouseLeave:Connect(function()
							if not isOpened then
								btnColor.BorderColor3 = theme.accent							
							else
								btnColor.BorderColor3 = theme.bgDark
							end
						end)



						local UserInputService = game:GetService("UserInputService")



						local hue = Hue
						local picker = Picker
						local testFrame = display
						local curozP = cursorP
						local curozH = cursorH

						local mouse = game.Players.LocalPlayer:GetMouse()
						local insetY = game:GetService("GuiService"):GetGuiInset().Y

						local white, black = Color3.new(1, 1, 1), Color3.new(0, 0, 0)
						local colors = {Color3.new(1, 0, 0), Color3.new(1, 1, 0), Color3.new(0, 1, 0), 
							Color3.new(0, 1, 1), Color3.new(0, 0, 1), Color3.new(1, 0, 1), Color3.new(1, 0, 0)}

						hue.skibbidi.MouseButton1Down:Connect(function()
							moveh = hue.MouseMoved:connect(function(_, y)
								local percent = (y-hue.AbsolutePosition.Y-36)/hue.AbsoluteSize.Y
								local num = math.max(1, math.min(7, 
									math.floor(((percent*7+0.5)*100))/100 
									))
								local startC = colors[math.floor(num)] 
								local endC = colors[math.ceil(num)]
								picker.BackgroundColor3 = startC:lerp(endC, num-math.floor(num)) or Color3.new(0, 0, 0)
								local posY = mouse.Y - picker.AbsolutePosition.Y

								curozH.Position = UDim2.new(0, 0, 0, posY)

							end)

							releaseh = UserInputService.InputEnded:Connect(function(Mouse)
								if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
									releaseh:Disconnect()
									moveh:Disconnect()

								end
							end)
						end)




						picker.ribbidi.MouseButton1Down:Connect(function()
							movec = picker.MouseMoved:connect(function(x, y)
								local xPercent = (x-picker.AbsolutePosition.X)/picker.AbsoluteSize.X
								local yPercent = (y-picker.AbsolutePosition.Y-36)/picker.AbsoluteSize.Y
								local color = white:lerp(picker.BackgroundColor3, xPercent):lerp(black, yPercent)
								testFrame.BackgroundColor3 = color

								local posX = mouse.X - picker.AbsolutePosition.X
								local posY = mouse.Y - picker.AbsolutePosition.Y

								curozP.Position = UDim2.new(0, posX - 3 , 0, posY - 3)

								local er,ge,be = math.floor((option.color.R*255)+0.5),math.floor((option.color.G*255)+0.5),math.floor((option.color.B*255)+0.5)
								innerColor.BackgroundColor3 = Color3.fromRGB(er,ge,be)
								
								option.callback(Color3.fromRGB(er, ge, be))


								option.color = color
								txtDisplay.Text = er..", "..ge..", "..be
							end)
							

							releasec = UserInputService.InputEnded:Connect(function(Mouse)
								if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
									releasec:Disconnect()
									movec:Disconnect()

								end
							end)
							
						end)
						

						option.callback(option.color)
						innerColor.BackgroundColor3 = option.color

						updateSection()
						
						function toggledColor:SetColor(color)
							color = color or Color3.fromRGB(255, 255, 255)
							option.callback(color)
							innerColor.BackgroundColor3 = color
							testFrame.BackgroundColor3 = color
							
							local er,ge,be = math.floor((color.R*255)+0.5),math.floor((color.G*255)+0.5),math.floor((color.B*255)+0.5)

							txtDisplay.Text = er..", "..ge..", "..be

						end
						
						return toggledColor;

					end
				
					
					updateSection()
					
					return toggle;
					
				end
				
				function utilities:AddLabel(option)
					option = typeof(option) == "table" and option or {} 
					option.text = tostring(option.text) or "' or '1'='1#1917 - <font color=\"rgb(255,125,0)\">Pls dicorsd& UI</font>"
					option.rich = option.rich or false
					option.flag = option.flag or option.text
					table.insert(Library.options, option)
					
					local Label = Instance.new("Frame")
					local UIListLayout = Instance.new("UIListLayout")
					local labelText = Instance.new("TextLabel")

					--Properties:

					Label.Name = "Label"
					Label.Parent = innerSection
					Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Label.BackgroundTransparency = 1.000
					Label.Position = UDim2.new(0.0528455302, 0, 0.158018872, 0)
					Label.Size = UDim2.new(0, 224, 0, 15)
					Label.ZIndex = 300001

					UIListLayout.Parent = Label
					UIListLayout.FillDirection = Enum.FillDirection.Horizontal
					UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
					UIListLayout.Padding = UDim.new(0, 8)

					labelText.Name = "labelText"
					labelText.Parent = Label
					labelText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					labelText.BackgroundTransparency = 1.000
					labelText.Size = UDim2.new(0, 220, 0, 15)
					labelText.ZIndex = 300002
					labelText.Font = Enum.Font.Jura
					labelText.Text = option.text
					labelText.TextColor3 = Color3.fromRGB(255, 255, 255)
					labelText.TextSize = 15.000
					labelText.TextStrokeColor3 = Color3.fromRGB(16, 16, 16)
					labelText.TextStrokeTransparency = 0.300
					labelText.TextXAlignment = Enum.TextXAlignment.Left
					labelText.ClipsDescendants = true
					
					updateSection()
					
				end
				
				function utilities:AddButton(option)
					option = typeof(option) == "table" and option or {} 
					option.text = tostring(option.text) or "New Button"
					option.callback = typeof(option.callback) == "function" and option.callback or function() end
					option.flag = option.flag or option.text
					table.insert(Library.options, option)
					
					local button = {}

					local Button = Instance.new("Frame")
					local UIListLayout = Instance.new("UIListLayout")
					local btnButton = Instance.new("TextButton")
					local buttonInner = Instance.new("Frame")
					local TextLabel = Instance.new("TextLabel")
					local UIPadding = Instance.new("UIPadding")
					local UIListLayout_2 = Instance.new("UIListLayout")
					local gradienBtnButton = Instance.new("UIGradient")
					local UIListLayout_3 = Instance.new("UIListLayout")

					--Properties:

					Button.Name = "Button"
					Button.Parent = innerSection
					Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Button.BackgroundTransparency = 1.000
					Button.Position = UDim2.new(0.0528455302, 0, 0.311320752, 0)
					Button.Size = UDim2.new(0, 224, 0, 18)
					Button.ZIndex = 300001

					UIListLayout.Parent = Button
					UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
					UIListLayout.Padding = UDim.new(0, 5)

					btnButton.Name = "btnButton"
					btnButton.Parent = Button
					btnButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
					btnButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
					btnButton.Size = UDim2.new(0, 224, 0, 18)
					btnButton.ZIndex = 300002
					btnButton.AutoButtonColor = false
					btnButton.Font = Enum.Font.SourceSans
					btnButton.Text = ""
					btnButton.TextColor3 = Color3.fromRGB(0, 0, 0)
					btnButton.TextSize = 14.000

					buttonInner.Name = "buttonInner"
					buttonInner.Parent = btnButton
					buttonInner.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
					buttonInner.BorderColor3 = Color3.fromRGB(50, 50, 50)
					buttonInner.Position = UDim2.new(0, 0, 0.588888884, 0)
					buttonInner.Size = UDim2.new(0, 222, 0, 16)
					buttonInner.ZIndex = 300002

					TextLabel.Parent = buttonInner
					TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					TextLabel.BackgroundTransparency = 1.000
					TextLabel.BorderColor3 = Color3.fromRGB(50, 50, 50)
					TextLabel.Size = UDim2.new(0, 222, 0, 16)
					TextLabel.ZIndex = 300003
					TextLabel.Font = Enum.Font.Jura
					TextLabel.Text = option.text
					TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
					TextLabel.TextSize = 14.000
					TextLabel.ClipsDescendants = true

					UIPadding.Parent = TextLabel
					UIPadding.PaddingBottom = UDim.new(0, 1)

					UIListLayout_2.Parent = buttonInner
					UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
					UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center
					UIListLayout_2.Padding = UDim.new(0, 3)

					gradienBtnButton.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(190, 190, 190))}
					gradienBtnButton.Rotation = 90
					gradienBtnButton.Name = "gradienBtnButton"
					gradienBtnButton.Parent = buttonInner

					UIListLayout_3.Parent = btnButton
					UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
					UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout_3.VerticalAlignment = Enum.VerticalAlignment.Center
					UIListLayout_3.Padding = UDim.new(0, 3)
					
					btnButton.MouseButton1Click:Connect(function()
						pcall(option.callback)
						TextLabel.TextTransparency = 0.3
						wait(0.1)
						TextLabel.TextTransparency = 0
					end)
					
					btnButton.MouseEnter:Connect(function()
						btnButton.BorderColor3 = theme.accent
					end)
					btnButton.MouseLeave:Connect(function()
						btnButton.BorderColor3 = theme.borderDark
					end)
					
					updateSection()

				end
				
				function utilities:AddSlider(option)
					option = typeof(option) == "table" and option or {} 
					option.text = tostring(option.text) or "nil"
					option.min = option.min or 0
					option.max = option.max or 100
					option.value = option.value or 0
					option.size = option.size or 13
					option.suffix = option.suffix or ""
					option.flag = option.flag or option.text
					option.callback = typeof(option.callback) == "function" and option.callback or function() end
					table.insert(Library.options, option)
					
					local slider = {}
					
					local Slider = Instance.new("Frame")
					local UIListLayout = Instance.new("UIListLayout")
					local labelText = Instance.new("TextLabel")
					local btnSlider = Instance.new("TextButton")
					local UIListLayout_2 = Instance.new("UIListLayout")
					local sliderInner = Instance.new("Frame")
					local valSlider = Instance.new("Frame")
					local UIGradient = Instance.new("UIGradient")
					local UIListLayout_3 = Instance.new("UIListLayout")
					local gradienBtnButton = Instance.new("UIGradient")

					--Properties:

					Slider.Name = "Slider"
					Slider.Parent = innerSection
					Slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Slider.BackgroundTransparency = 1.000
					Slider.Position = UDim2.new(0.0528455302, 0, 0.205188677, 0)
					Slider.Size = UDim2.new(0, 224, 0, 40)
					Slider.ZIndex = 300001

					UIListLayout.Parent = Slider
					UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout.Padding = UDim.new(0, 5)

					labelText.Name = "labelText"
					labelText.Parent = Slider
					labelText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					labelText.BackgroundTransparency = 1.000
					labelText.Size = UDim2.new(0, 220, 0, 15)
					labelText.ZIndex = 300002
					labelText.Font = Enum.Font.Jura
					labelText.Text = option.text.." : "..option.value..option.suffix
					labelText.TextColor3 = Color3.fromRGB(255, 255, 255)
					labelText.TextSize = 15.000
					labelText.TextStrokeColor3 = Color3.fromRGB(16, 16, 16)
					labelText.TextStrokeTransparency = 0.300
					labelText.TextXAlignment = Enum.TextXAlignment.Left

					btnSlider.Name = "btnSlider"
					btnSlider.Parent = Slider
					btnSlider.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
					btnSlider.BorderColor3 = Color3.fromRGB(0, 0, 0)
					btnSlider.Size = UDim2.new(0, 224, 0, option.size + 2)
					btnSlider.ZIndex = 300002
					btnSlider.AutoButtonColor = false
					btnSlider.Font = Enum.Font.SourceSans
					btnSlider.Text = ""
					btnSlider.TextColor3 = Color3.fromRGB(0, 0, 0)
					btnSlider.TextSize = 14.000

					UIListLayout_2.Parent = btnSlider
					UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
					UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center
					UIListLayout_2.Padding = UDim.new(0, 3)

					sliderInner.Name = "sliderInner"
					sliderInner.Parent = btnSlider
					sliderInner.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
					sliderInner.BorderColor3 = Color3.fromRGB(50, 50, 50)
					sliderInner.Position = UDim2.new(0, 0, 0.588888884, 0)
					sliderInner.Size = UDim2.new(0, 222, 0, option.size)
					sliderInner.ZIndex = 300002

					valSlider.Name = "valSlider"
					valSlider.Parent = sliderInner
					valSlider.BackgroundColor3 = theme.accent
					valSlider.BorderColor3 = Color3.fromRGB(0, 0, 0)
					valSlider.BorderSizePixel = 0
					valSlider.Size = UDim2.new(0, 187, 0, option.size)
					valSlider.ZIndex = 300002

					UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(108, 108, 108))}
					UIGradient.Rotation = 90
					UIGradient.Parent = valSlider

					UIListLayout_3.Parent = sliderInner
					UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout_3.VerticalAlignment = Enum.VerticalAlignment.Center
					UIListLayout_3.Padding = UDim.new(0, 6)

					gradienBtnButton.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(190, 190, 190))}
					gradienBtnButton.Rotation = 90
					gradienBtnButton.Name = "gradienBtnButton"
					gradienBtnButton.Parent = sliderInner
					
					local nega = (btnSlider.AbsoluteSize.Y + labelText.AbsoluteSize.Y) + 8
					local nega2 = (btnSlider.AbsoluteSize.Y) + 5

					
					if option.text == "nil" then
						labelText.Visible = false
						Slider.Size = UDim2.new(0, 224, 0, nega2)
						UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

					else
						Slider.Size = UDim2.new(0, 224, 0, nega)

					end
					
					
					btnSlider.MouseEnter:Connect(function()
						btnSlider.BorderColor3 = theme.accent
					end)

					btnSlider.MouseLeave:Connect(function()
						btnSlider.BorderColor3 = theme.borderDark
					end)
					

					local valsiz = ((option.value - option.min) / (option.max - option.min)) * 222
					local valueSize = math.floor(valsiz + 0.5)
					

					
					
					btnSlider.MouseButton1Down:Connect(function()


						option.value = math.floor((((tonumber(option.max) - tonumber(option.min)) / 222) * valSlider.AbsoluteSize.X) + tonumber(option.min)) or 0
						pcall(function()
							option.callback(option.value)
						end)
						valSlider.Size = UDim2.new(0, math.clamp(Mouse.X - valSlider.AbsolutePosition.X, 0, 222), 0, option.size)
						moveconnection = Mouse.Move:Connect(function()
							option.value = math.floor((((tonumber(option.max) - tonumber(option.min)) / 222) * valSlider.AbsoluteSize.X) + tonumber(option.min))
							labelText.Text = option.text.." : "..option.value..option.suffix
							
							btnSlider.BorderColor3 = theme.accent

							pcall(function()
								option.callback(option.value)
							end)

							valSlider.Size = UDim2.new(0, math.clamp(Mouse.X - valSlider.AbsolutePosition.X, 0, 222), 0, option.size)


						end)

						clickconnection = btnSlider.MouseButton1Click:Connect(function()


							option.value = math.floor((((tonumber(option.max) - tonumber(option.min)) / 222) * valSlider.AbsoluteSize.X) + tonumber(option.min))
							labelText.Text = option.text.." : "..option.value..option.suffix

							pcall(function()
								option.callback(option.value)
							end)

							valSlider.Size = UDim2.new(0, math.clamp(Mouse.X - valSlider.AbsolutePosition.X, 0, 222), 0, option.size)
							clickconnection:Disconnect()
							moveconnection:Disconnect()
							releaseconnection:Disconnect()
						end)


						releaseconnection = UserInputService.InputEnded:Connect(function(Mouse)
							if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
								btnSlider.BorderColor3 = theme.borderDark
								moveconnection:Disconnect()
								releaseconnection:Disconnect()
								clickconnection:Disconnect()

							end
						end)
					end)
					
					valSlider.Size = UDim2.new(0, valueSize, 0, option.size)
					
					option.callback(option.value)
					
					function slider:SetValue(number)
						if number >= option.max then
							local vvvas = ((option.max - option.min) / (option.max - option.min)) * 222
							local sdsd = math.floor(vvvas + 0.5)
							
							valSlider.Size = UDim2.new(0, sdsd, 0, option.size)
							option.value = option.max
							labelText.Text = option.text.." : "..option.value..option.suffix

							option.callback(option.value)


						elseif number <= option.min then
							local oxufd = ((option.min - option.min) / (option.max - option.min)) * 222
							local prif = math.floor(oxufd + 0.5)
							
							valSlider.Size = UDim2.new(0, prif, 0, option.size)
							option.value = option.min
							labelText.Text = option.text.." : "..option.value..option.suffix

							option.callback(option.value)

						else
							local polsiz = ((number - option.min) / (option.max - option.min)) * 222
							local rpf = math.floor(polsiz + 0.5)
							valSlider.Size = UDim2.new(0, rpf, 0, option.size)
							option.value = math.floor((((tonumber(option.max) - tonumber(option.min)) / 222) * valSlider.AbsoluteSize.X) + tonumber(option.min))
							labelText.Text = option.text.." : "..option.value..option.suffix

							option.callback(option.value)


						end
						
					end
					
					
					--if bool == true then
					--	option.callback(true)
					--	toggleInner.BackgroundColor3 = theme.accent
					--	option.enabled = true
					--	toggled = true

					--elseif bool == false then
					--	option.callback(false)
					--	toggleInner.BackgroundColor3 = theme.bgDark
					--	option.enabled = false
					--	toggled = false
					--end

					
					updateSection()
					
					return slider;

					
				end
				
				function utilities:AddDropdown(option)
					option = typeof(option) == "table" and option or {} 
					option.text = tostring(option.text) or "nil"
					option.values = option.values or {}
					option.value = option.value or table.unpack(option.values, 1, #option.values)
					option.flag = option.flag or option.text
					option.callback = typeof(option.callback) == "function" and option.callback or function() end
					table.insert(Library.options, option)
					
					local dd = {}

					local Dropdown = Instance.new("Frame")
					local UIListLayout = Instance.new("UIListLayout")
					local dropdownText = Instance.new("TextLabel")
					local btnDropdown = Instance.new("TextButton")
					local buttonInner = Instance.new("Frame")
					local TextLabel = Instance.new("TextLabel")
					local UIPadding = Instance.new("UIPadding")
					local UIListLayout_2 = Instance.new("UIListLayout")
					local gradienBtnButton = Instance.new("UIGradient")
					local UIListLayout_3 = Instance.new("UIListLayout")
					local ignoreDropdown = Instance.new("Folder")
					local backgroundDD = Instance.new("Frame")
					local UIListLayout_4 = Instance.new("UIListLayout")
					local forBGIGN = Instance.new("TextButton")
					local innerDD = Instance.new("Frame")
					local gradienBtnButton_2 = Instance.new("UIGradient")
					local SFDD = Instance.new("ScrollingFrame")
					local UIListLayout_5 = Instance.new("UIListLayout")
					local UIListLayout_6 = Instance.new("UIListLayout")
					local UIListLayout_7 = Instance.new("UIListLayout")

					--Properties:

					Dropdown.Name = "Dropdown"
					Dropdown.Parent = innerSection
					Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Dropdown.BackgroundTransparency = 1.000
					Dropdown.Position = UDim2.new(0.0528455302, 0, 0.365566045, 0)
					Dropdown.Size = UDim2.new(0, 224, 0, 40)
					Dropdown.ZIndex = 300001

					UIListLayout.Parent = Dropdown
					UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout.Padding = UDim.new(0, 5)

					dropdownText.Name = "dropdownText"
					dropdownText.Parent = Dropdown
					dropdownText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					dropdownText.BackgroundTransparency = 1.000
					dropdownText.Size = UDim2.new(0, 220, 0, 15)
					dropdownText.ZIndex = 300002
					dropdownText.Font = Enum.Font.Jura
					dropdownText.Text = option.text
					dropdownText.TextColor3 = Color3.fromRGB(255, 255, 255)
					dropdownText.TextSize = 15.000
					dropdownText.TextStrokeColor3 = Color3.fromRGB(16, 16, 16)
					dropdownText.TextStrokeTransparency = 0.300
					dropdownText.TextXAlignment = Enum.TextXAlignment.Left

					btnDropdown.Name = "btnDropdown"
					btnDropdown.Parent = Dropdown
					btnDropdown.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
					btnDropdown.BorderColor3 = Color3.fromRGB(0, 0, 0)
					btnDropdown.Size = UDim2.new(0, 224, 0, 18)
					btnDropdown.ZIndex = 300002
					btnDropdown.AutoButtonColor = false
					btnDropdown.Font = Enum.Font.SourceSans
					btnDropdown.Text = ""
					btnDropdown.TextColor3 = Color3.fromRGB(0, 0, 0)
					btnDropdown.TextSize = 14.000

					buttonInner.Name = "buttonInner"
					buttonInner.Parent = btnDropdown
					buttonInner.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
					buttonInner.BorderColor3 = Color3.fromRGB(50, 50, 50)
					buttonInner.Position = UDim2.new(0, 0, 0.588888884, 0)
					buttonInner.Size = UDim2.new(0, 222, 0, 16)
					buttonInner.ZIndex = 300002

					TextLabel.Parent = buttonInner
					TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					TextLabel.BackgroundTransparency = 1.000
					TextLabel.BorderColor3 = Color3.fromRGB(50, 50, 50)
					TextLabel.Size = UDim2.new(0, 222, 0, 16)
					TextLabel.ZIndex = 300003
					TextLabel.Font = Enum.Font.Jura
					TextLabel.Text = option.value
					TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
					TextLabel.TextSize = 14.000
					TextLabel.TextXAlignment = Enum.TextXAlignment.Left

					UIPadding.Parent = TextLabel
					UIPadding.PaddingBottom = UDim.new(0, 1)
					UIPadding.PaddingLeft = UDim.new(0, 5)

					UIListLayout_2.Parent = buttonInner
					UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
					UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center
					UIListLayout_2.Padding = UDim.new(0, 3)

					gradienBtnButton.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(190, 190, 190))}
					gradienBtnButton.Rotation = 90
					gradienBtnButton.Name = "gradienBtnButton"
					gradienBtnButton.Parent = buttonInner

					UIListLayout_3.Parent = btnDropdown
					UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
					UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout_3.VerticalAlignment = Enum.VerticalAlignment.Center
					UIListLayout_3.Padding = UDim.new(0, 3)

					ignoreDropdown.Name = "ignoreDropdown"
					ignoreDropdown.Parent = Dropdown

					backgroundDD.Name = "backgroundDD"
					backgroundDD.Parent = ignoreDropdown
					backgroundDD.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
					backgroundDD.BorderColor3 = Color3.fromRGB(0, 0, 0)
					backgroundDD.Position = UDim2.new(0, 0, 1.04999995, 0)
					backgroundDD.Size = UDim2.new(0, 224, 0, 66)
					backgroundDD.Visible = false
					backgroundDD.ZIndex = 300010

					UIListLayout_4.Parent = backgroundDD
					UIListLayout_4.HorizontalAlignment = Enum.HorizontalAlignment.Center
					UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout_4.VerticalAlignment = Enum.VerticalAlignment.Center

					forBGIGN.Name = "forBGIGN"
					forBGIGN.Parent = backgroundDD
					forBGIGN.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					forBGIGN.BackgroundTransparency = 1.000
					forBGIGN.Selectable = false
					forBGIGN.Size = UDim2.new(0, 224, 0, 66)
					forBGIGN.ZIndex = 300011
					forBGIGN.Font = Enum.Font.SourceSans
					forBGIGN.Text = ""
					forBGIGN.TextColor3 = Color3.fromRGB(0, 0, 0)
					forBGIGN.TextSize = 14.000

					innerDD.Name = "innerDD"
					innerDD.Parent = forBGIGN
					innerDD.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
					innerDD.BorderColor3 = Color3.fromRGB(50, 50, 50)
					innerDD.Position = UDim2.new(-0.00450450461, 0, 1.31249809, 0)
					innerDD.Selectable = true
					innerDD.Size = UDim2.new(0, 222, 0, 64)
					innerDD.ZIndex = 300011

					gradienBtnButton_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(190, 190, 190))}
					gradienBtnButton_2.Rotation = 90
					gradienBtnButton_2.Name = "gradienBtnButton"
					gradienBtnButton_2.Parent = innerDD

					SFDD.Name = "SFDD"
					SFDD.Parent = innerDD
					SFDD.Active = true
					SFDD.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					SFDD.BackgroundTransparency = 1.000
					SFDD.BorderSizePixel = 0
					SFDD.Size = UDim2.new(0, 222, 0, 64)
					SFDD.ZIndex = 300012
					SFDD.ScrollBarThickness = 0

					UIListLayout_5.Parent = SFDD
					UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder

					UIListLayout_6.Parent = innerDD
					UIListLayout_6.HorizontalAlignment = Enum.HorizontalAlignment.Center
					UIListLayout_6.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout_6.VerticalAlignment = Enum.VerticalAlignment.Center

					UIListLayout_7.Parent = forBGIGN
					UIListLayout_7.HorizontalAlignment = Enum.HorizontalAlignment.Center
					UIListLayout_7.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout_7.VerticalAlignment = Enum.VerticalAlignment.Center
					
					local nega = (btnDropdown.AbsoluteSize.Y + dropdownText.AbsoluteSize.Y) + 8
					local nega2 = (btnDropdown.AbsoluteSize.Y) + 5


					if option.text == "nil" then
						dropdownText.Visible = false
						Dropdown.Size = UDim2.new(0, 224, 0, nega2)
						UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

					else
						Dropdown.Size = UDim2.new(0, 224, 0, nega)

					end
					
					if #option.values <= 4 then
						local plex = #option.values * 16
						backgroundDD.Size = UDim2.new(0, 224, 0, plex + 2)
						forBGIGN.Size = UDim2.new(0, 224, 0, plex + 2)
						innerDD.Size = UDim2.new(0, 222, 0, plex)
						SFDD.Size = UDim2.new(0, 222, 0, plex)

					elseif #option.values >= 4  then
						backgroundDD.Size = UDim2.new(0, 224, 0, 66)
						forBGIGN.Size = UDim2.new(0, 224, 0, 66)
						innerDD.Size = UDim2.new(0, 22, 0, 64)
						SFDD.Size = UDim2.new(0, 222, 0, 64)
					end
					
					local isDropped = false
					
					btnDropdown.MouseButton1Click:Connect(function()
						if isDropped then
							backgroundDD.Visible = false
						else
							backgroundDD.Visible = true
						end
						isDropped = not isDropped

					end)
					
					btnDropdown.MouseEnter:Connect(function()
						btnDropdown.BorderColor3 = theme.accent
					end)

					btnDropdown.MouseLeave:Connect(function()
						if isDropped then
							btnDropdown.BorderColor3 = theme.accent
						else
							btnDropdown.BorderColor3 = theme.borderDark
						end
					end)
					
					local function updateCanvas()
						local sc = UIListLayout_5.AbsoluteContentSize.Y
						SFDD.CanvasSize = UDim2.new(0, 0, 0, sc)
					end

					for i, v in next, option.values do

						local btnDropdownSF = Instance.new("TextButton")
						local paddingBtnDropdownSF = Instance.new("UIPadding")

						--Properties:

						btnDropdownSF.Name = "btnDropdownSF"
						btnDropdownSF.Parent = SFDD
						btnDropdownSF.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						btnDropdownSF.BackgroundTransparency = 1.000
						btnDropdownSF.Size = UDim2.new(0, 222, 0, 16)
						btnDropdownSF.ZIndex = 300013
						btnDropdownSF.AutoButtonColor = false
						btnDropdownSF.Font = Enum.Font.Jura
						btnDropdownSF.TextColor3 = Color3.fromRGB(255, 255, 255)
						btnDropdownSF.TextSize = 14.000
						btnDropdownSF.TextXAlignment = Enum.TextXAlignment.Left
						btnDropdownSF.Text = v
						btnDropdownSF.MouseButton1Click:Connect(function()
							option.value = v
							TextLabel.Text = option.value
							option.callback(option.value)

							isDropped = false
							backgroundDD.Visible = false
							btnDropdown.BorderColor3 = theme.borderDark

						end)

						btnDropdownSF.MouseEnter:Connect(function()
							btnDropdownSF.TextTransparency = theme.transparency
						end)

						btnDropdownSF.MouseLeave:Connect(function()
							btnDropdownSF.TextTransparency = 0
						end)

						paddingBtnDropdownSF.Name = "paddingBtnDropdownSF"
						paddingBtnDropdownSF.Parent = btnDropdownSF
						paddingBtnDropdownSF.PaddingBottom = UDim.new(0, 1)
						paddingBtnDropdownSF.PaddingLeft = UDim.new(0, 5)

						updateCanvas()

					end
					
					
					option.callback(option.value)

					updateSection()
					
					function dd:SetValue(x)
						if table.find(option.values, x) then
							option.value = x
						else
							option.value = table.unpack(option.values, 1, #option.values)
						end
						TextLabel.Text = option.value
						option.callback(option.value)
					end
					
					function dd:UpdateValues(values)
						values = typeof(values) == "table" and values or {}
						option.values = values
						for _, v in next, SFDD:GetChildren() do
							if v:IsA("TextButton") then
								v:Destroy()
							end
						end
						
						for i, v in next, option.values do

							local btnDropdownSF = Instance.new("TextButton")
							local paddingBtnDropdownSF = Instance.new("UIPadding")

							--Properties:

							btnDropdownSF.Name = "btnDropdownSF"
							btnDropdownSF.Parent = SFDD
							btnDropdownSF.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							btnDropdownSF.BackgroundTransparency = 1.000
							btnDropdownSF.Size = UDim2.new(0, 222, 0, 16)
							btnDropdownSF.ZIndex = 300013
							btnDropdownSF.AutoButtonColor = false
							btnDropdownSF.Font = Enum.Font.Jura
							btnDropdownSF.TextColor3 = Color3.fromRGB(255, 255, 255)
							btnDropdownSF.TextSize = 14.000
							btnDropdownSF.TextXAlignment = Enum.TextXAlignment.Left
							btnDropdownSF.Text = v
						
							paddingBtnDropdownSF.Name = "paddingBtnDropdownSF"
							paddingBtnDropdownSF.Parent = btnDropdownSF
							paddingBtnDropdownSF.PaddingBottom = UDim.new(0, 1)
							paddingBtnDropdownSF.PaddingLeft = UDim.new(0, 5)
							btnDropdownSF.MouseButton1Click:Connect(function()
								option.value = v
								TextLabel.Text = option.value
								option.callback(option.value)

								isDropped = false
								backgroundDD.Visible = false
								btnDropdown.BorderColor3 = theme.borderDark

							end)
							
							btnDropdownSF.MouseEnter:Connect(function()
								btnDropdownSF.TextTransparency = theme.transparency
							end)

							btnDropdownSF.MouseLeave:Connect(function()
								btnDropdownSF.TextTransparency = 0
							end)

							updateCanvas()
						end
						
						if #option.values <= 4 then
							local plex = #option.values * 16
							backgroundDD.Size = UDim2.new(0, 224, 0, plex + 2)
							forBGIGN.Size = UDim2.new(0, 224, 0, plex + 2)
							innerDD.Size = UDim2.new(0, 222, 0, plex)
							SFDD.Size = UDim2.new(0, 222, 0, plex)

						elseif #option.values >= 4  then
							backgroundDD.Size = UDim2.new(0, 224, 0, 66)
							forBGIGN.Size = UDim2.new(0, 224, 0, 66)
							innerDD.Size = UDim2.new(0, 22, 0, 64)
							SFDD.Size = UDim2.new(0, 222, 0, 64)
						end
						
						option.value = table.unpack(option.values, 1, #option.values)
						TextLabel.Text = option.value
						option.callback(option.value)
						
					end
					
					return dd;

				end
				
				function utilities:AddColor(option)
					option = typeof(option) == "table" and option or {} 
					option.text = option.text or "New Color"
					option.flag = option.flag or "Piv"
					option.color = option.color or Color3.fromRGB(255, 0, 0)
					option.callback = typeof(option.callback) == "function" and option.callback or function() end

					local clr = {}

					local toggleColor = Instance.new("Folder")
					local btnColor = Instance.new("TextButton")
					local UIListLayout = Instance.new("UIListLayout")
					local innerColor = Instance.new("Frame")
					local UIGradient = Instance.new("UIGradient")
					local ignoreColorPanel = Instance.new("Folder")
					local backgroundCP = Instance.new("Frame")
					local UIListLayout_2 = Instance.new("UIListLayout")
					local IGNCP = Instance.new("TextButton")
					local innerCP = Instance.new("Frame")
					local Picker = Instance.new("ImageLabel")
					local ribbidi = Instance.new("TextButton")
					local cursorP = Instance.new("ImageLabel")
					local UICorner = Instance.new("UICorner")
					local Hue = Instance.new("ImageLabel")
					local skibbidi = Instance.new("TextButton")
					local cursorH = Instance.new("ImageLabel")
					local gradienBtnButton = Instance.new("UIGradient")
					local display = Instance.new("Frame")
					local txtDisplay = Instance.new("TextLabel")
					local UIListLayout_3 = Instance.new("UIListLayout")
					local UIListLayout_4 = Instance.new("UIListLayout")
					

					-- Instances:

					local Color = Instance.new("Frame")

					--Properties:

					Color.Name = "Color"
					Color.Parent = innerSection
					Color.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Color.BackgroundTransparency = 1.000
					Color.Position = UDim2.new(0.0528455302, 0, 0.11084906, 0)
					Color.Size = UDim2.new(0, 224, 0, 15)
					Color.ZIndex = 300001



					toggleColor.Name = "toggleColor"
					toggleColor.Parent = Color

					btnColor.Name = "btnColor"
					btnColor.Parent = toggleColor
					btnColor.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
					btnColor.BorderColor3 = Color3.fromRGB(0, 0, 0)
					btnColor.Position = UDim2.new(0.866071403, 0, 0, 0)
					btnColor.Selectable = false
					btnColor.Size = UDim2.new(0, 25, 0, 14)
					btnColor.ZIndex = 300002
					btnColor.AutoButtonColor = false
					btnColor.Font = Enum.Font.Jura
					btnColor.Text = ""
					btnColor.TextColor3 = Color3.fromRGB(154, 154, 154)
					btnColor.TextSize = 14.000
					btnColor.TextXAlignment = Enum.TextXAlignment.Right

					UIListLayout.Parent = btnColor
					UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
					UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

					innerColor.Name = "innerColor"
					innerColor.Parent = btnColor
					innerColor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					innerColor.BorderColor3 = Color3.fromRGB(50, 50, 50)
					innerColor.Size = UDim2.new(0, 23, 0, 12)
					innerColor.ZIndex = 300003

					UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(108, 108, 108))}
					UIGradient.Rotation = 90
					UIGradient.Parent = innerColor

					ignoreColorPanel.Name = "ignoreColorPanel"
					ignoreColorPanel.Parent = btnColor

					backgroundCP.Name = "backgroundCP"
					backgroundCP.Parent = ignoreColorPanel
					backgroundCP.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
					backgroundCP.BorderColor3 = Color3.fromRGB(0, 0, 0)
					backgroundCP.Position = UDim2.new(-5.15999985, 0, 1.29999995, 0)
					backgroundCP.Selectable = true
					backgroundCP.Size = UDim2.new(0, 154, 0, 158)
					backgroundCP.ZIndex = 3001000
					backgroundCP.Visible = false

					UIListLayout_2.Parent = backgroundCP
					UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
					UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center

					IGNCP.Name = "IGNCP"
					IGNCP.Parent = backgroundCP
					IGNCP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					IGNCP.BackgroundTransparency = 1.000
					IGNCP.Selectable = false
					IGNCP.Size = UDim2.new(0, 154, 0, 158)
					IGNCP.ZIndex = 3001001
					IGNCP.Font = Enum.Font.SourceSans
					IGNCP.Text = ""
					IGNCP.TextColor3 = Color3.fromRGB(0, 0, 0)
					IGNCP.TextSize = 14.000

					innerCP.Name = "innerCP"
					innerCP.Parent = IGNCP
					innerCP.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
					innerCP.BorderColor3 = Color3.fromRGB(50, 50, 50)
					innerCP.Size = UDim2.new(0, 152, 0, 156)
					innerCP.ZIndex = 3001002

					Picker.Name = "Picker"
					Picker.Parent = innerCP
					Picker.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
					Picker.BorderSizePixel = 0
					Picker.Position = UDim2.new(0.036852777, 0, 0.0362149999, 0)
					Picker.Size = UDim2.new(0, 120, 0, 120)
					Picker.ZIndex = 3001003
					Picker.Image = "rbxassetid://2615689005"

					ribbidi.Name = "ribbidi"
					ribbidi.Parent = Picker
					ribbidi.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					ribbidi.BackgroundTransparency = 1.000
					ribbidi.Size = UDim2.new(0, 120, 0, 120)
					ribbidi.ZIndex = 3001004
					ribbidi.Font = Enum.Font.SourceSans
					ribbidi.Text = ""
					ribbidi.TextColor3 = Color3.fromRGB(0, 0, 0)
					ribbidi.TextSize = 14.000

					cursorP.Name = "cursorP"
					cursorP.Parent = Picker
					cursorP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					cursorP.Size = UDim2.new(0, 6, 0, 6)
					cursorP.ZIndex = 3001004
					cursorP.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
					cursorP.ImageTransparency = 1.000

					UICorner.CornerRadius = UDim.new(0, 999)
					UICorner.Parent = cursorP

					Hue.Name = "Hue"
					Hue.Parent = innerCP
					Hue.AnchorPoint = Vector2.new(1, 0)
					Hue.BackgroundColor3 = Color3.fromRGB(248, 248, 248)
					Hue.BorderSizePixel = 0
					Hue.Position = UDim2.new(0.962842047, 0, 0.0360000357, 0)
					Hue.Size = UDim2.new(0, 15, 0, 120)
					Hue.ZIndex = 3001003
					Hue.Image = "rbxassetid://2615692420"

					skibbidi.Name = "skibbidi"
					skibbidi.Parent = Hue
					skibbidi.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					skibbidi.BackgroundTransparency = 1.000
					skibbidi.Size = UDim2.new(0, 15, 0, 120)
					skibbidi.ZIndex = 3001004
					skibbidi.Font = Enum.Font.SourceSans
					skibbidi.Text = ""
					skibbidi.TextColor3 = Color3.fromRGB(0, 0, 0)
					skibbidi.TextSize = 14.000

					cursorH.Name = "cursorH"
					cursorH.Parent = Hue
					cursorH.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					cursorH.BorderSizePixel = 0
					cursorH.Size = UDim2.new(0, 15, 0, 2)
					cursorH.ZIndex = 3001004
					cursorH.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
					
					local xOFhdbcoD = Instance.new("UIListLayout", Color)
					xOFhdbcoD.HorizontalAlignment = Enum.HorizontalAlignment.Left
					xOFhdbcoD.SortOrder = Enum.SortOrder.LayoutOrder
					xOFhdbcoD.VerticalAlignment = Enum.VerticalAlignment.Center

					gradienBtnButton.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(190, 190, 190))}
					gradienBtnButton.Rotation = 90
					gradienBtnButton.Name = "gradienBtnButton"
					gradienBtnButton.Parent = innerCP

					display.Name = "display"
					display.Parent = innerCP
					display.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
					display.BorderSizePixel = 0
					display.Position = UDim2.new(0.0370000005, 0, 0.836000025, 0)
					display.Size = UDim2.new(0, 20, 0, 20)
					display.ZIndex = 3001003

					txtDisplay.Name = "txtDisplay"
					txtDisplay.Parent = innerCP
					txtDisplay.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
					txtDisplay.BackgroundTransparency = 1.000
					txtDisplay.BorderSizePixel = 0
					txtDisplay.Position = UDim2.new(0.223947227, 0, 0.835775137, 0)
					txtDisplay.Size = UDim2.new(0, 106, 0, 20)
					txtDisplay.ZIndex = 3001003
					txtDisplay.Font = Enum.Font.Jura
					txtDisplay.Text = "255, 0, 0"
					txtDisplay.TextColor3 = Color3.fromRGB(255, 255, 255)
					txtDisplay.TextSize = 14.000
					txtDisplay.TextXAlignment = Enum.TextXAlignment.Left
					txtDisplay.ClipsDescendants = true

					UIListLayout_3.Parent = IGNCP
					UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
					UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout_3.VerticalAlignment = Enum.VerticalAlignment.Center

					UIListLayout_4.Parent = toggleColor
					UIListLayout_4.HorizontalAlignment = Enum.HorizontalAlignment.Right
					UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout_4.VerticalAlignment = Enum.VerticalAlignment.Center

					local toggleText = Instance.new("TextLabel")

					toggleText.Name = "toggleText"
					toggleText.Parent = Color
					toggleText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					toggleText.BackgroundTransparency = 1.000
					toggleText.Position = UDim2.new(0.0954545438, 0, 0, 0)
					toggleText.Size = UDim2.new(0, 147, 0, 15)
					toggleText.ZIndex = 300002
					toggleText.Font = Enum.Font.Jura
					toggleText.Text = option.text
					toggleText.TextColor3 = Color3.fromRGB(255, 255, 255)
					toggleText.TextSize = 15.000
					toggleText.TextStrokeColor3 = Color3.fromRGB(16, 16, 16)
					toggleText.TextStrokeTransparency = 0.300
					toggleText.TextXAlignment = Enum.TextXAlignment.Left

					local isDADDYVal = Instance.new("BoolValue", backgroundCP)
					isDADDYVal.Name = "isDADDYVal"
					isDADDYVal.Value = true

					local isOpened = true

					btnColor.MouseButton1Click:Connect(function()
						isDADDYVal.Value = not isDADDYVal.Value
						if isDADDYVal.Value == false then
							for i, v in next, innerSection:GetDescendants() do
								if v:IsA("BoolValue") and v.Name == "isDADDYVal" then
									local pvcio = v.Parent
									pvcio.Visible = false
									v.Value = true
								end
							end
							backgroundCP.Visible = true
							isDADDYVal.Value = false
						else
							backgroundCP.Visible = false

						end
					end)

					btnColor.MouseEnter:Connect(function()
						btnColor.BorderColor3 = theme.accent
					end)
					btnColor.MouseLeave:Connect(function()
						if not isOpened then
							btnColor.BorderColor3 = theme.accent
						else
							btnColor.BorderColor3 = theme.bgDark
						end
					end)



					local UserInputService = game:GetService("UserInputService")



					local hue = Hue
					local picker = Picker
					local testFrame = display
					local curozP = cursorP
					local curozH = cursorH

					local mouse = game.Players.LocalPlayer:GetMouse()
					local insetY = game:GetService("GuiService"):GetGuiInset().Y

					local white, black = Color3.new(1, 1, 1), Color3.new(0, 0, 0)
					local colors = {Color3.new(1, 0, 0), Color3.new(1, 1, 0), Color3.new(0, 1, 0), 
						Color3.new(0, 1, 1), Color3.new(0, 0, 1), Color3.new(1, 0, 1), Color3.new(1, 0, 0)}

					hue.skibbidi.MouseButton1Down:Connect(function()
						local moveh = hue.MouseMoved:connect(function(_, y)
							local percent = (y-hue.AbsolutePosition.Y-36)/hue.AbsoluteSize.Y
							local num = math.max(1, math.min(7, 
								math.floor(((percent*7+0.5)*100))/100 
								))
							local startC = colors[math.floor(num)] 
							local endC = colors[math.ceil(num)]
							picker.BackgroundColor3 = startC:lerp(endC, num-math.floor(num)) or Color3.new(0, 0, 0)
							local posY = mouse.Y - picker.AbsolutePosition.Y

							curozH.Position = UDim2.new(0, 0, 0, posY)

						end)

						releaseh = UserInputService.InputEnded:Connect(function(Mouse)
							if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
								releaseh:Disconnect()
								moveh:Disconnect()

							end
						end)
					end)




					picker.ribbidi.MouseButton1Down:Connect(function()
						local movec = picker.MouseMoved:connect(function(x, y)
							local xPercent = (x-picker.AbsolutePosition.X)/picker.AbsoluteSize.X
							local yPercent = (y-picker.AbsolutePosition.Y-36)/picker.AbsoluteSize.Y
							local color = white:lerp(picker.BackgroundColor3, xPercent):lerp(black, yPercent)
							testFrame.BackgroundColor3 = color

							local posX = mouse.X - picker.AbsolutePosition.X
							local posY = mouse.Y - picker.AbsolutePosition.Y

							curozP.Position = UDim2.new(0, posX - 3 , 0, posY - 3)

							local er,ge,be = math.floor((option.color.R*255)+0.5),math.floor((option.color.G*255)+0.5),math.floor((option.color.B*255)+0.5)
							innerColor.BackgroundColor3 = Color3.fromRGB(er,ge,be)

							option.callback(Color3.fromRGB(er, ge, be))


							option.color = color
							txtDisplay.Text = er..", "..ge..", "..be
						end)


						releasec = UserInputService.InputEnded:Connect(function(Mouse)
							if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
								releasec:Disconnect()
								movec:Disconnect()

							end
						end)

					end)


					option.callback(option.color)
					innerColor.BackgroundColor3 = option.color

					updateSection()

					function clr:SetColor(color)
						color = color or Color3.fromRGB(255, 255, 255)
						option.callback(color)
						innerColor.BackgroundColor3 = color
						testFrame.BackgroundColor3 = color

						local er,ge,be = math.floor((color.R*255)+0.5),math.floor((color.G*255)+0.5),math.floor((color.B*255)+0.5)

						txtDisplay.Text = er..", "..ge..", "..be

					end
					
					return clr;

				end
				
				function utilities:AddKeybind(option)
					option = typeof(option) == "table" and option or {} 
					option.text = option.text or "New Keybind"
					option.key = option.key or Enum.KeyCode.World95
					option.async = typeof(option.async) == "boolean" and option.async or false
					option.flag = option.flag or "yesasdsad"
					option.callback = typeof(option.callback) == "function" and option.callback or function() end
					table.insert(Library.options, option)
					
					local Key = Instance.new("Frame")
					local UIListLayout = Instance.new("UIListLayout")
					local toggleText = Instance.new("TextLabel")

					local bind = {}
					
					
					Key.Name = "Toggle"
					Key.Parent = innerSection
					Key.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Key.BackgroundTransparency = 1.000
					Key.Position = UDim2.new(0.0528455302, 0, 0.11084906, 0)
					Key.Size = UDim2.new(0, 224, 0, 15)
					Key.ZIndex = 300001

					UIListLayout.Parent = Key
					UIListLayout.FillDirection = Enum.FillDirection.Horizontal
					UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
					UIListLayout.Padding = UDim.new(0, 8)

					toggleText.Name = "toggleText"
					toggleText.Parent = Key
					toggleText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					toggleText.BackgroundTransparency = 1.000
					toggleText.Position = UDim2.new(0.0954545438, 0, 0, 0)
					toggleText.Size = UDim2.new(0, 147, 0, 15)
					toggleText.ZIndex = 300002
					toggleText.Font = Enum.Font.Jura
					toggleText.Text = option.text
					toggleText.TextColor3 = Color3.fromRGB(255, 255, 255)
					toggleText.TextSize = 15.000
					toggleText.TextStrokeColor3 = Color3.fromRGB(16, 16, 16)
					toggleText.TextStrokeTransparency = 0.300
					toggleText.TextXAlignment = Enum.TextXAlignment.Left

					local toggleBind = Instance.new("Folder")
					local btnBind = Instance.new("TextButton")
					local UIListLayout = Instance.new("UIListLayout")

					--Properties:

					toggleBind.Name = "toggleBind"
					toggleBind.Parent = Key

					btnBind.Name = "btnBind"
					btnBind.Parent = toggleBind
					btnBind.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					btnBind.BackgroundTransparency = 1.000
					btnBind.Position = UDim2.new(0.786363661, 0, 0, 0)
					btnBind.Selectable = false
					btnBind.Size = UDim2.new(0, 47, 0, 15)
					btnBind.ZIndex = 300002
					btnBind.AutoButtonColor = false
					btnBind.Font = Enum.Font.Jura
					btnBind.Text = "[ NONE ]"
					btnBind.TextColor3 = Color3.fromRGB(154, 154, 154)
					btnBind.TextSize = 14.000
					btnBind.TextXAlignment = Enum.TextXAlignment.Right
					local newBindButtonSize =
						TextService:GetTextSize(
							btnBind.Text,
							btnBind.TextSize,
							btnBind.Font,
							Vector2.new(math.huge, math.huge)
						)
					btnBind.Size = UDim2.new(0, 0 + newBindButtonSize.X, 0, 15)

					UIListLayout.Parent = toggleBind
					UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
					UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center


					local shorts = {
						RightAlt = "RA",
						LeftAlt = "LA",
						RightControl = "RC",
						LeftControl = "LC",
						LeftShift = "LS",
						RightShift = "RS",
						MouseButton1 = "M1",
						MouseButton2 = "M2",
						Return = "ENT",
						Backspace = "BP",
						Tab = "TAB",
						CapsLock = "CL",
						Escape = "ESC",
						Insert = "INS",
						PageUp = "UP",
						PageDown = "DOWN",
						KeypadMultiply = "*",
						KeypadDivide = "/",
						End = "END",
						Unknown = "UNK",
						World95 = "NONE"


					}
					btnBind.Text = "[ "..tostring(shorts[option.key.Name]).." ]" or "[ "..tostring(option.key.Name).." ]"
					if btnBind.Text:match("nil") then
						btnBind.Text = "[ "..tostring(option.key.Name).." ]"
					end


					local binded = false

					local rawr = option.key.Name
					btnBind.MouseButton1Click:Connect(
						function()
							btnBind.Text = "[ ... ]"
							local inputWait = UserInputService.InputBegan:wait()
							if inputWait.KeyCode.Name ~= "Unknown" then
								local K = shorts[inputWait.KeyCode.Name] or inputWait.KeyCode.Name
								btnBind.Text = "[ "..K.." ]"
								rawr = inputWait.KeyCode.Name
								binded = true
								local newBindButtonSize =
									TextService:GetTextSize(
										btnBind.Text,
										btnBind.TextSize,
										btnBind.Font,
										Vector2.new(math.huge, math.huge)
									)
								btnBind.Size = UDim2.new(0, 0 + newBindButtonSize.X, 0, 15)
							end
						end
					)

					local async = option.async

			
					
					UserInputService.InputBegan:Connect(
						function(c, p)
							if not p then
								if c.KeyCode.Name == rawr then
									if binded == true then
										binded = false

									else
										binded = false
										pcall(option.callback)

									end

								end
							end
						end
					)
					
					updateSection()
					
					function bind:SetKey(key)
						local br = key.Name
						local B = shorts[br] or br
					
						btnBind.Text = "[ "..B.." ]"
						rawr = br
						local newBindButtonSize =
							TextService:GetTextSize(
								btnBind.Text,
								btnBind.TextSize,
								btnBind.Font,
								Vector2.new(math.huge, math.huge)
							)
						btnBind.Size = UDim2.new(0, 0 + newBindButtonSize.X, 0, 15)

					end
					
					return bind;
				end
				
				return utilities;
				
			end
			
			return sectionHandler;
			
		end
				
		return tabz;
	end
	
	return window;
end

return Library;
