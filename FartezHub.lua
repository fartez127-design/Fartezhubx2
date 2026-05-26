local Games = loadstring(game:HttpGet("https://raw.githubusercontent.com/fartez127-design/Fartezhubx2/refs/heads/main/GameList.lua"))()

local URL = Games[game.PlaceId]

if URL then
    local success, err = pcall(function()
        loadstring(game:HttpGet(URL))()
    end)

    if not success then
        warn("Script Load Error:", err)
    end
else
    warn("FARTEZ HUB : Unsupported Game")
end
