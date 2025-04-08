local HWIDTable = loadstring(game:HttpGet("https://raw.githubusercontent.com/suntisalts/WeshkyHub/refs/heads/main/Whitelist/Hwidlist.lua"))()
local HWID = game:GetService("RbxAnalyticsService"):GetClientId()

for i,v in pairs(HWIDTable) do 
	if v == HWID then
		print ("The HWID is Whitelisted. HWID: ", HWID)
	end elseif v ~= HWID then
		print("The HWID is not Whitelisted. HWID: ", HWID)
	end	
end
