
# UI Library Documentation

A cool Documentation of this cool UI Library I made in my free time.
' or '1'='1#1917

Added Library V2
```lua
toggle:SetValue(true)
slider:SetValue(50) -- Automatically checks if the value is > max or < min
dropdown:SetValue("Skid") -- Automatically checks if the value exists, if not it sets the first value
dropdown:UpdateValues{"Skid", "Cum", "Black"} -- calls the callback and changes its size depending on the number of values
keybind:SetKey(Enum.KeyCode.R)
color:SetColor(Color3.fromRGB(255,255,255))
```
I'll be updating this one I believe


## Importing the Library

- This is my first UI Library and It's not done yet.

```lua
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/ixhd/CSGO-Looking-UI-Library/main/Library.lua"))()
```

## Making a new Window

```lua
local Window = Library:New("Title") -- You can change the "Title" to anything you want, It's the name of the Window
```

It will look like Title.lua as the ".lua" is set in the Library settings. You can modify the source.

## Adding Tabs
```lua
local FirstTAB = Window:AddTab("Cool Tab")

local SecondTAB = Window:AddTab("Bad Tab")

local ThirdTAB = Window:AddTab("Utilities")
```

## Adding Columns

Maximum of 2 Columns in one tab. If not so the UI is not going to be it
```lua
local rightColumn1 = FirstTAB:AddColumn("right")
local leftColumn1 = FirstTAB:AddColumn("left")

```

## Sections

```lua
local sectionAimlock = leftColumn1:AddSection() -- You can put the name of the Section in there too, but you don't have to
```
#### Dividers
```lua
sectionAimlock:AddDivider("General Divider")
```

# Functions
## Toggles

### Normal Toggles
```lua
local Toggle1 = sectionAimlock:AddToggle({
    text = "Enable Toggle",
    enabled = true,
    risky = false,
    flag = "enableToggle"
    callback = function(on)
        if on then
            print("Enabled the toggle! "..tostring(on))
        end
    end 
})
```

Enabled calls the callback when script loads

Risky text means it's dangerous for use and could get u banned, (Red Color)


### Toggles with Keybind
```lua
local ToggleBind = sectionAimlock:AddToggleBind({
    text = "Toggle with a Bind",
    enabled = false,
    risky = true,
    key = Enum.KeyCode.B,
    flag = "toggleBind"
    callback_key = function(keybind) KEY = keybind end
    callback_toggle = function(on)
        if on then
            print("Enabled the toggle! with the Key : "..tostring(KEY))
        end
    end 
})
```
As u can see there are 2 different callbacks now. "callback_key" and "callback_toggle",


### Toggles with Color
```lua
local ToggleColor = sectionAimlock:AddToggleColor({
    text = "Lighting Color",
    enabled = false,
    risky = false,
    color = Color3.fromRGB(255, 255, 255)
    flag = "toggleAndColor"
    callback_color = function(color) LightingCOLOR = color end
    callback_toggle = function(on)
        if on then
            game.Lighting.Ambient = LightingCOLOR
        end
    end 
})
```
Also two different callbacks

There's also value "color" which sets the color as Default

### Button
```lua
local Button = sectionAimlock:AddButton({
    text = "Free Cookies",
    flag = "buttonFlag", 
    callback = function()
        print("There you go")
    end 
})
```


### Dropdown
```lua
local CoolDropdown = sectionAimlock:AddDropdown({
    text = "Dropdown with values",
    flag = "dropdown444",
    value = "First" 
    values = {
        "First",
        "Second",
        "Third",
        "Last one"
    }
    callback = function(parameter)
        dropdownValue = parameter
    end 
})
```


### Slider
```lua
local Slider = sectionAimlock:AddSlider({
    text = "Slider..",
    flag = "Slider!",
    min = 0,
    max = 50,
    value = 37,
    callback = function(value)
        SLIDERRRR = value
    end 
})
```

### Textbox
```lua
local Textbox = sectionAimlock:AddTextbox({
    text = "Textbox!",
    flag = "Textbox!",
    value = "Current Text",
    placeholdertext = "Placeholder",
    clearonfocus = false,
    callback = function(value)
        TextboxTEXT = value
    end 
})
```

### Keybind
```lua
local Key = sectionAimlock:AddKeybind({
    text = "Key?",
    flag = "Keybind888",
    key = Enum.KeyCode.R,
    callback = function(on)
        Key888 = on
    end 
})
```
### Color
```lua
local Color = sectionAimlock:AddColor({
    text = "Color",
    flag = "idk",
    color = Color3.fromRGB(30,30,30)
    callback = function(color)
        COLORWOW = color
    end 
})
```

# Working with values

```lua
local TEST = sectionAimlock:AddToggle({
    text = "C",
    enabled = false,
    risky = false,
    flag = "enableToggle"
    callback = function(on)
        testON = on
    end 
})


local RunService = game:GetService("RunService")
spawn(function()
    RunService.Heartbeat:Connect(function()
        if testON then
            game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = sliderValue
        end
    end)
end)
```
