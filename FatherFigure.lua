-- Made by IOC (@rqmane on roblox), Ping me if there are any issues. If you're going to use this, please give me credits

_G["Config"] = {
    ["DadNameAndAge"] = "rqmane | 39";
    ["ChatPrefix"] = ";";
    ["KeepOnSpawn"] = false;
};

local Services = {
    ["P"] = game:GetService("Players");
    ["W"] = game:GetService("Workspace");
};

local Client = Services["P"]["LocalPlayer"]
local ParentFigure = game:GetObjects("rbxassetid://8243277366")[1]
local Prefix = _G["Config"]["ChatPrefix"]

local SpawnFatherFigure = function()
ParentFigure["Name"] = _G["Config"]["DadNameAndAge"]
ParentFigure["Parent"] = Client["Character"]
ParentFigure["PrimaryPart"] = ParentFigure["HumanoidRootPart"]
ParentFigure:SetPrimaryPartCFrame(Client["Character"]["HumanoidRootPart"]["CFrame"])
end

if _G["Config"]["KeepOnSpawn"] then
Client["CharacterAdded"]:connect(function(V)
wait(.1) SpawnFatherFigure() end)
else SpawnFatherFigure()
end

Client["Chatted"]:connect(function(V) if V:lower() == Prefix.."bring" then
ParentFigure:SetPrimaryPartCFrame(Client["Character"]["HumanoidRootPart"]["CFrame"]) end 
end)

Client["Chatted"]:connect(function(V) if V:lower() == Prefix.."goto" then
Client["Character"]:SetPrimaryPartCFrame(ParentFigure["HumanoidRootPart"]["CFrame"]) wait(.1)
ParentFigure:SetPrimaryPartCFrame(Client["Character"]["HumanoidRootPart"]["CFrame"]) end 
end)

Client["Chatted"]:connect(function(V) if V:lower() == Prefix.."destroy" then
ParentFigure:Destroy() end 
end)