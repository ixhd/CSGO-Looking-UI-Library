-- // Functions

if not game:IsLoaded() then
	game.Loaded:Wait()
end

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

local parentCanBe = game:GetService("CoreGui")

local ProtectGui = protectgui or (syn and syn.protect_gui) or (function() end);

local ScreenGui = Instance.new('ScreenGui');
ProtectGui(ScreenGui);

ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global;
ScreenGui.Parent = parentCanBe
ScreenGui.ResetOnSpawn = false


local library = {
	flags = {},
	options = {},
	coloprickers = {},
	folders = {
		main = "ice.lua",
		assets = "ice.lua/Assets"
	},
	stats = {
		['FPS'] = 0,
		['Ping'] = 0
	},
	fileExtensions = {
		pAqSjDIk9pHRLlCHt7iG5ZOeAxHHVzMO9KEawh9RJdtcP9BFqmO0hpSAIQ0pASgaEuUt2fssuuIeGGvyWHYuxGSCdMyQPNTggecquin1PU3YdQ3JAiksNv7yudQpIHUP6vIcEQr4NnoACki46dhKMT7zpCahkdxSQXILxRUcA6XoxVjWYrsNUI29qMOR4U4P56oixAiR3qTuGRKgBQOokuy425R6Sx74rye5hsQSGBCDBqDvPEUDaDTUg2XWAxJrADkM6A0h4SDrA5HHVjiE9vWWXkp0T6uddXoz1UIN7SFW5uOXI = "._"
	},
	domain = ".lua",
}

local isFirstTab = true

local theme = {
	accent = Color3.fromRGB(0, 145, 255),
	bgLight = Color3.fromRGB(27,27,27),
	bgDark = Color3.fromRGB(23,23,23),
	borderLight = Color3.fromRGB(50,50,50),
	borderDark = Color3.fromRGB(0,0,0),
	stroke = Color3.fromRGB(16,16,16),
	transparency = 0.3,
	text = Color3.fromRGB(255,255,255), 
	font = Enum.Font.Jura
}

