--Look
--varibles
local players = game:GetService("Players")
local siposa = players:WaitForChild("siposatti093") or siposa.CharacterAdded:Wait()
local char = siposa.Character
local hum = char:WaitForChild("Humanoid")
local colors = { 
Color3.fromRGB(255,0,0), 
Color3.fromRGB(255,128,0), 
Color3.fromRGB(255,204,0), 
Color3.fromRGB(0,255,0), 
Color3.fromRGB(0, 255, 247), 
Color3.fromRGB(0, 174, 255), 
Color3.fromRGB(0, 94, 255), 
Color3.fromRGB(149, 0, 255), 
Color3.fromRGB(234, 0, 255), 
} 
--[[
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
local rlleg = char.RightLowerLeg 
local rfoot = char.RightFoot
local luleg = char.LeftUpperLeg
local llleg = char.LeftLowerLeg 
local lfoot = char.LeftFoot
]]--
--METHODS
local function coloring(givedChar)
    task.spawn(function()
        while true do
            for _,color in pairs(colors) do
                for _,part in pairs(givedChar:GetChildren()) do
                    if part:IsA("BasePart") then
                    part.Color = color
                    end
                end
                task.wait(0.25)
            end 
        end
    end)
end
local function kill(targetPart)
    targetPart.Parent.Humanoid.Health = 0
end
--GUI
local sgui = Instance.new("ScreenGUI", siposa.PlayerGUI)
local frame = Instance.new("Frame", sgui)
local textbutton = Instance.new("TextButton", frame)
textbutton.Text = "Click for killing"
textbutton.TextSize = 30
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.Position = UDim2.new(0.2, 0, 0.5, 0)
local switch = false
task.spawn(function()
    textbutton.MouseButton1Clicked:Connect(function()
        switch = not switch
        return switch
    end)
end)
--mainpart 
for _,child in pairs(char:GetChildren()) do
    if child:IsA("BasePart") then
        child.Color =  colors[1]
        child.Material = Enum.Material.Neon
    end  
        if child:IsA("Clothing") or child:IsA("BodyColors") or child:IsA("Accesory") then 
        child:Destroy()
    end 
end
--function varibles
hum.WalkSpeed = 130
hum.JumpPower = 420
char.HumanoidRootPart.Transparency = 0.7
--function 
char.HumanoidRootPart.Touched:Connect(function(hit)
    local targetChar = hit.Parent
    local targetHum = targetChar:WaitForChild("Humanoid")
    if targetHum and targetChar ~= char then
        for _,child in pairs(targetChar:GetChildren()) do 
            if child:IsA("BasePart") then
                child.Color = colors[1] 
                child.Material = Enum.Material.Metal 
            elseif child:IsA("Clothing") or child:IsA("BodyColors") or child:IsA("Accesory") then 
                child:Destroy() 
            end 
        end
        if switch == true then
            kill(hit)
        end
    end
end) 

--animation 
coloring(char)
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
]]--
