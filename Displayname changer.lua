-- Made by IOC, If you're going to use this, please give me credits

local Client = game:GetService("Players")["LocalPlayer"]

local EmojiBeforeDisplayName = "[Input emoji] " -- CHANGE here

-- Insert USER-IDs here
local Whitelisted = {
    ["One"] = 3207813237; 
    ["Two"] = 123; 
    ["Three"] = 123;
    ["Four"] = 123;
    ["Five"] = 123;
};

function UseEmoji()
for I, V in pairs(game["Players"]:GetPlayers()) do
    if V["UserId"] == Whitelisted["One"] or V["UserId"] == Whitelisted["Two"] or V["UserId"] == Whitelisted["Three"] or V["UserId"] == Whitelisted["Four"] or V["UserId"] == Whitelisted["Five"] then
    V["Character"]:FindFirstChildWhichIsA("Humanoid")["DisplayName"] = EmojiBeforeDisplayName.."" .. V["DisplayName"]
end
end
end

game:GetService("Players")["PlayerAdded"]:connect(function(x) 
for I, V in pairs(game["Players"]:GetPlayers()) do
if V["UserId"] == Whitelisted["One"] then wait(.5) UseEmoji();
V["CharacterAdded"]:Connect(function() 
wait(.5) UseEmoji(); end) end end end);
UseEmoji();