function library:New(title)
	title = title or "ice"..library.domain

	local backgroundDesign = Instance.new("Frame")
	local layoutBackgroundDesign = Instance.new("UIListLayout")
	local innerDesign = Instance.new("Frame")
	local layourInnerDesign = Instance.new("UIListLayout")
	local Header = Instance.new("TextLabel")
	local UIPadding = Instance.new("UIPadding")
	local Canvas = Instance.new("Frame")
	local layoutCanvas = Instance.new("UIListLayout")
	local InnerCanvas = Instance.new("Frame")
	local layoutInnerCanvas = Instance.new("UIListLayout")
	local Main = Instance.new("Frame")
	local layoutMain = Instance.new("UIListLayout")
	local Tabs = Instance.new("Frame")
	local layoutTabs = Instance.new("UIListLayout")
	local Pages = Instance.new("Frame")
	local layoutPages = Instance.new("UIListLayout")
	local innerPages = Instance.new("Frame")
	local layoutInnerPages = Instance.new("UIListLayout")
	
	toggleWindow = backgroundDesign

	backgroundDesign.Name = "backgroundDesign"
	backgroundDesign.Parent = ScreenGui
	backgroundDesign.BackgroundColor3 = theme.accent
	backgroundDesign.BorderColor3 = theme.borderDark
	backgroundDesign.Position = UDim2.new(0.441099465, 0, 0.184466004, 0)
	backgroundDesign.Size = UDim2.new(0, 555, 0, 610)

	layoutBackgroundDesign.Name = "layoutBackgroundDesign"
	layoutBackgroundDesign.Parent = backgroundDesign
	layoutBackgroundDesign.HorizontalAlignment = Enum.HorizontalAlignment.Center
	layoutBackgroundDesign.SortOrder = Enum.SortOrder.LayoutOrder
	layoutBackgroundDesign.VerticalAlignment = Enum.VerticalAlignment.Center

	innerDesign.Name = "innerDesign"
	innerDesign.Parent = backgroundDesign
	innerDesign.BackgroundColor3 = theme.bgLight
	innerDesign.BorderColor3 = theme.borderLight
	innerDesign.BorderSizePixel = 0
	innerDesign.Position = UDim2.new(0.441099465, 0, 0.184466004, 0)
	innerDesign.Size = UDim2.new(0, 553, 0, 608)

	layourInnerDesign.Name = "layourInnerDesign"
	layourInnerDesign.Parent = innerDesign
	layourInnerDesign.HorizontalAlignment = Enum.HorizontalAlignment.Center
	layourInnerDesign.SortOrder = Enum.SortOrder.LayoutOrder

	Header.Name = "Header"
	Header.Parent = innerDesign
	Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Header.BackgroundTransparency = 1.000
	Header.Position = UDim2.new(-0.254068702, 0, 0.458881587, 0)
	Header.Size = UDim2.new(0, 553, 0, 25)
	Header.Font = Enum.Font.Jura
	Header.Text = title
	Header.TextColor3 = theme.text
	Header.TextSize = 16.000
	Header.TextStrokeColor3 = theme.stroke
	Header.TextStrokeTransparency = theme.transparency
	Header.TextXAlignment = Enum.TextXAlignment.Left
	Header.RichText = true

	UIPadding.Parent = Header
	UIPadding.PaddingBottom = UDim.new(0, 1)
	UIPadding.PaddingLeft = UDim.new(0, 7)

	Canvas.Name = "Canvas"
	Canvas.Parent = innerDesign
	Canvas.BackgroundColor3 = theme.borderDark
	Canvas.BorderColor3 = theme.borderLight
	Canvas.Position = UDim2.new(0.0126582282, 0, 0.0411184207, 0)
	Canvas.Size = UDim2.new(0, 537, 0, 576)

	layoutCanvas.Name = "layoutCanvas"
	layoutCanvas.Parent = Canvas
	layoutCanvas.HorizontalAlignment = Enum.HorizontalAlignment.Center
	layoutCanvas.SortOrder = Enum.SortOrder.LayoutOrder
	layoutCanvas.VerticalAlignment = Enum.VerticalAlignment.Center

	InnerCanvas.Name = "InnerCanvas"
	InnerCanvas.Parent = Canvas
	InnerCanvas.BackgroundColor3 = theme.bgDark
	InnerCanvas.BorderColor3 = theme.borderLight
	InnerCanvas.BorderSizePixel = 0
	InnerCanvas.Position = UDim2.new(-0.0171369314, 0, 0.0254934207, 0)
	InnerCanvas.Size = UDim2.new(0, 535, 0, 574)

	layoutInnerCanvas.Name = "layoutInnerCanvas"
	layoutInnerCanvas.Parent = InnerCanvas
	layoutInnerCanvas.HorizontalAlignment = Enum.HorizontalAlignment.Center
	layoutInnerCanvas.SortOrder = Enum.SortOrder.LayoutOrder
	layoutInnerCanvas.VerticalAlignment = Enum.VerticalAlignment.Center

	Main.Name = "Main"
	Main.Parent = InnerCanvas
	Main.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
	Main.BackgroundTransparency = 1.000
	Main.BorderColor3 = theme.borderLight
	Main.BorderSizePixel = 0
	Main.Size = UDim2.new(0, 521, 0, 560)

	layoutMain.Name = "layoutMain"
	layoutMain.Parent = Main
	layoutMain.HorizontalAlignment = Enum.HorizontalAlignment.Center
	layoutMain.SortOrder = Enum.SortOrder.LayoutOrder

	Tabs.Name = "Tabs"
	Tabs.Parent = Main
	Tabs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Tabs.BackgroundTransparency = 1.000
	Tabs.Position = UDim2.new(0, 0, 0.00714285718, 0)
	Tabs.Size = UDim2.new(0, 521, 0, 21)

	layoutTabs.Name = "layoutTabs"
	layoutTabs.Parent = Tabs
	layoutTabs.FillDirection = Enum.FillDirection.Horizontal
	layoutTabs.SortOrder = Enum.SortOrder.LayoutOrder
	layoutTabs.VerticalAlignment = Enum.VerticalAlignment.Bottom
	layoutTabs.Padding = UDim.new(0, 4)

	Pages.Name = "Pages"
	Pages.Parent = Main
	Pages.BackgroundColor3 = theme.borderLight
	Pages.BorderColor3 = theme.borderDark
	Pages.LayoutOrder = 1
	Pages.Position = UDim2.new(0, 0, 0.0375000015, 0)
	Pages.Size = UDim2.new(0, 521, 0, 540)

	layoutPages.Name = "layoutPages"
	layoutPages.Parent = Pages
	layoutPages.HorizontalAlignment = Enum.HorizontalAlignment.Center
	layoutPages.SortOrder = Enum.SortOrder.LayoutOrder
	layoutPages.VerticalAlignment = Enum.VerticalAlignment.Center

	innerPages.Name = "innerPages"
	innerPages.Parent = Pages
	innerPages.BackgroundColor3 = theme.bgLight
	innerPages.BorderColor3 = theme.borderDark
	innerPages.BorderSizePixel = 0
	innerPages.LayoutOrder = 1
	innerPages.Size = UDim2.new(0, 519, 0, 538)
	innerPages.ZIndex = 5

	layoutInnerPages.Name = "layoutInnerPages"
	layoutInnerPages.Parent = innerPages
	layoutInnerPages.HorizontalAlignment = Enum.HorizontalAlignment.Center
	layoutInnerPages.SortOrder = Enum.SortOrder.LayoutOrder
	layoutInnerPages.VerticalAlignment = Enum.VerticalAlignment.Center
	
	local UserInputService = game:GetService("UserInputService")

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

	local window = {}


	function window:AddTab(text)
		text = text or "New Tab"


		local page = Instance.new("Frame")
		local layoutPage = Instance.new("UIListLayout")
		local tab = Instance.new("Frame")
		local buttonTab = Instance.new("TextButton")
		local cut_buttonTab = Instance.new("Frame")
		local layoutButtonTab = Instance.new("UIListLayout")
		local paddingButtonTab = Instance.new("UIPadding")
		local layoutTab = Instance.new("UIListLayout")

		page.Name = "page"
		page.Parent = innerPages
		page.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		page.BackgroundTransparency = 1.000
		page.Size = UDim2.new(0, 519, 0, 538)
		page.ZIndex = 6
		page.Visible = false

		layoutPage.Name = "layoutPage"
		layoutPage.Parent = page
		layoutPage.Padding = UDim.new(0,1)
		layoutPage.FillDirection = Enum.FillDirection.Horizontal
		layoutPage.HorizontalAlignment = Enum.HorizontalAlignment.Left
		layoutPage.SortOrder = Enum.SortOrder.LayoutOrder

		tab.Name = "tab"
		tab.Parent = Tabs
		tab.BackgroundColor3 = theme.borderLight
		tab.BorderColor3 = theme.borderDark


		buttonTab.Name = "buttonTab"
		buttonTab.Parent = tab
		buttonTab.BackgroundColor3 = theme.bgDark
		buttonTab.BorderColor3 = theme.borderLight
		buttonTab.Size = UDim2.new(0, 78, 0, 20)
		buttonTab.ZIndex = 10
		buttonTab.AutoButtonColor = false
		buttonTab.Font = theme.font
		buttonTab.Text = text
		buttonTab.TextColor3 = theme.text
		buttonTab.TextSize = 14.000
		buttonTab.TextStrokeColor3 = theme.stroke
		buttonTab.TextTransparency = theme.transparency
		local newTabButtonSize =
			TextService:GetTextSize(
				buttonTab.Text,
				buttonTab.TextSize,
				buttonTab.Font,
				Vector2.new(math.huge, math.huge)
			)
		buttonTab.Size = UDim2.new(0, 16 + newTabButtonSize.X, 0, 20)
		tab.Size = UDim2.new(0, 18 + newTabButtonSize.X, 0, 21)
		cut_buttonTab.Size = UDim2.new(0, 14 + newTabButtonSize.X, 0, 1)

		cut_buttonTab.Name = "cut_buttonTab"
		cut_buttonTab.Parent = buttonTab
		cut_buttonTab.BackgroundColor3 = theme.bgLight
		cut_buttonTab.BorderColor3 = theme.bgLight
		cut_buttonTab.ZIndex = 30
		cut_buttonTab.Visible = false

		layoutButtonTab.Name = "layoutButtonTab"
		layoutButtonTab.Parent = buttonTab
		layoutButtonTab.HorizontalAlignment = Enum.HorizontalAlignment.Center
		layoutButtonTab.SortOrder = Enum.SortOrder.LayoutOrder
		layoutButtonTab.VerticalAlignment = Enum.VerticalAlignment.Bottom

		paddingButtonTab.Name = "paddingButtonTab"
		paddingButtonTab.Parent = buttonTab
		paddingButtonTab.PaddingBottom = UDim.new(0, 0)

		layoutTab.Name = "layoutTab"
		layoutTab.Parent = tab
		layoutTab.HorizontalAlignment = Enum.HorizontalAlignment.Center
		layoutTab.SortOrder = Enum.SortOrder.LayoutOrder
		layoutTab.VerticalAlignment = Enum.VerticalAlignment.Bottom

		buttonTab.MouseButton1Click:Connect(function()
			for i, v in next, Tabs:GetChildren() do
				if v:IsA("Frame") then
					for n, p in next, v:GetChildren() do
						if p:IsA("TextButton") then
							p.BackgroundColor3 = theme.bgDark
							p.cut_buttonTab.Visible = false
							p.TextTransparency = theme.transparency
						end
					end
				end
			end
			buttonTab.BackgroundColor3 = theme.bgLight
			cut_buttonTab.Visible = true
			buttonTab.TextTransparency = 0

			for i, v in next, innerPages:GetChildren() do
				if v:IsA("Frame") then
					v.Visible = false
				end
			end
			page.Visible = true
		end)

		if isFirstTab == true then
			page.Visible = true
			buttonTab.BackgroundColor3 = theme.bgLight
			buttonTab.TextTransparency = 0
			cut_buttonTab.Visible = true
		end

		isFirstTab = false

		local tabz = {}

		function tabz:AddColumn(name)
			name = name or "Coulmn"

			local container = Instance.new("ScrollingFrame")
			local layoutContainer = Instance.new("UIListLayout")
			local paddingContainer = Instance.new("UIPadding")

			container.Name = "container"
			container.Parent = page
			container.Active = true
			container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			container.BackgroundTransparency = 1.000
			container.BorderSizePixel = 0
			container.Size = UDim2.new(0, 259, 0, 538)
			container.ZIndex = 10
			container.CanvasSize = UDim2.new(0, 0, 0, 0)
			container.ScrollBarThickness = 0

			layoutContainer.Name = "layoutContainer"
			layoutContainer.Parent = container
			layoutContainer.HorizontalAlignment = Enum.HorizontalAlignment.Center
			layoutContainer.SortOrder = Enum.SortOrder.LayoutOrder
			layoutContainer.VerticalAlignment = Enum.VerticalAlignment.Top
			layoutContainer.Padding = UDim.new(0, 14)

			paddingContainer.Name = "paddingContainer"
			paddingContainer.Parent = container
			paddingContainer.PaddingTop = UDim.new(0, 10)

			local sections = {}

			function sections:AddSection(name)

				local sectionDesign = Instance.new("Frame")
				local layoutSectionDesign = Instance.new("UIListLayout")
				local innerSection = Instance.new("Frame")
				local layoutInnerSection = Instance.new("UIListLayout")
				local designLine = Instance.new("Frame")
				local sectionHeader = Instance.new("TextLabel")
				

				sectionDesign.Name = "sectionDesign"
				sectionDesign.Parent = container
				sectionDesign.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				sectionDesign.BorderColor3 = Color3.fromRGB(50, 50, 50)
				sectionDesign.Position = UDim2.new(0.0173745174, 0, 0.0185873602, 0)
				sectionDesign.Size = UDim2.new(0, 250, 0, 28)
				sectionDesign.ZIndex = 100

				layoutSectionDesign.Name = "layoutSectionDesign"
				layoutSectionDesign.Parent = sectionDesign
				layoutSectionDesign.HorizontalAlignment = Enum.HorizontalAlignment.Center
				layoutSectionDesign.SortOrder = Enum.SortOrder.LayoutOrder
				layoutSectionDesign.VerticalAlignment = Enum.VerticalAlignment.Center

				innerSection.Name = "innerSection"
				innerSection.Parent = sectionDesign
				innerSection.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
				innerSection.BorderSizePixel = 0
				innerSection.Position = UDim2.new(0.00400000019, 0, 0.00319488812, 0)
				innerSection.Size = UDim2.new(0, 248, 0, 26)
				innerSection.ZIndex = 101

				layoutInnerSection.Name = "layoutInnerSection"
				layoutInnerSection.Parent = innerSection
				layoutInnerSection.HorizontalAlignment = Enum.HorizontalAlignment.Center
				layoutInnerSection.SortOrder = Enum.SortOrder.LayoutOrder
				layoutInnerSection.Padding = UDim.new(0, 2)

				designLine.Name = "designLine"
				designLine.Parent = innerSection
				designLine.BackgroundColor3 = theme.accent
				designLine.BorderSizePixel = 0
				designLine.Size = UDim2.new(0, 248, 0, 1)
				designLine.ZIndex = 200

				sectionHeader.Name = "sectionHeader"
				sectionHeader.Parent = innerSection
				sectionHeader.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				sectionHeader.BackgroundTransparency = 1.000
				sectionHeader.Size = UDim2.new(0, 230, 0, 20)
				sectionHeader.ZIndex = 200
				sectionHeader.Font = Enum.Font.Jura
				sectionHeader.Text = "General"
				sectionHeader.TextColor3 = Color3.fromRGB(255, 255, 255)
				sectionHeader.TextSize = 15.000
				sectionHeader.TextStrokeColor3 = Color3.fromRGB(16, 16, 16)
				sectionHeader.TextStrokeTransparency = 0.300
				sectionHeader.TextXAlignment = Enum.TextXAlignment.Left
				sectionHeader.Visible = false

				local function updateSection()
					local sc = layoutInnerSection.AbsoluteContentSize.Y
					innerSection.Size = UDim2.new(0, 248, 0, sc + 2)
					sectionDesign.Size = UDim2.new(0, 250, 0, sc + 4)
				end

				local utilities = {}

				function utilities:AddButton(option)
					option = typeof(option) == "table" and option or {} 
					option.text = tostring(option.text)
					option.flag = option.flag or option.text
					option.callback = typeof(option.callback) == "function" and option.callback or function() end
					table.insert(library.options, option)


					local Button = Instance.new("Frame")
					local layoutButton = Instance.new("UIListLayout")
					local outterButton = Instance.new("Frame")
					local layoutOutterButton = Instance.new("UIListLayout")
					local paddingOutterButton = Instance.new("UIPadding")
					local btnButton = Instance.new("TextButton")
					local gradienBtnButton = Instance.new("UIGradient")
					local layoutBtnButton = Instance.new("UIListLayout")


					Button.Name = "Button"
					Button.Parent = innerSection
					Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Button.BackgroundTransparency = 1.000
					Button.Size = UDim2.new(0, 230, 0, 25)
					Button.ZIndex = 200

					layoutButton.Name = "layoutButton"
					layoutButton.Parent = Button
					layoutButton.FillDirection = Enum.FillDirection.Horizontal
					layoutButton.HorizontalAlignment = Enum.HorizontalAlignment.Center
					layoutButton.SortOrder = Enum.SortOrder.LayoutOrder
					layoutButton.VerticalAlignment = Enum.VerticalAlignment.Center
					layoutButton.Padding = UDim.new(0, 8)

					outterButton.Name = "outterButton"
					outterButton.Parent = Button
					outterButton.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
					outterButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
					outterButton.Size = UDim2.new(0, 230, 0, 18)
					outterButton.ZIndex = 202

					layoutOutterButton.Name = "layoutOutterButton"
					layoutOutterButton.Parent = outterButton
					layoutOutterButton.SortOrder = Enum.SortOrder.LayoutOrder
					layoutOutterButton.VerticalAlignment = Enum.VerticalAlignment.Center

					paddingOutterButton.Name = "paddingOutterButton"
					paddingOutterButton.Parent = outterButton
					paddingOutterButton.PaddingLeft = UDim.new(0, 1)

					btnButton.Name = "btnButton"
					btnButton.Parent = outterButton
					btnButton.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
					btnButton.BorderColor3 = Color3.fromRGB(50, 50, 50)
					btnButton.Size = UDim2.new(0, 228, 0, 16)
					btnButton.ZIndex = 203
					btnButton.AutoButtonColor = false
					btnButton.Font = Enum.Font.Jura
					btnButton.Text = option.text
					btnButton.TextColor3 = Color3.fromRGB(255, 255, 255)
					btnButton.TextSize = 14.000
					btnButton.MouseButton1Click:Connect(function()
						pcall(option.callback)
						btnButton.TextTransparency = 0.3
						wait(0.1)
						btnButton.TextTransparency = 0
					end)

					btnButton.MouseEnter:Connect(function()
						outterButton.BorderColor3 = theme.accent
					end)
					btnButton.MouseLeave:Connect(function()
						outterButton.BorderColor3 = theme.borderDark
					end)


					gradienBtnButton.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(190, 190, 190))}
					gradienBtnButton.Rotation = 90
					gradienBtnButton.Name = "gradienBtnButton"
					gradienBtnButton.Parent = btnButton

					layoutBtnButton.Name = "layoutBtnButton"
					layoutBtnButton.Parent = btnButton
					layoutBtnButton.HorizontalAlignment = Enum.HorizontalAlignment.Center
					layoutBtnButton.SortOrder = Enum.SortOrder.LayoutOrder
					layoutBtnButton.VerticalAlignment = Enum.VerticalAlignment.Center

					updateSection()

				end

				function utilities:AddDivider(text)
					text = text or "General"

					local Divider = Instance.new("Frame")
					local frameDivider = Instance.new("Frame")
					local textDivider = Instance.new("TextLabel")
					local layoutFrameDivider = Instance.new("UIListLayout")
					local layoutDivider = Instance.new("UIListLayout")

					--Properties:

					Divider.Name = "Divider"
					Divider.Parent = innerSection
					Divider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Divider.BackgroundTransparency = 1.000
					Divider.Size = UDim2.new(0, 248, 0, 15)
					Divider.ZIndex = 200

					frameDivider.Name = "frameDivider"
					frameDivider.Parent = Divider
					frameDivider.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
					frameDivider.BorderColor3 = Color3.fromRGB(0, 0, 0)
					frameDivider.Size = UDim2.new(0, 230, 0, 1)
					frameDivider.ZIndex = 201

					textDivider.Name = "textDivider"
					textDivider.Parent = frameDivider
					textDivider.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
					textDivider.BorderSizePixel = 0
					textDivider.ZIndex = 202
					textDivider.Font = Enum.Font.Jura
					textDivider.Text = text
					textDivider.TextColor3 = Color3.fromRGB(255, 255, 255)
					textDivider.TextSize = 15.000
					textDivider.TextStrokeColor3 = Color3.fromRGB(16, 16, 16)
					textDivider.TextStrokeTransparency = 0.300
					local newDividerTextSize =
						TextService:GetTextSize(
							textDivider.Text,
							textDivider.TextSize,
							textDivider.Font,
							Vector2.new(math.huge, math.huge)
						)
					textDivider.Size = UDim2.new(0, 16 + newDividerTextSize.X, 0, 15)

					layoutFrameDivider.Name = "layoutFrameDivider"
					layoutFrameDivider.Parent = frameDivider
					layoutFrameDivider.HorizontalAlignment = Enum.HorizontalAlignment.Center
					layoutFrameDivider.SortOrder = Enum.SortOrder.LayoutOrder
					layoutFrameDivider.VerticalAlignment = Enum.VerticalAlignment.Center

					layoutDivider.Name = "layoutDivider"
					layoutDivider.Parent = Divider
					layoutDivider.HorizontalAlignment = Enum.HorizontalAlignment.Center
					layoutDivider.SortOrder = Enum.SortOrder.LayoutOrder
					layoutDivider.VerticalAlignment = Enum.VerticalAlignment.Center

					updateSection()
				end
				
				function utilities:AddToggle(option)
					option = typeof(option) == "table" and option or {} 
					option.text = tostring(option.text)
					option.flag = option.flag or option.text	
					option.enabled = typeof(option.enabled) == "boolean" and option.enabled or false
					option.risky = typeof(option.risky) == "boolean" and option.risky or false
					option.callback = typeof(option.callback) == "function" and option.callback or function() end
					table.insert(library.options, option)

					local Toggle = Instance.new("Frame")
					local layoutToggle = Instance.new("UIListLayout")
					local textToggle = Instance.new("TextLabel")
					local paddingTextToggle = Instance.new("UIPadding")
					local toggleButton = Instance.new("TextButton")
					local toggleButtonInner = Instance.new("Frame")
					local gradientToggleButton = Instance.new("UIGradient")
					local layoutToggleButton = Instance.new("UIListLayout")
					local ignoreToggle = Instance.new("Folder")
					local btnIgnoreToggle = Instance.new("TextButton")
					local layoutIgnoreToggle = Instance.new("UIListLayout")

					Toggle.Name = "Toggle"
					Toggle.Parent = innerSection
					Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Toggle.BackgroundTransparency = 1.000
					Toggle.Size = UDim2.new(0, 230, 0, 20)
					Toggle.ZIndex = 200

					layoutToggle.Name = "layoutToggle"
					layoutToggle.Parent = Toggle
					layoutToggle.FillDirection = Enum.FillDirection.Horizontal
					layoutToggle.SortOrder = Enum.SortOrder.LayoutOrder
					layoutToggle.VerticalAlignment = Enum.VerticalAlignment.Center
					layoutToggle.Padding = UDim.new(0, 8)
					
					if option.risky then
						textToggle.TextColor3 = Color3.fromRGB(255, 55, 55)
						textToggle.TextTransparency = 0.3
					else
						textToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
						textToggle.TextTransparency = 0
					end

					textToggle.Name = "textToggle"
					textToggle.Parent = Toggle
					textToggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					textToggle.BackgroundTransparency = 1.000
					textToggle.LayoutOrder = 1
					textToggle.Size = UDim2.new(0, 200, 0, 20)
					textToggle.ZIndex = 200
					textToggle.Font = Enum.Font.Jura
					textToggle.Text = option.text
					textToggle.TextSize = 15.000
					textToggle.TextStrokeColor3 = Color3.fromRGB(16, 16, 16)
					textToggle.TextStrokeTransparency = 0.300
					textToggle.TextXAlignment = Enum.TextXAlignment.Left

					paddingTextToggle.Name = "paddingTextToggle"
					paddingTextToggle.Parent = textToggle
					paddingTextToggle.PaddingBottom = UDim.new(0, 1)

					toggleButton.Name = "toggleButton"
					toggleButton.Parent = Toggle
					toggleButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
					toggleButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
					toggleButton.Size = UDim2.new(0, 13, 0, 13)
					toggleButton.ZIndex = 201
					toggleButton.AutoButtonColor = false
					toggleButton.Font = Enum.Font.SourceSans
					toggleButton.Text = ""
					toggleButton.TextColor3 = Color3.fromRGB(0, 0, 0)
					toggleButton.TextSize = 14.000

					toggleButtonInner.Name = "toggleButtonInner"
					toggleButtonInner.Parent = toggleButton
					if option.enabled == true then
						toggleButtonInner.BackgroundColor3 = theme.accent
					else
						toggleButtonInner.BackgroundColor3 = theme.bgDark

					end
					toggleButtonInner.BorderColor3 = Color3.fromRGB(255, 50, 50)
					toggleButtonInner.BorderSizePixel = 0
					toggleButtonInner.Size = UDim2.new(0, 11, 0, 11)
					toggleButtonInner.ZIndex = 201

					gradientToggleButton.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(141, 141, 141))}
					gradientToggleButton.Rotation = 90
					gradientToggleButton.Name = "gradientToggleButton"
					gradientToggleButton.Parent = toggleButtonInner

					layoutToggleButton.Name = "layoutToggleButton"
					layoutToggleButton.Parent = toggleButton
					layoutToggleButton.HorizontalAlignment = Enum.HorizontalAlignment.Center
					layoutToggleButton.SortOrder = Enum.SortOrder.LayoutOrder
					layoutToggleButton.VerticalAlignment = Enum.VerticalAlignment.Center

					ignoreToggle.Name = "ignoreToggle"
					ignoreToggle.Parent = Toggle

					btnIgnoreToggle.Name = "btnIgnoreToggle"
					btnIgnoreToggle.Parent = ignoreToggle
					btnIgnoreToggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					btnIgnoreToggle.BackgroundTransparency = 1.000
					btnIgnoreToggle.Size = UDim2.new(0, 168, 0, 20)
					btnIgnoreToggle.ZIndex = 203
					btnIgnoreToggle.Font = Enum.Font.SourceSans
					btnIgnoreToggle.Text = ""
					btnIgnoreToggle.TextColor3 = Color3.fromRGB(0, 0, 0)
					btnIgnoreToggle.TextSize = 14.000
					
					local tog = option.enabled
					
					btnIgnoreToggle.MouseButton1Click:Connect(function()
						tog = not tog
						option.callback(tog)
						if tog then
							toggleButtonInner.BackgroundColor3 = theme.accent
						else
							toggleButtonInner.BackgroundColor3 = theme.bgDark
						end
					end)
					
					btnIgnoreToggle.MouseEnter:Connect(function()
						toggleButton.BorderColor3 = theme.accent
					end)
					btnIgnoreToggle.MouseLeave:Connect(function()
						toggleButton.BorderColor3 = theme.borderDark
					end)

					layoutIgnoreToggle.Name = "layoutIgnoreToggle"
					layoutIgnoreToggle.Parent = ignoreToggle
					layoutIgnoreToggle.SortOrder = Enum.SortOrder.LayoutOrder
					
					if option.enabled == true then
						option.callback(tog)
					end
					
					updateSection()
					
		
				end
				
				function utilities:AddTextbox(option)
					option = typeof(option) == "table" and option or {} 
					option.text = tostring(option.text) or "false"
					option.value = option.value or ""
					option.placeholdertext = option.placeholdertext or ""
					option.clearonfocus = typeof(option.clearonfocus) == "boolean" and option.clearonfocus or false
					option.flag = option.flag or option.text
					option.callback = typeof(option.callback) == "function" and option.callback or function() end
					table.insert(library.options, option)
					
					local Textbox = Instance.new("Frame")
					local layoutTextbox = Instance.new("UIListLayout")
					local textTextbox = Instance.new("TextLabel")
					local outterTextbox = Instance.new("Frame")
					local layoutOutterTextbox = Instance.new("UIListLayout")
					local paddingOutterTextbox = Instance.new("UIPadding")
					local innerTextbox = Instance.new("Frame")
					local textboxBox = Instance.new("TextBox")
					local paddingTextboxBox = Instance.new("UIPadding")
					local layoutInnerTextbox = Instance.new("UIListLayout")
					local gradientInnerTextbox = Instance.new("UIGradient")

					--Properties:

					Textbox.Name = "Textbox"
					Textbox.Parent = innerSection
					Textbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Textbox.BackgroundTransparency = 1.000
					Textbox.Position = UDim2.new(0.0362903215, 0, 0.356846482, 0)
					Textbox.Size = UDim2.new(0, 230, 0, 45)
					Textbox.ZIndex = 200

					layoutTextbox.Name = "layoutTextbox"
					layoutTextbox.Parent = Textbox
					layoutTextbox.SortOrder = Enum.SortOrder.LayoutOrder
					layoutTextbox.Padding = UDim.new(0, 3)

					textTextbox.Name = "textTextbox"
					textTextbox.Parent = Textbox
					textTextbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					textTextbox.BackgroundTransparency = 1.000
					textTextbox.Position = UDim2.new(0, 0, 0.051282052, 0)
					textTextbox.Size = UDim2.new(0, 200, 0, 18)
					textTextbox.ZIndex = 201
					textTextbox.Font = Enum.Font.Jura
					textTextbox.Text = option.text
					textTextbox.TextColor3 = Color3.fromRGB(255, 255, 255)
					textTextbox.TextSize = 15.000
					textTextbox.TextStrokeColor3 = Color3.fromRGB(16, 16, 16)
					textTextbox.TextStrokeTransparency = 0.300
					textTextbox.TextXAlignment = Enum.TextXAlignment.Left
					if textTextbox.Text == "nil" then
						textTextbox:Destroy()
						Textbox.Size = UDim2.new(0,230,0,25)
						layoutTextbox.VerticalAlignment = Enum.VerticalAlignment.Center
					else
						textTextbox.Visible = true
					end


					outterTextbox.Name = "outterTextbox"
					outterTextbox.Parent = Textbox
					outterTextbox.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
					outterTextbox.BorderColor3 = Color3.fromRGB(0, 0, 0)
					outterTextbox.Size = UDim2.new(0, 230, 0, 18)
					outterTextbox.ZIndex = 202
					outterTextbox.MouseEnter:Connect(function()
						outterTextbox.BorderColor3 = theme.accent
					end)
					
					outterTextbox.MouseLeave:Connect(function()
						outterTextbox.BorderColor3 = theme.borderDark
					end)

					layoutOutterTextbox.Name = "layoutOutterTextbox"
					layoutOutterTextbox.Parent = outterTextbox
					layoutOutterTextbox.SortOrder = Enum.SortOrder.LayoutOrder
					layoutOutterTextbox.VerticalAlignment = Enum.VerticalAlignment.Center

					paddingOutterTextbox.Name = "paddingOutterTextbox"
					paddingOutterTextbox.Parent = outterTextbox
					paddingOutterTextbox.PaddingLeft = UDim.new(0, 1)

					innerTextbox.Name = "innerTextbox"
					innerTextbox.Parent = outterTextbox
					innerTextbox.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
					innerTextbox.BorderColor3 = Color3.fromRGB(50, 50, 50)
					innerTextbox.Size = UDim2.new(0, 228, 0, 16)
					innerTextbox.ZIndex = 203

					textboxBox.Name = "textboxBox"
					textboxBox.Parent = innerTextbox
					textboxBox.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
					textboxBox.BackgroundTransparency = 1.000
					textboxBox.BorderColor3 = Color3.fromRGB(50, 50, 50)
					textboxBox.Size = UDim2.new(0, 228, 0, 16)
					textboxBox.ZIndex = 203
					textboxBox.ClearTextOnFocus = option.clearonfocus
					textboxBox.Font = Enum.Font.Jura
					textboxBox.PlaceholderText = option.placeholdertext
					textboxBox.Text = option.value
					textboxBox.TextColor3 = Color3.fromRGB(255, 255, 255)
					textboxBox.TextSize = 14.000
					textboxBox.TextXAlignment = Enum.TextXAlignment.Left
					
					

					local enterDown = false
					
					InputService.InputBegan:Connect(function(input)
						if input.KeyCode == Enum.KeyCode.Return then 
							enterDown = true 
						end
					end)

					InputService.InputEnded:Connect(function(input)
						if input.KeyCode == Enum.KeyCode.Return then 
							enterDown = false 
						end
					end)

					textboxBox.FocusLost:Connect(function()
						task.wait()
						if enterDown then 
							option.callback(textboxBox.Text)
						end 
					end)

					paddingTextboxBox.Name = "paddingTextboxBox"
					paddingTextboxBox.Parent = textboxBox
					paddingTextboxBox.PaddingBottom = UDim.new(0, 1)
					paddingTextboxBox.PaddingLeft = UDim.new(0, 5)

					layoutInnerTextbox.Name = "layoutInnerTextbox"
					layoutInnerTextbox.Parent = innerTextbox
					layoutInnerTextbox.HorizontalAlignment = Enum.HorizontalAlignment.Center
					layoutInnerTextbox.SortOrder = Enum.SortOrder.LayoutOrder
					layoutInnerTextbox.VerticalAlignment = Enum.VerticalAlignment.Center

					gradientInnerTextbox.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(190, 190, 190))}
					gradientInnerTextbox.Rotation = 90
					gradientInnerTextbox.Name = "gradientInnerTextbox"
					gradientInnerTextbox.Parent = innerTextbox
					
					option.callback(option.value)
					updateSection()
				end
				
				function utilities:AddDropdown(option)
					option = typeof(option) == "table" and option or {} 
					option.text = tostring(option.text) or "false"
					option.value = option.value or ""
					option.values = option.values or {}
					option.flag = option.flag or option.text
					option.callback = typeof(option.callback) == "function" and option.callback or function() end
					table.insert(library.options, option)
					


					local Dropdown = Instance.new("Frame")
					local layoutDropdown = Instance.new("UIListLayout")
					local textDropdown = Instance.new("TextLabel")
					local btnDropdown = Instance.new("TextButton")
					local paddingBtnDropdown = Instance.new("UIPadding")
					local layoutBtnDropdown = Instance.new("UIListLayout")
					local dropdownInner = Instance.new("Frame")
					local gradientInnerDropdown = Instance.new("UIGradient")
					local dropdownValueText = Instance.new("TextLabel")
					local paddingValueText = Instance.new("UIPadding")
					local layoutDropdownInner = Instance.new("UIListLayout")
					local selectionDropdown = Instance.new("Frame")
					local UIListLayout = Instance.new("UIListLayout")
					local innerSelectionDropdown = Instance.new("Frame")
					local layoutinnerSelectionDropdown = Instance.new("UIListLayout")
					local gradientinnerSelectionDropdown = Instance.new("UIGradient")
					local dropdownSF = Instance.new("ScrollingFrame")
					local layoutDropdownSF = Instance.new("UIListLayout")

					
					local function updateCanvasSize()
						local sc = layoutDropdownSF.AbsoluteContentSize.Y
						dropdownSF.CanvasSize = UDim2.new(0, 0, 0, sc + 16)
					end
					
					if #option.values <= 4 then
						local plex = #option.values * 16
						selectionDropdown.Size = UDim2.new(0, 230, 0, plex + 2)
						innerSelectionDropdown.Size = UDim2.new(0, 228, 0, plex)
						dropdownSF.Size = UDim2.new(0, 228, 0, plex)
						
					elseif #option.values >= 4  then
						selectionDropdown.Size = UDim2.new(0, 230, 0, 66)
						innerSelectionDropdown.Size = UDim2.new(0, 228, 0, 64)
						dropdownSF.Size = UDim2.new(0, 228, 0, 64)
					end
					
					Dropdown.Name = "Dropdown"
					Dropdown.Parent = innerSection
					Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Dropdown.BackgroundTransparency = 1.000
					Dropdown.Position = UDim2.new(0.0362903215, 0, 0.356846482, 0)
					Dropdown.Size = UDim2.new(0, 230, 0, 45)
					Dropdown.ZIndex = 200

					layoutDropdown.Name = "layoutDropdown"
					layoutDropdown.Parent = Dropdown
					layoutDropdown.SortOrder = Enum.SortOrder.LayoutOrder
					layoutDropdown.Padding = UDim.new(0, 3)

					textDropdown.Name = "textDropdown"
					textDropdown.Parent = Dropdown
					textDropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					textDropdown.BackgroundTransparency = 1.000
					textDropdown.Position = UDim2.new(0, 0, 0.051282052, 0)
					textDropdown.Size = UDim2.new(0, 200, 0, 18)
					textDropdown.ZIndex = 201
					textDropdown.Font = Enum.Font.Jura
					textDropdown.Text = option.text
					textDropdown.TextColor3 = Color3.fromRGB(255, 255, 255)
					textDropdown.TextSize = 15.000
					textDropdown.TextStrokeColor3 = Color3.fromRGB(16, 16, 16)
					textDropdown.TextStrokeTransparency = 0.300
					textDropdown.TextXAlignment = Enum.TextXAlignment.Left


					btnDropdown.Name = "btnDropdown"
					btnDropdown.Parent = Dropdown
					btnDropdown.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
					btnDropdown.BorderColor3 = Color3.fromRGB(0, 0, 0)
					btnDropdown.Size = UDim2.new(0, 230, 0, 18)
					btnDropdown.ZIndex = 201
					btnDropdown.AutoButtonColor = false
					btnDropdown.Font = Enum.Font.SourceSans
					btnDropdown.Text = ""
					btnDropdown.TextColor3 = Color3.fromRGB(0, 0, 0)
					btnDropdown.TextSize = 14.000
					
					
					
					local isDropped = true
					
					
					btnDropdown.MouseButton1Click:Connect(function()
						isDropped = not isDropped
						if isDropped then
							selectionDropdown.Visible = false
						else
							selectionDropdown.Visible = true
						end
					end)
					
					btnDropdown.MouseEnter:Connect(function()
						btnDropdown.BorderColor3 = theme.accent
					end)
					
					btnDropdown.MouseLeave:Connect(function()
						if not isDropped then
							btnDropdown.BorderColor3 = theme.accent
						else
							btnDropdown.BorderColor3 = theme.borderDark
						end
					end)

					paddingBtnDropdown.Name = "paddingBtnDropdown"
					paddingBtnDropdown.Parent = btnDropdown
					paddingBtnDropdown.PaddingLeft = UDim.new(0, 1)

					layoutBtnDropdown.Name = "layoutBtnDropdown"
					layoutBtnDropdown.Parent = btnDropdown
					layoutBtnDropdown.SortOrder = Enum.SortOrder.LayoutOrder
					layoutBtnDropdown.VerticalAlignment = Enum.VerticalAlignment.Center

					dropdownInner.Name = "dropdownInner"
					dropdownInner.Parent = btnDropdown
					dropdownInner.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
					dropdownInner.BorderColor3 = Color3.fromRGB(50, 50, 50)
					dropdownInner.Position = UDim2.new(0.00434782589, 0, -2.83333325, 0)
					dropdownInner.Size = UDim2.new(0, 228, 0, 16)
					dropdownInner.ZIndex = 202

					gradientInnerDropdown.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(190, 190, 190))}
					gradientInnerDropdown.Rotation = 90
					gradientInnerDropdown.Name = "gradientInnerDropdown"
					gradientInnerDropdown.Parent = dropdownInner

					dropdownValueText.Name = "dropdownValueText"
					dropdownValueText.Parent = dropdownInner
					dropdownValueText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					dropdownValueText.BackgroundTransparency = 1.000
					dropdownValueText.Size = UDim2.new(0, 228, 0, 16)
					dropdownValueText.ZIndex = 203
					dropdownValueText.Font = Enum.Font.Jura
					dropdownValueText.Text = option.value
					dropdownValueText.TextColor3 = Color3.fromRGB(255, 255, 255)
					dropdownValueText.TextSize = 14.000
					dropdownValueText.TextXAlignment = Enum.TextXAlignment.Left

					paddingValueText.Name = "paddingValueText"
					paddingValueText.Parent = dropdownValueText
					paddingValueText.PaddingBottom = UDim.new(0, 1)
					paddingValueText.PaddingLeft = UDim.new(0, 5)

					layoutDropdownInner.Name = "layoutDropdownInner"
					layoutDropdownInner.Parent = dropdownInner
					layoutDropdownInner.HorizontalAlignment = Enum.HorizontalAlignment.Center
					layoutDropdownInner.SortOrder = Enum.SortOrder.LayoutOrder
					layoutDropdownInner.VerticalAlignment = Enum.VerticalAlignment.Center

					selectionDropdown.Name = "selectionDropdown"
					selectionDropdown.Parent = Dropdown
					selectionDropdown.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
					selectionDropdown.BorderColor3 = Color3.fromRGB(0, 0, 0)
					selectionDropdown.Position = UDim2.new(-0.00434782589, 0, 1.04444444, 0)
					selectionDropdown.Visible = false
					selectionDropdown.ZIndex = 500

					UIListLayout.Parent = selectionDropdown
					UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
					UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

					innerSelectionDropdown.Name = "innerSelectionDropdown"
					innerSelectionDropdown.Parent = selectionDropdown
					innerSelectionDropdown.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
					innerSelectionDropdown.BorderColor3 = Color3.fromRGB(0, 0, 0)
					innerSelectionDropdown.BorderSizePixel = 0
					innerSelectionDropdown.Position = UDim2.new(-0.00434782589, 0, 1.04444444, 0)
					innerSelectionDropdown.ZIndex = 501

					layoutinnerSelectionDropdown.Name = "layoutinnerSelectionDropdown"
					layoutinnerSelectionDropdown.Parent = innerSelectionDropdown
					layoutinnerSelectionDropdown.HorizontalAlignment = Enum.HorizontalAlignment.Center
					layoutinnerSelectionDropdown.SortOrder = Enum.SortOrder.LayoutOrder
					layoutinnerSelectionDropdown.VerticalAlignment = Enum.VerticalAlignment.Center

					gradientinnerSelectionDropdown.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(190, 190, 190))}
					gradientinnerSelectionDropdown.Rotation = 90
					gradientinnerSelectionDropdown.Name = "gradientinnerSelectionDropdown"
					gradientinnerSelectionDropdown.Parent = innerSelectionDropdown

					dropdownSF.Name = "dropdownSF"
					dropdownSF.Parent = innerSelectionDropdown
					dropdownSF.Active = true
					dropdownSF.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					dropdownSF.BackgroundTransparency = 1.000
					dropdownSF.BorderSizePixel = 0
					dropdownSF.ZIndex = 502
					dropdownSF.CanvasSize = UDim2.new(0, 0, 0, 0)
					dropdownSF.ScrollBarThickness = 2
					dropdownSF.ScrollBarImageColor3 = theme.accent

					layoutDropdownSF.Name = "layoutDropdownSF"
					layoutDropdownSF.Parent = dropdownSF
					layoutDropdownSF.SortOrder = Enum.SortOrder.LayoutOrder
					
					local function updateCanvas()
						local sc = layoutDropdownSF.AbsoluteContentSize.Y
						dropdownSF.CanvasSize = UDim2.new(0, 0, 0, sc)
					end

					for i, v in next, option.values do

						local btnDropdownSF = Instance.new("TextButton")
						local paddingBtnDropdownSF = Instance.new("UIPadding")

						--Properties:

						btnDropdownSF.Name = "btnDropdownSF"
						btnDropdownSF.Parent = dropdownSF
						btnDropdownSF.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						btnDropdownSF.BackgroundTransparency = 1.000
						btnDropdownSF.Size = UDim2.new(0, 228, 0, 16)
						btnDropdownSF.ZIndex = 503
						btnDropdownSF.AutoButtonColor = false
						btnDropdownSF.Font = Enum.Font.Jura
						btnDropdownSF.TextColor3 = Color3.fromRGB(255, 255, 255)
						btnDropdownSF.TextSize = 14.000
						btnDropdownSF.TextXAlignment = Enum.TextXAlignment.Left
						btnDropdownSF.Text = v
						btnDropdownSF.MouseButton1Click:Connect(function()
							option.value = v
							dropdownValueText.Text = option.value
							option.callback(option.value)
							
							isDropped = true
							selectionDropdown.Visible = false
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
				end
				
				function utilities:AddSlider(option)
					option = typeof(option) == "table" and option or {} 
					option.text = tostring(option.text) or "Skibbidibop : "..option.value
					option.min = option.min or 0
					option.max = option.max or 100
					option.value = option.value or 0
					option.flag = option.flag or option.text
					option.callback = typeof(option.callback) == "function" and option.callback or function() end
					table.insert(library.options, option)
					
					local Slider = Instance.new("Frame")
					local layoutSlider = Instance.new("UIListLayout")
					local textSlider = Instance.new("TextLabel")
					local btnSlider = Instance.new("TextButton")
					local paddingBtnSlider = Instance.new("UIPadding")
					local layoutBtnSlider = Instance.new("UIListLayout")
					local sliderInner = Instance.new("Frame")
					local gradientInnerSlider = Instance.new("UIGradient")
					local sliderValue = Instance.new("Frame")
					local gradientSliderValue = Instance.new("UIGradient")

					--Properties:

					Slider.Name = "Slider"
					Slider.Parent = innerSection
					Slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Slider.BackgroundTransparency = 1.000
					Slider.Position = UDim2.new(0.0362903215, 0, 0.356846482, 0)
					Slider.Size = UDim2.new(0, 230, 0, 40)
					Slider.ZIndex = 200

					layoutSlider.Name = "layoutSlider"
					layoutSlider.Parent = Slider
					layoutSlider.SortOrder = Enum.SortOrder.LayoutOrder
					layoutSlider.Padding = UDim.new(0, 3)

					textSlider.Name = "textSlider"
					textSlider.Parent = Slider
					textSlider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					textSlider.BackgroundTransparency = 1.000
					textSlider.Position = UDim2.new(0, 0, 0.051282052, 0)
					textSlider.Size = UDim2.new(0, 200, 0, 18)
					textSlider.ZIndex = 201
					textSlider.Font = Enum.Font.Jura
					textSlider.Text = option.text.." : "..option.value
					textSlider.TextColor3 = Color3.fromRGB(255, 255, 255)
					textSlider.TextSize = 15.000
					textSlider.TextStrokeColor3 = Color3.fromRGB(16, 16, 16)
					textSlider.TextStrokeTransparency = 0.300
					textSlider.TextXAlignment = Enum.TextXAlignment.Left

					btnSlider.Name = "btnSlider"
					btnSlider.Parent = Slider
					btnSlider.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
					btnSlider.BorderColor3 = Color3.fromRGB(0, 0, 0)
					btnSlider.Size = UDim2.new(0, 230, 0, 15)
					btnSlider.ZIndex = 201
					btnSlider.AutoButtonColor = false
					btnSlider.Font = Enum.Font.SourceSans
					btnSlider.Text = ""
					btnSlider.TextColor3 = Color3.fromRGB(0, 0, 0)
					btnSlider.TextSize = 14.000
					
					btnSlider.MouseEnter:Connect(function()
						btnSlider.BorderColor3 = theme.accent
					end)
					
					btnSlider.MouseLeave:Connect(function()
						btnSlider.BorderColor3 = theme.borderDark
					end)

					paddingBtnSlider.Name = "paddingBtnSlider"
					paddingBtnSlider.Parent = btnSlider
					paddingBtnSlider.PaddingLeft = UDim.new(0, 1)

					layoutBtnSlider.Name = "layoutBtnSlider"
					layoutBtnSlider.Parent = btnSlider
					layoutBtnSlider.SortOrder = Enum.SortOrder.LayoutOrder
					layoutBtnSlider.VerticalAlignment = Enum.VerticalAlignment.Center

					sliderInner.Name = "sliderInner"
					sliderInner.Parent = btnSlider
					sliderInner.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
					sliderInner.BorderColor3 = Color3.fromRGB(50, 50, 50)
					sliderInner.Position = UDim2.new(0.00434782589, 0, -2.83333325, 0)
					sliderInner.Size = UDim2.new(0, 228, 0, 13)
					sliderInner.ZIndex = 202

					gradientInnerSlider.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(190, 190, 190))}
					gradientInnerSlider.Rotation = 90
					gradientInnerSlider.Name = "gradientInnerSlider"
					gradientInnerSlider.Parent = sliderInner

					sliderValue.Name = "sliderValue"
					sliderValue.Parent = sliderInner
					sliderValue.BackgroundColor3 = theme.accent
					sliderValue.BorderSizePixel = 0
					
					local range = option.max - option.min
					local position = option.value - option.min
					local percentage = position / range
					local size = percentage * 228

					size = math.floor(size + 0.5)
					
					btnSlider.MouseButton1Down:Connect(function()


						option.value = math.floor((((tonumber(option.max) - tonumber(option.min)) / 228) * sliderValue.AbsoluteSize.X) + tonumber(option.min)) or 0
						pcall(function()
							option.callback(option.value)
						end)
						sliderValue.Size = UDim2.new(0, math.clamp(Mouse.X - sliderValue.AbsolutePosition.X, 0, 228), 0, 13)
						moveconnection = Mouse.Move:Connect(function()
							option.value = math.floor((((tonumber(option.max) - tonumber(option.min)) / 228) * sliderValue.AbsoluteSize.X) + tonumber(option.min))
							textSlider.Text = option.text.." : "..option.value

							pcall(function()
								option.callback(option.value)
							end)

							sliderValue.Size = UDim2.new(0, math.clamp(Mouse.X - sliderValue.AbsolutePosition.X, 0, 228), 0, 13)


						end)
						
						clickconnection = btnSlider.MouseButton1Click:Connect(function()
							moveconnection:Disconnect()
							releaseconnection:Disconnect()

							option.value = math.floor((((tonumber(option.max) - tonumber(option.min)) / 228) * sliderValue.AbsoluteSize.X) + tonumber(option.min))
							textSlider.Text = option.text.." : "..option.value

							pcall(function()
								option.callback(option.value)
							end)

							sliderValue.Size = UDim2.new(0, math.clamp(Mouse.X - sliderValue.AbsolutePosition.X, 0, 228), 0, 13)
							clickconnection:Disconnect()

						end)
					

						releaseconnection = UserInputService.InputEnded:Connect(function(Mouse)
							if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
								moveconnection:Disconnect()
								releaseconnection:Disconnect()
								clickconnection:Disconnect()

							end
						end)
					end)


					
					sliderValue.Size = UDim2.new(0, size, 0, 13)
					sliderValue.ZIndex = 203

					gradientSliderValue.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(141, 141, 141))}
					gradientSliderValue.Rotation = 90
					gradientSliderValue.Name = "gradientSliderValue"
					gradientSliderValue.Parent = sliderValue
					
					
					
					option.callback(option.value)
					
					updateSection()

				end
				
				function utilities:AddKeybind(option)
					option = typeof(option) == "table" and option or {} 
					option.text = tostring(option.text) or "false"
					option.key = option.key or Enum.KeyCode.World95
					option.flag = option.flag or option.text
					option.callback = typeof(option.callback) == "function" and option.callback or function() end
					table.insert(library.options, option)

					local Key = Instance.new("Frame")
					local layoutKey = Instance.new("UIListLayout")
					local textKey = Instance.new("TextLabel")
					local paddingTextKey = Instance.new("UIPadding")
					local ignoreKey = Instance.new("Folder")
					local ignoreBtnKey = Instance.new("TextButton")
					local layoutIgnoreKey = Instance.new("UIListLayout")

					--Properties:

					Key.Name = "Key"
					Key.Parent = innerSection
					Key.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Key.BackgroundTransparency = 1.000
					Key.Size = UDim2.new(0, 230, 0, 20)
					Key.ZIndex = 200

					layoutKey.Name = "layoutKey"
					layoutKey.Parent = Key
					layoutKey.FillDirection = Enum.FillDirection.Horizontal
					layoutKey.SortOrder = Enum.SortOrder.LayoutOrder
					layoutKey.VerticalAlignment = Enum.VerticalAlignment.Center
					layoutKey.Padding = UDim.new(0, 8)

					textKey.Name = "textKey"
					textKey.Parent = Key
					textKey.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					textKey.BackgroundTransparency = 1.000
					textKey.LayoutOrder = 1
					textKey.Size = UDim2.new(0, 185, 0, 20)
					textKey.ZIndex = 200
					textKey.Font = Enum.Font.Jura
					textKey.Text = option.text
					textKey.TextColor3 = Color3.fromRGB(255, 255, 255)
					textKey.TextSize = 15.000
					textKey.TextStrokeColor3 = Color3.fromRGB(16, 16, 16)
					textKey.TextStrokeTransparency = 0.300
					textKey.TextXAlignment = Enum.TextXAlignment.Left

					paddingTextKey.Name = "paddingTextKey"
					paddingTextKey.Parent = textKey
					paddingTextKey.PaddingBottom = UDim.new(0, 1)

					ignoreKey.Name = "ignoreKey"
					ignoreKey.Parent = Key

					ignoreBtnKey.Name = "ignoreBtnKey"
					ignoreBtnKey.Parent = ignoreKey
					ignoreBtnKey.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					ignoreBtnKey.BackgroundTransparency = 1.000
					ignoreBtnKey.Position = UDim2.new(0.778260887, 0, 0.125, 0)
					local newBindButtonSize =
						TextService:GetTextSize(
							ignoreBtnKey.Text,
							ignoreBtnKey.TextSize,
							ignoreBtnKey.Font,
							Vector2.new(math.huge, math.huge)
						)
					ignoreBtnKey.Size = UDim2.new(0, 5 + newBindButtonSize.X, 0, 15)
					ignoreBtnKey.ZIndex = 201
					ignoreBtnKey.Font = Enum.Font.Jura
					ignoreBtnKey.Text = "[ "..option.key.Name.." ]"
					ignoreBtnKey.TextColor3 = Color3.fromRGB(154, 154, 154)
					ignoreBtnKey.TextSize = 14.000
					ignoreBtnKey.TextXAlignment = Enum.TextXAlignment.Right
					
					ignoreBtnKey.MouseEnter:Connect(function()
						ignoreBtnKey.TextTransparency = theme.transparency
					end)
					ignoreBtnKey.MouseLeave:Connect(function()
						ignoreBtnKey.TextTransparency = 0
					end)

					layoutIgnoreKey.Name = "layoutIgnoreKey"
					layoutIgnoreKey.Parent = ignoreKey
					layoutIgnoreKey.HorizontalAlignment = Enum.HorizontalAlignment.Right
					layoutIgnoreKey.SortOrder = Enum.SortOrder.LayoutOrder
					layoutIgnoreKey.VerticalAlignment = Enum.VerticalAlignment.Center
					
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
						World95 = "?"


					}
					ignoreBtnKey.Text = "[ "..tostring(shorts[option.key.Name]).." ]" or "[ "..tostring(option.key.Name).." ]"
					if ignoreBtnKey.Text:match("nil") then
						ignoreBtnKey.Text = "[ "..tostring(option.key.Name).." ]"
					end
					
					local tog = false
					local chosenKeybind = option.key.Name
					ignoreBtnKey.MouseButton1Click:Connect(
						function()
							ignoreBtnKey.Text = "[ ... ]"
							local inputWait = UserInputService.InputBegan:wait()
							if inputWait.KeyCode.Name ~= "Unknown" then
								local K = shorts[inputWait.KeyCode.Name] or inputWait.KeyCode.Name
								ignoreBtnKey.Text = "[ "..K.." ]"
								chosenKeybind = inputWait.KeyCode.Name
								tog = true
							end
						end
					)
					UserInputService.InputBegan:Connect(
						function(c, p)
							if not p then
								if c.KeyCode.Name == chosenKeybind then
									if tog == true then
										tog = false
									else
										tog = true
									end
									option.callback(tog)
								
								end
							end
						end
					)
					
				

					
					updateSection()
					
				end
				
				function utilities:AddToggleBind(option)
					option = typeof(option) == "table" and option or {} 
					option.text = tostring(option.text)
					option.flag = option.flag or option.text	
					option.enabled = typeof(option.enabled) == "boolean" and option.enabled or false
					option.risky = typeof(option.risky) == "boolean" and option.risky or false
					option.key = option.key or Enum.KeyCode.World95
					option.callback_toggle = typeof(option.callback_toggle) == "function" and option.callback_toggle or function() end
					option.callback_key = typeof(option.callback_key) == "function" and option.callback_key or function() end

					table.insert(library.options, option)

					local Toggle = Instance.new("Frame")
					local layoutToggle = Instance.new("UIListLayout")
					local textToggle = Instance.new("TextLabel")
					local paddingTextToggle = Instance.new("UIPadding")
					local toggleButton = Instance.new("TextButton")
					local toggleButtonInner = Instance.new("Frame")
					local gradientToggleButton = Instance.new("UIGradient")
					local layoutToggleButton = Instance.new("UIListLayout")
					local ignoreToggle = Instance.new("Folder")
					local btnIgnoreToggle = Instance.new("TextButton")
					local layoutIgnoreToggle = Instance.new("UIListLayout")

					Toggle.Name = "Toggle"
					Toggle.Parent = innerSection
					Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Toggle.BackgroundTransparency = 1.000
					Toggle.Size = UDim2.new(0, 230, 0, 20)
					Toggle.ZIndex = 200

					layoutToggle.Name = "layoutToggle"
					layoutToggle.Parent = Toggle
					layoutToggle.FillDirection = Enum.FillDirection.Horizontal
					layoutToggle.SortOrder = Enum.SortOrder.LayoutOrder
					layoutToggle.VerticalAlignment = Enum.VerticalAlignment.Center
					layoutToggle.Padding = UDim.new(0, 8)

					if option.risky then
						textToggle.TextColor3 = Color3.fromRGB(255, 55, 55)
						textToggle.TextTransparency = 0.3
					else
						textToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
						textToggle.TextTransparency = 0
					end

					textToggle.Name = "textToggle"
					textToggle.Parent = Toggle
					textToggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					textToggle.BackgroundTransparency = 1.000
					textToggle.LayoutOrder = 1
					textToggle.Size = UDim2.new(0, 200, 0, 20)
					textToggle.ZIndex = 200
					textToggle.Font = Enum.Font.Jura
					textToggle.Text = option.text
					textToggle.TextSize = 15.000
					textToggle.TextStrokeColor3 = Color3.fromRGB(16, 16, 16)
					textToggle.TextStrokeTransparency = 0.300
					textToggle.TextXAlignment = Enum.TextXAlignment.Left

					paddingTextToggle.Name = "paddingTextToggle"
					paddingTextToggle.Parent = textToggle
					paddingTextToggle.PaddingBottom = UDim.new(0, 1)

					toggleButton.Name = "toggleButton"
					toggleButton.Parent = Toggle
					toggleButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
					toggleButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
					toggleButton.Size = UDim2.new(0, 13, 0, 13)
					toggleButton.ZIndex = 201
					toggleButton.AutoButtonColor = false
					toggleButton.Font = Enum.Font.SourceSans
					toggleButton.Text = ""
					toggleButton.TextColor3 = Color3.fromRGB(0, 0, 0)
					toggleButton.TextSize = 14.000

					toggleButtonInner.Name = "toggleButtonInner"
					toggleButtonInner.Parent = toggleButton
					if option.enabled == true then
						toggleButtonInner.BackgroundColor3 = theme.accent
					else
						toggleButtonInner.BackgroundColor3 = theme.bgDark

					end
					toggleButtonInner.BorderColor3 = Color3.fromRGB(255, 50, 50)
					toggleButtonInner.BorderSizePixel = 0
					toggleButtonInner.Size = UDim2.new(0, 11, 0, 11)
					toggleButtonInner.ZIndex = 201

					gradientToggleButton.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(141, 141, 141))}
					gradientToggleButton.Rotation = 90
					gradientToggleButton.Name = "gradientToggleButton"
					gradientToggleButton.Parent = toggleButtonInner

					layoutToggleButton.Name = "layoutToggleButton"
					layoutToggleButton.Parent = toggleButton
					layoutToggleButton.HorizontalAlignment = Enum.HorizontalAlignment.Center
					layoutToggleButton.SortOrder = Enum.SortOrder.LayoutOrder
					layoutToggleButton.VerticalAlignment = Enum.VerticalAlignment.Center

					ignoreToggle.Name = "ignoreToggle"
					ignoreToggle.Parent = Toggle

					btnIgnoreToggle.Name = "btnIgnoreToggle"
					btnIgnoreToggle.Parent = ignoreToggle
					btnIgnoreToggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					btnIgnoreToggle.BackgroundTransparency = 1.000
					btnIgnoreToggle.Size = UDim2.new(0, 168, 0, 20)
					btnIgnoreToggle.ZIndex = 203
					btnIgnoreToggle.Font = Enum.Font.SourceSans
					btnIgnoreToggle.Text = ""
					btnIgnoreToggle.TextColor3 = Color3.fromRGB(0, 0, 0)
					btnIgnoreToggle.TextSize = 14.000
					

					layoutIgnoreToggle.Name = "layoutIgnoreToggle"
					layoutIgnoreToggle.Parent = ignoreToggle
					layoutIgnoreToggle.SortOrder = Enum.SortOrder.LayoutOrder

					

					local ignoreKey = Instance.new("Folder")
					local ignoreBtnKey = Instance.new("TextButton")
					local layoutIgnoreKey = Instance.new("UIListLayout")


					ignoreKey.Name = "ignoreKey"
					ignoreKey.Parent = Toggle

					ignoreBtnKey.Name = "ignoreBtnKey"
					ignoreBtnKey.Parent = ignoreKey
					ignoreBtnKey.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					ignoreBtnKey.BackgroundTransparency = 1.000
					ignoreBtnKey.Position = UDim2.new(0.778260887, 0, 0.125, 0)
					local newBindButtonSize =
						TextService:GetTextSize(
							ignoreBtnKey.Text,
							ignoreBtnKey.TextSize,
							ignoreBtnKey.Font,
							Vector2.new(math.huge, math.huge)
						)
					ignoreBtnKey.Size = UDim2.new(0, 1 + newBindButtonSize.X, 0, 15)
					ignoreBtnKey.ZIndex = 201
					ignoreBtnKey.Font = Enum.Font.Jura
					ignoreBtnKey.Text = "[ "..option.key.Name.." ]"
					ignoreBtnKey.TextColor3 = Color3.fromRGB(154, 154, 154)
					ignoreBtnKey.TextSize = 14.000
					ignoreBtnKey.TextXAlignment = Enum.TextXAlignment.Right

					ignoreBtnKey.MouseEnter:Connect(function()
						ignoreBtnKey.TextTransparency = theme.transparency
					end)
					ignoreBtnKey.MouseLeave:Connect(function()
						ignoreBtnKey.TextTransparency = 0
					end)

					layoutIgnoreKey.Name = "layoutIgnoreKey"
					layoutIgnoreKey.Parent = ignoreKey
					layoutIgnoreKey.HorizontalAlignment = Enum.HorizontalAlignment.Right
					layoutIgnoreKey.SortOrder = Enum.SortOrder.LayoutOrder
					layoutIgnoreKey.VerticalAlignment = Enum.VerticalAlignment.Center

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
						World95 = "?"


					}
					ignoreBtnKey.Text = "[ "..tostring(shorts[option.key.Name]).." ]" or "[ "..tostring(option.key.Name).." ]"
					if ignoreBtnKey.Text:match("nil") then
						ignoreBtnKey.Text = "[ "..tostring(option.key.Name).." ]"
					end
					
					local binded = false

					local tog = option.enabled


					btnIgnoreToggle.MouseEnter:Connect(function()
						toggleButton.BorderColor3 = theme.accent
					end)
					btnIgnoreToggle.MouseLeave:Connect(function()
						toggleButton.BorderColor3 = theme.borderDark
					end)


					local chosenKeybind = option.key.Name
					ignoreBtnKey.MouseButton1Click:Connect(
						function()
							ignoreBtnKey.Text = "[ ... ]"
							local inputWait = UserInputService.InputBegan:wait()
							if inputWait.KeyCode.Name ~= "Unknown" then
								local K = shorts[inputWait.KeyCode.Name] or inputWait.KeyCode.Name
								ignoreBtnKey.Text = "[ "..K.." ]"
								chosenKeybind = inputWait.KeyCode.Name
								binded = true
								tog = true
							end
						end
					)
					
					btnIgnoreToggle.MouseButton1Click:Connect(function()
						tog = not tog
						option.callback_toggle(tog)
						if tog then
							binded = true
							toggleButtonInner.BackgroundColor3 = theme.accent
						else
							binded = false
							toggleButtonInner.BackgroundColor3 = theme.bgDark
						end
					end)
					
					
					UserInputService.InputBegan:Connect(
						function(c, p)
							if not p then
								if c.KeyCode.Name == chosenKeybind then
									if binded == true then
										binded = false
										tog = false
										toggleButtonInner.BackgroundColor3 = theme.bgDark
									else
										binded = true
										tog = true
										toggleButtonInner.BackgroundColor3 = theme.accent

									end
									option.callback_key(binded)
									option.callback_toggle(tog)


								end
							end
						end
					)
					
					if option.enabled == true then
						option.callback_toggle(tog)
					end

					updateSection()
					
				end
				
				function utilities:AddColor(option)
					option = typeof(option) == "table" and option or {} 
					option.text = tostring(option.text)
					option.flag = option.flag or option.text	
					option.color = option.color or Color3.fromRGB(130,130,0)
					option.callback = typeof(option.callback) == "function" and option.callback or function() end

					-- Instances:

					local Color = Instance.new("Frame")
					local layoutColor = Instance.new("UIListLayout")
					local textColor = Instance.new("TextLabel")
					local paddingTextKey = Instance.new("UIPadding")
					local ignoreColor = Instance.new("Folder")
					local ignoreBtnColor = Instance.new("TextButton")
					local layoutIgnoreBtnColor = Instance.new("UIListLayout")
					local ignoreColorInner = Instance.new("Frame")
					local gradientSliderValue = Instance.new("UIGradient")
					local ignoreColorPortal = Instance.new("Folder")
					local ColorFrame = Instance.new("Frame")
					local UIListLayout = Instance.new("UIListLayout")
					local innerColorFrame = Instance.new("Frame")
					local Hue = Instance.new("ImageLabel")
					local skibbidi = Instance.new("TextButton")
					local cursorH = Instance.new("ImageLabel")
					local Picker = Instance.new("ImageLabel")
					local ribbidi = Instance.new("TextButton")
					local cursorP = Instance.new("ImageLabel")
					local UICorner = Instance.new("UICorner")
					local display = Instance.new("Frame")
					local gradienBtnButton = Instance.new("UIGradient")
					local txtDisplay = Instance.new("TextLabel")
					local layoutIgnoreColor = Instance.new("UIListLayout")

					--Properties:

					Color.Name = "Color"
					Color.Parent = innerSection
					Color.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Color.BackgroundTransparency = 1.000
					Color.Size = UDim2.new(0, 230, 0, 20)
					Color.ZIndex = 200

					layoutColor.Name = "layoutColor"
					layoutColor.Parent = Color
					layoutColor.FillDirection = Enum.FillDirection.Horizontal
					layoutColor.SortOrder = Enum.SortOrder.LayoutOrder
					layoutColor.VerticalAlignment = Enum.VerticalAlignment.Center
					layoutColor.Padding = UDim.new(0, 8)

					textColor.Name = "textColor"
					textColor.Parent = Color
					textColor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					textColor.BackgroundTransparency = 1.000
					textColor.LayoutOrder = 1
					textColor.Size = UDim2.new(0, 185, 0, 20)
					textColor.ZIndex = 200
					textColor.Font = Enum.Font.Jura
					textColor.Text = "Color"
					textColor.TextColor3 = Color3.fromRGB(255, 255, 255)
					textColor.TextSize = 15.000
					textColor.TextStrokeColor3 = Color3.fromRGB(16, 16, 16)
					textColor.TextStrokeTransparency = 0.300
					textColor.TextXAlignment = Enum.TextXAlignment.Left

					paddingTextKey.Name = "paddingTextKey"
					paddingTextKey.Parent = textColor
					paddingTextKey.PaddingBottom = UDim.new(0, 1)

					ignoreColor.Name = "ignoreColor"
					ignoreColor.Parent = Color

					ignoreBtnColor.Name = "ignoreBtnColor"
					ignoreBtnColor.Parent = ignoreColor
					ignoreBtnColor.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
					ignoreBtnColor.BorderColor3 = Color3.fromRGB(0, 0, 0)
					ignoreBtnColor.Position = UDim2.new(0.778260887, 0, 0.125, 0)
					ignoreBtnColor.Size = UDim2.new(0, 25, 0, 14)
					ignoreBtnColor.ZIndex = 201
					ignoreBtnColor.Font = Enum.Font.Jura
					ignoreBtnColor.Text = ""
					ignoreBtnColor.TextColor3 = Color3.fromRGB(154, 154, 154)
					ignoreBtnColor.TextSize = 14.000
					ignoreBtnColor.TextXAlignment = Enum.TextXAlignment.Right
					ignoreBtnColor.AutoButtonColor = false

					layoutIgnoreBtnColor.Name = "layoutIgnoreBtnColor"
					layoutIgnoreBtnColor.Parent = ignoreBtnColor
					layoutIgnoreBtnColor.HorizontalAlignment = Enum.HorizontalAlignment.Center
					layoutIgnoreBtnColor.SortOrder = Enum.SortOrder.LayoutOrder
					layoutIgnoreBtnColor.VerticalAlignment = Enum.VerticalAlignment.Center

					ignoreColorInner.Name = "ignoreColorInner"
					ignoreColorInner.Parent = ignoreBtnColor
					ignoreColorInner.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					ignoreColorInner.BorderSizePixel = 0
					ignoreColorInner.Size = UDim2.new(0, 23, 0, 12)
					ignoreColorInner.ZIndex = 202

					gradientSliderValue.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(141, 141, 141))}
					gradientSliderValue.Rotation = 90
					gradientSliderValue.Name = "gradientSliderValue"
					gradientSliderValue.Parent = ignoreColorInner

					ignoreColorPortal.Name = "ignoreColorPortal"
					ignoreColorPortal.Parent = ignoreBtnColor

					ColorFrame.Name = "ColorFrame"
					ColorFrame.Parent = ignoreColorPortal
					ColorFrame.AnchorPoint = Vector2.new(0.5, 0.5)
					ColorFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
					ColorFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
					ColorFrame.Position = UDim2.new(-2.07999992, 0, 7, 0)
					ColorFrame.Size = UDim2.new(0, 154, 0, 158)
					ColorFrame.ZIndex = 205
					ColorFrame.Visible = false

					UIListLayout.Parent = ColorFrame
					UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
					UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

					innerColorFrame.Name = "innerColorFrame"
					innerColorFrame.Parent = ColorFrame
					innerColorFrame.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
					innerColorFrame.BorderSizePixel = 0
					innerColorFrame.Position = UDim2.new(0.00649350649, 0, 0.00518134702, 0)
					innerColorFrame.Size = UDim2.new(0, 152, 0, 156)
					innerColorFrame.ZIndex = 206

					Hue.Name = "Hue"
					Hue.Parent = innerColorFrame
					Hue.AnchorPoint = Vector2.new(1, 0)
					Hue.BackgroundColor3 = Color3.fromRGB(248, 248, 248)
					Hue.BorderSizePixel = 0
					Hue.Position = UDim2.new(0.962842047, 0, 0.0360000357, 0)
					Hue.Size = UDim2.new(0, 15, 0, 119)
					Hue.ZIndex = 208
					Hue.Image = "rbxassetid://2615692420"

					skibbidi.Name = "skibbidi"
					skibbidi.Parent = Hue
					skibbidi.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					skibbidi.BackgroundTransparency = 1.000
					skibbidi.Size = UDim2.new(0, 15, 0, 120)
					skibbidi.Font = Enum.Font.SourceSans
					skibbidi.Text = ""
					skibbidi.TextColor3 = Color3.fromRGB(0, 0, 0)
					skibbidi.TextSize = 14.000

					cursorH.Name = "cursorH"
					cursorH.Parent = Hue
					cursorH.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					cursorH.BorderSizePixel = 0
					cursorH.Position = UDim2.new(0, 0, 0, 0)
					cursorH.Size = UDim2.new(0, 15, 0, 2)
					cursorH.ZIndex = 300
					cursorH.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

					Picker.Name = "Picker"
					Picker.Parent = innerColorFrame
					Picker.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
					Picker.BorderSizePixel = 0
					Picker.Position = UDim2.new(0.036852777, 0, 0.0362149999, 0)
					Picker.Size = UDim2.new(0, 120, 0, 120)
					Picker.ZIndex = 208
					Picker.Image = "rbxassetid://2615689005"

					ribbidi.Name = "ribbidi"
					ribbidi.Parent = Picker
					ribbidi.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					ribbidi.BackgroundTransparency = 1.000
					ribbidi.Size = UDim2.new(0, 120, 0, 120)
					ribbidi.Font = Enum.Font.SourceSans
					ribbidi.Text = ""
					ribbidi.TextColor3 = Color3.fromRGB(0, 0, 0)
					ribbidi.TextSize = 14.000

					cursorP.Name = "cursorP"
					cursorP.Parent = Picker
					cursorP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					cursorP.Size = UDim2.new(0, 6, 0, 6)
					cursorP.ZIndex = 300
					cursorP.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
					cursorP.ImageTransparency = 1.000

					UICorner.CornerRadius = UDim.new(0, 999)
					UICorner.Parent = cursorP

					display.Name = "display"
					display.Parent = innerColorFrame
					display.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					display.BorderSizePixel = 0
					display.Position = UDim2.new(0.0370000005, 0, 0.836000025, 0)
					display.Size = UDim2.new(0, 20, 0, 20)
					display.ZIndex = 207

					gradienBtnButton.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(190, 190, 190))}
					gradienBtnButton.Rotation = 90
					gradienBtnButton.Name = "gradienBtnButton"
					gradienBtnButton.Parent = innerColorFrame

					txtDisplay.Name = "txtDisplay"
					txtDisplay.Parent = innerColorFrame
					txtDisplay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					txtDisplay.BackgroundTransparency = 1.000
					txtDisplay.BorderSizePixel = 0
					txtDisplay.Position = UDim2.new(0.223947227, 0, 0.835775137, 0)
					txtDisplay.Size = UDim2.new(0, 106, 0, 20)
					txtDisplay.ZIndex = 208
					txtDisplay.Font = Enum.Font.Jura
					txtDisplay.Text = "255, 255, 255"
					txtDisplay.TextColor3 = Color3.fromRGB(255, 255, 255)
					txtDisplay.TextSize = 14.000
					txtDisplay.TextXAlignment = Enum.TextXAlignment.Left

					layoutIgnoreColor.Name = "layoutIgnoreColor"
					layoutIgnoreColor.Parent = ignoreColor
					layoutIgnoreColor.HorizontalAlignment = Enum.HorizontalAlignment.Right
					layoutIgnoreColor.SortOrder = Enum.SortOrder.LayoutOrder
					layoutIgnoreColor.VerticalAlignment = Enum.VerticalAlignment.Center
					
					
					local isOpened = true
					
					ignoreBtnColor.MouseButton1Click:Connect(function()
						isOpened = not isOpened
						if isOpened == false then
							ColorFrame.Visible = true
						else
							ColorFrame.Visible = false

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
						movec = picker.MouseMoved:connect(function(x, y)
							local xPercent = (x-picker.AbsolutePosition.X)/picker.AbsoluteSize.X
							local yPercent = (y-picker.AbsolutePosition.Y-36)/picker.AbsoluteSize.Y
							local color = white:lerp(picker.BackgroundColor3, xPercent):lerp(black, yPercent)
							testFrame.BackgroundColor3 = color

							local posX = mouse.X - picker.AbsolutePosition.X
							local posY = mouse.Y - picker.AbsolutePosition.Y

							curozP.Position = UDim2.new(0, posX - 3 , 0, posY - 3)
							
							local er,ge,be = math.floor((option.color.R*255)+0.5),math.floor((option.color.G*255)+0.5),math.floor((option.color.B*255)+0.5)
							ignoreColorInner.BackgroundColor3 = Color3.fromRGB(er,ge,be)
							option.callback(Color3.fromRGB(option))							
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
					ignoreColorInner.BackgroundColor3 = option.color
					
					updateSection()
				end
				
				function utilities:AddToggleColor(option)
					option = typeof(option) == "table" and option or {} 
					option.text = tostring(option.text)
					option.enabled = typeof(option.enabled) == "boolean" and option.enabled or false
					option.risky = typeof(option.risky) == "boolean" and option.risky or false
					option.cOpen = false
					option.flag = option.flag or option.text	
					option.color = option.color or Color3.fromRGB(255, 255, 255)
					option.callback_toggle = typeof(option.callback_toggle) == "function" and option.callback_toggle or function() end
					option.callback_color = typeof(option.callback_color) == "function" and option.callback_color or function() end
					
					local Toggle = Instance.new("Frame")
					local layoutToggle = Instance.new("UIListLayout")
					local textToggle = Instance.new("TextLabel")
					local paddingTextToggle = Instance.new("UIPadding")
					local toggleButton = Instance.new("TextButton")
					local toggleButtonInner = Instance.new("Frame")
					local gradientToggleButton = Instance.new("UIGradient")
					local layoutToggleButton = Instance.new("UIListLayout")
					local ignoreToggle = Instance.new("Folder")
					local btnIgnoreToggle = Instance.new("TextButton")
					local layoutIgnoreToggle = Instance.new("UIListLayout")
					local ignoreColor = Instance.new("Folder")
					local ignoreBtnColor = Instance.new("TextButton")
					local layoutIgnoreBtnColor = Instance.new("UIListLayout")
					local ignoreColorInner = Instance.new("Frame")
					local gradientSliderValue = Instance.new("UIGradient")
					local ignoreColorPortal = Instance.new("Folder")
					local ColorFrame = Instance.new("Frame")
					local UIListLayout = Instance.new("UIListLayout")
					local innerColorFrame = Instance.new("Frame")
					local Hue = Instance.new("ImageLabel")
					local skibbidi = Instance.new("TextButton")
					local cursorH = Instance.new("ImageLabel")
					local Picker = Instance.new("ImageLabel")
					local ribbidi = Instance.new("TextButton")
					local cursorP = Instance.new("ImageLabel")
					local UICorner = Instance.new("UICorner")
					local display = Instance.new("Frame")
					local gradienBtnButton = Instance.new("UIGradient")
					local txtDisplay = Instance.new("TextLabel")
					local layoutIgnoreColor = Instance.new("UIListLayout")

					--Properties:

					Toggle.Name = "ToggleColr"
					Toggle.Parent = innerSection
					Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Toggle.BackgroundTransparency = 1.000
					Toggle.Size = UDim2.new(0, 230, 0, 20)
					Toggle.ZIndex = 200

					layoutToggle.Name = "layoutToggle"
					layoutToggle.Parent = Toggle
					layoutToggle.FillDirection = Enum.FillDirection.Horizontal
					layoutToggle.SortOrder = Enum.SortOrder.LayoutOrder
					layoutToggle.VerticalAlignment = Enum.VerticalAlignment.Center
					layoutToggle.Padding = UDim.new(0, 8)

					textToggle.Name = "textToggle"
					textToggle.Parent = Toggle
					textToggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					textToggle.BackgroundTransparency = 1.000
					textToggle.LayoutOrder = 1
					textToggle.Size = UDim2.new(0, 200, 0, 20)
					textToggle.ZIndex = 200
					textToggle.Font = Enum.Font.Jura
					textToggle.Text = option.text
					textToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
					textToggle.TextSize = 15.000
					textToggle.TextStrokeColor3 = Color3.fromRGB(16, 16, 16)
					textToggle.TextStrokeTransparency = 0.300
					textToggle.TextXAlignment = Enum.TextXAlignment.Left

					paddingTextToggle.Name = "paddingTextToggle"
					paddingTextToggle.Parent = textToggle
					paddingTextToggle.PaddingBottom = UDim.new(0, 1)

					toggleButton.Name = "toggleButton"
					toggleButton.Parent = Toggle
					toggleButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
					toggleButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
					toggleButton.Size = UDim2.new(0, 13, 0, 13)
					toggleButton.ZIndex = 201
					toggleButton.AutoButtonColor = false
					toggleButton.Font = Enum.Font.SourceSans
					toggleButton.Text = ""
					toggleButton.TextColor3 = Color3.fromRGB(0, 0, 0)
					toggleButton.TextSize = 14.000

					toggleButtonInner.Name = "toggleButtonInner"
					toggleButtonInner.Parent = toggleButton
					toggleButtonInner.BackgroundColor3 = theme.accent
					toggleButtonInner.BorderColor3 = Color3.fromRGB(255, 50, 50)
					toggleButtonInner.BorderSizePixel = 0
					toggleButtonInner.Size = UDim2.new(0, 11, 0, 11)
					toggleButtonInner.ZIndex = 201

					gradientToggleButton.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(141, 141, 141))}
					gradientToggleButton.Rotation = 90
					gradientToggleButton.Name = "gradientToggleButton"
					gradientToggleButton.Parent = toggleButtonInner

					layoutToggleButton.Name = "layoutToggleButton"
					layoutToggleButton.Parent = toggleButton
					layoutToggleButton.HorizontalAlignment = Enum.HorizontalAlignment.Center
					layoutToggleButton.SortOrder = Enum.SortOrder.LayoutOrder
					layoutToggleButton.VerticalAlignment = Enum.VerticalAlignment.Center

					ignoreToggle.Name = "ignoreToggle"
					ignoreToggle.Parent = Toggle

					btnIgnoreToggle.Name = "btnIgnoreToggle"
					btnIgnoreToggle.Parent = ignoreToggle
					btnIgnoreToggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					btnIgnoreToggle.BackgroundTransparency = 1.000
					btnIgnoreToggle.Size = UDim2.new(0, 168, 0, 20)
					btnIgnoreToggle.ZIndex = 203
					btnIgnoreToggle.Font = Enum.Font.SourceSans
					btnIgnoreToggle.Text = ""
					btnIgnoreToggle.TextColor3 = Color3.fromRGB(0, 0, 0)
					btnIgnoreToggle.TextSize = 14.000

					layoutIgnoreToggle.Name = "layoutIgnoreToggle"
					layoutIgnoreToggle.Parent = ignoreToggle
					layoutIgnoreToggle.SortOrder = Enum.SortOrder.LayoutOrder

					ignoreColor.Name = "ignoreColor"
					ignoreColor.Parent = Toggle

					ignoreBtnColor.Name = "ignoreBtnColor"
					ignoreBtnColor.Parent = ignoreColor
					ignoreBtnColor.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
					ignoreBtnColor.BorderColor3 = Color3.fromRGB(0, 0, 0)
					ignoreBtnColor.Position = UDim2.new(0.778260887, 0, 0.125, 0)
					ignoreBtnColor.Size = UDim2.new(0, 25, 0, 14)
					ignoreBtnColor.ZIndex = 201
					ignoreBtnColor.Font = Enum.Font.Jura
					ignoreBtnColor.Text = ""
					ignoreBtnColor.TextColor3 = Color3.fromRGB(154, 154, 154)
					ignoreBtnColor.TextSize = 14.000
					ignoreBtnColor.TextXAlignment = Enum.TextXAlignment.Right

					layoutIgnoreBtnColor.Name = "layoutIgnoreBtnColor"
					layoutIgnoreBtnColor.Parent = ignoreBtnColor
					layoutIgnoreBtnColor.HorizontalAlignment = Enum.HorizontalAlignment.Center
					layoutIgnoreBtnColor.SortOrder = Enum.SortOrder.LayoutOrder
					layoutIgnoreBtnColor.VerticalAlignment = Enum.VerticalAlignment.Center

					ignoreColorInner.Name = "ignoreColorInner"
					ignoreColorInner.Parent = ignoreBtnColor
					ignoreColorInner.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					ignoreColorInner.BorderSizePixel = 0
					ignoreColorInner.Size = UDim2.new(0, 23, 0, 12)
					ignoreColorInner.ZIndex = 202

					gradientSliderValue.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(141, 141, 141))}
					gradientSliderValue.Rotation = 90
					gradientSliderValue.Name = "gradientSliderValue"
					gradientSliderValue.Parent = ignoreColorInner

					ignoreColorPortal.Name = "ignoreColorPortal"
					ignoreColorPortal.Parent = ignoreBtnColor

					ColorFrame.Name = "ColorFrame"
					ColorFrame.Parent = ignoreColorPortal
					ColorFrame.AnchorPoint = Vector2.new(0.5, 0.5)
					ColorFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
					ColorFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
					ColorFrame.Position = UDim2.new(-2.07999992, 0, 7, 0)
					ColorFrame.Size = UDim2.new(0, 154, 0, 158)
					ColorFrame.ZIndex = 205
					ColorFrame.Visible = false
					

					UIListLayout.Parent = ColorFrame
					UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
					UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

					innerColorFrame.Name = "innerColorFrame"
					innerColorFrame.Parent = ColorFrame
					innerColorFrame.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
					innerColorFrame.BorderSizePixel = 0
					innerColorFrame.Position = UDim2.new(0.00649350649, 0, 0.00518134702, 0)
					innerColorFrame.Size = UDim2.new(0, 152, 0, 156)
					innerColorFrame.ZIndex = 206

					Hue.Name = "Hue"
					Hue.Parent = innerColorFrame
					Hue.AnchorPoint = Vector2.new(1, 0)
					Hue.BackgroundColor3 = Color3.fromRGB(248, 248, 248)
					Hue.BorderSizePixel = 0
					Hue.Position = UDim2.new(0.962842047, 0, 0.0360000357, 0)
					Hue.Size = UDim2.new(0, 15, 0, 119)
					Hue.ZIndex = 208
					Hue.Image = "rbxassetid://2615692420"

					skibbidi.Name = "skibbidi"
					skibbidi.Parent = Hue
					skibbidi.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					skibbidi.BackgroundTransparency = 1.000
					skibbidi.Size = UDim2.new(0, 15, 0, 120)
					skibbidi.Font = Enum.Font.SourceSans
					skibbidi.Text = ""
					skibbidi.TextColor3 = Color3.fromRGB(0, 0, 0)
					skibbidi.TextSize = 14.000

					cursorH.Name = "cursorH"
					cursorH.Parent = Hue
					cursorH.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					cursorH.BorderSizePixel = 0
					cursorH.Position = UDim2.new(0, 0, 0, 1)
					cursorH.Size = UDim2.new(0, 15, 0, 2)
					cursorH.ZIndex = 300
					cursorH.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

					Picker.Name = "Picker"
					Picker.Parent = innerColorFrame
					Picker.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
					Picker.BorderSizePixel = 0
					Picker.Position = UDim2.new(0.036852777, 0, 0.0362149999, 0)
					Picker.Size = UDim2.new(0, 120, 0, 120)
					Picker.ZIndex = 208
					Picker.Image = "rbxassetid://2615689005"

					ribbidi.Name = "ribbidi"
					ribbidi.Parent = Picker
					ribbidi.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					ribbidi.BackgroundTransparency = 1.000
					ribbidi.Size = UDim2.new(0, 120, 0, 120)
					ribbidi.Font = Enum.Font.SourceSans
					ribbidi.Text = ""
					ribbidi.TextColor3 = Color3.fromRGB(0, 0, 0)
					ribbidi.TextSize = 14.000

					cursorP.Name = "cursorP"
					cursorP.Parent = Picker
					cursorP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					cursorP.Size = UDim2.new(0, 6, 0, 6)
					cursorP.ZIndex = 300
					cursorP.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
					cursorP.ImageTransparency = 1.000

					UICorner.CornerRadius = UDim.new(0, 999)
					UICorner.Parent = cursorP
					
					if option.enabled == true then
						toggleButtonInner.BackgroundColor3 = theme.accent
					else
						toggleButtonInner.BackgroundColor3 = theme.bgDark

					end

					display.Name = "display"
					display.Parent = innerColorFrame
					display.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					display.BorderSizePixel = 0
					display.Position = UDim2.new(0.0370000005, 0, 0.836000025, 0)
					display.Size = UDim2.new(0, 20, 0, 20)
					display.ZIndex = 207

					gradienBtnButton.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(190, 190, 190))}
					gradienBtnButton.Rotation = 90
					gradienBtnButton.Name = "gradienBtnButton"
					gradienBtnButton.Parent = innerColorFrame

					txtDisplay.Name = "txtDisplay"
					txtDisplay.Parent = innerColorFrame
					txtDisplay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					txtDisplay.BackgroundTransparency = 1.000
					txtDisplay.BorderSizePixel = 0
					txtDisplay.Position = UDim2.new(0.223947227, 0, 0.835775137, 0)
					txtDisplay.Size = UDim2.new(0, 106, 0, 20)
					txtDisplay.ZIndex = 208
					txtDisplay.Font = Enum.Font.Jura
					txtDisplay.Text = "255, 255, 255"
					txtDisplay.TextColor3 = Color3.fromRGB(255, 255, 255)
					txtDisplay.TextSize = 14.000
					txtDisplay.TextXAlignment = Enum.TextXAlignment.Left

					layoutIgnoreColor.Name = "layoutIgnoreColor"
					layoutIgnoreColor.Parent = ignoreColor
					layoutIgnoreColor.HorizontalAlignment = Enum.HorizontalAlignment.Right
					layoutIgnoreColor.SortOrder = Enum.SortOrder.LayoutOrder
					layoutIgnoreColor.VerticalAlignment = Enum.VerticalAlignment.Center
					
					local isDADDYVal = Instance.new("BoolValue", ColorFrame)
					isDADDYVal.Name = "isDADDYVal"
					isDADDYVal.Value = true
					
					
					if option.risky then
						textToggle.TextColor3 = Color3.fromRGB(255, 55, 55)
						textToggle.TextTransparency = 0.3
					else
						textToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
						textToggle.TextTransparency = 0
					end

					
					local isOpened = false

					ignoreBtnColor.MouseButton1Click:Connect(function()
						isDADDYVal.Value = not isDADDYVal.Value
						if isDADDYVal.Value == false then
							for i, v in next, innerSection:GetChildren() do
								if v.Name == "ToggleColr" then
									v.ignoreColor.ignoreBtnColor.ignoreColorPortal.ColorFrame.Visible = false
									v.ignoreColor.ignoreBtnColor.ignoreColorPortal.ColorFrame.isDADDYVal.Value = true
								end
							end
							ColorFrame.Visible = true
							isDADDYVal.Value = false
						else
							ColorFrame.Visible = false

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
						movec = picker.MouseMoved:connect(function(x, y)
							local xPercent = (x-picker.AbsolutePosition.X)/picker.AbsoluteSize.X
							local yPercent = (y-picker.AbsolutePosition.Y-36)/picker.AbsoluteSize.Y

							local color = white:lerp(picker.BackgroundColor3, xPercent):lerp(black, yPercent) 
							testFrame.BackgroundColor3 = color

							local posX = mouse.X - picker.AbsolutePosition.X
							local posY = mouse.Y - picker.AbsolutePosition.Y

							curozP.Position = UDim2.new(0, posX - 3 , 0, posY - 3)

							local er,ge,be = math.floor((option.color.R*255)+0.5),math.floor((option.color.G*255)+0.5),math.floor((option.color.B*255)+0.5)
							ignoreColorInner.BackgroundColor3 = Color3.fromRGB(er,ge,be)
							option.callback_color(Color3.fromRGB(er,ge,be))
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


					ignoreColorInner.BackgroundColor3 = option.color
					
					
					
					
					local tog = option.enabled

					btnIgnoreToggle.MouseButton1Click:Connect(function()
						tog = not tog
						option.callback_toggle(tog)
						if tog then
							toggleButtonInner.BackgroundColor3 = theme.accent
						else
							toggleButtonInner.BackgroundColor3 = theme.bgDark
						end
					end)

					btnIgnoreToggle.MouseEnter:Connect(function()
						toggleButton.BorderColor3 = theme.accent
					end)
					btnIgnoreToggle.MouseLeave:Connect(function()
						toggleButton.BorderColor3 = theme.borderDark
					end)

					layoutIgnoreToggle.Name = "layoutIgnoreToggle"
					layoutIgnoreToggle.Parent = ignoreToggle
					layoutIgnoreToggle.SortOrder = Enum.SortOrder.LayoutOrder

					if option.enabled == true then
						option.callback_toggle(tog)
					end
					
					option.callback_color(option.color)


					updateSection()

				end

				return utilities
			end

			return sections;
		end

		return tabz;

	end

	return window;
end

return library;
