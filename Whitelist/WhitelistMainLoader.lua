local HWIDTable = loadstring(game:HttpGet("https://raw.githubusercontent.com/suntisalts/WeshkyHub/refs/heads/main/Whitelist/Hwidlist.lua"))()
local HWID = game:GetService("RbxAnalyticsService"):GetClientId()

print("Loaded HWIDTable:", HWIDTable)
local whitelisted = false

for i, v in pairs(HWIDTable) do 
    if v == HWID then
        whitelisted = true
        break
    end
end

if whitelisted then
    print("The HWID is Whitelisted. HWID: ", HWID)
else
    print("The HWID is not Whitelisted. HWID: ", HWID)
end
