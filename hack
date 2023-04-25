local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Touch Football/Soccer", HidePremium = true, IntroText = "greatest thing is auto farm lol", SaveConfig = false, ConfigFolder = "ZCH"})
local Main = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local MainSection = Main:AddSection({
	Name = "Main"
})
 
Main:AddToggle({
Name = "Auto Collect Coins",
Default = false,
Callback = function(col)
if col then
_G.collect = true
while _G.collect == true do
wait()
for _,v in pairs(game:GetService("Workspace").Coins:GetDescendants()) do
if v:IsA("TouchTransmitter") then
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) --0 is touch
wait()
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1) -- 1 is untouch
end
end
end
else
_G.collect = false
end
end})
