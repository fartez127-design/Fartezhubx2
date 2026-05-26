local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local Games = {
    [9452898647]  = "https://raw.githubusercontent.com/fartez127-design/FARTEZHUB/refs/heads/main/Farte01",
    [9491545867]  = "https://raw.githubusercontent.com/fartez127-design/FARTEZHUB/refs/heads/main/FARTEZ%20HUB%20X%20Break%20a%20Brainrot%20Egg",
    [9787206684]  = "https://raw.githubusercontent.com/fartez127-design/FARTEZHUB/refs/heads/main/FARTEZHUBXBeaLuckyBlock",
    [9792947201]  = "https://raw.githubusercontent.com/fartez127-design/FARTEZHUB/refs/heads/main/FARTEZHUBXSlimeRNG",
    [9875383684]  = "https://raw.githubusercontent.com/fartez127-design/FARTEZHUB/refs/heads/main/FARTEZHUB-Be%20a%20Brainrot%20v1",
    [9913934374]  = "https://raw.githubusercontent.com/fartez127-design/FARTEZHUB/refs/heads/main/FARTEZHUBShovelSnowforBrainrots",
    [9925813578]  = "https://raw.githubusercontent.com/fartez127-design/FARTEZHUB/refs/heads/main/FARTEZ%20HUB%20X%20Throw%20Lucky%20Blocks%20for%20Brainrots!",
    [9928450968]  = "https://raw.githubusercontent.com/fartez127-design/FARTEZHUB/refs/heads/main/FARTEZHUBXBecomeInvisibleForBrainrots",
    [9969095451]  = "https://raw.githubusercontent.com/fartez127-design/FARTEZHUB/refs/heads/main/FARTEZHUBXSurfforLuckyBlocks",
    [9988290343]  = "https://raw.githubusercontent.com/fartez127-design/FARTEZHUB/refs/heads/main/FARTEZHUBXShootLASERSForBrainrots!",
    [10004244222] = "https://raw.githubusercontent.com/fartez127-design/FARTEZHUB/refs/heads/main/FARTEZHUBXKickaLuckyBlock",
    [10004760418] = "https://raw.githubusercontent.com/fartez127-design/FARTEZHUB/refs/heads/main/FARTEZHUBXRollerforBrainrots",
    [10045085816] = "https://raw.githubusercontent.com/fartez127-design/FARTEZHUB/refs/heads/main/FARTEZHUBXBuildBridgetoBrainrots",
}

local CurrentGame = game.PlaceId
local ScriptURL = Games[CurrentGame]

-- ถ้าเกมไม่รองรับ
if not ScriptURL then
    LocalPlayer:Kick("FARTEZ HUB : Unsupported Game")
    return
end

-- โหลดสคริปต์
local success, err = pcall(function()
    loadstring(game:HttpGet(ScriptURL))()
end)

-- ถ้าโหลดพัง
if not success then
    warn(err)
    LocalPlayer:Kick("FARTEZ HUB : Failed to load script")
end
