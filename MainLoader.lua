local placeId = game.PlaceId
local Owner = "suntisalts" -- change if is a fork
local Main = "https://raw.githubusercontent.com/".. Owner.. "/WeshkyHub/refs/heads/main/Main/"

local Places = {
    [537413528] = Main.. "Babft.lua";
    [155615604] = Main.. "Prisonlife.lua";
}

local link = Places[placeId]
if link then
    loadstring(game:HttpGet(link))()
else
    error("Error #1 - Unsupported place")
end