local Games = loadstring(game:HttpGet("https://raw.githubusercontent.com/fartez127-design/Fartezhubx2/refs/heads/main/GameList.lua"))()

local URL = Games[game.PlaceId]

if URL then
    loadstring(game:HttpGet(URL))()
else
    game.Players.LocalPlayer:Kick("Unsupported Game")
end
