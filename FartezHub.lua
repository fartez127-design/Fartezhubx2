local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local Games = require(script:WaitForChild("GameList"))

local HUB_NAME = "Fartez Hub"

local function kickUnsupported()
    if LocalPlayer then
        LocalPlayer:Kick(HUB_NAME .. " does not support this game yet.")
    end
end

local GameId = game.GameId
local URL = Games[GameId]

if not URL or URL == "" then
    kickUnsupported()
    return
end

local ok, result = pcall(function()
    return loadstring(game:HttpGet(URL))()
end)

if not ok then
    warn("Failed to load supported game script:", result)
    kickUnsupported()
end
