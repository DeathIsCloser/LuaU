-- Made by IOC 

local Config = {
    ["Korblox"] = true;
    ["Headless"] = true;
};

local Client = game["Players"]["LocalPlayer"]

local Korblox = function()
Client["Character"]["RightLowerLeg"]["MeshId"] = "902942093"
Client["Character"]["RightFoot"]["MeshId"] = "902942089"

Client["Character"]["RightUpperLeg"]["MeshId"] = "http://www.roblox.com/asset/?id=902942096"
Client["Character"]["RightUpperLeg"]["TextureID"] = "http://roblox.com/asset/?id=902843398"

Client["Character"]["RightFoot"]["Transparency"] = "1"
Client["Character"]["RightLowerLeg"]["Transparency"] = "1"
end

local Headless = function()
Client["Character"]["Head"]["MeshId"] = 0
end

if Config["Korblox"] then
Korblox() end

if Config["Headless"] then
Headless() end

Client["CharacterAdded"]:connect(function(x)
wait(.4)
if Config["Korblox"] then Korblox() end if Config["Headless"] then Headless() end end)
