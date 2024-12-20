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
local Naw = Naw:AddSection("/Main Others script")
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

Naw:AddButton("Teleport to royale high", "Torsisme", function()
    game:GetService('TeleportService'):Teleport(735030788, game.Players.LocalPlayer)
end)

Naw:AddButton("Adopt Me", "Torsisme", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraScript/Script/refs/heads/main/AdoptMeWINTER"))()
end)

Naw:AddButton("Teleport Adopt me", "Torsisme", function()
        -- https://www.roblox.com/id/games/920587237/WINTER-Adopt-Me
    game:GetService('TeleportService'):Teleport(920587237, game.Players.LocalPlayer)
end)

Naw:AddButton("Greenville script", "Torsisme", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraScript/Script/refs/heads/main/GreenvilleWinter"))()
end)

Naw:AddButton("Teleport Greenville ", "Torsisme", function()
        -- https://www.roblox.com/id/games/891852901/NEW-TOWN-CARS-EVENT-MORE-Greenville
    game:GetService('TeleportService'):Teleport(891852901, game.Players.LocalPlayer)
end)

Naw:AddButton("Warrio Cats", "Torsisme", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraScript/Script/refs/heads/main/WarriorCatsWinter"))()
end)

Naw:AddButton("Teleport warrio cat", "Torsisme", function()
        -- https://www.roblox.com/id/games/3663340706/Warrior-Cats-Ultimate-Edition
    game:GetService('TeleportService'):Teleport(3663340706, game.Players.LocalPlayer)
end)

Others:AddButton("AntiLag","Booster Expirce",function() 
local decalsyeeted = true 
local g = game
local w = g.Workspace
local l = g.Lighting
local t = w.Terrain
sethiddenproperty(l,"Technology",2)
sethiddenproperty(t,"Decoration",false)
t.WaterWaveSize = 0
t.WaterWaveSpeed = 0
t.WaterReflectance = 0
t.WaterTransparency = 0
l.GlobalShadows = 0
l.FogEnd = 9e9
l.Brightness = 0
settings().Rendering.QualityLevel = "Level01"
for i, v in pairs(w:GetDescendants()) do
    if v:IsA("BasePart") and not v:IsA("MeshPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
    elseif (v:IsA("Decal") or v:IsA("Texture")) and decalsyeeted then
        v.Transparency = 1
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
        v.Lifetime = NumberRange.new(0)
    elseif v:IsA("Explosion") then
        v.BlastPressure = 1
        v.BlastRadius = 1
    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
        v.Enabled = false
    elseif v:IsA("MeshPart") and decalsyeeted then
        v.Material = "Plastic"
        v.Reflectance = 0
        v.TextureID = 10385902758728957
    elseif v:IsA("SpecialMesh") and decalsyeeted  then
        v.TextureId=0
    elseif v:IsA("ShirtGraphic") and decalsyeeted then
        v.Graphic=0
    elseif (v:IsA("Shirt") or v:IsA("Pants")) and decalsyeeted then
        v[v.ClassName.."Template"]=0
    end
end
for i = 1,#l:GetChildren() do
    e=l:GetChildren()[i]
    if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
        e.Enabled = false
    end
end
w.DescendantAdded:Connect(function(v)
    wait() 
    if v:IsA("BasePart") and not v:IsA("MeshPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
    elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
        v.Transparency = 1
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
        v.Lifetime = NumberRange.new(0)
    elseif v:IsA("Explosion") then
        v.BlastPressure = 1
        v.BlastRadius = 1
    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
        v.Enabled = false
    elseif v:IsA("MeshPart") and decalsyeeted then
        v.Material = "Plastic"
        v.Reflectance = 0
        v.TextureID = 10385902758728957
    elseif v:IsA("SpecialMesh") and decalsyeeted then
        v.TextureId=0
    elseif v:IsA("ShirtGraphic") and decalsyeeted then
        v.ShirtGraphic=0
    elseif (v:IsA("Shirt") or v:IsA("Pants")) and decalsyeeted then
        v[v.ClassName.."Template"]=0
    end
end)
end) 
  

Others:AddToggle("Hide Player", "?",false,function(Why) 
getgenv().Hide = Why
task.spawn(function() 
    while getgenv().Hide and task.wait() do
        pcall(function() 
            for _, v in pairs(game.Players:GetPlayers()) do
                if v.Name ~= game.Players.LocalPlayer.Name and v.Character then
                    v.Character:Destroy()
                end
            end
        end)
    end
end)
end) 

Others:AddButton("Console", "Console",function() 
game:GetService("StarterGui"):SetCore("DevConsoleVisible",true)
end) 
Others:AddButton("Credit", ".",function() 
sendNotification("Alwi", "Made By Love", 10)
end) 
