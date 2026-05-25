-- Fartez Hub Loader

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local GameListURL = "https://raw.githubusercontent.com/fartez127-design/Fartezhubx2/refs/heads/main/GameList.lua"

local success, Games = pcall(function()
    return loadstring(game:HttpGet(GameListURL))()
end)

if not success or type(Games) ~= "table" then
    LocalPlayer:Kick("❌ Failed to load Fartez Hub game list.")
    return
end

local ScriptURL = Games[game.PlaceId]
if not ScriptURL then
    return
end

local loaded, err = pcall(function()
    loadstring(game:HttpGet(ScriptURL))()
end)

if not loaded then
    LocalPlayer:Kick("❌ Failed to load script:\n" .. tostring(err))
end
