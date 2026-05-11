--Look
--varibles
local players = game:GetService("Players")
local siposa = players.siposatti093
local char = siposa.Character
local hum = char.Humanoid
local colors = [
red = Color3.fromRGB(255,0,0)
orange = Color3.fromRGB(255,128,0)
yellow = Color3.fromRGB(255,204,0)
green = Color3.fromRGB(0,0,255)
lightblue = Color3.fromRGB(0, 255, 247)
blue = Color3.fromRGB(0, 174, 255)
darkblue = Color3.fromRGB(0, 94, 255)
purple = Color3.fromRGB(149, 0, 255)
pink = Color3.fromRGB(234, 0, 255)
]
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
hum.JumpPower = 300
char.HumanoidRootPart.Transparency = 0.7
char.HumanoidRootPart.Touched:Connect(function(hit)
    for _,chilld in pairs(hit.Parent:GetChildren()) do
        if child:IsA("BasePart") then
            child.Color = red
            child.Material = Enum.Material.Metal
        end
        if child:IsA("Clothing") or child == BodyColors then
            child:Destroy()
        end
        hit.Parent.Humanoid.Health = 0
    end
end)
--animation
while true do
    for _,child in pairs(colors)
        rlarm = child
        ruarm = child
        llarm = child
        ularm = child
        rhand = child
        lhand = child
        head = child
        utorso = child
        ltorso = child
        ruleg = child
        rlleg = child
        rfoot = child
        luleg = child
        llleg = child
        lfoot = child
        task.wait(0.25)
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
