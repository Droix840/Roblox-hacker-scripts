--Look
--varibles
local players = game:GetService("Players")
local siposa = players.siposatti093
local char = siposa.Character
local hum = char.Humanoid
local red = Color3.fromRGB(255,0,0)
local black = Color3.fromRGB(0,0,0)
local rlarm = char.RightLowerArm
local ruarm = char.RightUpperArm
local llarm = char.LeftLowerArm
local ularm = char.LeftUpperArm
local rhand = char.RightHand
local lhand = char.LeftHand
local head = char.Head
local utorso = char.UpperTorso
local ltorso = char.LowerTorso
local ruleg = char.RightUpperLeg
local rlleg = char.RightLoweLeg
local rfoot = char.RightFoot
local luleg = char.LeftUpperLeg
local llleg = char.LeftLowerLeg
local lfoot = char.LeftFoot
--mainpart
for _,child in pairs(char:GetChildren()) do
if child:IsA("BasePart") then
child.Color = red
child.Material = Enum.Material.Neon
end  
if child:IsA("Clothing") or child == BodyColors then
child:Destroy()
end
end
--function
hum.WalkSpeed = 130
hum.JumpPower = 120
char.HumanoidRootPart.Transparency = 0.7
char.HumanoidRootPart.Touched:Connect(function(hit)
hit.Parent.Humanoid.Health = 0
for _,chilld in pairs(hit.Parent:GetChildren()) do
if child:IsA("BasePart") then
child.Color = red
child.Material = Enum.Material.Metal
end
if child:IsA("Clothing") or child == BodyColors then
child:Destroy()
end
end
end)
--animation
while true do
rlarm = 
ruarm = 
llarm = 
ularm = 
rhand = 
lhand = 
head = 
utorso = 
ltorso = 
ruleg = 
rlleg = 
rfoot = 
luleg = 
llleg = 
lfoot = 
end
--[[
while true do
lhand.Material = Enum.Material.Rubber
lhand.Color = black
uhand.Material = Enum.Material.Rubber
uhand.Color = black
hand.Material = Enum.Material.Rubber
hand.Color = black
task.wait(0.9)
lhand.Material = Enum.Material.Neon
lhand.Color = red
uhand.Material = Enum.Material.Neon
uhand.Color = red
hand.Material = Enum.Material.Neon
hand.Color = red
task.wait(3)
end
]]


