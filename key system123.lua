local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "key system", HidePremium = false, SaveConfig = true, IntroEnabled = false})

OrionLib:MakeNotification({
	Name = "logged in",
	Content = "You are logged in as Premium Hub",
	Image = "rbxassetid://4483345998",
	Time = 5
})

_G.Key = "PremiumGavriel2022"
_G.KeyInput = "String"

function MakeScriptHub()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GavrielScripting/xD/main/lol.txt"))()
end

function CorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Correct Key",
        Content = "You have entered the correct key!",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

function InCorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "InCorrect Key",
        Content = "You have entered the incorrect key!",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

local Tab = Window:MakeTab({
	Name = "Key",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddTextbox({
	Name = "Enter Key",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		_G.KeyInput = Value
	end	  
})

Tab:AddButton({
	Name = "Check Key",
	Callback = function()
      		if _G.KeyInput == _G.Key then
            MakeScriptHub()
            CorrectKeyNotification()
            else
                InCorrectKeyNotification()
            end
  	end    
})