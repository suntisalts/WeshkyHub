local SUPPORTED_GAMES = {
    [537413528] = "https://raw.githubusercontent.com/suntisalts/WeshkyHub/main/Main/Babft.lua",
    [155615604] = "https://raw.githubusercontent.com/suntisalts/WeshkyHub/main/Main/Prisonlife.lua"
}

local function LoadScript(url)
    local success, response = pcall(function()
        local cacheBuster = "?t=" .. tick()
        local fullUrl = url .. cacheBuster
        
        return loadstring(game:HttpGet(fullUrl, true))()
    end)
    
    if not success then
        warn("Failed to load script: " .. tostring(response))
        return false
    end
    return true
end

local placeId = game.PlaceId

if SUPPORTED_GAMES[placeId] then
    print("Weshky Hub: Loading script for game ID " .. placeId)
    task.wait(0.05)
    
    if not LoadScript(SUPPORTED_GAMES[placeId]) then
        warn("Weshky Hub: Failed to load script for this game")
    end
else
    warn(string.format(
        "Weshky Hub: Game (PlaceID: %d) is not supported by this hub", 
        placeId
    ))
end
