local Games = loadstring(game:HttpGet("https://raw.githubusercontent.com/fartez127-design/Fartezhubx2/refs/heads/main/GameList.lua"))()

local URL = Games[game.GameId]

if URL then
  loadstring(game:HttpGet(URL))()
end
