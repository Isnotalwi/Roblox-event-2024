if not game:IsLoaded() then game.Loaded:Wait() end
local cloneref = cloneref or function(...) return ... end
local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Imalwibest/Imalwibest/refs/heads/main/Fluxus%20Ui.lib"))()
local VirtualUser = cloneref(game:GetService("VirtualUser"))
local function playNotificationSound()
    local soundService = cloneref(game:GetService("SoundService")) 
    local notificationSound = Instance.new("Sound")
    
    notificationSound.SoundId = "rbxassetid://8745692251"
    notificationSound.Volume = 0.5
    notificationSound.Parent = soundService

    notificationSound:Play()
end

local function sendNotification(title, text, duration)
    game.StarterGui:SetCore("SendNotification", {
        Title = title,
        Text = text,
        Duration = duration or 3,
    })
end

local HWID

local MarketplaceService = cloneref(game:GetService("MarketplaceService")) 
local gameInfo = MarketplaceService:GetProductInfo(game.PlaceId)
local gameName = gameInfo.Name
local placeId = game.PlaceId

local executorName = identifyexecutor()
local Window = lib:CreateWindow(gameName)
local Home = Window:NewTab("Home")
local Naw = Window:NewTab("Script")
local Myhusband = Window:NewTab("Misc")

local Logged = Home:AddSection("Information Account")
local Discord = Home:AddSection("Discord/Support")
local Farm = Naw:AddSection("/Main Others script")
local Others = Myhusband:AddSection("Fps Booster")

Logged:AddButton("Game Name : " .. gameName, "Name Game Detected", function() end)
Logged:AddButton("Place ID Game : " .. placeId, "ID Game", function() end)
Logged:AddButton("Name Username : " .. game.Players.LocalPlayer.Name, "Your real username", function() end)
Logged:AddButton("Display Name : " .. game.Players.LocalPlayer.DisplayName, "Display Ur name", function() end)
Logged:AddButton("Your ID User Roblox : " .. game.Players.LocalPlayer.UserId, "", function() end)
Logged:AddButton("Age account : " .. game.Players.LocalPlayer.AccountAge .. " days", "How old Ur account", function() end)
Logged:AddButton("Executor : " .. executorName, "Checker ur API executor", function() end)

HWID = game:GetService("RbxAnalyticsService"):GetClientId()
Logged:AddButton("Hardware ID: " .. HWID, "Your device HWID", function() end)

Discord:AddButton("Discord Server", "Join our Discord", function()
    setclipboard("https://discord.gg/cpXUTmMXXd")
end)

Naw:AddButton("Driving Impire winter", "Torsisme", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraScript/Script/main/DrivingEmpireWinter"))()
end)

Naw:AddButton("Teleport to Driving Empire winter", "Torsisme", function()
    game:GetService('TeleportService'):Teleport(3351674303, game.Players.LocalPlayer)
end)

Naw:AddButton("Sale War Tycoon", "Torsisme", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraScript/Script/main/WarTycoonWinter"))()
end)

Naw:AddButton("Teleport war tycoon", "Torsisme", function()
    game:GetService('TeleportService'):Teleport(4639625707, game.Players.LocalPlayer)
end)

Naw:AddButton("Sonic Speed Simulator", "Torsisme", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraScript/Script/12f5fdada80106997bb79e262d2ac01bab2c6d24/SonicWinter"))()
end)

Naw:AddButton("Teleport game Sonic Speed Simulator", "Torsisme", function()
    game:GetService('TeleportService'):Teleport(9049840490, game.Players.LocalPlayer)
end)

Naw:AddButton("Dress To impress", "Torsisme", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraScript/Script/refs/heads/main/DressToImpressWinter"))()
end)

Naw:AddButton("Teleport Dress to impress", "Torsisme", function()
    game:GetService('TeleportService'):Teleport(15101393044, game.Players.LocalPlayer)
end)


Naw:AddButton("Royale High", "Torsisme", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraScript/Script/refs/heads/main/RoyaleHighWinter"))()
end)

Naw:AddButton("Teleport Royale High", "Torsisme", function()
    game:GetService('TeleportService'):Teleport(735030788, game.Players.LocalPlayer)
end)
