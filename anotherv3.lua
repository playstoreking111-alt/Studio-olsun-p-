--Made by Rufus14 Converted to luau by DGLN
--WAO V.3

repeat wait() until game.Players.LocalPlayer
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()

local owner = game.Players.LocalPlayer
local Player = owner

PlayerGui = Player.PlayerGui
Cam = workspace.CurrentCamera
Backpack = Player.Backpack
Character = Player.Character
Humanoid = Character.Humanoid

RootPart = Character["HumanoidRootPart"]
Torso = Character["Torso"]
Head = Character["Head"]
RightArm = Character["Right Arm"]
LeftArm = Character["Left Arm"]
RightLeg = Character["Right Leg"]
LeftLeg = Character["Left Leg"]
RootJoint = RootPart["RootJoint"]
Neck = Torso["Neck"]
RightShoulder = Torso["Right Shoulder"]
LeftShoulder = Torso["Left Shoulder"]
RightHip = Torso["Right Hip"]
LeftHip = Torso["Left Hip"]

Character = Player.Character
Humanoid = Character.Humanoid

RootPart = Character["HumanoidRootPart"]
SIZE = 1
local SINE = 0
IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor
 
--[[
    local vel = Instance.new("BodyVelocity", owner.Character.Torso)
vel.Velocity = owner.Character.Torso.CFrame.lookVector * -5
vel.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
--]]
--Credit To Rufus14
--I just edit it a bit ^_^

function ragdoll()
owner.Character.Archivable = true
clone = owner.Character:Clone()
clone.Parent = workspace
for i,v in pairs(clone:GetChildren()) do
    if v.ClassName == "Script" or v.ClassName == "LocalScript" then
        v:destroy()
    end
    for i,p in pairs(v:GetChildren()) do
    if p.ClassName == "Weld" or p.ClassName == "Motor6D" or p.ClassName == "BodyVelocity" then
        p:destroy()
    end
end
end
for i,t in pairs(owner:GetChildren()) do
    if t.ClassName == "Accessory" or t.ClassName == "ForceField" then
        t:destroy()
    end
end
vel = Instance.new("BodyVelocity", clone.Torso)
vel.Velocity = clone.Torso.CFrame.lookVector * -5
vel.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
clone.Head.face.Texture = "http://www.roblox.com/asset/?id=161061608"
using = false
hit = Instance.new("Sound", clone.Torso)
hit.SoundId = "rbxassetid://260430060"
hit.Volume = 5
hit1 = Instance.new("Sound", clone.Torso)
hit1.SoundId = "rbxassetid://138087186"
hit1.Volume = 5
hit2 = Instance.new("Sound", clone.Torso)
hit2.SoundId = "rbxassetid://131237241"
hit2.Volume = 5
hit3 = Instance.new("Sound", clone.Torso)
hit3.SoundId = "rbxassetid://278062209"
hit3.Volume = 5
hit3.TimePosition = 0.33
ded = Instance.new("Sound", clone.Torso)
ded.SoundId = "rbxassetid://163154423"
ded.Volume = 5
local leftarm = clone:findFirstChild("Left Arm")
local rightrm = clone:findFirstChild("Right Arm")
local leftleg = clone:findFirstChild("Left Leg")
local rightleg = clone:findFirstChild("Right Leg")
local head = clone:findFirstChild("Head")
local welding = Instance.new("Weld", clone.Torso)
welding.Part0 = clone.Torso
welding.Part1 = head
welding.C0 = welding.C0 * CFrame.new(0,1.5,0)
for i, g in pairs(game.Players.owner:GetChildren()) do
    if g.ClassName == "Part" then
        g:destroy()
    end
end
for i, h in pairs(game.Players.ownerGetChildren()) do
    if h.ClassName == "Accesory" then
        h:destroy()
    end
end
game.Workspace.CurrentCamera.CameraSubject = head
if leftleg ~= nil then
local glue = Instance.new("Glue", clone.Torso)
glue.Part0 = clone.Torso
glue.Part1 = leftleg
glue.Name = "Left leg"
local collider = Instance.new("Part", leftleg)
collider.Position = Vector3.new(0,999,0)
collider.Size = Vector3.new(1.7, 1, 1)
collider.Shape = "Cylinder"
local weld = Instance.new("Weld", collider)
weld.Part0 = leftleg
weld.Part1 = collider
weld.C0 = CFrame.Angles(0, 0, 80)
collider.TopSurface = "Smooth"
collider.BottomSurface = "Smooth"
collider.formFactor = "Symmetric"
glue.C0 = CFrame.new(-0.5, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
glue.C1 = CFrame.new(-0, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
collider.Transparency = 1
end
------------
if rightleg ~= nil then
local glue1 = Instance.new("Glue", clone.Torso)
glue1.Part0 = clone.Torso
glue1.Part1 = rightleg
glue1.Name = "Right leg"
local collider1 = Instance.new("Part", rightleg)
collider1.Position = Vector3.new(0,999,0)
collider1.Size = Vector3.new(1.7, 1, 1)
collider1.Shape = "Cylinder"
local weld1 = Instance.new("Weld", collider1)
weld1.Part0 = rightleg
weld1.Part1 = collider1
weld1.C0 = CFrame.Angles(0, 0, 80)
collider1.TopSurface = "Smooth"
collider1.BottomSurface = "Smooth"
collider1.formFactor = "Symmetric"
glue1.C0 = CFrame.new(0.5, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
glue1.C1 = CFrame.new(0, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
collider1.Transparency = 1
end
------------
if rightrm ~= nil then
local glue11 = Instance.new("Glue", clone.Torso)
glue11.Part0 = clone.Torso
glue11.Part1 = rightrm
glue11.Name = "Right shoulder"
local collider11 = Instance.new("Part", rightrm)
collider11.Position = Vector3.new(0,9999,0)
collider11.Size = Vector3.new(1.8,1,1)
collider11.Shape = "Cylinder"
local weld11 = Instance.new("Weld", collider11)
weld11.Part0 = rightrm
weld11.Part1 = collider11
weld11.C0 = CFrame.Angles(0, 0, 80)
collider11.TopSurface = "Smooth"
collider11.BottomSurface = "Smooth"
collider11.formFactor = "Symmetric"
glue11.C0 = CFrame.new(1.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
glue11.C1 = CFrame.new(0, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
collider11.Transparency = 1
end
------------
if leftarm ~= nil then
local glue111 = Instance.new("Glue", clone.Torso)
glue111.Part0 = clone.Torso
glue111.Part1 = leftarm
glue111.Name = "Left shoulder"
local collider111 = Instance.new("Part", leftarm)
collider111.Position = Vector3.new(0,9999,0)
collider111.Size = Vector3.new(1.8,1,1)
collider111.Shape = "Cylinder"
local weld111 = Instance.new("Weld", collider111)
weld111.Part0 = leftarm
weld111.Part1 = collider111
weld111.C0 = CFrame.Angles(0, 0, 80)
collider111.TopSurface = "Smooth"
collider111.BottomSurface = "Smooth"
collider111.formFactor = "Symmetric"
glue111.C0 = CFrame.new(-1.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
glue111.C1 = CFrame.new(0, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
collider111.Transparency = 1
----------------
sensoring = Instance.new("Part", clone.Torso)
sensoring.Size = Vector3.new(1.2,1.1,0.8)
sensoring.CanCollide = false
sensoring.Position = clone.Torso.Position
local welder = Instance.new("Weld", sensoring)
welder.Part0 = clone.Torso
welder.Part1 = sensoring
welder.C0 = welder.C0 * CFrame.new(0,0,1.05)
sensoring.Transparency = 1
-----------------
sensoring1 = Instance.new("Part", clone.Torso)
sensoring1.Size = Vector3.new(1.2,1.1,0.8)
sensoring1.CanCollide = false
sensoring1.Position = clone.Torso.Position
local welder1 = Instance.new("Weld", sensoring)
welder1.Part0 = clone.Torso
welder1.Part1 = sensoring1
welder1.C0 = welder1.C0 * CFrame.new(0,0,-1.05)
sensoring1.Transparency = 1
end
clone.Name = owner.Character.Name.." (DEAD)"
ded:Play()
vel:destroy()
wait(0.5)
local function touch()
    if not using then
        using = true
        local Math = math.random(1,4)
        if Math == 1 then
            hit:Play()
        end
        if Math == 2 then
            hit1:Play()
        end
        if Math == 3 then
            hit2:Play()
        end
        if Math == 4 then
            hit3:Play()
        end
        wait(0.1)
        using = false
    end
end
sensoring.Touched:connect(touch)
sensoring1.Touched:connect(touch)
wait(4.47)
hit1.Volume = 0
hit2.Volume = 0
hit3.Volume = 0
hit.Volume = 0
        end
 
owner.Character.Humanoid.Died:connect(ragdoll)
 
--di ent
---------------------------------------
local insanityface={"1895698679"}
local sine=0
Animation_Speed = 1.5
local CHANGE = 2 / Animation_Speed
-----------------------
--[[ Name : WAOV2.2 ]]--
-------------------------------------------------------
--A script By makhail07, 2003boobear and XXUNORIBOASXX.
 
--Discord Creterisk#2958 <- makhail07's discord
 
--NOTE THIS SCRIPT WaS PURELY MADE FROM MY FUCKING IMAGINATION
--IF IT HAPPENS TO LOOK LIKE ANOTHER SCRIPT
--DONT CALL IT A FUCKING BOOTLEG THANK YOU AND ENJOY THE SCRIPT
--YOU FUCKING SKIDS,
--For Those who log/decompile this, If you sell or trade this,
--and I find out who you are, i will take massive action.
--:b:
-------------------------------------------------------
 
local FavIDs = {
    340106355, --Nefl Crystals
    927529620, --Dimension
    876981900, --Fantasy
    398987889, --Ordinary Days
    1117396305, --Oh wait, it's you.
    885996042, --Action Winter Journey
    919231299, --Sprawling Idiot Effigy
    743466274, --Good Day Sunshine
    727411183, --Knife Fight
    1402748531, --The Earth Is Counting On You!
    595230126 --Robot Language
    }
 
 
 
--The reality of my life isn't real but a Universe -Creterisk
--All people can be nice, Even if you don't think so. -2003boobear
--The past can be horrible, but the future will be better, so forget the past and move-onward. -XXUNORIBOASXX
wait()
local plr = owner
local char = plr.Character
local hum = char.Humanoid
local hed = char.Head
local root = char.HumanoidRootPart
local rootj = root.RootJoint
local tors = char.Torso
local ra = char["Right Arm"]
local la = char["Left Arm"]
local rl = char["Right Leg"]
local ll = char["Left Leg"]
local neck = tors["Neck"]

local RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
local LHCF = CFrame.fromEulerAnglesXYZ(0, -1.6, 0)
local maincolor = BrickColor.new("Really black")
exploitable = true
local Player = owner
local Character = Player.Character
local Humanoid = Character.Humanoid

local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local LeftLeg = Character["Left Leg"]
local RightLeg = Character["Right Leg"]
local Head = Character.Head
local Torso = Character.Torso

local FE = Workspace.FilteringEnabled
 
IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor
-------------------------------------------------------
--Start Whitelist and Invincibility--
-------------------------------------------------------	
ff = Instance.new("ForceField",char)
ff.Visible = false
hum.Name = "Base"
hum.MaxHealth = 14214242142124
hum.Health = 14214242142124
-------------------------------------------------------
--End Whitelist and Invincibility--
-------------------------------------------------------	
local Hair = Instance.new("Part", char)
Hair.Name = "Hair"
Hair.CanCollide = false
Hair.BrickColor = BrickColor.new("Institutional white")
Hair.Transparency = 0
Hair.Material = "Plastic"
Hair.Size = Vector3.new(1, 1, 2)
Hair.TopSurface = Enum.SurfaceType.Smooth
Hair.BottomSurface = Enum.SurfaceType.Smooth
 
local Weld = Instance.new("Weld", Hair)
Weld.Part0 = hed
Weld.Part1 = Hair
Weld.C1 = CFrame.new(0, -.6, 0)
Weld.C0 = CFrame.Angles(math.rad(0),math.rad(0),0)
 
local M2 = Instance.new("SpecialMesh")
M2.Parent = Hair
M2.MeshId = "http://www.roblox.com/asset/?id=13640868"
M2.TextureId = "http://www.roblox.com/asset/?id=18987684"
M2.Scale = Vector3.new(1, 1, 1)
-------------------------------------------------------
for i,v in pairs(char:children()) do
if v:IsA("Shirt") and v:IsA("Pants") and v:IsA("Hat") and v:IsA("Accessory") then
v:Remove()
end
end
shirt = Instance.new("Shirt", char)
shirt.Name = "Shirt"
pants = Instance.new("Pants", char)
pants.Name = "Pants"
char.Shirt.ShirtTemplate = "rbxassetid://676428254"
char.Pants.PantsTemplate = "rbxassetid://676428351"
-------------------------------------------------------
--------------

warn("WhAT ANOTHER ONE V3.0 IS FINALLY HERE!")

warn("I hope you enjoy.")

warn("Credit to makhail07, 2003boobear and XXUNORIBOASXX!")

warn("Edited by saba1520/kisslarge")

warn("you made it guys to i maked it to 3.0 thanks!")

-------------------------------------------------------
--Start Good Stuff--
-------------------------------------------------------
cam = game.Workspace.CurrentCamera
CF = CFrame.new
VT = Vector3.new
angles = CFrame.Angles
attack = false
Euler = CFrame.fromEulerAnglesXYZ
Rad = math.rad
IT = Instance.new
BrickC = BrickColor.new
Cos = math.cos
COS = math.cos
Acos = math.acos
Sin = math.sin
Asin = math.asin
Abs = math.abs
Mrandom = math.random
Floor = math.floor
-------------------------------------------------------
--End Good Stuff--
-------------------------------------------------------
necko = CF(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
RSH, LSH = nil, nil 
RW = Instance.new("Weld") 
LW = Instance.new("Weld")
RH = tors["Right Hip"]
LH = tors["Left Hip"]
RSH = tors["Right Shoulder"] 
LSH = tors["Left Shoulder"] 
RSH.Parent = nil 
LSH.Parent = nil 
RW.Name = "RW"
RW.Part0 = tors 
RW.C0 = CF(1.5, 0.5, 0)
RW.C1 = CF(0, 0.5, 0) 
RW.Part1 = ra
RW.Parent = tors 
LW.Name = "LW"
LW.Part0 = tors 
LW.C0 = CF(-1.5, 0.5, 0)
LW.C1 = CF(0, 0.5, 0) 
LW.Part1 = la
LW.Parent = tors
Effects = {}
-------------------------------------------------------
--Start HeartBeat--
-------------------------------------------------------
ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")

frame = 1 / 60
tf = 0
allowframeloss = false
tossremainder = false


lastframe = tick()
script.Heartbeat:Fire()


game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.Heartbeat:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				script.Heartbeat:Fire()
			end
			lastframe = tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf / frame)
		end
	end
end)
-------------------------------------------------------
--End HeartBeat--
-------------------------------------------------------

local ohno = Instance.new("Sound")
ohno.Parent = hed
ohno.Volume = 10
ohno.Pitch = 1
ohno.Looped = true

local bass = Instance.new("Sound") --why
bass.Parent = hed
bass.Volume = 7
bass.Pitch = 1
bass.SoundId = "http://www.roblox.com/asset/?id=1087356234"
bass.Looped = true

local newnoob = Instance.new("Sound") --why
newnoob.Parent = hed
newnoob.Volume = 7
newnoob.Pitch = 1
newnoob.SoundId = "http://www.roblox.com/asset/?id=874826071"
newnoob.Looped = false

meme = Instance.new("Sound", hed)
meme.SoundId = "http://www.roblox.com/asset/?id=291151190"
meme.Volume = 10
meme.Pitch = 1
meme.Looped = true
meme.TimePosition = 1

TAUNT = Instance.new("Sound", tors)
TAUNT.SoundId = "http://www.roblox.com/asset/?id=1535994137"
TAUNT.Volume = 10
TAUNT.Pitch = 1
TAUNT.Looped = false
TAUNT.TimePosition = 0.12

TAUNT2 = Instance.new("Sound", tors)
TAUNT2.SoundId = "http://www.roblox.com/asset/?id=132392118"
TAUNT2.Volume = 10
TAUNT2.Pitch = 1
TAUNT2.Looped = false
TAUNT2.TimePosition = 0.12

chargeup = Instance.new("Sound", hed)
chargeup.SoundId = "http://www.roblox.com/asset/?id=527276541"
chargeup.Volume = 10
chargeup.Pitch = 1
chargeup.Looped = true
chargeup.TimePosition = 1

BTAUNT = Instance.new("Sound", tors)
BTAUNT.SoundId = "http://www.roblox.com/asset/?id=1535995263"
BTAUNT.Volume = 10
BTAUNT.Pitch = 1
BTAUNT.Looped = false
BTAUNT.TimePosition = 0.2

NOTAUNT = Instance.new("Sound", tors)
NOTAUNT.SoundId = "http://www.roblox.com/asset/?id=1535994940"
NOTAUNT.Volume = 10
NOTAUNT.Pitch = 1
NOTAUNT.Looped = false
NOTAUNT.TimePosition = 0.2

NOSOUND = Instance.new("Sound", tors)
NOSOUND.SoundId = "http://www.roblox.com/asset/?id=135017578"
NOSOUND.Volume = 10
NOSOUND.Pitch = 1
NOSOUND.Looped = false
NOSOUND.TimePosition = 0.2

ITAUNT = Instance.new("Sound", tors)
ITAUNT.SoundId = "http://www.roblox.com/asset/?id=230255698"
ITAUNT.Volume = 50
ITAUNT.Pitch = 1
ITAUNT.Looped = false
ITAUNT.TimePosition = 0

BATAUNT = Instance.new("Sound", tors)
BATAUNT.SoundId = "http://www.roblox.com/asset/?id=132514715"
BATAUNT.Volume = 10
BATAUNT.Pitch = 1
BATAUNT.Looped = false
BATAUNT.TimePosition = 0

pop = Instance.new("Sound", tors)
pop.SoundId = "http://www.roblox.com/asset/?id=1460707372"
pop.Volume = 10
pop.Pitch = 1
pop.Looped = false
pop.TimePosition = 0

STAUNT = Instance.new("Sound", tors)
STAUNT.SoundId = "http://www.roblox.com/asset/?id=1535994940"
STAUNT.Volume = 10
STAUNT.Pitch = 1
STAUNT.Looped = false
STAUNT.TimePosition = 0.05

DTAUNT = Instance.new("Sound", tors)
DTAUNT.SoundId = "http://www.roblox.com/asset/?id=1818153677"
DTAUNT.Volume = 10
DTAUNT.Pitch = 1
DTAUNT.Looped = false
DTAUNT.TimePosition = 0

sex = Instance.new("Sound", tors)
sex.SoundId = "http://www.roblox.com/asset/?id=300208779"
sex.Volume = 10
sex.Pitch = 1
sex.Looped = false
sex.TimePosition = 0

so = Instance.new("Sound", tors)
so.SoundId = "http://www.roblox.com/asset/?id=449394892"
so.Volume = 10
so.Pitch = 1
so.Looped = false
so.TimePosition = 0

LAZOR = Instance.new("Sound", ra)
LAZOR.SoundId = "http://www.roblox.com/asset/?id=201858045"
LAZOR.Volume = 10
LAZOR.Pitch = 0.7
LAZOR.Looped = false
LAZOR.TimePosition = 0

 WTF = Instance.new("Sound", tors)
 WTF.SoundId = "http://www.roblox.com/asset/?id=135017578"
 WTF.Volume = 10
 WTF.Pitch = 1
 WTF.Looped = false
 WTF.TimePosition = 0

MERKIO = Instance.new("Sound", tors) --why
MERKIO.SoundId = "http://www.roblox.com/asset/?id=1003012899"
MERKIO.Volume = 5467543465
MERKIO.Pitch = 1
MERKIO.Looped = false
MERKIO.TimePosition = 0

Cause_Im_having_a_good_time_having_a_good_time = Instance.new("Sound", hed) --DONT STOP ME NOOOOOOOOOWWWWWWWW
Cause_Im_having_a_good_time_having_a_good_time.SoundId = "http://www.roblox.com/asset/?id=1064109642"
Cause_Im_having_a_good_time_having_a_good_time.Volume = 10
Cause_Im_having_a_good_time_having_a_good_time.Pitch = 1
Cause_Im_having_a_good_time_having_a_good_time.Looped = false
Cause_Im_having_a_good_time_having_a_good_time.TimePosition = 35.3

-------------------------------------------------------
--Start Important Functions--
-------------------------------------------------------
function MakeForm(PART,TYPE)
	if TYPE == "Cyl" then
		local MSH = IT("CylinderMesh",PART)
	elseif TYPE == "Ball" then
		local MSH = IT("SpecialMesh",PART)
		MSH.MeshType = "Sphere"
	elseif TYPE == "Wedge" then
		local MSH = IT("SpecialMesh",PART)
		MSH.MeshType = "Wedge"
	end
end

function chatfunc(text, color)
    local chat = coroutine.wrap(function()
        if char:FindFirstChild("TalkingBillBoard") ~= nil then
            char:FindFirstChild("TalkingBillBoard"):destroy()
        end
        local naeeym2 = Instance.new("BillboardGui", char)
        naeeym2.Size = UDim2.new(0, 100, 0, 40)
        naeeym2.StudsOffset = Vector3.new(0, 5, 0)
        naeeym2.Adornee = hed
        naeeym2.Name = "TalkingBillBoard"
        local tecks2 = Instance.new("TextLabel", naeeym2)
        tecks2.BackgroundTransparency = 1
        tecks2.BorderSizePixel = 0
        tecks2.Text = ""
        tecks2.Font = "SciFi"
        tecks2.TextSize = 30
        tecks2.TextStrokeTransparency = 0
        tecks2.TextColor3 = color
        tecks2.TextStrokeColor3 = Color3.new(0, 0, 0)
        tecks2.Size = UDim2.new(1, 0, 0.5, 0)
        local tecks3 = Instance.new("TextLabel", naeeym2)
        tecks3.BackgroundTransparency = 1
        tecks3.BorderSizePixel = 0
        tecks3.Text = ""
        tecks3.Font = "SciFi"
        tecks3.TextSize = 30
        tecks3.TextStrokeTransparency = 0
        tecks3.TextColor3 = Color3.new(0, 0, 0)
        tecks3.TextStrokeColor3 = color
        tecks3.Size = UDim2.new(1, 0, 0.5, 0)
        coroutine.resume(coroutine.create(function()
            while true do
                swait(1)
                    tecks2.TextColor3 = BrickColor.random().Color
                    tecks3.TextStrokeColor3 = BrickColor.random().Color
                tecks2.Position = UDim2.new(0, math.random(-5, 5), 0, math.random(-5, 5))
                tecks3.Position = UDim2.new(0, math.random(-5, 5), 0, math.random(-5, 5))
                tecks2.Rotation = math.random(-5, 5)
                tecks3.Rotation = math.random(-5, 5)
            end
        end))
        for i = 1, string.len(text) do
            CFuncs.Sound.Create("rbxassetid://274118116", char, 0.25, 0.115)
            tecks2.Text = string.sub(text, 1, i)
            tecks3.Text = string.sub(text, 1, i)
            swait(1)
        end
        wait(1)
        local randomrot = math.random(1, 2)
        if randomrot == 1 then
            for i = 1, 50 do
                swait()
                tecks2.Rotation = tecks2.Rotation - 0.75
                tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency + 0.04
                tecks2.TextTransparency = tecks2.TextTransparency + 0.04
                tecks3.Rotation = tecks2.Rotation + 0.75
                tecks3.TextStrokeTransparency = tecks2.TextStrokeTransparency + 0.04
                tecks3.TextTransparency = tecks2.TextTransparency + 0.04
            end
        elseif randomrot == 2 then
            for i = 1, 50 do
                swait()
                tecks2.Rotation = tecks2.Rotation + 0.75
                tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency + 0.04
                tecks2.TextTransparency = tecks2.TextTransparency + 0.04
                tecks3.Rotation = tecks2.Rotation - 0.75
                tecks3.TextStrokeTransparency = tecks2.TextStrokeTransparency + 0.04
                tecks3.TextTransparency = tecks2.TextTransparency + 0.04
            end
        end
        naeeym2:Destroy()
    end)
    chat()
end

function SphereAura(bonuspeed, FastSpeed, type, pos, x1, y1, z1, value, color, outerpos)
    local type = type
    local rng = Instance.new("Part", char)
    rng.Anchored = true
    rng.BrickColor = color
    rng.CanCollide = false
    rng.FormFactor = 3
    rng.Name = "Ring"
    rng.Material = "Neon"
    rng.Size = Vector3.new(1, 1, 1)
    rng.Transparency = 0
    rng.TopSurface = 0
    rng.BottomSurface = 0
    rng.CFrame = pos
    rng.CFrame = rng.CFrame + rng.CFrame.lookVector * outerpos
    local rngm = Instance.new("SpecialMesh", rng)
    rngm.MeshType = "Sphere"
    rngm.Scale = Vector3.new(x1, y1, z1)
    local scaler2 = 1
    local speeder = FastSpeed
    if type == "Add" then
        scaler2 = 1 * value
    elseif type == "Divide" then
        scaler2 = 1 / value
    end
    coroutine.resume(coroutine.create(function()
        for i = 0, 10 / bonuspeed, 0.1 do
            swait()
            if type == "Add" then
                scaler2 = scaler2 - 0.01 * value / bonuspeed
            elseif type == "Divide" then
                scaler2 = scaler2 - 0.01 / value * bonuspeed
            end
                        rng.BrickColor = BrickColor.random()
            speeder = speeder - 0.01 * FastSpeed * bonuspeed
            rng.CFrame = rng.CFrame + rng.CFrame.lookVector * speeder * bonuspeed
            rng.Transparency = rng.Transparency + 0.01 * bonuspeed
            rngm.Scale = rngm.Scale + Vector3.new(scaler2 * bonuspeed, scaler2 * bonuspeed, 0)
        end
        rng:Destroy()
    end))
end

function SoulSteal(dude)
if dude.Name ~= char then
local bgf = IT("BodyGyro", dude.Head)
bgf.CFrame = bgf.CFrame * CFrame.fromEulerAnglesXYZ(Rad(-90), 0, 0)
local val = IT("BoolValue", dude)
val.Name = "IsHit"
local torso = (dude:FindFirstChild'Head' or dude:FindFirstChild'Torso' or dude:FindFirstChild'UpperTorso' or dude:FindFirstChild'LowerTorso' or dude:FindFirstChild'HumanoidRootPart')
local soulst = coroutine.wrap(function()
local soul = Instance.new("Part",dude)
soul.Size = Vector3.new(1,1,1)
soul.CanCollide = false
soul.Anchored = false
soul.Position = torso.Position
soul.Transparency = 1
local PartEmmit1 = IT("ParticleEmitter", soul)
PartEmmit1.LightEmission = 1
PartEmmit1.Texture = "rbxassetid://569507414"
PartEmmit1.Color = ColorSequence.new(maincolor.Color)
PartEmmit1.Rate = 250
PartEmmit1.Lifetime = NumberRange.new(1.6)
PartEmmit1.Size = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 1, 0),
    NumberSequenceKeypoint.new(1, 0, 0)
})
PartEmmit1.Transparency = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 0, 0),
    NumberSequenceKeypoint.new(1, 1, 0)
})
PartEmmit1.Speed = NumberRange.new(0, 0)
PartEmmit1.VelocitySpread = 30000
PartEmmit1.Rotation = NumberRange.new(-360, 360)
PartEmmit1.RotSpeed = NumberRange.new(-360, 360)
local BodPoss = IT("BodyPosition", soul)
BodPoss.P = 3000
BodPoss.D = 1000
BodPoss.maxForce = Vector3.new(50000000000, 50000000000, 50000000000)
BodPoss.position = torso.Position + Vector3.new(Mrandom(-15, 15), Mrandom(-15, 15), Mrandom(-15, 15))
wait(1.6)
soul.Touched:connect(function(hit)
    if hit.Parent == char then
    soul:Destroy()
    end
end)
wait(1.2)
while soul do
    swait()
    PartEmmit1.Color = ColorSequence.new(maincolor.Color)
    BodPoss.Position = tors.Position
end
end)
    soulst()
    end
end
function FaceMouse()
local   Cam = workspace.CurrentCamera
    return {
        CFrame.new(char.Torso.Position, Vector3.new(mouse.Hit.p.x, char.Torso.Position.y, mouse.Hit.p.z)),
        Vector3.new(mouse.Hit.p.x, mouse.Hit.p.y, mouse.Hit.p.z)
    }
end

function Clerp(a, b, t)
    local qa = {QuaternionFromCFrame(a)}
    local qb = {QuaternionFromCFrame(b)}
    local ax, ay, az = a.x, a.y, a.z
    local bx, by, bz = b.x, b.y, b.z
    local _t = 1 - t
    return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end

function Eviscerate(dude)
    if dude.Name ~= char then
        local bgf = IT("BodyGyro", dude.Head)
        bgf.CFrame = bgf.CFrame * CFrame.fromEulerAnglesXYZ(Rad(-90), 0, 0)
        local val = IT("BoolValue", dude)
        val.Name = "IsHit"
        local ds = coroutine.wrap(function()
            dude:WaitForChild("Head"):BreakJoints()
            wait(0.5)
            target = nil
            coroutine.resume(coroutine.create(function()
                for i, v in pairs(dude:GetChildren()) do
                    if v:IsA("Accessory") then
                        v:Destroy()
                    end
                    if v:IsA("Humanoid") then
                        v:Destroy()
                    end
                    if v:IsA("CharacterMesh") then
                        v:Destroy()
                    end
                    if v:IsA("Model") then
                        v:Destroy()
                    end
                    if v:IsA("Part") or v:IsA("MeshPart") then
                        for x, o in pairs(v:GetChildren()) do
                            if o:IsA("Decal") then
                                o:Destroy()
                            end
                        end
                        coroutine.resume(coroutine.create(function()
                            v.Material = "Neon"
                            v.CanCollide = false
                            local PartEmmit1 = IT("ParticleEmitter", v)
                            PartEmmit1.LightEmission = 1
                            PartEmmit1.Texture = "rbxassetid://284205403"
                            PartEmmit1.Color = ColorSequence.new(maincolor.Color)
                            PartEmmit1.Rate = 150
                            PartEmmit1.Lifetime = NumberRange.new(1)
                            PartEmmit1.Size = NumberSequence.new({
                                NumberSequenceKeypoint.new(0, 0.75, 0),
                                NumberSequenceKeypoint.new(1, 0, 0)
                            })
                            PartEmmit1.Transparency = NumberSequence.new({
                                NumberSequenceKeypoint.new(0, 0, 0),
                                NumberSequenceKeypoint.new(1, 1, 0)
                            })
                            PartEmmit1.Speed = NumberRange.new(0, 0)
                            PartEmmit1.VelocitySpread = 30000
                            PartEmmit1.Rotation = NumberRange.new(-500, 500)
                            PartEmmit1.RotSpeed = NumberRange.new(-500, 500)
                            local BodPoss = IT("BodyPosition", v)
                            BodPoss.P = 3000
                            BodPoss.D = 1000
                            BodPoss.maxForce = Vector3.new(50000000000, 50000000000, 50000000000)
                            BodPoss.position = v.Position + Vector3.new(Mrandom(-15, 15), Mrandom(-15, 15), Mrandom(-15, 15))
                            v.Color = maincolor.Color
                            coroutine.resume(coroutine.create(function()
                                for i = 0, 49 do
                                    swait(1)
                                    v.Transparency = v.Transparency + 0.08
                                end
                                wait(0.5)
                                PartEmmit1.Enabled = false
                                wait(3)
                                v:Destroy()
                                dude:Destroy()
                            end))
                        end))
                    end
                end
            end))
        end)
        ds()
    end
end

function killnearest(position,range,maxstrength)
	for i,v in ipairs(workspace:GetChildren()) do
	local body = v:GetChildren()
		for part = 1, #body do
			if((body[part].ClassName == "Part" or body[part].ClassName == "MeshPart") and v ~= Character) then
				if(body[part].Position - position).Magnitude < range then
					if v.ClassName == "Model" then
						v:BreakJoints()
					end
					table.insert(Effects2,{body[part],"Disappear",0.02,2,2,2,2})
					body[part].Velocity = CFrame.new(position,body[part].Position).lookVector*5*maxstrength
				end
			end
		end
		if v.ClassName == "Part" then
			if v.Anchored == false and (v.Position - position).Magnitude < range then
				table.insert(Effects2,{v,"Disappear",0.02,2,2,2,2})
				v.Velocity = CFrame.new(position,v.Position).lookVector*5*maxstrength
			end
		end
	end
end


function CreatePart(FORMFACTOR, PARENT, MATERIAL, REFLECTANCE, TRANSPARENCY, BRICKCOLOR, NAME, SIZE, ANCHOR)
	local NEWPART = IT("Part")
	NEWPART.formFactor = FORMFACTOR
	NEWPART.Reflectance = REFLECTANCE
	NEWPART.Transparency = TRANSPARENCY
	NEWPART.CanCollide = false
	NEWPART.Locked = true
	NEWPART.Anchored = true
	if ANCHOR == false then
		NEWPART.Anchored = false
	end
	NEWPART.BrickColor = BrickC(tostring(BRICKCOLOR))
	NEWPART.Name = NAME
	NEWPART.Size = SIZE
	NEWPART.Position = Torso.Position
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end

        local joyemoji = Instance.new('ParticleEmitter', tors)
        joyemoji.VelocitySpread = 2000
        joyemoji.Lifetime = NumberRange.new(1)
        joyemoji.Speed = NumberRange.new(40)
joy= {}
for i=0, 19 do
  joy[#joy+ 1] = NumberSequenceKeypoint.new(i/19, math.random(1, 1))
end
joyemoji.Size = NumberSequence.new(joy)
        joyemoji.Rate = 0
        joyemoji.LockedToPart = false
        joyemoji.LightEmission = 0
        joyemoji.Texture = "rbxassetid://1176402123"
        joyemoji.Color = ColorSequence.new(BrickColor.new("Institutional white").Color)

        local LIT = Instance.new('ParticleEmitter', tors)
        LIT.VelocitySpread = 2000
        LIT.Lifetime = NumberRange.new(1)
        LIT.Speed = NumberRange.new(45)
nani= {}
for i=0, 19 do
  nani[#nani+ 1] = NumberSequenceKeypoint.new(i/19, math.random(1, 1))
end
LIT.Size = NumberSequence.new(nani)
        LIT.Rate = 0
        LIT.LockedToPart = false
        LIT.LightEmission = 0
        LIT.Texture = "rbxassetid://1492670151"
        LIT.Color = ColorSequence.new(BrickColor.new("Institutional white").Color)

        local ok = Instance.new('ParticleEmitter', tors)
        ok.VelocitySpread = 2000
        ok.Lifetime = NumberRange.new(1)
        ok.Speed = NumberRange.new(50)
cool= {}
for i=0, 19 do
  cool[#cool+ 1] = NumberSequenceKeypoint.new(i/19, math.random(1, 1))
end
ok.Size = NumberSequence.new(cool)
        ok.Rate = 0
        ok.LockedToPart = false
        ok.LightEmission = 0
        ok.Texture = "rbxassetid://636768448"
        ok.Color = ColorSequence.new(BrickColor.new("Institutional white").Color)

        local toast = Instance.new('ParticleEmitter', tors)
        toast.VelocitySpread = 2000
        toast.Lifetime = NumberRange.new(1)
        toast.Speed = NumberRange.new(60)
toasterstoasttoast= {}
for i=0, 19 do
  toasterstoasttoast[#toasterstoasttoast+ 1] = NumberSequenceKeypoint.new(i/19, math.random(1, 1))
end
toast.Size = NumberSequence.new(toasterstoasttoast)
        toast.Rate = 0
        toast.LockedToPart = false
        toast.LightEmission = 0
        toast.Texture = "rbxassetid://436096230"
        toast.Color = ColorSequence.new(BrickColor.new("Institutional white").Color)

function WhatHuh()
    attack = true
    hum.WalkSpeed = 1.01
    CreateSound("130766865", hed, 10, 1)
        Character.Head.face.Texture = "rbxassetid://276732672"
    for i = 0,4,0.1 do
        swait()
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(26), Rad(0)), 0.3)
        RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(120)), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-120)), 0.1)
    end
    for i = 0,6.7,0.1 do
        swait()
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(-26), Rad(0)), 0.3)
        RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(120)), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-120)), 0.1)
    end
    for i = 0,8.1,0.1 do
        swait()
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(26), Rad(0)), 0.3)
        RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(120)), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-120)), 0.1)
    end
    for i = 0,1,0.1 do
        swait()
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(40), Rad(-26), Rad(0)), 0.3)
        RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(120)), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-120)), 0.1)
    end
    for i = 0,1,0.1 do
        swait()
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(40), Rad(26), Rad(0)), 0.3)
        RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(120)), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-120)), 0.1)
    end
    for i = 0,4,0.1 do
        swait()
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(-26), Rad(0)), 0.3)
        RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(120)), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-120)), 0.1)
    end
    attack = false
        Character.Head.face.Texture = "rbxassetid://620619801"
    hum.WalkSpeed = 16
end

function EndMySufferingV3() --why
    attack = true
    hum.WalkSpeed = 1.01
        Character.Head.face.Texture = "rbxassetid://202210455"
        local A = math.random(1,5)
        if A == 1 then
            meme.SoundId = "rbxassetid://295810519"
        end
        if A == 2 then
            meme.SoundId = "rbxassetid://1124778077"
        end
        if A == 3 then
            meme.SoundId = "rbxassetid://464157070"
        end
        if A == 4 then
            meme.SoundId = "rbxassetid://146334595"
        end
        if A == 5 then
            meme.SoundId = "rbxassetid://145536915"
        end
        meme:Play()
        bass:Play()
        joyemoji.Rate = 70
        LIT.Rate = 70
        ok.Rate = 70
        toast.Rate = 70
       
    for i = 0,50,0.1 do
        swait()
    CameraEnshaking(1, 10)
        bass.Parent = hed
        meme.Parent = hed
    rootj.C0=clerp(rootj.C0,RootCF*CF(0,0,-0.1+0.1*math.cos(sine/20))*angles(math.rad(15),math.rad(-10),math.rad(0)),0.15)
    tors.Neck.C0=clerp(tors.Neck.C0,necko*angles(math.rad(35),math.rad(0),math.rad(0)),.3)
    RH.C0=clerp(RH.C0,CF(1,-.9-0.1*math.cos(sine/20),.025*math.cos(sine/20))*RHCF*angles(math.rad(-5),math.rad(0),math.rad(0)),0.15)
    LH.C0=clerp(LH.C0,CF(-1,-.9-0.1*math.cos(sine/20),.025*math.cos(sine/20))*LHCF*angles(math.rad(-5),math.rad(-0),math.rad(-20)),0.15)
    RW.C0 = clerp(RW.C0, CFrame.new(1.1, 0.5+0.1*math.sin(sine/30), -0.6) * angles(math.rad(-0), math.rad(10), math.rad(-110)), 0.1)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5+0.1*math.sin(sine/30), 0.055*math.cos(sine/20)) * angles(math.rad(-0), math.rad(-10), math.rad(-105)), 0.1)
    end
        bass:Stop()
        meme:Stop()
        joyemoji.Rate = 0
        LIT.Rate = 0
        ok.Rate = 0
        toast.Rate = 0
        Character.Head.face.Texture = "rbxassetid://620619801"
    attack = false
    hum.WalkSpeed = 16
end

function slap()
    attack = true
    hum.WalkSpeed = 1.01
    local icri = CreateSound("1205111204", hed, 10, 1)
    swait(165)
    local FRAME = tors.CFrame
    repeat
        swait()
                Character.Head.face.Texture = "rbxassetid://582931093"
        CameraEnshaking(1, 10)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
        RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.3, 0.9 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(90)), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.3, 0.9 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-90)), 0.1)
        tors.CFrame = FRAME * CF(0,1,0)
        swait()
        tors.CFrame = FRAME
    until icri.Playing == false
        Character.Head.face.Texture = "rbxassetid://620619801"
    attack = false
    hum.WalkSpeed = 16
end

function EndMySufferingV2()
attack = true
	for i = 0,6,0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.3, 0.9 + 0.05 * Sin(sine / 30), 0.2 * Cos(sine / 20)) * angles(Rad(170), Rad(0), Rad(-15)), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.3, 0.8 + 0.05 * Sin(sine / 30), -0.025 * Cos(sine / 20)) * angles(Rad(140), Rad(0), Rad(15)), 0.1)
	end
    CreateSound("1093102664", hed, 10, 1)
	CameraEnshaking(3, 8)
	for i = 0,2,0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(5), Rad(0), Rad(0)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(10), Rad(40), Rad(0)), 0.4)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.3, 0.9 + 0.05 * Sin(sine / 30), 0.2 * Cos(sine / 20)) * angles(Rad(200), Rad(0), Rad(-40)), 0.4)
		LW.C0 = clerp(LW.C0, CF(-1.3, 0.8 + 0.05 * Sin(sine / 30), -0.025 * Cos(sine / 20)) * angles(Rad(40), Rad(0), Rad(40)), 0.4)
	end
hum.MaxHealth = 0
ragdoll(char)
CreateSound("135488453", hed, 5, 1)
error("Seems like you just died.")
end

function Clerp(a, b, t)
    local qa = {
        QuaternionFromCFrame(a)
    }
    local qb = {
        QuaternionFromCFrame(b)
    }
    local ax, ay, az = a.x, a.y, a.z
    local bx, by, bz = b.x, b.y, b.z
    local _t = 1 - t
    return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end

function Swait(NUMBER)
    if NUMBER == 0 or NUMBER == nil then
        ArtificialHB.Event:wait()
    else
        for i = 1, NUMBER do
            ArtificialHB.Event:wait()
        end
    end
end

function swait(num)
	if num == 0 or num == nil then
		game:service("RunService").Stepped:wait(0)
	else
		for i = 0, num do
			game:service("RunService").Stepped:wait(0)
		end
	end
end
function thread(f)
	coroutine.resume(coroutine.create(f))
end
function clerp(a, b, t)
	local qa = {
		QuaternionFromCFrame(a)
	}
	local qb = {
		QuaternionFromCFrame(b)
	}
	local ax, ay, az = a.x, a.y, a.z
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1 - t
	return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end
function ShockWave(Part, cframe1, cframe2, Damage, Size)
	coroutine.resume(coroutine.create(function() 
		local wave = CreatePart(workspace, "Neon", 0, 0, Neoncolor, "Effect", Vector3.new(1, 1, 5))
		wave.Anchored = true 
		wave.CFrame = Part.CFrame * cframe1
		local Msh = Create("SpecialMesh"){
			Parent = wave,
			MeshType = "Sphere"
		}
		Cso("http://roblox.com/asset/?id=300916105", wave, 1, 1.3)
		for i = 0, 1, 0.2 do
			wait()
			local dir = wave.CFrame.lookVector * -1
			local pos = rayCast(wave.Position, dir, 5, Character)
			wave.CFrame = wave.CFrame * cframe2
                        table.insert(Effects, {
                                wave,
                                "Sphere",
                                0.01,
                                .03,
                                .03,
                                .03,
                        })
		end
	end))
end

local RightHole = CreatePart(3, Character, "Metal", 0, 0, "Mid gray", "Eye", VT(0.2,0,0.2),false)
MakeForm(RightHole,"Cyl")
local LeftHole = CreatePart(3, Character, "Metal", 0, 0, "Mid gray", "Eye", VT(0.2,0,0.2),false)
MakeForm(LeftHole,"Cyl")

function getbloody(victim,amount)
	local PART = CreatePart(3, Effects, "Metal", 0, 1, "Mid gray", "Blood", victim.Size)
	PART.CFrame = victim.CFrame
	local HITPLAYERSOUNDS = {"356551938","264486467"}
	Debris:AddItem(PART,5)
	CreateSound(HITPLAYERSOUNDS[MRANDOM(1, #HITPLAYERSOUNDS)], PART, 1, (math.random(8,12)/10))
	CreateSound(HITPLAYERSOUNDS[MRANDOM(1, #HITPLAYERSOUNDS)], PART, 1, (math.random(8,12)/10))
	CreateSound(HITPLAYERSOUNDS[MRANDOM(1, #HITPLAYERSOUNDS)], PART, 1, (math.random(8,12)/10))
	local prtcl = asd:Clone()
	prtcl.Parent = PART
	prtcl:Emit(amount*10)
end

function PixelBlock(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos) --Thanks, Star Glitcher!
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = color
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Brick"
rngm.Scale = VT(x1,y1,z1)
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
local scaler2 = 1
local speeder = FastSpeed/10
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
end
speeder = speeder - 0.01*FastSpeed*bonuspeed/10
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
rng.Transparency = rng.Transparency + 0.01*bonuspeed
end
rng:Destroy()
end))
end
New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end
function QuaternionFromCFrame(cf)
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
	local trace = m00 + m11 + m22
	if trace > 0 then
		local s = math.sqrt(1 + trace)
		local recip = 0.5 / s
		return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
	else
		local i = 0
		if m00 < m11 then
			i = 1
		end
		if m22 > (i == 0 and m00 or m11) then
			i = 2
		end
		if i == 0 then
			local s = math.sqrt(m00 - m11 - m22 + 1)
			local recip = 0.5 / s
			return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
		elseif i == 1 then
			local s = math.sqrt(m11 - m22 - m00 + 1)
			local recip = 0.5 / s
			return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
		elseif i == 2 then
			local s = math.sqrt(m22 - m00 - m11 + 1)
			local recip = 0.5 / s
			return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
		end
	end
end
function QuaternionToCFrame(px, py, pz, x, y, z, w)
	local xs, ys, zs = x + x, y + y, z + z
	local wx, wy, wz = w * xs, w * ys, w * zs
	local xx = x * xs
	local xy = x * ys
	local xz = x * zs
	local yy = y * ys
	local yz = y * zs
	local zz = z * zs
	return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
end

--WACKYEFFECT({EffectType = "", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,1,1), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
function WACKYEFFECT(Table)
	local TYPE = (Table.EffectType or "Sphere")
	local SIZE = (Table.Size or VT(1,1,1))
	local ENDSIZE = (Table.Size2 or VT(0,0,0))
	local TRANSPARENCY = (Table.Transparency or 0)
	local ENDTRANSPARENCY = (Table.Transparency2 or 1)
	local CFRAME = (Table.CFrame or Torso.CFrame)
	local MOVEDIRECTION = (Table.MoveToPos or nil)
	local ROTATION1 = (Table.RotationX or 0)
	local ROTATION2 = (Table.RotationY or 0)
	local ROTATION3 = (Table.RotationZ or 0)
	local MATERIAL = (Table.Material or "Neon")
	local COLOR = (Table.Color or C3(1,1,1))
	local TIME = (Table.Time or 45)
	local SOUNDID = (Table.SoundID or nil)
	local SOUNDPITCH = (Table.SoundPitch or nil)
	local SOUNDVOLUME = (Table.SoundVolume or nil)
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND = nil
		local EFFECT = CreatePart(3, Effects, MATERIAL, 0, TRANSPARENCY, BRICKC("Pearl"), "Effect", VT(1,1,1), true)
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID, EFFECT, SOUNDVOLUME, SOUNDPITCH, false)
		end
		EFFECT.Color = COLOR
		local MSH = nil
		if TYPE == "Sphere" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "Sphere", "", "", SIZE, VT(0,0,0))
		elseif TYPE == "Block" then
			MSH = IT("BlockMesh",EFFECT)
			MSH.Scale = VT(SIZE.X,SIZE.X,SIZE.X)
		elseif TYPE == "Wave" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "20329976", "", SIZE, VT(0,0,-SIZE.X/8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "559831844", "", VT(SIZE.X,SIZE.X,0.1), VT(0,0,0))
		elseif TYPE == "Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662586858", "", VT(SIZE.X/10,0,SIZE.X/10), VT(0,0,0))
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662585058", "", VT(SIZE.X/10,0,SIZE.X/10), VT(0,0,0))
		elseif TYPE == "Swirl" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "1051557", "", SIZE, VT(0,0,0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "4770583", "", SIZE, VT(0,0,0))
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "9756362", "", SIZE, VT(0,0,0))
		end
		if MSH ~= nil then
			local MOVESPEED = nil
			if MOVEDIRECTION ~= nil then
				MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude/TIME
			end
			local GROWTH = SIZE - ENDSIZE
			local TRANS = TRANSPARENCY - ENDTRANSPARENCY
			if TYPE == "Block" then
				EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
			else
				EFFECT.CFrame = CFRAME
			end
			for LOOP = 1, TIME+1 do
				Swait()
				MSH.Scale = MSH.Scale - GROWTH/TIME
				if TYPE == "Wave" then
					MSH.Offset = VT(0,0,-MSH.Scale.X/8)
				end
				EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
				if TYPE == "Block" then
					EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
				else
					EFFECT.CFrame = EFFECT.CFrame*ANGLES(RAD(ROTATION1),RAD(ROTATION2),RAD(ROTATION3))
				end
				if MOVEDIRECTION ~= nil then
					local ORI = EFFECT.Orientation
					EFFECT.CFrame = CF(EFFECT.Position,MOVEDIRECTION)*CF(0,0,-MOVESPEED)
					EFFECT.Orientation = ORI
				end
			end
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat Swait() until SOUND.Playing == false
				EFFECT:remove()
			end
		else
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat Swait() until SOUND.Playing == false
				EFFECT:remove()
			end
		end
	end))
end


function QuaternionSlerp(a, b, t)
	local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
	local startInterp, finishInterp
	if cosTheta >= 1.0E-4 then
		if 1 - cosTheta > 1.0E-4 then
			local theta = math.acos(cosTheta)
			local invSinTheta = 1 / Sin(theta)
			startInterp = Sin((1 - t) * theta) * invSinTheta
			finishInterp = Sin(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	elseif 1 + cosTheta > 1.0E-4 then
		local theta = math.acos(-cosTheta)
		local invSinTheta = 1 / Sin(theta)
		startInterp = Sin((t - 1) * theta) * invSinTheta
		finishInterp = Sin(t * theta) * invSinTheta
	else
		startInterp = t - 1
		finishInterp = t
	end
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end
function rayCast(Position, Direction, Range, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore)
end

local function Create(class)
	return function(props)
		local obj = Instance.new(class)
		for i,v in pairs(props) do
			obj[i] = v
		end
		return obj
	end
end

-------------------------------------------------------
--Start Damage Function--
-------------------------------------------------------
function sphereMK(bonuspeed, FastSpeed, type, pos, x1, y1, z1, value, color, outerpos)
    local type = type
    local rng = Instance.new("Part", char)
    rng.Anchored = true
    rng.BrickColor = color
    rng.CanCollide = false
    rng.FormFactor = 3
    rng.Name = "Ring"
    rng.Material = "Neon"
    rng.Size = Vector3.new(1, 1, 1)
    rng.Transparency = 0
    rng.TopSurface = 0
    rng.BottomSurface = 0
    rng.CFrame = pos
    rng.CFrame = rng.CFrame + rng.CFrame.lookVector * outerpos
    local rngm = Instance.new("SpecialMesh", rng)
    rngm.MeshType = "Sphere"
    rngm.Scale = Vector3.new(x1, y1, z1)
    local scaler2 = 1
    local speeder = FastSpeed
    if type == "Add" then
        scaler2 = 1 * value
    elseif type == "Divide" then
        scaler2 = 1 / value
    end
    coroutine.resume(coroutine.create(function()
        for i = 0, 10 / bonuspeed, 0.1 do
            swait()
            if type == "Add" then
                scaler2 = scaler2 - 0.01 * value / bonuspeed
            elseif type == "Divide" then
                scaler2 = scaler2 - 0.01 / value * bonuspeed
            end
            speeder = speeder - 0.01 * FastSpeed * bonuspeed
            rng.CFrame = rng.CFrame + rng.CFrame.lookVector * speeder * bonuspeed
            rng.Transparency = rng.Transparency + 0.01 * bonuspeed
            rngm.Scale = rngm.Scale + Vector3.new(scaler2 * bonuspeed, scaler2 * bonuspeed, 0)
        end
        rng:Destroy()
    end))
end
-----------------------------
function Damage(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
	if hit.Parent == nil then
		return
	end
	local h = hit.Parent:FindFirstChildOfClass("Humanoid")
	for _, v in pairs(hit.Parent:children()) do
		if v:IsA("Humanoid") then
			h = v
		end
	end
         if h ~= nil and hit.Parent.Name ~= char.Name and hit.Parent:FindFirstChild("UpperTorso") ~= nil then
	
         hit.Parent:FindFirstChild("Head"):BreakJoints()
         end

	if h ~= nil and hit.Parent.Name ~= char.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
		if hit.Parent:findFirstChild("DebounceHit") ~= nil then
			if hit.Parent.DebounceHit.Value == true then
				return
			end
		end
         if insta == true then
         hit.Parent:FindFirstChild("Head"):BreakJoints()
         end
		local c = Create("ObjectValue"){
			Name = "creator",
			Value = owner,
			Parent = h,
		}
		game:GetService("Debris"):AddItem(c, .5)
		if HitSound ~= nil and HitPitch ~= nil then
			CFuncs.Sound.Create(HitSound, hit, 1, HitPitch) 
		end
		local Damage = math.random(minim, maxim)
		local blocked = false
		local block = hit.Parent:findFirstChild("Block")
		if block ~= nil then
			if block.className == "IntValue" then
				if block.Value > 0 then
					blocked = true
					block.Value = block.Value - 1
					print(block.Value)
				end
			end
		end
		if blocked == false then
			h.Health = h.Health - Damage
			ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, tors.BrickColor.Color)
		else
			h.Health = h.Health - (Damage / 2)
			ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, tors.BrickColor.Color)
		end
		if Type == "Knockdown" then
			local hum = hit.Parent.Humanoid
			hum.PlatformStand = true
			coroutine.resume(coroutine.create(function(HHumanoid)
				swait(1)
				HHumanoid.PlatformStand = false
			end), hum)
			local angle = (hit.Position - (Property.Position + Vector3.new(0, 0, 0))).unit
			local bodvol = Create("BodyVelocity"){
				velocity = angle * knockback,
				P = 5000,
				maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
				Parent = hit,
			}
			local rl = Create("BodyAngularVelocity"){
				P = 3000,
				maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000,
				angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)),
				Parent = hit,
			}
			game:GetService("Debris"):AddItem(bodvol, .5)
			game:GetService("Debris"):AddItem(rl, .5)
		elseif Type == "Random Guy" then
			local vp = Create("BodyVelocity"){
				P = 500,
				maxForce = Vector3.new(math.huge, 0, math.huge),
				velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05,
			}
			if knockback > 0 then
				vp.Parent = hit.Parent.Torso
			end
			game:GetService("Debris"):AddItem(vp, .5)
		elseif Type == "Up" then
			local bodyVelocity = Create("BodyVelocity"){
				velocity = Vector3.new(0, 20, 0),
				P = 5000,
				maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
				Parent = hit,
			}
			game:GetService("Debris"):AddItem(bodyVelocity, .5)
		elseif Type == "DarkUp" then
			coroutine.resume(coroutine.create(function()
				for i = 0, 1, 0.1 do
					swait()
					Effects.Block.Create(BrickColor.new("Black"), hit.Parent.Torso.CFrame, 5, 5, 5, 1, 1, 1, .08, 1)
				end
			end))
			local bodyVelocity = Create("BodyVelocity"){
				velocity = Vector3.new(0, 20, 0),
				P = 5000,
				maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
				Parent = hit,
			}
			game:GetService("Debris"):AddItem(bodyVelocity, 1)
		elseif Type == "Snare" then
			local bp = Create("BodyPosition"){
				P = 2000,
				D = 100,
				maxForce = Vector3.new(math.huge, math.huge, math.huge),
				position = hit.Parent.Torso.Position,
				Parent = hit.Parent.Torso,
			}
			game:GetService("Debris"):AddItem(bp, 1)
		elseif Type == "Freeze" then
			local BodPos = Create("BodyPosition"){
				P = 50000,
				D = 1000,
				maxForce = Vector3.new(math.huge, math.huge, math.huge),
				position = hit.Parent.Torso.Position,
				Parent = hit.Parent.Torso,
			}
			local BodGy = Create("BodyGyro") {
				maxTorque = Vector3.new(4e+005, 4e+005, 4e+005) * math.huge ,
				P = 20e+003,
				Parent = hit.Parent.Torso,
				cframe = hit.Parent.Torso.CFrame,
			}
			hit.Parent.Torso.Anchored = true
			coroutine.resume(coroutine.create(function(Part) 
				swait(1.5)
				Part.Anchored = false
			end), hit.Parent.Torso)
			game:GetService("Debris"):AddItem(BodPos, 3)
			game:GetService("Debris"):AddItem(BodGy, 3)
		end
		local debounce = Create("BoolValue"){
			Name = "DebounceHit",
			Parent = hit.Parent,
			Value = true,
		}
		game:GetService("Debris"):AddItem(debounce, Delay)
		c = Create("ObjectValue"){
			Name = "creator",
			Value = Player,
			Parent = h,
		}
		game:GetService("Debris"):AddItem(c, .5)
	end
end
-------------------------------------------------------
--End Damage Function--
-------------------------------------------------------

-------------------------------------------------------
--Start Damage Function Customization--
-------------------------------------------------------
function ShowDamage(Pos, Text, Time, Color)
	local Rate = (1 / 30)
	local Pos = (Pos or Vector3.new(0, 0, 0))
	local Text = (Text or "")
	local Time = (Time or 2)
	local Color = (Color or Color3.new(1, 0, 1))
	local EffectPart = CFuncs.Part.Create(workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", Vector3.new(0, 0, 0))
	EffectPart.Anchored = true
	local BillboardGui = Create("BillboardGui"){
		Size = UDim2.new(3, 0, 3, 0),
		Adornee = EffectPart,
		Parent = EffectPart,
	}
	local TextLabel = Create("TextLabel"){
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		Text = Text,
		Font = "Bodoni",
		TextColor3 = Color,
		TextScaled = true,
		TextStrokeColor3 = Color3.fromRGB(0,0,0),
		Parent = BillboardGui,
	}
	game.Debris:AddItem(EffectPart, (Time))
	EffectPart.Parent = game:GetService("Workspace")
	delay(0, function()
		local Frames = (Time / Rate)
		for Frame = 1, Frames do
			wait(Rate)
			local Percent = (Frame / Frames)
			EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
			TextLabel.TextTransparency = Percent
		end
		if EffectPart and EffectPart.Parent then
			EffectPart:Destroy()
		end
	end)
end

function PixelBlockX(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos)
    local type = type
    local rng = Instance.new("Part", char)
    rng.Anchored = true
    rng.BrickColor = color
    rng.CanCollide = false
    rng.FormFactor = 3
    rng.Name = "Ring"
    rng.Material = "Neon"
    rng.Size = Vector3.new(1, 1, 1)
    rng.Transparency = 0
    rng.TopSurface = 0
    rng.BottomSurface = 0
    rng.CFrame = pos
    rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
    local rngm = Instance.new("SpecialMesh", rng)
    rngm.MeshType = "Brick"
    rngm.Scale = Vector3.new(x1,y1,z1)
    local scaler2 = 1
    local speeder = FastSpeed/10
    if type == "Add" then
        scaler2 = 1*value
    elseif type == "Divide" then
        scaler2 = 1/value
    end
    coroutine.resume(coroutine.create(function()
        for i = 0,10/bonuspeed,0.1 do
            swait()
            if type == "Add" then
                scaler2 = scaler2 - 0.01*value/bonuspeed
            elseif type == "Divide" then
                scaler2 = scaler2 - 0.01/value*bonuspeed
            end
            speeder = speeder - 0.01*FastSpeed*bonuspeed/10
            rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
            rng.Transparency = rng.Transparency + 0.01*bonuspeed
            rngm.Scale = rngm.Scale - Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, scaler2*bonuspeed)
        end
    rng:Destroy()
    end))
end
 
Meshed = function(cf,meshstart,meshadd,colour,meshid,textid,spin,inverse,factor)
local p = Instance.new("Part",EffectModel)
p.BrickColor = BrickColor.new(colour)
p.Size = Vector3.new()
p.Anchored = true
p.CanCollide = false
p.CFrame = cf
if inverse == true then
p.Transparency = 1
else
p.Transparency = 0
end
local m = Instance.new("SpecialMesh",p)
m.MeshId = meshid
m.TextureId = textid
m.Scale = meshstart
coroutine.wrap(function()
for i=0,1,factor do
swait()
if inverse == true then
p.Transparency = 1-i
else
p.Transparency = i
end
m.Scale = m.Scale + meshadd
p.CFrame = p.CFrame * CFrame.Angles(0,math.rad(spin),0)
end
p:Destroy()
end)()
return p
end
-------------------------------------------------------
--End Damage Function Customization--
-------------------------------------------------------

function MagniDamage(Part, magni, mindam, maxdam, knock, Type)
  for _, c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Head")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if magni >= mag and c.Name ~= Player.Name then
          Damage(head, head, mindam, maxdam, knock, Type, root, 0.1, "http://www.roblox.com/asset/?id=0", 1.2)
        end
      end
    end
  end
end


CFuncs = {
	Part = {
		Create = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
			local Part = Create("Part")({
				Parent = Parent,
				Reflectance = Reflectance,
				Transparency = Transparency,
				CanCollide = false,
				Locked = true,
				BrickColor = BrickColor.new(tostring(BColor)),
				Name = Name,
				Size = Size,
				Material = Material
			})
			RemoveOutlines(Part)
			return Part
		end
	},
	Mesh = {
		Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
			local Msh = Create(Mesh)({
				Parent = Part,
				Offset = OffSet,
				Scale = Scale
			})
			if Mesh == "SpecialMesh" then
				Msh.MeshType = MeshType
				Msh.MeshId = MeshId
			end
			return Msh
		end
	},
	Mesh = {
		Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
			local Msh = Create(Mesh)({
				Parent = Part,
				Offset = OffSet,
				Scale = Scale
			})
			if Mesh == "SpecialMesh" then
				Msh.MeshType = MeshType
				Msh.MeshId = MeshId
			end
			return Msh
		end
	},
	Weld = {
		Create = function(Parent, Part0, Part1, C0, C1)
			local Weld = Create("Weld")({
				Parent = Parent,
				Part0 = Part0,
				Part1 = Part1,
				C0 = C0,
				C1 = C1
			})
			return Weld
		end
	},
	Sound = {
		Create = function(id, par, vol, pit)
			coroutine.resume(coroutine.create(function()
				local S = Create("Sound")({
					Volume = vol,
					Pitch = pit or 1,
					SoundId = id,
					Parent = par or workspace
				})
				wait()
				S:play()
				game:GetService("Debris"):AddItem(S, 6)
			end))
		end
	},
	ParticleEmitter = {
		Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
			local fp = Create("ParticleEmitter")({
				Parent = Parent,
				Color = ColorSequence.new(Color1, Color2),
				LightEmission = LightEmission,
				Size = Size,
				Texture = Texture,
				Transparency = Transparency,
				ZOffset = ZOffset,
				Acceleration = Accel,
				Drag = Drag,
				LockedToPart = LockedToPart,
				VelocityInheritance = VelocityInheritance,
				EmissionDirection = EmissionDirection,
				Enabled = Enabled,
				Lifetime = LifeTime,
				Rate = Rate,
				Rotation = Rotation,
				RotSpeed = RotSpeed,
				Speed = Speed,
				VelocitySpread = VelocitySpread
			})
			return fp
		end
	}
}
function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
function CreatePart1(FormFactor, Parent, Material, Reflectance, Transparency, BColor, Name, Size)
	local Part = Create("Part")({
		formFactor = FormFactor,
		Parent = Parent,
		Reflectance = Reflectance,
		Transparency = Transparency,
		CanCollide = false,
		Locked = true,
		BrickColor = BrickColor.new(tostring(BColor)),
		Name = Name,
		Size = Size,
		Material = Material
	})
	RemoveOutlines(Part)
	return Part
end
function CreateMesh1(Mesh, Part, MeshType, MeshId, OffSet, Scale)
	local Msh = Create(Mesh)({
		Parent = Part,
		Offset = OffSet,
		Scale = Scale
	})
	if Mesh == "SpecialMesh" then
		Msh.MeshType = MeshType
		Msh.MeshId = MeshId
	end
	return Msh
end
function CreateWeld(Parent, Part0, Part1, C0, C1)
	local Weld = Create("Weld")({
		Parent = Parent,
		Part0 = Part0,
		Part1 = Part1,
		C0 = C0,
		C1 = C1
	})
	return Weld
end

abss = Instance.new("BillboardGui",char)
abss.Size = UDim2.new(10,0,10,0)
abss.Enabled = false
imgl = Instance.new("ImageLabel",abss)
imgl.Position = UDim2.new(0,0,0,0)
imgl.Size = UDim2.new(1,0,1,0)
imgl.Image = "rbxassetid://153485522"
imgl.BackgroundTransparency = 1
imgl.ImageColor3 = Color3.new(.9,0,0)
img2 = Instance.new("ImageLabel",abss)
img2.Position = UDim2.new(0,0,0,0)
img2.Size = UDim2.new(1,0,1,0)
img2.Image = "rbxassetid://153485522"
img2.BackgroundTransparency = 1
img2.ImageColor3 = Color3.new(.9,0,0)
 
function TargetSelect(person)
local dd=coroutine.wrap(function()
if targetted ~= person then
targetted = person
img2.Size = UDim2.new(1,0,1,0)
img2.ImageTransparency = 0
img2.Position = UDim2.new(0,0,0,0)
for i = 0, 2, 0.1 do
swait()
img2.Size = img2.Size + UDim2.new(.05,0,.05,0)
img2.Position = img2.Position + UDim2.new(-.025,0,-.025,0)
img2.ImageTransparency = img2.ImageTransparency + 0.05
end
end
end)
dd()
end

function CreateWeldOrSnapOrMotor(TYPE, PARENT, PART0, PART1, C0, C1)
    local NEWWELD = IT(TYPE)
    NEWWELD.Part0 = PART0
    NEWWELD.Part1 = PART1
    NEWWELD.C0 = C0
    NEWWELD.C1 = C1
    NEWWELD.Parent = PARENT
    return NEWWELD
end

local GRIP = CreateWeldOrSnapOrMotor("Weld", RightArm, RightArm, HANDLE, CF(0,-1.1,-0.25)*ANGLES(RAD(-110),RAD(0),RAD(0))*ANGLES(RAD(0),RAD(0),RAD(180)), CF(0,0,0))

local Blood1 = Create("ParticleEmitter")({
  Color = ColorSequence.new(Color3.new(0.7, 0, 0), Color3.new(0.1, 0, 0)),
  Transparency = NumberSequence.new(0.1, 1),
  Size = NumberSequence.new(0.5, 0),
  Texture = "rbxassetid://602578593",
  Lifetime = NumberRange.new(0.8),
  Rate = 255,
  VelocitySpread = 40,
  Rotation = NumberRange.new(100),
  Speed = NumberRange.new(5),
  LightEmission = 0,
  LockedToPart = false,
  Acceleration = Vector3.new(0, -10, 0),
  EmissionDirection = "Bottom"
})
function Sayonara()
    local target = nil
    local targettorso = nil
    if mouse.Target.Parent ~= char and mouse.Target.Parent.Parent ~= char and mouse.Target.Parent:FindFirstChild("Humanoid") ~= nil then
        if mouse.Target.Parent.Humanoid.PlatformStand == false then
            target = mouse.Target.Parent.Humanoid
            targettorso = mouse.Target.Parent:FindFirstChild("Torso") or mouse.Target.Parent:FindFirstChild("UpperTorso")
            targethead = mouse.Target.Parent:FindFirstChild("Head")
            targetrightarm = mouse.Target.Parent:FindFirstChild("Right Arm")
            targetleftarm = mouse.Target.Parent:FindFirstChild("Left Arm")
        end
    end
    if target ~= nil then
        targettorso.Anchored = true
        attack = true
        hum.WalkSpeed = 0
        root.CFrame = targettorso.CFrame * CF(0,0,2.4)
        for i = 0,6.2,0.1 do
            swait()
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(10), Rad(0), Rad(0)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(20), Rad(10), Rad(0)), 0.3)
        RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-5), Rad(0), Rad(10)), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-5), Rad(0), Rad(-10)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), -.4 + 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(0), Rad(10)), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), -.4 + 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(0), Rad(-10)), 0.1)
        end
        do
        CreateSound("429400881", targettorso, 5, 1)
        local ModelArm02 = New("Model", char, "Arm", {})
        local ModelArm03 = New("Model", char, "Arm", {})
        local Humanoid02 = New("Humanoid", ModelArm02, "Humanoid", {})
        local Humanoid03 = New("Humanoid", ModelArm03, "Humanoid", {})
        local Arm02 = targetleftarm:Clone()
        local Arm03 = targetrightarm:Clone()
        targetleftarm.Transparency = 1
        targetrightarm.Transparency = 1
        Arm02.Parent = ModelArm02
        Arm03.Parent = ModelArm03
        for i, v in pairs(Arm02:GetChildren()) do
          v:Destroy()
        end
        for i, v in pairs(Arm03:GetChildren()) do
          v:Destroy()
        end
        local weldArm02 = Instance.new("Weld")
        weldArm02.Parent = Arm02
        weldArm02.Part0 = targetleftarm
        weldArm02.Part1 = Arm02
        weldArm02.C1 = CFrame.new(0, 0, 0)
        local weldArm03 = Instance.new("Weld")
        weldArm03.Parent = Arm03
        weldArm03.Part0 = targetrightarm
        weldArm03.Part1 = Arm03
        weldArm03.C1 = CFrame.new(0, 0, 0)
        for i, v in pairs(target:GetChildren()) do
          if v:IsA("Shirt") then
            v:clone().Parent = ModelArm02
          end
        end
        for i, v in pairs(target:GetChildren()) do
          if v:IsA("Shirt") then
            v:clone().Parent = ModelArm03
          end
        end
        weldArm02.Part0 = la
        weldArm02.C1 = CFrame.new(0, 0, 1.2) * angles(math.rad(90), math.rad(0), math.rad(0))
        weldArm03.Part0 = ra
        weldArm03.C1 = CFrame.new(0, 0, 1.2) * angles(math.rad(90), math.rad(0), math.rad(0))
        local BE1 = Blood1:Clone()
        BE1.Parent = targetleftarm
        game:GetService("Debris"):AddItem(BE1, 3)
        BE1.Rate = 255
        local BE2 = Blood1:Clone()
        BE2.Parent = targetrightarm
        game:GetService("Debris"):AddItem(BE2, 3)
        BE2.Rate = 255
        for i = 0,6.2,0.1 do
            swait()
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-10), Rad(0), Rad(0)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
        RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-5), Rad(0), Rad(-10)), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-5), Rad(0), Rad(10)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), .6 + 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(0), Rad(15)), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), .6 + 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(0), Rad(-15)), 0.1)
        end
        for i = 0,6.2,0.1 do
            swait()
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-20), Rad(0), Rad(0)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
        RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-5), Rad(0), Rad(-20)), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-5), Rad(0), Rad(20)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(180), Rad(0), Rad(15)), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(180), Rad(0), Rad(-15)), 0.1)
        end
        CreateSound("541909763", targettorso, 5, .8)
        weldArm02:Destroy()
        Arm02.CanCollide = true
        weldArm03:Destroy()
        Arm03.CanCollide = true
        local bodyVelocity2 = Create("BodyVelocity")({
          velocity = Vector3.new(0, 10, 0) + root.CFrame.lookVector * 50,
          P = 5000,
          maxForce = Vector3.new(8000, 8000, 8000),
          Parent = Arm02
        })
        local bodyVelocity3 = Create("BodyVelocity")({
          velocity = Vector3.new(0, 10, 0) + root.CFrame.lookVector * 50,
          P = 5000,
          maxForce = Vector3.new(8000, 8000, 8000),
          Parent = Arm03
        })
        game:GetService("Debris"):AddItem(bodyVelocity2, 0.05)
        game:GetService("Debris"):AddItem(bodyVelocity3, 0.05)
        for i = 0,6.2,0.1 do
            swait()
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(20), Rad(0), Rad(0)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
        RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-5), Rad(0), Rad(35)), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-5), Rad(0), Rad(-20)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(95), Rad(0), Rad(15)), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(95), Rad(0), Rad(-15)), 0.1)
        end
        for i = 0,6.2,0.1 do
            swait()
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-20), Rad(0), Rad(0)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
        RH.C0 = clerp(RH.C0, CF(1, -0.3 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-5), Rad(0), Rad(90)), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-5), Rad(0), Rad(20)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-30), Rad(0), Rad(15)), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-30), Rad(0), Rad(-15)), 0.1)
        end
        targettorso:Remove()
        for i = 0,6.2,0.1 do
            swait()
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, -2.5, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(35), Rad(0), Rad(0)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
        RH.C0 = clerp(RH.C0, CF(1, -0.2 - 0.1 * Cos(sine / 20), -.5 + 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-5), Rad(0), Rad(90)), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-5), Rad(0), Rad(-35)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-55), Rad(0), Rad(15)), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-55), Rad(0), Rad(-15)), 0.1)
        end
        end
        targettorso.Anchored = false
        attack = false
        hum.WalkSpeed = 16
        root.CFrame = targettorso.CFrame * CF(0,0,3.4)
    end
end

-------------------------------------------------------
--Start Effect Function--
-------------------------------------------------------
EffectModel = Instance.new("Model", char)
Effects = {
  Block = {
    Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
      local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
      prt.Anchored = true
      prt.CFrame = cframe
      local msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
      game:GetService("Debris"):AddItem(prt, 10)
      if Type == 1 or Type == nil then
        table.insert(Effects, {
          prt,
          "Block1",
          delay,
          x3,
          y3,
          z3,
          msh
        })
      elseif Type == 2 then
        table.insert(Effects, {
          prt,
          "Block2",
          delay,
          x3,
          y3,
          z3,
          msh
        })
      else
        table.insert(Effects, {
          prt,
          "Block3",
          delay,
          x3,
          y3,
          z3,
          msh
        })
      end
    end
  },
  Sphere = {
    Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
      local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
      prt.Anchored = true
      prt.CFrame = cframe
      local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
      game:GetService("Debris"):AddItem(prt, 10)
      table.insert(Effects, {
        prt,
        "Cylinder",
        delay,
        x3,
        y3,
        z3,
        msh
      })
    end
  },
  Cylinder = {
    Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
      local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
      prt.Anchored = true
      prt.CFrame = cframe
      local msh = CFuncs.Mesh.Create("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
      game:GetService("Debris"):AddItem(prt, 10)
      table.insert(Effects, {
        prt,
        "Cylinder",
        delay,
        x3,
        y3,
        z3,
        msh
      })
    end
  },
  Wave = {
    Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
      local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
      prt.Anchored = true
      prt.CFrame = cframe
      local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1 / 60, y1 / 60, z1 / 60))
      game:GetService("Debris"):AddItem(prt, 10)
      table.insert(Effects, {
        prt,
        "Cylinder",
        delay,
        x3 / 60,
        y3 / 60,
        z3 / 60,
        msh
      })
    end
  },
  Ring = {
    Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
      local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
      prt.Anchored = true
      prt.CFrame = cframe
      local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
      game:GetService("Debris"):AddItem(prt, 10)
      table.insert(Effects, {
        prt,
        "Cylinder",
        delay,
        x3,
        y3,
        z3,
        msh
      })
    end
  },
  Break = {
    Create = function(brickcolor, cframe, x1, y1, z1)
      local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
      prt.Anchored = true
      prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
      local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
      local num = math.random(10, 50) / 1000
      game:GetService("Debris"):AddItem(prt, 10)
      table.insert(Effects, {
        prt,
        "Shatter",
        num,
        prt.CFrame,
        math.random() - math.random(),
        0,
        math.random(50, 100) / 100
      })
    end
  },
Spiral = {
    Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
      local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
      prt.Anchored = true
      prt.CFrame = cframe
      local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://1051557", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
      game:GetService("Debris"):AddItem(prt, 10)
      table.insert(Effects, {
        prt,
        "Cylinder",
        delay,
        x3,
        y3,
        z3,
        msh
      })
    end
  },
Push = {
    Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
      local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
      prt.Anchored = true
      prt.CFrame = cframe
      local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://437347603", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
      game:GetService("Debris"):AddItem(prt, 10)
      table.insert(Effects, {
        prt,
        "Cylinder",
        delay,
        x3,
        y3,
        z3,
        msh
      })
    end
  }
}
function part(formfactor ,parent, reflectance, transparency, brickcolor, name, size)
	local fp = IT("Part")
	fp.formFactor = formfactor 
	fp.Parent = parent
	fp.Reflectance = reflectance
	fp.Transparency = transparency
	fp.CanCollide = false 
	fp.Locked = true
	fp.BrickColor = brickcolor
	fp.Name = name
	fp.Size = size
	fp.Position = tors.Position 
	RemoveOutlines(fp)
	fp.Material = "Neon"
	fp:BreakJoints()
	return fp 
end 
 
function mesh(Mesh,part,meshtype,meshid,offset,scale)
	local mesh = IT(Mesh) 
	mesh.Parent = part
	if Mesh == "SpecialMesh" then
		mesh.MeshType = meshtype
	if meshid ~= "nil" then
		mesh.MeshId = "http://www.roblox.com/asset/?id="..meshid
		end
	end
	mesh.Offset = offset
	mesh.Scale = scale
	return mesh
end

function MagicCharge(bonuspeed, FastSpeed, type, pos, x1, y1, z1, value, color, outerpos, MType)
	local type = type
	local rng = Instance.new("Part", char)
	rng.Anchored = true
	rng.BrickColor = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Material = "Neon"
	rng.Size = Vector3.new(1, 1, 1)
	rng.Transparency = 1
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	rng.CFrame = rng.CFrame + rng.CFrame.lookVector * outerpos
	local rngm = Instance.new("SpecialMesh", rng)
	rngm.MeshType = MType
	rngm.Scale = Vector3.new(x1, y1, z1)
	local scaler2 = 1
	local speeder = FastSpeed
	if type == "Add" then
		scaler2 = 1 * value
	elseif type == "Divide" then
		scaler2 = 1 / value
	end
	coroutine.resume(coroutine.create(function()
		for i = 0, 10 / bonuspeed, 0.1 do
			swait()
			if type == "Add" then
				scaler2 = scaler2 - 0.01 * value / bonuspeed
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01 / value * bonuspeed
			end
			speeder = speeder - 0.01 * FastSpeed * bonuspeed
			rng.CFrame = rng.CFrame + rng.CFrame.lookVector * speeder * bonuspeed
			rng.Transparency = rng.Transparency - 0.01 * bonuspeed
			rngm.Scale = rngm.Scale + Vector3.new(scaler2 * bonuspeed, scaler2 * bonuspeed, 0)
		end
		rng:Destroy()
	end))
end

local PlayerSize = 1
local FT,RA,LA,RL,LL = Instance.new("SpecialMesh"),Instance.new("SpecialMesh"),Instance.new("SpecialMesh"),Instance.new("SpecialMesh"),Instance.new("SpecialMesh")
FT.MeshId,FT.Scale = "rbxasset://fonts/torso.mesh",Vector3.new(PlayerSize,PlayerSize,PlayerSize)
RA.MeshId,RA.Scale = "rbxasset://fonts/rightarm.mesh",Vector3.new(PlayerSize,PlayerSize,PlayerSize)
LA.MeshId,LA.Scale = "rbxasset://fonts/leftarm.mesh",Vector3.new(PlayerSize,PlayerSize,PlayerSize)
RL.MeshId,RL.Scale = "rbxasset://fonts/rightleg.mesh",Vector3.new(PlayerSize,PlayerSize,PlayerSize)
LL.MeshId,LL.Scale = "rbxasset://fonts/leftleg.mesh",Vector3.new(PlayerSize,PlayerSize,PlayerSize)

function Cryo_Freeze()
    attack = true
    for i = 0,5.2,0.03 do
        swait()
        Effects.Block.Create(BrickC("Carnation pink"), ra.CFrame * CF(0, -1, 0), 2, 2, 2, 3, 3, 3, 0.05)
        Effects.Block.Create(BrickC("Carnation pink"), la.CFrame * CF(0, -1, 0), 2, 2, 2, 3, 3, 3, 0.05)
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-20), Rad(0), Rad(0)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-20 - 2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
        RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(-20)), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(5 * Cos(sine / 20)), Rad(25)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(200), Rad(0), Rad(25 - 2.5 * Sin(sine / 20))), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(200), Rad(0), Rad(-25 + 2.5 * Sin(sine / 20))), 0.1)
    end
    CreateSound("331666100", tors, 10, 1)
    Effects.Ring.Create(BrickC("Carnation pink"), root.CFrame * CF(0, -2.7, 0) * angles(Rad(90),Rad(0),Rad(0)), 14, 14, 14, 27, 27, 27, 0.01)
    for i = 1,3,0.1 do
    hum.WalkSpeed = 0.10
    MagniDamage(tors, 400, 1, 10, 0, "Normal")
    rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -1.4 + 0.1 * Cos(sine / 20)) * angles(Rad(45), Rad(0), Rad(0)), 0.15)
    tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(35), Rad(0), Rad(0)), 0.3)
    RH.C0 = clerp(RH.C0, CF(1, .4 - 0.1 * Cos(sine / 20), -.6 + 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-5), Rad(0), Rad(45)), 0.15)
    LH.C0 = clerp(LH.C0, CF(-1, -0.6 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-5), Rad(0), Rad(-0)), 0.15)
    RW.C0 = clerp(RW.C0, CF(1.5, 0.1 + 0.05 * Sin(sine / 30), -.4 + 0.025 * Cos(sine / 20)) * angles(Rad(65), Rad(0), Rad(25)), 0.1)
    LW.C0 = clerp(LW.C0, CF(-1.5, 0.1 + 0.05 * Sin(sine / 30), -.4 + 0.025 * Cos(sine / 20)) * angles(Rad(65), Rad(0), Rad(-25)), 0.1)
    end
    for i = 1,10,0.1 do
        swait(10)
    hum.WalkSpeed = 0.10
    MagniDamage(tors, 400, 1, 1, 0, "Normal")
    Effects.Ring.Create(BrickC("Carnation pink"), root.CFrame * CF(0, -2.7, 0) * angles(Rad(90),Rad(0),Rad(0)), 14, 14, 14, 27, 27, 1, 0.02)
    rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -1.4 + 0.1 * Cos(sine / 20)) * angles(Rad(45), Rad(0), Rad(0)), 0.15)
    tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(35), Rad(0), Rad(0)), 0.3)
    RH.C0 = clerp(RH.C0, CF(1, .4 - 0.1 * Cos(sine / 20), -.6 + 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-5), Rad(0), Rad(45)), 0.15)
    LH.C0 = clerp(LH.C0, CF(-1, -0.6 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-5), Rad(0), Rad(-0)), 0.15)
    RW.C0 = clerp(RW.C0, CF(1.5, 0.1 + 0.05 * Sin(sine / 30), -.4 + 0.025 * Cos(sine / 20)) * angles(Rad(65), Rad(0), Rad(25)), 0.1)
    LW.C0 = clerp(LW.C0, CF(-1.5, 0.1 + 0.05 * Sin(sine / 30), -.4 + 0.025 * Cos(sine / 20)) * angles(Rad(65), Rad(0), Rad(-25)), 0.1)
    end
    wait(.6)
    attack = false
end

function HAAAAA() --HTGJHYG
    attack = true
    hum.WalkSpeed = 0.30
    CreateSound("794081034", hed, 10, 1)
        Character.Head.face.Texture = "rbxassetid://396389196"
    for i = 0,2,0.1 do
        swait()
        CameraEnshaking(1, 2)
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(30), Rad(0), Rad(0)), 0.3)
        RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(140), Rad(60)), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(-140), Rad(-60)), 0.1)
    end
    for i = 0,14.7,0.1 do
        swait()
        CameraEnshaking(1, 3)
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 1, -1 + 0.1) * angles(Rad(-75), Rad(0), Rad(0)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(65), Rad(0), Rad(0)), 0.3)
        RH.C0 = clerp(RH.C0, CF(1.1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(-70)), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1.1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(70)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(45), Rad(0), Rad(40)), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(45), Rad(-0), Rad(-40)), 0.1)
    end
    attack = false
        Character.Head.face.Texture = "rbxassetid://620619801"
    hum.WalkSpeed = 16
end

function Hell_From_Above()
    local UhhhhThing = New("Part",EffectModel,"ref",{Transparency = 1,Size = Vector3.new(.2,.2,.2),CFrame = tors.CFrame,Anchored = true,CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
    attack = true
    hum.WalkSpeed = 3.01
    for i = 0,6.3,0.1 do
        swait()
        Effects.Block.Create(BrickC("Really black"), ra.CFrame * CF(0, -1, 0), 2, 2, 2, 3, 3, 3, 0.05)
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, 1.3 + 0.6 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-20 - 2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
        RH.C0 = clerp(RH.C0, CF(1, -0.5 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5 + 3 * Sin(sine / 20)), Rad(0), Rad(10 + 3 * Sin(sine / 20))), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5 + 3 * Sin(sine / 20)), Rad(0), Rad(-10 + 3 * Sin(sine / 20))), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(180), Rad(-10 * Cos(sine / 20)), Rad(15 - 2.5 * Sin(sine / 20))), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(10 * Cos(sine / 20)), Rad(-15 + 2.5 * Sin(sine / 20))), 0.1)
    end
    CreateSound("142070127", tors, 10, 1)
    Effects.Sphere.Create(BrickC("Really black"), ra.CFrame * CF(0, -1, 0), 2, 2, 2, 6, 6, 6, 0.05)
    Effects.Sphere.Create(BrickC("Really black"), ra.CFrame * CF(0, -1, 0), 2, 2, 2, 6, 6, 6, 0.05)
    Effects.Sphere.Create(BrickC("Really black"), ra.CFrame * CF(0, -1, 0), 2, 2, 2, 6, 6, 6, 0.05)
    Effects.Sphere.Create(BrickC("Really black"), ra.CFrame * CF(0, -1, 0), 2, 2, 2, 6, 6, 6, 0.05)
    for i = 0,3.8,0.1 do
        swait()
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, 1.3 + 0.6 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-20 - 2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
        RH.C0 = clerp(RH.C0, CF(1, -0.5 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5 + 3 * Sin(sine / 20)), Rad(0), Rad(10 + 3 * Sin(sine / 20))), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5 + 3 * Sin(sine / 20)), Rad(0), Rad(-10 + 3 * Sin(sine / 20))), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.5, .2 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(180), Rad(-10 * Cos(sine / 20)), Rad(15 - 2.5 * Sin(sine / 20))), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(10 * Cos(sine / 20)), Rad(-15 + 2.5 * Sin(sine / 20))), 0.1)
    end
    CreateSound("224339201", tors, 10, 0.5)
    for i = 1, 3 do
    MagniDamage(UhhhhThing, 12, 34, 54, 10, "DarkUp")
    UhhhhThing.CFrame = mouse.Hit
    Effects.Cylinder.Create(BrickColor.new("Really black"), UhhhhThing.CFrame, .5, 9999, .5, 10, 0, 10, 0.05)
    Effects.Block.Create(BrickColor.new("Really black"), UhhhhThing.CFrame, 1, 1, 1, 10, 10, 10, 0.05)
    end
    UhhhhThing:Destroy()
    attack = false
    hum.WalkSpeed = 16
end

function Magic(bonuspeed, type, pos, scale, value, color, MType)
	local type = type
	local rng = Instance.new("Part", char)
	rng.Anchored = true
	rng.BrickColor = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Material = "Neon"
	rng.Size = Vector3.new(1, 1, 1)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	local rngm = Instance.new("SpecialMesh", rng)
	rngm.MeshType = MType
	rngm.Scale = scale
	local scaler2 = 1
	if type == "Add" then
		scaler2 = 1 * value
	elseif type == "Divide" then
		scaler2 = 1 / value
	end
	coroutine.resume(coroutine.create(function()
		for i = 0, 10 / bonuspeed, 0.1 do
			swait()
			if type == "Add" then
				scaler2 = scaler2 - 0.01 * value / bonuspeed
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01 / value * bonuspeed
			end
			rng.Transparency = rng.Transparency + 0.01 * bonuspeed
			rngm.Scale = rngm.Scale + Vector3.new(scaler2 * bonuspeed, scaler2 * bonuspeed, scaler2 * bonuspeed)
		end
		rng:Destroy()
	end))
end

function Eviscerate(dude)
	if dude.Name ~= char then
		local bgf = IT("BodyGyro", dude.Head)
		bgf.CFrame = bgf.CFrame * CFrame.fromEulerAnglesXYZ(Rad(-90), 0, 0)
		local val = IT("BoolValue", dude)
		val.Name = "IsHit"
		local ds = coroutine.wrap(function()
			dude:WaitForChild("Head"):BreakJoints()
			wait(0.5)
			target = nil
			coroutine.resume(coroutine.create(function()
				for i, v in pairs(dude:GetChildren()) do
					if v:IsA("Accessory") then
						v:Destroy()
					end
					if v:IsA("Humanoid") then
						v:Destroy()
					end
					if v:IsA("CharacterMesh") then
						v:Destroy()
					end
					if v:IsA("Model") then
						v:Destroy()
					end
					if v:IsA("Part") or v:IsA("MeshPart") then
						for x, o in pairs(v:GetChildren()) do
							if o:IsA("Decal") then
								o:Destroy()
							end
						end
						coroutine.resume(coroutine.create(function()
							v.Material = "Neon"
							v.CanCollide = false
							local PartEmmit1 = IT("ParticleEmitter", v)
							PartEmmit1.LightEmission = 1
							PartEmmit1.Texture = "rbxassetid://284205403"
							PartEmmit1.Color = ColorSequence.new(maincolor.Color)
							PartEmmit1.Rate = 150
							PartEmmit1.Lifetime = NumberRange.new(1)
							PartEmmit1.Size = NumberSequence.new({
								NumberSequenceKeypoint.new(0, 0.75, 0),
								NumberSequenceKeypoint.new(1, 0, 0)
							})
							PartEmmit1.Transparency = NumberSequence.new({
								NumberSequenceKeypoint.new(0, 0, 0),
								NumberSequenceKeypoint.new(1, 1, 0)
							})
							PartEmmit1.Speed = NumberRange.new(0, 0)
							PartEmmit1.VelocitySpread = 30000
							PartEmmit1.Rotation = NumberRange.new(-500, 500)
							PartEmmit1.RotSpeed = NumberRange.new(-500, 500)
							local BodPoss = IT("BodyPosition", v)
							BodPoss.P = 3000
							BodPoss.D = 1000
							BodPoss.maxForce = Vector3.new(50000000000, 50000000000, 50000000000)
							BodPoss.position = v.Position + Vector3.new(Mrandom(-15, 15), Mrandom(-15, 15), Mrandom(-15, 15))
							v.Color = maincolor.Color
							coroutine.resume(coroutine.create(function()
								for i = 0, 49 do
									swait(1)
									v.Transparency = v.Transparency + 0.08
								end
								wait(0.5)
								PartEmmit1.Enabled = false
								wait(3)
								v:Destroy()
								dude:Destroy()
							end))
						end))
					end
				end
			end))
		end)
		ds()
	end
end

function FindNearestHead(Position, Distance, SinglePlayer)
	if SinglePlayer then
		return Distance > (SinglePlayer.Torso.CFrame.p - Position).magnitude
	end
	local List = {}
	for i, v in pairs(workspace:GetChildren()) do
		if v:IsA("Model") and v:findFirstChild("Head") and v ~= char and Distance >= (v.Head.Position - Position).magnitude then
			table.insert(List, v)
		end
	end
	return List
end

function Aura(bonuspeed, FastSpeed, type, pos, x1, y1, z1, value, color, outerpos, MType)
	local type = type
	local rng = Instance.new("Part", char)
	rng.Anchored = true
	rng.BrickColor = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Material = "Neon"
	rng.Size = Vector3.new(1, 1, 1)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	rng.CFrame = rng.CFrame + rng.CFrame.lookVector * outerpos
	local rngm = Instance.new("SpecialMesh", rng)
	rngm.MeshType = MType
	rngm.Scale = Vector3.new(x1, y1, z1)
	local scaler2 = 1
	local speeder = FastSpeed
	if type == "Add" then
		scaler2 = 1 * value
	elseif type == "Divide" then
		scaler2 = 1 / value
	end
	coroutine.resume(coroutine.create(function()
		for i = 0, 10 / bonuspeed, 0.1 do
			swait()
			if type == "Add" then
				scaler2 = scaler2 - 0.01 * value / bonuspeed
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01 / value * bonuspeed
			end
			speeder = speeder - 0.01 * FastSpeed * bonuspeed
			rng.CFrame = rng.CFrame + rng.CFrame.lookVector * speeder * bonuspeed
			rng.Transparency = rng.Transparency + 0.01 * bonuspeed
			rngm.Scale = rngm.Scale + Vector3.new(scaler2 * bonuspeed, scaler2 * bonuspeed, 0)
		end
		rng:Destroy()
	end))
end

function SoulSteal(dude)
if dude.Name ~= char then
local bgf = IT("BodyGyro", dude.Head)
bgf.CFrame = bgf.CFrame * CFrame.fromEulerAnglesXYZ(Rad(-90), 0, 0)
local val = IT("BoolValue", dude)
val.Name = "IsHit"
local torso = (dude:FindFirstChild'Head' or dude:FindFirstChild'Torso' or dude:FindFirstChild'UpperTorso' or dude:FindFirstChild'LowerTorso' or dude:FindFirstChild'HumanoidRootPart')
local soulst = coroutine.wrap(function()
local soul = Instance.new("Part",dude)
soul.Size = Vector3.new(1,1,1)
soul.CanCollide = false
soul.Anchored = false
soul.Position = torso.Position
soul.Transparency = 1
local PartEmmit1 = IT("ParticleEmitter", soul)
PartEmmit1.LightEmission = 1
PartEmmit1.Texture = "rbxassetid://569507414"
PartEmmit1.Color = ColorSequence.new(maincolor.Color)
PartEmmit1.Rate = 250
PartEmmit1.Lifetime = NumberRange.new(1.6)
PartEmmit1.Size = NumberSequence.new({
	NumberSequenceKeypoint.new(0, 1, 0),
	NumberSequenceKeypoint.new(1, 0, 0)
})
PartEmmit1.Transparency = NumberSequence.new({
	NumberSequenceKeypoint.new(0, 0, 0),
	NumberSequenceKeypoint.new(1, 1, 0)
})
PartEmmit1.Speed = NumberRange.new(0, 0)
PartEmmit1.VelocitySpread = 30000
PartEmmit1.Rotation = NumberRange.new(-360, 360)
PartEmmit1.RotSpeed = NumberRange.new(-360, 360)
local BodPoss = IT("BodyPosition", soul)
BodPoss.P = 3000
BodPoss.D = 1000
BodPoss.maxForce = Vector3.new(50000000000, 50000000000, 50000000000)
BodPoss.position = torso.Position + Vector3.new(Mrandom(-15, 15), Mrandom(-15, 15), Mrandom(-15, 15))
wait(1.6)
soul.Touched:connect(function(hit)
	if hit.Parent == char then
	soul:Destroy()
	end
end)
wait(1.2)
while soul do
	swait()
	PartEmmit1.Color = ColorSequence.new(maincolor.Color)
	BodPoss.Position = tors.Position
end
end)
	soulst()
	end
end
function FaceMouse()
local	Cam = workspace.CurrentCamera
	return {
		CFrame.new(char.Torso.Position, Vector3.new(mouse.Hit.p.x, char.Torso.Position.y, mouse.Hit.p.z)),
		Vector3.new(mouse.Hit.p.x, mouse.Hit.p.y, mouse.Hit.p.z)
	}
end
-------------------------------------------------------
--End Effect Function--
-------------------------------------------------------
function Cso(ID, PARENT, VOLUME, PITCH)
	local NSound = nil
	coroutine.resume(coroutine.create(function()
		NSound = IT("Sound", PARENT)
		NSound.Volume = VOLUME
		NSound.Pitch = PITCH
		NSound.SoundId = "http://www.roblox.com/asset/?id="..ID
		swait()
		NSound:play()
		game:GetService("Debris"):AddItem(NSound, 10)
	end))
	return NSound
end
function CameraEnshaking(Length, Intensity)
	coroutine.resume(coroutine.create(function()
		local intensity = 1 * Intensity
		local rotM = 0.01 * Intensity
		for i = 0, Length, 0.1 do
			swait()
			intensity = intensity - 0.05 * Intensity / Length
			rotM = rotM - 5.0E-4 * Intensity / Length
			hum.CameraOffset = Vector3.new(Rad(Mrandom(-intensity, intensity)), Rad(Mrandom(-intensity, intensity)), Rad(Mrandom(-intensity, intensity)))
			cam.CFrame = cam.CFrame * CF(Rad(Mrandom(-intensity, intensity)), Rad(Mrandom(-intensity, intensity)), Rad(Mrandom(-intensity, intensity))) * Euler(Rad(Mrandom(-intensity, intensity)) * rotM, Rad(Mrandom(-intensity, intensity)) * rotM, Rad(Mrandom(-intensity, intensity)) * rotM)
		end
		hum.CameraOffset = Vector3.new(0, 0, 0)
	end))
end
function HitboxFunction(Pose, lifetime, siz1, siz2, siz3, Radie, Min, Max, kb, atype)
local Hitboxpart = Instance.new("Part", EffectModel)
  RemoveOutlines(Hitboxpart)
  Hitboxpart.Size = Vector3.new(siz1, siz2, siz3)
  Hitboxpart.CanCollide = false
  Hitboxpart.Transparency = 1
  Hitboxpart.Anchored = true
  Hitboxpart.CFrame = Pose
  game:GetService("Debris"):AddItem(Hitboxpart, lifetime)
  MagniDamage(Hitboxpart, Radie, Min, Max, kb, atype)
end
function BlockEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
  local prt = CreatePart1(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh1("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  if Type == 1 or Type == nil then
    table.insert(Effects, {
      prt,
      "Block1",
      delay,
      x3,
      y3,
      z3,
      msh
    })
  elseif Type == 2 then
    table.insert(Effects, {
      prt,
      "Block2",
      delay,
      x3,
      y3,
      z3,
      msh
    })
  elseif Type == 3 then
    table.insert(Effects, {
      prt,
      "Block3",
      delay,
      x3,
      y3,
      z3,
      msh
    })
  end
end

function CreatePart(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
	local Part = Create("Part"){
		Parent = Parent,
		Reflectance = Reflectance,
		Transparency = Transparency,
		CanCollide = false,
		Locked = true,
		BrickColor = BrickColor.new(tostring(BColor)),
		Name = Name,
		Size = Size,
		Material = Material,
	}
	RemoveOutlines(Part)
	return Part
end
	
function CreateMesh(Mesh, Part, MeshType, MeshId, OffSet, Scale)
	local Msh = Create(Mesh){
		Parent = Part,
		Offset = OffSet,
		Scale = Scale,
	}
	if Mesh == "SpecialMesh" then
		Msh.MeshType = MeshType
		Msh.MeshId = MeshId
	end
	return Msh
end

function RingEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
local prt = CreatePart(workspace,"Neon",0,0,brickcolor,"Effect", Vector3.new(.5,.5,.5))--part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored = true
prt.CFrame = cframe
local msh = CreateMesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",Vector3.new(0,0,0),Vector3.new(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh,num) 
for i=0,1,delay do
swait()
Part.Transparency=i
Mesh.Scale=Mesh.Scale + Vector3.new(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,(math.random(0,1)+math.random())/5)
end
-------------------------------------------------------
--End Important Functions--
-------------------------------------------------------
-------------------------------------------------------
 
 
--[[
        Thanks for using Build-To-Lua by jarredbcv.
]]--
 
New = function(Object, Parent, Name, Data)
    local Object = Instance.new(Object)
    for Index, Value in pairs(Data or {}) do
        Object[Index] = Value
    end
    Object.Parent = Parent
    Object.Name = Name
    return Object
end
   
Gaunty = New("Model",char,"Gaunty",{})
Handle = New("Part",Gaunty,"Handle",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1, 1.26999998, 1),CFrame = CFrame.new(-5.67319345, 3.02064276, -77.6615906, 0.999894261, 0.010924357, 0.00963267777, -0.0110270018, 0.999882579, 0.0106679145, -0.00951499958, -0.0107729975, 0.999897003),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Handle,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.82765579, 3.62595344, -77.6579285, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(-0.161155701, 0.603512526, 0.00862884521, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-6.13765526, 3.62595367, -77.6579285, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(-0.471122265, 0.600126028, 0.00564575195, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.5176549, 3.62595415, -77.6579285, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(0.148812294, 0.606899738, 0.0116195679, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.21765471, 3.62595463, -77.6579285, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(0.448780537, 0.610177517, 0.014503479, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-6.13765526, 2.53595448, -77.6579285, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(-0.459102631, -0.489744425, -0.00598144531, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.82765627, 2.53595448, -77.6579285, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(-0.149136543, -0.486357927, -0.00299835205, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.51765537, 2.53595448, -77.6579361, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(0.160831451, -0.48297143, -1.52587891e-05, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.21765566, 2.53595424, -77.6579361, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(0.460799217, -0.479694128, 0.00286865234, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.07999992, 0.279999971, 1.06999993),CFrame = CFrame.new(-5.66865063, 3.64553881, -77.6613617, 0.999894857, 0.0109243635, 0.00963268708, -0.0110270083, 0.999883175, 0.0106679257, -0.00951500144, -0.0107729994, 0.999897599),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),C1 = CFrame.new(-0.00235080719, 0.624869347, 0.00694274902, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.08999991, 0.0599999577, 1.07999992),CFrame = CFrame.new(-5.66490126, 3.73544312, -77.6652145, 0.999894857, 0.0109243635, 0.00963268708, -0.0110270083, 0.999883175, 0.0106679257, -0.00951500144, -0.0107729994, 0.999897599),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("BlockMesh",NeonPart,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),C1 = CFrame.new(0.000443935394, 0.714845657, 0.00408172607, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.08999991, 0.0599999577, 1.07999992),CFrame = CFrame.new(-5.66480446, 3.52554965, -77.65522, 0.999894857, 0.0109243635, 0.00963268708, -0.0110270083, 0.999883175, 0.0106679257, -0.00951500144, -0.0107729994, 0.999897599),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("BlockMesh",NeonPart,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),C1 = CFrame.new(0.00275993347, 0.504870415, 0.0118331909, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.07999992, 0.279999971, 1.06999993),CFrame = CFrame.new(-5.6686511, 2.55553746, -77.6613541, 0.999894857, 0.0109243635, 0.00963268708, -0.0110270083, 0.999883175, 0.0106679257, -0.00951500144, -0.0107729994, 0.999897599),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),C1 = CFrame.new(0.00966835022, -0.465003252, -0.00468444824, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.08999991, 0.0599999577, 1.07999992),CFrame = CFrame.new(-5.66490126, 2.64544272, -77.6652145, 0.999894857, 0.0109243635, 0.00963268708, -0.0110270083, 0.999883175, 0.0106679257, -0.00951500144, -0.0107729994, 0.999897599),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("BlockMesh",NeonPart,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),C1 = CFrame.new(0.0124630928, -0.375026226, -0.00754547119, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.08999991, 0.0599999577, 1.07999992),CFrame = CFrame.new(-5.66480494, 2.43554902, -77.65522, 0.999894857, 0.0109243635, 0.00963268708, -0.0110270083, 0.999883175, 0.0106679257, -0.00951500144, -0.0107729994, 0.999897599),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("BlockMesh",NeonPart,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),C1 = CFrame.new(0.0147790909, -0.585001707, 0.000205993652, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.12999988, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.67265606, 3.62595463, -78.1079407, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C1 = CFrame.new(-0.0018901825, 0.61005497, -0.439842224, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.12999988, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.67265606, 3.62595558, -77.8179321, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C1 = CFrame.new(-0.00464963913, 0.606931448, -0.149864197, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.66765547, 3.62595606, -77.4879303, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C1 = CFrame.new(-0.00278997421, 0.603431463, 0.180152893, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.66765547, 3.62595654, -77.1979294, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C1 = CFrame.new(-0.00554895401, 0.600307703, 0.470123291, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.66765547, 2.53595638, -77.1979294, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C1 = CFrame.new(0.0064702034, -0.489563704, 0.458496094, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.66765547, 2.53595614, -77.4879303, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C1 = CFrame.new(0.00922966003, -0.486439705, 0.168525696, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.12999988, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.67265558, 2.53595638, -77.8179245, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C1 = CFrame.new(0.00736999512, -0.482939243, -0.161483765, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.12999988, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.67265606, 2.53595614, -78.1079254, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C1 = CFrame.new(0.0101289749, -0.479815245, -0.451454163, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765547, 3.62595677, -77.1979218, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C1 = CFrame.new(-0.00554943085, 0.600307941, 0.47013092, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765499, 3.62595701, -77.4879303, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C1 = CFrame.new(-0.00278949738, 0.603432655, 0.180152893, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765451, 3.62595749, -77.8179321, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C1 = CFrame.new(0.000350952148, 0.606987953, -0.149810791, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765451, 3.62595749, -78.107933, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C1 = CFrame.new(0.00311040878, 0.61011219, -0.439788818, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765499, 2.53595734, -78.107933, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C1 = CFrame.new(0.0151295662, -0.479759216, -0.451416016, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765499, 2.5359571, -77.8179245, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C1 = CFrame.new(0.0123701096, -0.482883692, -0.161437988, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765499, 2.5359571, -77.4879227, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C1 = CFrame.new(0.00923013687, -0.48643899, 0.168533325, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765499, 2.53595686, -77.1979218, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C1 = CFrame.new(0.00647068024, -0.489563227, 0.458503723, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-6.13765478, 3.62595701, -77.6579132, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(-0.471121788, 0.600129128, 0.00566101074, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.82765484, 3.62595725, -77.6579132, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(-0.161154747, 0.603516102, 0.008644104, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.51765442, 3.62595773, -77.6579132, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(0.148812771, 0.606903076, 0.0116348267, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.21765375, 3.6259582, -77.6579132, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(0.44878149, 0.610180855, 0.0145187378, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.21765327, 2.53595781, -77.6579132, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(0.460801125, -0.47969079, 0.00289154053, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.51765299, 2.53595757, -77.6579208, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(0.160833359, -0.48296833, 0, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.82765341, 2.53595734, -77.6579208, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(-0.149133682, -0.486355066, -0.00299072266, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-6.13765383, 2.53595734, -77.6579208, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(-0.4591012, -0.489741802, -0.00597381592, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("WedgePart",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Size = Vector3.new(1.14999998, 0.640000045, 0.25000003),CFrame = CFrame.new(-5.66203499, 3.4509573, -77.7865677, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C1 = CFrame.new(0.00760126114, 0.431732178, -0.120269775, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("WedgePart",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Size = Vector3.new(1.14999998, 0.640000045, 0.280000031),CFrame = CFrame.new(-5.66203451, 3.45095778, -77.5215683, -1.0000006, -6.18456397e-10, -9.12696123e-08, 6.18456397e-10, 1.0000006, -4.65661287e-09, 8.38190317e-08, 4.65661287e-09, -1.0000006),BottomSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, 0, 8.74227766e-08, 0, 1, 0, -8.74227766e-08, 0, -1),C1 = CFrame.new(0.00508022308, 0.428877592, 0.144706726, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("WedgePart",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Size = Vector3.new(1.14999998, 0.640000045, 0.25000003),CFrame = CFrame.new(-5.66203403, 2.81095791, -77.7865601, -1.0000006, 8.81700544e-08, 3.7252903e-09, -8.69331416e-08, -1.0000006, 4.65661287e-09, -3.7252903e-09, -4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, -8.74227766e-08, 0, 8.74227766e-08, -1, 0, 0, 0, 1),C1 = CFrame.new(0.0146594048, -0.208191872, -0.127082825, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("WedgePart",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Size = Vector3.new(1.14999998, 0.640000045, 0.280000031),CFrame = CFrame.new(-5.66203356, 2.8209579, -77.5215607, 1.0000006, -8.69331416e-08, 8.38190317e-08, -8.81700544e-08, -1.0000006, -4.65661287e-09, 9.12696123e-08, -4.65661287e-09, -1.0000006),BottomSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, -8.74227766e-08, 8.74227766e-08, -8.74227766e-08, -1, -7.64274186e-15, 8.74227766e-08, 0, -1),C1 = CFrame.new(0.0120282173, -0.201047897, 0.137992859, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Wedge = New("WedgePart",Gaunty,"Wedge",{BrickColor = BrickColor.new("Black"),Size = Vector3.new(1.1099999, 0.569999993, 1.13),CFrame = CFrame.new(-5.6508193, 4.06113148, -77.6620178, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Wedge,"mot",{Part0 = Wedge,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(0.0109024048, 1.04061508, 0.010887146, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
 
Gaunty2 = New("Model",char,"Gaunty2",{})
Handle2 = New("Part",Gaunty2,"Handle2",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1, 1.26999998, 1),CFrame = CFrame.new(-5.67319345, 3.02064276, -77.6615906, 0.999894261, 0.010924357, 0.00963267777, -0.0110270018, 0.999882579, 0.0106679145, -0.00951499958, -0.0107729975, 0.999897003),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Handle2,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.82765579, 3.62595367, -77.6579285, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(-0.161155701, 0.603512764, 0.00862884521, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-6.13765526, 3.62595439, -77.6579285, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(-0.471122265, 0.600126743, 0.00564575195, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.51765394, 3.6259551, -77.6579285, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(0.148813248, 0.606900692, 0.0116195679, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.21765375, 3.62595558, -77.6579285, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(0.44878149, 0.610178471, 0.014503479, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-6.13765621, 2.535954, -77.6579285, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(-0.459103584, -0.489744902, -0.00598144531, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.82765722, 2.535954, -77.6579285, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(-0.149137497, -0.486358404, -0.00299835205, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.5176549, 2.53595448, -77.6579514, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(0.160831928, -0.482971191, -3.05175781e-05, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.21765566, 2.535954, -77.6579361, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(0.460799217, -0.479694366, 0.00286865234, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.07999992, 0.279999971, 1.06999993),CFrame = CFrame.new(-5.66865063, 3.64554, -77.661377, 0.999896049, 0.0109243765, 0.00963270571, -0.0110270213, 0.999884367, 0.010667949, -0.0095150033, -0.0107730031, 0.999898791),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 0.999895453, -0.0110270148, -0.00951500237, 0.01092437, 0.999883771, -0.0107730012, 0.0096326964, 0.0106679378, 0.999898195),C1 = CFrame.new(-0.00235033035, 0.624870777, 0.00692749023, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.08999991, 0.0599999577, 1.07999992),CFrame = CFrame.new(-5.6649003, 3.73544407, -77.6652145, 0.999896049, 0.0109243765, 0.00963270571, -0.0110270213, 0.999884367, 0.010667949, -0.0095150033, -0.0107730031, 0.999898791),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("BlockMesh",NeonPart,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 0.999895453, -0.0110270148, -0.00951500237, 0.01092437, 0.999883771, -0.0107730012, 0.0096326964, 0.0106679378, 0.999898195),C1 = CFrame.new(0.000444412231, 0.714846611, 0.00408172607, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.08999991, 0.0599999577, 1.07999992),CFrame = CFrame.new(-5.66480446, 3.5255506, -77.65522, 0.999896049, 0.0109243765, 0.00963270571, -0.0110270213, 0.999884367, 0.010667949, -0.0095150033, -0.0107730031, 0.999898791),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("BlockMesh",NeonPart,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 0.999895453, -0.0110270148, -0.00951500237, 0.01092437, 0.999883771, -0.0107730012, 0.0096326964, 0.0106679378, 0.999898195),C1 = CFrame.new(0.00275993347, 0.504871368, 0.0118331909, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.07999992, 0.279999971, 1.06999993),CFrame = CFrame.new(-5.6686511, 2.55553699, -77.6613541, 0.999896049, 0.0109243765, 0.00963270571, -0.0110270213, 0.999884367, 0.010667949, -0.0095150033, -0.0107730031, 0.999898791),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 0.999895453, -0.0110270148, -0.00951500237, 0.01092437, 0.999883771, -0.0107730012, 0.0096326964, 0.0106679378, 0.999898195),C1 = CFrame.new(0.00966835022, -0.465003729, -0.00468444824, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.08999991, 0.0599999577, 1.07999992),CFrame = CFrame.new(-5.66490126, 2.64544272, -77.6652145, 0.999896049, 0.0109243765, 0.00963270571, -0.0110270213, 0.999884367, 0.010667949, -0.0095150033, -0.0107730031, 0.999898791),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("BlockMesh",NeonPart,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 0.999895453, -0.0110270148, -0.00951500237, 0.01092437, 0.999883771, -0.0107730012, 0.0096326964, 0.0106679378, 0.999898195),C1 = CFrame.new(0.0124630928, -0.375026226, -0.00754547119, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.08999991, 0.0599999577, 1.07999992),CFrame = CFrame.new(-5.66480589, 2.43554854, -77.65522, 0.999896049, 0.0109243765, 0.00963270571, -0.0110270213, 0.999884367, 0.010667949, -0.0095150033, -0.0107730031, 0.999898791),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("BlockMesh",NeonPart,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 0.999895453, -0.0110270148, -0.00951500237, 0.01092437, 0.999883771, -0.0107730012, 0.0096326964, 0.0106679378, 0.999898195),C1 = CFrame.new(0.0147781372, -0.585002184, 0.000205993652, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.12999988, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.67265606, 3.62595463, -78.1079407, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(-0.0018901825, 0.61005497, -0.439842224, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.12999988, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.67265511, 3.6259563, -77.8179169, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(-0.00464916229, 0.606932163, -0.149848938, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.66765451, 3.62595701, -77.4879303, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(-0.00278902054, 0.603432655, 0.180152893, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.66765547, 3.62595749, -77.1979294, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(-0.00554895401, 0.600308895, 0.470123291, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.66765547, 2.53595638, -77.1979294, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(0.0064702034, -0.489563704, 0.458496094, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.66765547, 2.53595614, -77.4879303, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(0.00922966003, -0.486439705, 0.168525696, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.12999988, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.67265558, 2.53595638, -77.8179092, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(0.00736999512, -0.482939243, -0.161468506, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.12999988, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.67265606, 2.53595567, -78.1079254, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(0.0101289749, -0.479815722, -0.451454163, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765451, 3.62595749, -77.1979218, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(-0.00554847717, 0.600308895, 0.47013092, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765404, 3.62595797, -77.4879303, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(-0.0027885437, 0.603433609, 0.180152893, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765356, 3.6259594, -77.8179321, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(0.000351905823, 0.606989861, -0.149810791, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765356, 3.62595844, -78.107933, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(0.00311136246, 0.610113144, -0.439788818, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765499, 2.53595734, -78.107933, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(0.0151295662, -0.479759216, -0.451416016, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765499, 2.5359571, -77.8179092, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(0.0123701096, -0.48288393, -0.161422729, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765499, 2.5359571, -77.4879227, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(0.00923013687, -0.48643899, 0.168533325, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765499, 2.53595662, -77.1979218, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(0.00647068024, -0.489563465, 0.458503723, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-6.13765478, 3.62595797, -77.6579132, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(-0.471121788, 0.600130081, 0.00566101074, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.82765484, 3.6259582, -77.6579132, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(-0.161154747, 0.603517056, 0.008644104, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.51765347, 3.62595868, -77.6579132, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(0.148813725, 0.60690403, 0.0116348267, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.2176528, 3.62595916, -77.6579132, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(0.448782444, 0.610181808, 0.0145187378, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.21765327, 2.53595757, -77.6579132, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(0.460801601, -0.479691029, 0.00289154053, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.51765299, 2.53595757, -77.6579361, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(0.160833836, -0.48296833, -1.52587891e-05, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.82765436, 2.5359571, -77.6579208, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(-0.149134636, -0.486355305, -0.00299072266, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-6.13765478, 2.53595734, -77.6579208, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(-0.459102154, -0.489741802, -0.00597381592, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("WedgePart",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Size = Vector3.new(1.14999998, 0.640000045, 0.25000003),CFrame = CFrame.new(-5.66203403, 3.45095801, -77.7865524, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(0.00760221481, 0.431732655, -0.120254517, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("WedgePart",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Size = Vector3.new(1.14999998, 0.640000045, 0.280000031),CFrame = CFrame.new(-5.66203356, 3.45095849, -77.521553, -1.00000179, -2.26282282e-09, -9.87201929e-08, 2.28465069e-09, 1.00000179, -1.39698386e-08, 7.63684511e-08, 1.39698386e-08, -1.00000179),BottomSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -1.00000119, 1.45519152e-09, 8.00937414e-08, -1.44063961e-09, 1.00000119, 9.31322575e-09, -9.49949026e-08, -9.31322575e-09, -1.00000119),C1 = CFrame.new(0.00508117676, 0.428878307, 0.144721985, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("WedgePart",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Size = Vector3.new(1.14999998, 0.640000045, 0.25000003),CFrame = CFrame.new(-5.66203308, 2.81095791, -77.7865601, -1.00000179, 8.98216967e-08, 1.11758709e-08, -8.52742232e-08, -1.00000179, 1.39698386e-08, -1.11758709e-08, -1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -1.00000119, -8.61036824e-08, -7.4505806e-09, 8.89922376e-08, -1.00000119, -9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(0.0146603584, -0.208191872, -0.127082825, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("WedgePart",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Size = Vector3.new(1.14999998, 0.640000045, 0.280000031),CFrame = CFrame.new(-5.6620326, 2.82095814, -77.5215454, 1.00000179, -8.52887752e-08, 7.63684511e-08, -8.98362487e-08, -1.00000179, -1.39698386e-08, 9.87201929e-08, -1.39698386e-08, -1.00000179),BottomSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -8.89995135e-08, 9.49949026e-08, -8.61109584e-08, -1.00000119, -9.31322575e-09, 8.00937414e-08, -9.31322575e-09, -1.00000119),C1 = CFrame.new(0.012029171, -0.201047897, 0.138008118, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Wedge = New("WedgePart",Gaunty2,"Wedge",{BrickColor = BrickColor.new("Black"),Size = Vector3.new(1.1099999, 0.569999993, 1.13),CFrame = CFrame.new(-5.6508193, 4.06113243, -77.6620178, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Wedge,"mot",{Part0 = Wedge,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(0.0109024048, 1.04061604, 0.010887146, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
 
 
NewInstance = function(instance,parent,properties)
    local inst = Instance.new(instance,parent)
    if(properties)then
        for i,v in next, properties do
            pcall(function() inst[i] = v end)
        end
    end
    return inst;
end
 
local HW = NewInstance('Motor', char, {Part0 = ra, Part1 = Handle, C0 = CF(0,-.51,0)})
local HW2 = NewInstance('Motor', char, {Part0 = la, Part1 = Handle2, C0 = CF(0,-.51,0) * angles(Rad(0),Rad(180),Rad(0))})
 
for _,v in next, Gaunty:children() do
    v.CanCollide = false
end
for _,v in next, Gaunty2:children() do
    v.CanCollide = false
end
local all, last = {}, nil
ArmourParts = {}
NeonParts = {}
function scan(p)
  for _, v in pairs(p:GetChildren()) do
    if v:IsA("BasePart") then
      if v.BrickColor == BrickColor.new("Black") then
        table.insert(ArmourParts, v)
      end
      if v.BrickColor == BrickColor.new("Institutional white") then
        table.insert(NeonParts, v)
      end
      if last then
        local w = Instance.new("Weld")
        w.Part0, w.Part1 = last, v
        w.C0 = v.CFrame:toObjectSpace(last.CFrame):inverse()
        w.Parent = last
      end
      table.insert(all, v)
      last = v
    end
    scan(v)
  end
end
scan(Gaunty)
local all2, last2 = {}, nil
ArmourParts2 = {}
NeonParts2 = {}
function scan2(p)
  for _, v in pairs(p:GetChildren()) do
    if v:IsA("BasePart") then
      if v.BrickColor == BrickColor.new("Black") then
        table.insert(ArmourParts2, v)
      end
      if v.BrickColor == BrickColor.new("Institutional white") then
        table.insert(NeonParts2, v)
      end
      if last2 then
        local w = Instance.new("Weld")
        w.Part0, w.Part1 = last2, v
        w.C0 = v.CFrame:toObjectSpace(last2.CFrame):inverse()
        w.Parent = last2
      end
      table.insert(all2, v)
      last2 = v
    end
    scan2(v)
  end
end
scan2(Gaunty2)
for i, v in pairs(ArmourParts) do
     v.BrickColor = BrickC("Black")
        end
for i, v in pairs(NeonParts) do
     v.BrickColor = BrickC("Dark stone grey")
        end
for i, v in pairs(ArmourParts2) do
     v.BrickColor = BrickC("Black")
        end
for i, v in pairs(NeonParts2) do
     v.BrickColor = BrickC("Dark stone grey")
        end
local EyeSizes={
	NumberSequenceKeypoint.new(0,0.65,0),
	NumberSequenceKeypoint.new(0.5,0.7,0),
	NumberSequenceKeypoint.new(1,0,0)
}
local EyeTrans={
	NumberSequenceKeypoint.new(0,0,0),
	NumberSequenceKeypoint.new(0.5,0,0),
	NumberSequenceKeypoint.new(1,1,0)
}
local PE2=Instance.new("ParticleEmitter", ra)
PE2.LightEmission=.9
PE2.Color = ColorSequence.new(BrickC("Dark indigo").Color,BrickC("Royal purple").Color)
PE2.Transparency=NumberSequence.new(EyeTrans)
PE2.Lifetime=NumberRange.new(0.35)
PE2.Rotation=NumberRange.new(0,360)
PE2.Rate=999
PE2.VelocitySpread = 10000
PE2.Acceleration = Vector3.new(0,25,0)
PE2.ZOffset = 0.5
PE2.Drag = 0
PE2.Speed = NumberRange.new(0,0,0)
PE2.Texture="rbxasset://textures/particles/explosion01_implosion_main.dds"
PE2.Name = "PE2"
PE2.Enabled = true
PE2.LockedToPart = true
--
local EyeSizes={
	NumberSequenceKeypoint.new(0,0.65,0),
	NumberSequenceKeypoint.new(0.5,0.7,0),
	NumberSequenceKeypoint.new(1,0,0)
}
local EyeTrans={
	NumberSequenceKeypoint.new(0,0,0),
	NumberSequenceKeypoint.new(0.5,0,0),
	NumberSequenceKeypoint.new(1,1,0)
}
local PE3=Instance.new("ParticleEmitter", la)
PE3.LightEmission=.9
PE3.Color = ColorSequence.new(BrickC("Dark indigo").Color,BrickC("Royal purple").Color)
PE3.Transparency=NumberSequence.new(EyeTrans)
PE3.Lifetime=NumberRange.new(0.35)
PE3.Rotation=NumberRange.new(0,360)
PE3.Rate=999
PE2.VelocitySpread = 10000
PE3.Acceleration = Vector3.new(0,25,0)
PE3.ZOffset = 0.5
PE3.Drag = 0
PE3.Speed = NumberRange.new(0,0,0)
PE3.Texture="rbxasset://textures/particles/explosion01_implosion_main.dds"
PE3.Name = "PE3"
PE3.Enabled = true
PE3.LockedToPart = true
--
-------------------------------------------------------
--Start Customization--
-------------------------------------------------------

---------------------------------------------
local Player_Size = 1
if Player_Size ~= 1 then
root.Size = root.Size * Player_Size
tors.Size = tors.Size * Player_Size
hed.Size = hed.Size * Player_Size
ra.Size = ra.Size * Player_Size
la.Size = la.Size * Player_Size
rl.Size = rl.Size * Player_Size
ll.Size = ll.Size * Player_Size
----------------------------------------------------------------------------------
rootj.Parent = root
neck.Parent = tors
RW.Parent = tors
LW.Parent = tors
RH.Parent = tors
LH.Parent = tors
----------------------------------------------------------------------------------
rootj.C0 = RootCF * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(0), Rad(0))
rootj.C1 = RootCF * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(0), Rad(0))
neck.C0 = necko * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0))
neck.C1 = CF(0 * Player_Size, -0.5 * Player_Size, 0 * Player_Size) * angles(Rad(-90), Rad(0), Rad(180))
RW.C0 = CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(0), Rad(0)) --* RIGHTSHOULDERC0
LW.C0 = CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(0), Rad(0)) --* LEFTSHOULDERC0
----------------------------------------------------------------------------------
RH.C0 = CF(1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(90), Rad(0)) * angles(Rad(0), Rad(0), Rad(0))
LH.C0 = CF(-1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(0)) * angles(Rad(0), Rad(0), Rad(0))
RH.C1 = CF(0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(90), Rad(0)) * angles(Rad(0), Rad(0), Rad(0))
LH.C1 = CF(-0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(0)) * angles(Rad(0), Rad(0), Rad(0))
--hat.Parent = Character
end
----------------------------------------------------------------------------------
local SONG = 1117396305
local SONG2 = 0
local Music = Instance.new("Sound",tors)
Music.Volume = 2.5
Music.Looped = true
Music.Pitch = 1 --Pitcher
----------------------------------------------------------------------------------
local equipped = false
local idle = 0
local change = 1
local val = 0
local toim = 0
local idleanim = 0.4
local sine = 0
local Mode = 1
----------------------------------------------------------------------------------
hum.WalkSpeed = 16
hum.JumpPower = 57
hum.Animator.Parent = nil
char.Head.face.Texture = "http://www.roblox.com/asset/?id=843367143"
local naeeym2 = IT("BillboardGui",char)
naeeym2.AlwaysOnTop = true
naeeym2.Size = UDim2.new(5,35,2,15)
naeeym2.StudsOffset = Vector3.new(0,2,0)
naeeym2.MaxDistance = 75
naeeym2.Adornee = hed
naeeym2.Name = "Name"
--naeeym2.PlayerToHideFrom = Player
local tecks2 = IT("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.TextScaled = true
tecks2.BorderSizePixel = 0
tecks2.Text = "Random Guy"
tecks2.Font = "Fantasy"
tecks2.TextSize = 30
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = Color3.fromRGB(255,255,255)
tecks2.TextStrokeColor3 = Color3.fromRGB(255,255,255)
tecks2.Size = UDim2.new(1,0,0.5,0)
tecks2.Parent = naeeym2
-------------------------------------------------------
--End Customization--
-------------------------------------------------------

-----------------------------------------------------
--Start Attacks N Stuff--
-------------------------------------------------------
function resetmode()
	tecks2.Text = "Random Guy"
    tecks2.TextColor3 = Color3.fromRGB(255,255,255)
    tecks2.TextStrokeColor3 = Color3.fromRGB(255,255,255)
  for i, v in pairs(ArmourParts) do
    v.BrickColor = BrickColor.new("Black")
    v.Material = "Neon"
    v.Transparency = 0
  end
  for i, v in pairs(NeonParts) do
    maincolor = BrickColor.new("Dark stone grey")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
  end
  for i, v in pairs(ArmourParts2) do
    v.BrickColor = BrickColor.new("Black")
    v.Material = "Neon"
    v.Transparency = 0
  end
  for i, v in pairs(NeonParts2) do
    maincolor = BrickColor.new("Dark stone grey")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
  end
	Mode = 1
  SONG = 1117396305
char.Head.face.Texture = "http://www.roblox.com/asset/?id=843367143"
end

function Taunt10000()
    attack = true
    Cso("649634100", hed, 10, 0.5)
    for i = 0, 6, 0.1 do
        swait()
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 2 + 0.25* Player_Size * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.05)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-25 - 6.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.05)
        RH.C0 = clerp(RH.C0, CF(1.1* Player_Size, -0.6 - 0.15 * Cos(sine / 20)* Player_Size, -0.3* Player_Size) * angles(Rad(0), Rad(76), Rad(0)) * angles(Rad(-8.5), Rad(0), Rad(-15)), 0.05)
        LH.C0 = clerp(LH.C0, CF(-1.1* Player_Size, -0.6 - 0.15 * Cos(sine / 20)* Player_Size, -0.3* Player_Size) * angles(Rad(0), Rad(-76), Rad(0)) * angles(Rad(-8.5), Rad(15), Rad(45)), 0.05)
        RW.C0 = clerp(RW.C0, CF(.7* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, -.6* Player_Size) * angles(Rad(0), Rad(-.6), Rad(-135)), 0.2)
        LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.08 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(5), Rad(-.6), Rad(-75)), 0.05)
    end
    attack = false
end

function Taunt2()
    attack = true
    hum.WalkSpeed = 0
        TAUNT2:Play()
	repeat
        swait()
        TAUNT.Parent = tors
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(25)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-3 - 1.5 * Cos(sine / 7)), Rad(0), Rad(-25)), 0.3)
        RH.C0 = clerp(RH.C0, CF(.8* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, .2* Player_Size) * angles(Rad(0), Rad(45), Rad(0)) * angles(Rad(-6.5), Rad(0), Rad(0)), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-75), Rad(0)) * angles(Rad(-6.5), Rad(0), Rad(0)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.08 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(145), Rad(-20), Rad(25)), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.08 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(78 + 3.5 * Cos(sine / 20)), Rad(-25), Rad(-20)), 0.1)
	until TAUNT2.Playing == false
	attack = false
	hum.WalkSpeed = 16
end

function AnnoyingSink()
    coroutine.resume(coroutine.create(function()
        attack = true
        for i = 0, 6, 0.1 do
        swait()
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 2 + 0.25* Player_Size * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.05)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-6.5 * Sin(sine / 20)), Rad(20), Rad(0)), 0.05)
        RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.3 - 0.15 * Cos(sine / 20)* Player_Size, -0.1* Player_Size) * angles(Rad(0), Rad(76), Rad(0)) * angles(Rad(-8.5), Rad(0), Rad(15)), 0.05)
        LH.C0 = clerp(LH.C0, CF(-1.1* Player_Size, -0.6 - 0.15 * Cos(sine / 20)* Player_Size, -0.3* Player_Size) * angles(Rad(0), Rad(-76), Rad(0)) * angles(Rad(-8.5), Rad(15), Rad(45)), 0.05)
        RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.08 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(90), Rad(-.6), Rad(7)), 0.2)
        LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.08 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(5), Rad(-.6), Rad(-15)), 0.05)
        end
        local Hole2 = CreatePart(3, EffectModel, "Neon", 0, 0, "Really black", "Hole", Vector3.new(15,0,15))
        Hole2.Color = Color3.new(0,0,0)
        local MESH = MakeForm(Hole2,"Cyl")
        MESH.Scale = Vector3.new(0,1,0)
        Hole2.CFrame = CF(mouse.Hit.p)
        Cso("154955269", Hole2, 10, .7)
        for i = 0, 3, 0.1 do
        swait()
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 2 + 0.25* Player_Size * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.05)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-25 - 6.5 * Sin(sine / 20)), Rad(20), Rad(0)), 0.05)
        RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.3 - 0.15 * Cos(sine / 20)* Player_Size, -0.1* Player_Size) * angles(Rad(0), Rad(76), Rad(0)) * angles(Rad(-8.5), Rad(0), Rad(15)), 0.05)
        LH.C0 = clerp(LH.C0, CF(-1.1* Player_Size, -0.6 - 0.15 * Cos(sine / 20)* Player_Size, -0.3* Player_Size) * angles(Rad(0), Rad(-76), Rad(0)) * angles(Rad(-8.5), Rad(15), Rad(45)), 0.05)
        RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.08 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(145), Rad(-.6), Rad(7)), 0.2)
        LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.08 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(5), Rad(-.6), Rad(-15)), 0.05)
        end
        attack = false
        for i = 1, 50 do
            swait()
            MESH.Scale = MESH.Scale + Vector3.new(0.02,0,0.02)
        end
        for i = 1, 200 do
            swait()
            Sink(Hole2.Position,Hole2.Size.X/2.2)
        end
        swait(100)
        for i = 1, 50 do
            swait()
            Trail(Hole2)
            MESH.Scale = MESH.Scale - Vector3.new(0.02,0,0.02)
        end
        Hole2:remove()
    end))
end

function Taunt()
    attack = true
    hum.WalkSpeed = 0
        TAUNT:Play()
	repeat
        swait()
        TAUNT.Parent = tors
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(25)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-3 - 1.5 * Cos(sine / 7)), Rad(0), Rad(-25)), 0.3)
        RH.C0 = clerp(RH.C0, CF(.8* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, .2* Player_Size) * angles(Rad(0), Rad(45), Rad(0)) * angles(Rad(-6.5), Rad(0), Rad(0)), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-75), Rad(0)) * angles(Rad(-6.5), Rad(0), Rad(0)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.08 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(145), Rad(-20), Rad(25)), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.08 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(78 + 3.5 * Cos(sine / 20)), Rad(-25), Rad(-20)), 0.1)
	until TAUNT.Playing == false
	attack = false
	hum.WalkSpeed = 16
end
function attackone()
	attack = true
	hum.WalkSpeed = 3.01
	for i = 0, 1.7, 0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(10), Rad(0), Rad(-40)), 0.3)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-10), Rad(0), Rad(40)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -1 - 0.1 * Cos(sine / 20)* Player_Size, -.2* Player_Size) * angles(Rad(0), Rad(75), Rad(0)) * angles(Rad(-7), Rad(0), Rad(-7)), 0.3)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-65), Rad(0)) * angles(Rad(-10), Rad(0), Rad(-25)), 0.3)
		RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, .3* Player_Size) * angles(Rad(90), Rad(-7.5 * Sin(sine / 20)), Rad(45)), 0.3)
		LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(25), Rad(7.5 * Sin(sine / 20)), Rad(-25)), 0.3)
	end
	Cso("203426541", ra, 10, 1)
	HitboxFunction(root.CFrame * CF(0, 0, -2), 0.01, 1, 1, 1, 7, 10, 20, 3, "Random Guy")
	CameraEnshaking(2, 5)
	for i = 0, 1.4, 0.1 do
		swait()
		BlockEffect(maincolor, ra.CFrame, 21, 41, 21, -2, -3, -2, 0.08, 2)
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, -.5, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(5), Rad(0), Rad(55)), 0.3)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(20), Rad(0), Rad(-55)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.8 - 0.1 * Cos(sine / 20)* Player_Size, -.2* Player_Size) * angles(Rad(0), Rad(87), Rad(0)) * angles(Rad(-30), Rad(0), Rad(15)), 0.3)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -1 - 0.1 * Cos(sine / 20)* Player_Size, -.1* Player_Size) * angles(Rad(0), Rad(-87), Rad(0)) * angles(Rad(-5), Rad(0), Rad(9)), 0.3)
		RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, -.4* Player_Size) * angles(Rad(90), Rad(-7.5 * Sin(sine / 20)), Rad(35)), 0.3)
		LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-25), Rad(7.5 * Sin(sine / 20)), Rad(-25)), 0.3)
	end
	hum.WalkSpeed = 16
	attack = false
end



function attacktwo()
	attack = true
	hum.WalkSpeed = 3.01
	for i = 0, 1.7, 0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(25), Rad(0), Rad(0)), 0.3)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-5), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -1 - 0.1 * Cos(sine / 20)* Player_Size, -.2* Player_Size) * angles(Rad(0), Rad(76), Rad(0)) * angles(Rad(-7), Rad(0), Rad(-45)), 0.3)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, -.2* Player_Size) * angles(Rad(0), Rad(-76), Rad(0)) * angles(Rad(-10), Rad(0), Rad(-25)), 0.3)
		RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(10), Rad(-7.5 * Sin(sine / 20)), Rad(8)), 0.3)
		LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(35), Rad(7.5 * Sin(sine / 20)), Rad(-8)), 0.3)
	end
	Cso("203426541", rl, 10, 1)
	HitboxFunction(root.CFrame * CF(0, 0, -2), 0.01, 1, 1, 1, 7, 10, 20, 3, "Random Guy")
	CameraEnshaking(2, 3)
	for i = 0, 1.4, 0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, -.5, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-25), Rad(0), Rad(0)), 0.3)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(5), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -1 - 0.1 * Cos(sine / 20)* Player_Size, -.2* Player_Size) * angles(Rad(0), Rad(76), Rad(0)) * angles(Rad(-7), Rad(0), Rad(65)), 0.3)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -1.1 - 0.1 * Cos(sine / 20)* Player_Size, -.2* Player_Size) * angles(Rad(0), Rad(-76), Rad(0)) * angles(Rad(-10), Rad(0), Rad(35)), 0.3)
		RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-20), Rad(-7.5 * Sin(sine / 20)), Rad(8)), 0.3)
		LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-25), Rad(7.5 * Sin(sine / 20)), Rad(-8)), 0.3)
	end
	hum.WalkSpeed = 16
	attack = false
end
function attackthree()
	attack = true
	hum.WalkSpeed = 3.01
	for i = 0, 1.4, 0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-25), Rad(0), Rad(0)), 0.3)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -1 - 0.1 * Cos(sine / 20)* Player_Size, -.2* Player_Size) * angles(Rad(0), Rad(76), Rad(0)) * angles(Rad(-15), Rad(0), Rad(-30)), 0.3)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -1 - 0.1 * Cos(sine / 20)* Player_Size, -.2* Player_Size) * angles(Rad(0), Rad(-76), Rad(0)) * angles(Rad(-15), Rad(0), Rad(30)), 0.3)
		RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(90), Rad(0), Rad(35)), 0.3)
		LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(90), Rad(0), Rad(-35)), 0.3)
	end
	Cso("203426541", hed, 10, 1)
	for i = 0, 1.7, 0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(25), Rad(0), Rad(0)), 0.3)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, -.1* Player_Size) * angles(Rad(0), Rad(76), Rad(0)) * angles(Rad(-5), Rad(0), Rad(30)), 0.3)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, -.1* Player_Size) * angles(Rad(0), Rad(-76), Rad(0)) * angles(Rad(-5), Rad(0), Rad(-30)), 0.3)
		RW.C0 = clerp(RW.C0, CF(1.3* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, -.6* Player_Size) * angles(Rad(90), Rad(0), Rad(-35)), 0.3)
		LW.C0 = clerp(LW.C0, CF(-1.3* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, -.6* Player_Size) * angles(Rad(90), Rad(0), Rad(35)), 0.3)
	end
	CameraEnshaking(2, 8)
	Cso("260435136", hed, 10, .9)
	BlockEffect(maincolor, Handle.CFrame * CF(0, -2, 0), 11, 11, 11, 10, 10, 10, 0.04, 1)
	BlockEffect(BrickC("Really black"), Handle.CFrame * CF(0, -2, 0), 6, 6, 6, 5, 5, 5, 0.04, 1)
	HitboxFunction(root.CFrame * CF(0, 0, -2), 0.01, 1, 1, 1, 7, 10, 20, 3, "Random Guy")
	for i = 0, 1.8, 0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-25), Rad(0), Rad(0)), 0.2)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.2)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, -.1* Player_Size) * angles(Rad(0), Rad(76), Rad(0)) * angles(Rad(-15), Rad(0), Rad(-30)), 0.2)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, -.1* Player_Size) * angles(Rad(0), Rad(-76), Rad(0)) * angles(Rad(-15), Rad(0), Rad(30)), 0.2)
		RW.C0 = clerp(RW.C0, CF(1.3* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(90), Rad(0), Rad(35)), 0.2)
		LW.C0 = clerp(LW.C0, CF(-1.3* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(90), Rad(0), Rad(-35)), 0.2)
	end
	hum.WalkSpeed = 16
	attack = false
end

function somuchcancerwhy() --o no
    attack = true
    hum.WalkSpeed = 0.10
        Character.Head.face.Texture = "rbxassetid://315074049"
        local A = math.random(1,13)
        if A == 1 then
            ohno.SoundId = "rbxassetid://295810519"
            ohno.TimePosition = 1
        end
        if A == 2 then
            ohno.SoundId = "rbxassetid://488472970"
            ohno.TimePosition = 2
        end
        if A == 3 then
            ohno.SoundId = "rbxassetid://917045199"
            ohno.TimePosition = 3
        end
        if A == 4 then
            ohno.SoundId = "rbxassetid://324205173"
            ohno.TimePosition = 1
        end
        if A == 5 then
            ohno.SoundId = "rbxassetid://376134741"
            ohno.TimePosition = 8
        end
        if A == 6 then
            ohno.SoundId = "rbxassetid://164147183"
            ohno.TimePosition = 0
        end
        if A == 7 then
            ohno.SoundId = "rbxassetid://825526716"
            ohno.TimePosition = 1
        end
        if A == 8 then
            ohno.SoundId = "rbxassetid://185460366"
            ohno.TimePosition = 0
        end
        if A == 9 then
            ohno.SoundId = "rbxassetid://273319633"
            ohno.TimePosition = 1
        end
        if A == 10 then
            ohno.SoundId = "rbxassetid://506212392"
            ohno.TimePosition = 2
        end
        if A == 11 then
            ohno.SoundId = "rbxassetid://708297448"
            ohno.TimePosition = 4
        end
        if A == 12 then
            ohno.SoundId = "rbxassetid://497199103"
            ohno.TimePosition = 9
        end
        if A == 13 then
            ohno.SoundId = "rbxassetid://152833989"
            ohno.TimePosition = 1
        end
        ohno:Play()
    for i = 0,100,0.1 do
        swait()
            CameraEnshaking(2, 3)
                ohno.Parent = hed
            char.Torso.Neck.C0 = char.Torso.Neck.C0 * CFrame.Angles(math.random(-10,10),math.random(-10,10),math.random(-10,10))
    end
    attack = false
        ohno:Stop()
        Character.Head.face.Texture = "rbxassetid://620619801"
    hum.WalkSpeed = 16
end

function Power_Burst()
	hum.WalkSpeed = 4
	attack = true
	Cso("163619849", Handle, 10, 1.35)
	for i = 0,4.3,0.1 do
		swait()
PixelBlock(3,1,"Add",Handle.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.2,0.2,0.2,0.01,maincolor,0)
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-0), Rad(0), Rad(0)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-23 - 2.5 * Sin(sine / 20)), Rad(-0), Rad(-30)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(-2)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(5 * Cos(sine / 20)), Rad(2)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(156), Rad(0), Rad(25 - 2.5 * Sin(sine / 20))), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-25 + 2.5 * Sin(sine / 20))), 0.1)
	end
	CameraEnshaking(2.5, 20)
	Cso("539294959", Handle, 10, .9)
	BlockEffect(maincolor, Handle.CFrame * CF(0, -0, 0), 16, 16, 16, 22, 22, 22, 0.04, 1)
	BlockEffect(BrickC("Really black"), Handle.CFrame * CF(0, -0, 0), 10, 10, 10, 12, 12, 12, 0.04, 1)
	HitboxFunction(root.CFrame * CF(0, 0, -0), 0.01, 1, 1, 1, 19, 30, 75, 35, "Random Guy")
	for i = 0,3,0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-0), Rad(0), Rad(0)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-4 - 2.5 * Sin(sine / 20)), Rad(-0), Rad(-30)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(-2)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(5 * Cos(sine / 20)), Rad(2)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.01 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(156), Rad(0), Rad(25 - 2.5 * Sin(sine / 20))), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-25 + 2.5 * Sin(sine / 20))), 0.1)
	end
	hum.WalkSpeed = 16
	attack = false
end

function Eruption2()
	attack = true
	hum.WalkSpeed = 2
        hum.JumpPower = 0
	for i = 0,7,0.1 do
	        HitboxFunction(tors.CFrame, 0.01, 1, 1, 1, 7, 5, 10, 1, "Normal")
		swait()
		Effects.Block.Create(BrickC("Deep orange"), ra.CFrame * CF(0, -1, 0), 2, 2, 2, 3, 3, 3, 0.05)
		Effects.Block.Create(BrickC("New Yeller"), la.CFrame * CF(0, -1, 0), 2, 2, 2, 3, 3, 3, 0.05)
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0-255.45*i)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(110)), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-45)), 0.1)
	end
	CreateSound("144699494", tors, 10, 1)
	Effects.Ring.Create(BrickC("Deep orange"), root.CFrame * CF(0, -2.7, 0) * angles(Rad(90),Rad(0),Rad(0)), 1, 1, 1, 1.6, 1.6, 1.6, 0.02)
	Effects.Ring.Create(BrickC("New Yeller"), root.CFrame * CF(0, -2.3, 0) * angles(Rad(90),Rad(0),Rad(0)), 1, 1, 1, 3.6, 3.6, 3.6, 0.02)
	Effects.Ring.Create(BrickC("Deep orange"), root.CFrame * CF(0, -1.7, 0) * angles(Rad(90),Rad(0),Rad(0)), 1, 1, 1, 5.6, 5.6, 5.6, 0.02)
	Effects.Ring.Create(BrickC("New Yeller"), root.CFrame * CF(0, -1.3, 0) * angles(Rad(90),Rad(0),Rad(0)), 1, 1, 1, 8.6, 8, 8, 0.03)
	MagniDamage(tors, 30, 40, 75, 7, "DarkUp")
	coroutine.resume(coroutine.create(function() 
		for i = 0,1.8,0.1 do
			swait()
			hum.CameraOffset = Vector3.new(Mrandom(-4,4),Mrandom(-4,4),Mrandom(-4,4))
		end
		for i = 0,1.8,0.1 do
			swait()
		hum.CameraOffset = Vector3.new(0,0,0)
		end
	end))
        local vel2 = Instance.new("BodyVelocity",tors)
        vel2.Velocity = Vector3.new(0,55,0)
        vel2.MaxForce = Vector3.new(10000000,10000000,10000000)
	for i = 0,4,0.1 do
	        HitboxFunction(tors.CFrame, 0.01, 1, 1, 1, 7, 20, 35, 3, "Normal")
		swait()
		Effects.Block.Create(BrickC("Deep orange"), ra.CFrame * CF(0, -1, 0), 2, 2, 2, 3, 3, 3, 0.05)
		Effects.Block.Create(BrickC("New Yeller"), la.CFrame * CF(0, -1, 0), 2, 2, 2, 3, 3, 3, 0.05)
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0-255.45*i)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(110)), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-45)), 0.1)
	end
	hum.WalkSpeed = 16
        vel2:Destroy()
        hum.JumpPower = 50
	attack = false
end

function Magic_Bombs()
	attack = true
	hum.WalkSpeed = 0
local GYRO = IT("BodyGyro",root)
GYRO.D = 100
GYRO.P = 2000
GYRO.MaxTorque = VT(0,4000000,0)
GYRO.cframe = CF(root.Position,mouse.Hit.p)
	for i = 0,3.6,0.1 do
			swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(90)), 0.2)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(-90)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-9), Rad(0), Rad(-10)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.6 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-8), Rad(0), Rad(10)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(90)), 0.2)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(25), Rad(0), Rad(-15)), 0.2)
	end
	CameraEnshaking(1, 6)
        GYRO:Destroy()
	Cso("588734356", Handle, 10, 1.05)
	BlockEffect(maincolor, Handle.CFrame * CF(0, -16, 0), 7, 7, 7, 9, 9, 9, 0.07, 1)
	BlockEffect(("Crimson"), Handle.CFrame * CF(0, -16, 0), 2, 2, 2, 4, 4, 4, 0.05, 1)
	HitboxFunction(root.CFrame * CF(0, 0, -20), 0.01, 1, 1, 1, 6.5, 14, 24, 2, "Random Guy")
	for i = 0,2,0.1 do
			swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(90)), 0.2)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(-90)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-9), Rad(0), Rad(-10)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.6 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-8), Rad(0), Rad(10)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(134)), 0.2)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(25), Rad(0), Rad(-15)), 0.2)
	end
local GYRO = IT("BodyGyro",root)
GYRO.D = 100
GYRO.P = 2000
GYRO.MaxTorque = VT(0,4000000,0)
GYRO.cframe = CF(root.Position,mouse.Hit.p)
	for i = 0,2.4,0.1 do
			swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(90)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(-90)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-9), Rad(0), Rad(-10)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.6 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-8), Rad(0), Rad(10)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(90)), 0.2)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(25), Rad(0), Rad(-15)), 0.2)
	end
        GYRO:Destroy()
	CameraEnshaking(1, 6)
	Cso("588734356", Handle, 10, 1.05)
	BlockEffect(maincolor, Handle.CFrame * CF(0, -16, 0), 7, 7, 7, 9, 9, 9, 0.07, 1)
	BlockEffect(BrickC("Crimson"), Handle.CFrame * CF(0, -16, 0), 2, 2, 2, 4, 4, 4, 0.05, 1)
	HitboxFunction(root.CFrame * CF(0, 0, -20), 0.01, 1, 1, 1, 6,5, 14, 24, 2, "Random Guy")
	for i = 0,2,0.1 do
			swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(90)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(-90)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-9), Rad(0), Rad(-10)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.6 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-8), Rad(0), Rad(10)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(134)), 0.2)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(25), Rad(0), Rad(-15)), 0.2)
	end
local GYRO = IT("BodyGyro",root)
GYRO.D = 100
GYRO.P = 2000
GYRO.MaxTorque = VT(0,4000000,0)
GYRO.cframe = CF(root.Position,mouse.Hit.p)
	for i = 0,2.4,0.1 do
			swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(90)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(-90)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-9), Rad(0), Rad(-10)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.6 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-8), Rad(0), Rad(10)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(90)), 0.2)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(25), Rad(0), Rad(-15)), 0.2)
	end
        GYRO:Destroy()
	CameraEnshaking(1, 6)
	Cso("588734356", Handle, 10, 1.05)
	BlockEffect(maincolor, Handle.CFrame * CF(0, -16, 0), 7, 7, 7, 9, 9, 9, 0.07, 1)
	BlockEffect(BrickC("Crimson"), Handle.CFrame * CF(0, -16, 0), 2, 2, 2, 4, 4, 4, 0.05, 1)
	HitboxFunction(root.CFrame * CF(0, 0, -20), 0.01, 1, 1, 1, 6.5, 14, 24, 2, "Random Guy")
	for i = 0,2,0.1 do
			swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(90)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(-90)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-9), Rad(0), Rad(-10)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.6 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-8), Rad(0), Rad(10)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(134)), 0.2)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(25), Rad(0), Rad(-15)), 0.2)
	end
	attack = false
	hum.WalkSpeed = 16
end

function Dangerous_Field()
	attack = true
	hum.WalkSpeed = 0
	for i = 0,10,0.1 do
			swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0-255.45*i)), 0.2)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(-90)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2), Rad(0), Rad(-2.1)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.6 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-8), Rad(0), Rad(10)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(2.1), Rad(0), Rad(90)), 0.2)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(2.1), Rad(0), Rad(-90)), 0.2)
	CameraEnshaking(1, 7)
	Cso("588734356", Handle, 10, 1.2)
	BlockEffect(maincolor, Handle.CFrame * CF(0, -8, 0), 9, 9, 9, 11, 11, 11, 0.07, 1)
	BlockEffect(BrickC("Crimson"), Handle.CFrame * CF(0, -8, 0), 3, 3, 3, 5, 5, 5, 0.05, 1)
	HitboxFunction(Handle.CFrame * CF(0, 0, -10.3), 0.05, 1, 1, 1, 7.3, 15, 20, 3, "Random Guy")
	HitboxFunction(Handle.CFrame * CF(0, 0, -0), 0.05, 1, 1, 1, 5, 2, 3, 10, "Random Guy")
        end
	attack = false
	hum.WalkSpeed = 16
end
function Field()
	attack = true
	hum.WalkSpeed = 0
	for i = 0,10,0.1 do
			swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0-255.45*i)), 0.2)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(-90)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2), Rad(0), Rad(-2.1)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.6 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-8), Rad(0), Rad(10)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(2.1), Rad(0), Rad(90)), 0.2)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(2.1), Rad(0), Rad(-90)), 0.2)
	CameraEnshaking(1, 7)
	Cso("588734356", Handle, 10, 1.2)
	BlockEffect(maincolor, Handle.CFrame * CF(0, -8, 0), 9, 9, 9, 11, 11, 11, 0.07, 1)
	BlockEffect(BrickC("Crimson"), Handle.CFrame * CF(0, -8, 0), 3, 3, 3, 5, 5, 5, 0.05, 1)
	HitboxFunction(Handle.CFrame * CF(0, 0, -10.3), 0.05, 1, 1, 1, 7.3, 15, 20, 3, "Random Guy")
	HitboxFunction(Handle.CFrame * CF(0, 0, -0), 0.05, 1, 1, 1, 5, 2, 3, 10, "Random Guy")
        end
	attack = false
	hum.WalkSpeed = 16
end
function Shockwave()
	attack = true
	hum.WalkSpeed = 0
	for i = 0,4,0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-20), Rad(0), Rad(0)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-20 - 2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(-20)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(5 * Cos(sine / 20)), Rad(25)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(200), Rad(0), Rad(25 - 2.5 * Sin(sine / 20))), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(200), Rad(0), Rad(-25 + 2.5 * Sin(sine / 20))), 0.1)
	end
	coroutine.resume(coroutine.create(function() 
        BlockEffect(maincolor, rl.CFrame * CF(-1, -0, -5), 4, 4, 4, 5, 5, 5, 0.05, 1)
        BlockEffect(maincolor, rl.CFrame * CF(-3, -0, -5), 4, 4, 4, 5, 5, 5, 0.05, 1)
        BlockEffect(maincolor, rl.CFrame * CF(2, -0, -5), 4, 4, 4, 5, 5, 5, 0.05, 1)
	HitboxFunction(rl.CFrame * CF(-1, 0, -7), 0.05, 1, 1, 1, 5, 20, 25, 0, "Snare")
	HitboxFunction(rl.CFrame * CF(-3, 0, -7), 0.05, 1, 1, 1, 5, 20, 25, 0, "Snare")
	HitboxFunction(rl.CFrame * CF(2, 0, -7), 0.05, 1, 1, 1, 5, 20, 25, 0, "Snare")
	CameraEnshaking(1, 7)
        wait(0.05)
        BlockEffect(maincolor, rl.CFrame * CF(-0.8, -0, -10), 4, 4, 4, 5, 5, 5, 0.05, 1)
        BlockEffect(maincolor, rl.CFrame * CF(-2.8, -0, -10), 4, 4, 4, 5, 5, 5, 0.05, 1)
        BlockEffect(maincolor, rl.CFrame * CF(1.8, -0, -10), 4, 4, 4, 5, 5, 5, 0.05, 1)
	HitboxFunction(rl.CFrame * CF(-0.8, 0, -12), 0.05, 1, 1, 1, 5, 20, 20, 10, "Snare")
	HitboxFunction(rl.CFrame * CF(-2.8, 0, -12), 0.05, 1, 1, 1, 5, 20, 25, 10, "Snare")
	HitboxFunction(rl.CFrame * CF(1.8, 0, -12), 0.05, 1, 1, 1, 5, 20, 25, 10, "Snare")
	CameraEnshaking(1, 7)
        wait(0.05)
        BlockEffect(maincolor, rl.CFrame * CF(-0.6, -0, -15), 4, 4, 4, 5, 5, 5, 0.05, 1)
        BlockEffect(maincolor, rl.CFrame * CF(-2.6, -0, -15), 4, 4, 4, 5, 5, 5, 0.05, 1)
        BlockEffect(maincolor, rl.CFrame * CF(1.6, -0, -15), 4, 4, 4, 5, 5, 5, 0.05, 1)
	HitboxFunction(rl.CFrame * CF(-0.6, 0, -17), 0.05, 1, 1, 1, 5, 20, 25, 10, "Snare")
	HitboxFunction(rl.CFrame * CF(-2.6, 0, -17), 0.05, 1, 1, 1, 5, 20, 25, 10, "Snare")
	HitboxFunction(rl.CFrame * CF(1.6, 0, -17), 0.05, 1, 1, 1, 5, 20, 25, 10, "Snare")
	CameraEnshaking(1, 7)
        wait(0.05)
        BlockEffect(maincolor, rl.CFrame * CF(-0.4, -0, -20), 4, 4, 4, 5, 5, 5, 0.05, 1)
        BlockEffect(maincolor, rl.CFrame * CF(-2.4, -0, -20), 4, 4, 4, 5, 5, 5, 0.05, 1)
        BlockEffect(maincolor, rl.CFrame * CF(1.4, -0, -20), 4, 4, 4, 5, 5, 5, 0.05, 1)
	HitboxFunction(rl.CFrame * CF(-0.4, 0, -22), 0.05, 1, 1, 1, 5, 20, 25, 10, "Snare")
	HitboxFunction(rl.CFrame * CF(-2.4, 0, -22), 0.05, 1, 1, 1, 5, 20, 25, 10, "Snare")
	HitboxFunction(rl.CFrame * CF(1.4, 0, -22), 0.05, 1, 1, 1, 5, 20, 25, 10, "Snare")
	CameraEnshaking(1, 7)
        wait(0.05)
        BlockEffect(maincolor, rl.CFrame * CF(-0.2, -0, -25), 4, 4, 4, 5, 5, 5, 0.05, 1)
        BlockEffect(maincolor, rl.CFrame * CF(-2.2, -0, -25), 4, 4, 4, 5, 5, 5, 0.05, 1)
        BlockEffect(maincolor, rl.CFrame * CF(1.2, -0, -25), 4, 4, 4, 5, 5, 5, 0.05, 1)
	HitboxFunction(rl.CFrame * CF(-0.2, 0, -27), 0.05, 1, 1, 1, 5, 20, 25, 10, "Snare")
	HitboxFunction(rl.CFrame * CF(-2.2, 0, -27), 0.05, 1, 1, 1, 5, 20, 25, 10, "Snare")
	HitboxFunction(rl.CFrame * CF(1.2, 0, -27), 0.05, 1, 1, 1, 5, 20, 25, 10, "Snare")
	CameraEnshaking(1, 7)
        wait(0.05)
        BlockEffect(maincolor, rl.CFrame * CF(-0, -0, -30), 4, 4, 4, 5, 5, 5, 0.05, 1)
        BlockEffect(maincolor, rl.CFrame * CF(-2, -0, -30), 4, 4, 4, 5, 5, 5, 0.05, 1)
        BlockEffect(maincolor, rl.CFrame * CF(1, -0, -30), 4, 4, 4, 5, 5, 5, 0.05, 1)
	HitboxFunction(rl.CFrame * CF(-0, 0, -32), 0.05, 1, 1, 1, 5, 20, 25, 10, "Snare")
	HitboxFunction(rl.CFrame * CF(-2, 0, -32), 0.05, 1, 1, 1, 5, 20, 25, 10, "Snare")
	HitboxFunction(rl.CFrame * CF(1, 0, -32), 0.05, 1, 1, 1, 5, 20, 25, 10, "Snare")
	CameraEnshaking(1, 7)
	end))
	Cso("440145223", Handle, 10, 1.05)
	for i = 1,7,0.1 do
	rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -1.4 + 0.1 * Cos(sine / 20)) * angles(Rad(45), Rad(0), Rad(0)), 0.15)
	tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(35), Rad(0), Rad(0)), 0.3)
	RH.C0 = clerp(RH.C0, CF(1, .4 - 0.1 * Cos(sine / 20), -.6 + 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-5), Rad(0), Rad(45)), 0.15)
	LH.C0 = clerp(LH.C0, CF(-1, -0.6 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-5), Rad(0), Rad(-0)), 0.15)
	RW.C0 = clerp(RW.C0, CF(1.5, 0.1 + 0.05 * Sin(sine / 30), -.4 + 0.025 * Cos(sine / 20)) * angles(Rad(65), Rad(0), Rad(25)), 0.1)
	LW.C0 = clerp(LW.C0, CF(-1.5, 0.1 + 0.05 * Sin(sine / 30), -.4 + 0.025 * Cos(sine / 20)) * angles(Rad(65), Rad(0), Rad(-25)), 0.1)
	end
	wait(.6)
	hum.WalkSpeed = 16
	attack = false
end
function Pulse()
	attack = true
	hum.WalkSpeed = 0
local GYRO = IT("BodyGyro",root)
GYRO.D = 100
GYRO.P = 2000
GYRO.MaxTorque = VT(0,4000000,0)
GYRO.cframe = CF(root.Position,mouse.Hit.p)
	for i = 0,4,0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-0), Rad(0), Rad(0)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0 - 2.5 * Sin(sine / 20)), Rad(-0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(-2)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(5 * Cos(sine / 20)), Rad(2)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(0), Rad(0 - 2.5 * Sin(sine / 20))), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-25 + 2.5 * Sin(sine / 20))), 0.1)
	end
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -5, -0), 4, 4, 4, 5, 5, 5, 0.05, 1)
	HitboxFunction(Handle.CFrame * CF(-0, -7, -0), 0.05, 1, 1, 1, 5, 30, 40, 0, "Freeze")
	CameraEnshaking(1, 25)
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -10, -0), 4, 4, 4, 5, 5, 5, 0.05, 1)
	HitboxFunction(Handle.CFrame * CF(-0, -12, -0), 0.05, 1, 1, 1, 5, 30, 40, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -15, -0), 4, 4, 4, 5, 5, 5, 0.05, 1)
	HitboxFunction(Handle.CFrame * CF(0, -17, -0), 0.05, 1, 1, 1, 5, 30, 40, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -20, -0), 4, 4, 4, 5, 5, 5, 0.05, 1)
	HitboxFunction(Handle.CFrame * CF(0, -22, -0), 0.05, 1, 1, 1, 5, 30, 40, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -25, -0), 4, 4, 4, 5, 5, 5, 0.05, 1)
	HitboxFunction(Handle.CFrame * CF(0, -27, -0), 0.05, 1, 1, 1, 5, 30, 40, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -30, -0), 4, 4, 4, 5, 5, 5, 0.05, 1)
	HitboxFunction(Handle.CFrame * CF(0, -32, -0), 0.05, 1, 1, 1, 5, 30, 40, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -35, -0), 4, 4, 4, 5, 5, 5, 0.05, 1)
	HitboxFunction(Handle.CFrame * CF(0, -37, -0), 0.05, 1, 1, 1, 5, 30, 40, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -40, -0), 4, 4, 4, 5, 5, 5, 0.05, 1)
	HitboxFunction(Handle.CFrame * CF(0, -42, -0), 0.05, 1, 1, 1, 5, 30, 40, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -45, -0), 4, 4, 4, 5, 5, 5, 0.05, 1)
	HitboxFunction(Handle.CFrame * CF(0, -47, -0), 0.05, 1, 1, 1, 5, 30, 40, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -50, -0), 4, 4, 4, 5, 5, 5, 0.05, 1)
	HitboxFunction(Handle.CFrame * CF(0, -52, -0), 0.05, 1, 1, 1, 5, 30, 40, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -55, -0), 4, 4, 4, 5, 5, 5, 0.05, 1)
	HitboxFunction(Handle.CFrame * CF(0, -57, -0), 0.05, 1, 1, 1, 5, 30, 40, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -60, -0), 4, 4, 4, 5, 5, 5, 0.05, 1)
	HitboxFunction(Handle.CFrame * CF(0, -62, -0), 0.05, 1, 1, 1, 5, 30, 40, 10, "Freeze")
	Cso("440145223", Handle, 10, 1.05)
        GYRO:Destroy()
	for i = 1,2,0.1 do
		swait()
PixelBlock(2,1,"Add",Handle.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.04,0.04,0.04,0.06,maincolor,0)
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-0), Rad(0), Rad(0)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0 - 2.5 * Sin(sine / 20)), Rad(-0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(-2)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(5 * Cos(sine / 20)), Rad(2)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(140), Rad(0), Rad(0 - 2.5 * Sin(sine / 20))), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-25 + 2.5 * Sin(sine / 20))), 0.1)
	end
	hum.WalkSpeed = 16
	attack = false
end

function Technobeam()
    attack = true
    hum.WalkSpeed = 3.01
    for i = 0, 4, 0.1 do
        swait()
        hum.CameraOffset = Vector3.new(0, -0.1 + 0.1 * Cos(sine / 20), 0)
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-10), Rad(0), Rad(40)), 0.2)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(-40)), 0.2)
        RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(79), Rad(0)) * angles(Rad(-10), Rad(0), Rad(-10)), 0.2)
        LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-79), Rad(0)) * angles(Rad(-15), Rad(0), Rad(10)), 0.2)
        RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(125), Rad(-7.5 * Sin(sine / 20)), Rad(40)), 0.2)
        LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-25), Rad(7.5 * Sin(sine / 20)), Rad(-25)), 0.2)
    end
    for i = 0, 2, 0.1 do
        swait()
        hum.CameraOffset = Vector3.new(0, 0.3 + 0.1 * Cos(sine / 20), 0)
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-25), Rad(0), Rad(40)), 0.2)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-20), Rad(0), Rad(-40)), 0.2)
        RH.C0 = clerp(RH.C0, CF(1* Player_Size, -1.2 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(79), Rad(0)) * angles(Rad(-15), Rad(0), Rad(-25)), 0.2)
        LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-79), Rad(0)) * angles(Rad(-15), Rad(0), Rad(25)), 0.2)
        RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(145), Rad(-7.5 * Sin(sine / 20)), Rad(40)), 0.2)
        LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-25), Rad(7.5 * Sin(sine / 20)), Rad(-25)), 0.2)
    end
    Magic(5, "Add", mouse.Hit * CFrame.new(0, -2.9, 0), Vector3.new(0, 0, 0), 1, maincolor, "Sphere")
    Magic(10, "Add", mouse.Hit * CFrame.new(0, -2.9, 0), Vector3.new(0, 0, 0), 2, maincolor, "Sphere")
    Magic(1, "Add", mouse.Hit, Vector3.new(1, 100000, 1), 0.5, maincolor, "Sphere")
    Magic(1, "Add", mouse.Hit, Vector3.new(1, 1, 1), 0.75, maincolor, "Sphere")
    CameraEnshaking(4, 5)
    Cso("206049428", char, 10, 1)
    for i, v in pairs(FindNearestHead(mouse.Hit.p, 14.5)) do
        if v:FindFirstChild("Head") then
            Eviscerate(v)
        end
    end
    for i = 0, 2, 0.1 do
        swait()
        hum.CameraOffset = Vector3.new(0, -0.2 + 0.1 * Cos(sine / 20), 0)
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-5), Rad(0), Rad(40)), 0.2)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(-40)), 0.2)
        RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(79), Rad(0)) * angles(Rad(-10), Rad(0), Rad(-10)), 0.2)
        LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-79), Rad(0)) * angles(Rad(-15), Rad(0), Rad(10)), 0.2)
        RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(45), Rad(-7.5 * Sin(sine / 20)), Rad(40)), 0.2)
        LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-25), Rad(7.5 * Sin(sine / 20)), Rad(-25)), 0.2)
    end
    hum.WalkSpeed = 16
    attack = false
end

function Painful_Stomp2()
    attack = true
    for i = 0,5.2,0.1 do
        swait()
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-20), Rad(0), Rad(0)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-20 - 2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
        RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(-20)), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.3 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(5 * Cos(sine / 20)), Rad(25)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(135), Rad(0), Rad(-45 - 2.5 * Sin(sine / 20))), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(135), Rad(0), Rad(45 + 2.5 * Sin(sine / 20))), 0.1)
    end
    CreateSound("331666100", char, 10, 1)
    Effects.Sphere.Create(BrickColor.Random("Carnation pink"), root.CFrame * CF(0, -1, 0), 2, 2, 2, 10.6, 10.6, 10.6, 0.05)
    Effects.Sphere.Create(BrickColor.Random("Carnation pink"), root.CFrame * CF(0, -1, 0), 2, 2, 2, 10.6, 10.6, 10.6, 0.05)
    Effects.Sphere.Create(BrickColor.Random("Carnation pink"), root.CFrame * CF(0, -1, 0), 2, 2, 2, 10.6, 10.6, 10.6, 0.05)
    Effects.Sphere.Create(BrickColor.Random("Carnation pink"), root.CFrame * CF(0, -1, 0), 2, 2, 2, 10.6, 10.6, 10.6, 0.05)
    Effects.Sphere.Create(BrickColor.Random("Carnation pink"), root.CFrame * CF(0, -1, 0), 2, 2, 2, 10.6, 35.6, 10.6, 0.05)
    Effects.Sphere.Create(BrickColor.Random("Carnation pink"), root.CFrame * CF(0, -3, 0), 2, 2, 2, 150.6, .4, 150.6, 0.05)
    Effects.Ring.Create(BrickColor.Random("Carnation pink"), root.CFrame * CF(0, -1.7, 0) * angles(Rad(90),Rad(0),Rad(0)), 2, 2, 2, 8.6, 8.6, 8.6, 0.03)
    for i, v in pairs(FindNearestHead(tors.CFrame.p, 52.5)) do
        if v:FindFirstChild("Head") then
            Eviscerate(v)
        end
    end
    coroutine.resume(coroutine.create(function()
        for i = 0,2.8,0.1 do
            swait()
            hum.CameraOffset = Vector3.new(Mrandom(-3,3),Mrandom(-3,3),Mrandom(-3,3))
        end
        for i = 0,1.8,0.1 do
            swait()
        hum.CameraOffset = Vector3.new(0,0,0)
        end
    end))
    for i = 0,3.7,0.1 do
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(20), Rad(0), Rad(0)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(20 - 2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
        RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(20)), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(5 * Cos(sine / 20)), Rad(-25)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(-40), Rad(0), Rad(25 - 2.5 * Sin(sine / 20))), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(-40), Rad(0), Rad(-25 + 2.5 * Sin(sine / 20))), 0.1)
    end
    wait(.6)
    attack = false
end

function Painful_Stomp()
    attack = true
    for i = 0,5.2,0.1 do
        swait()
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-20), Rad(0), Rad(0)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-20 - 2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
        RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(-20)), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.3 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(5 * Cos(sine / 20)), Rad(25)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(135), Rad(0), Rad(-45 - 2.5 * Sin(sine / 20))), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(135), Rad(0), Rad(45 + 2.5 * Sin(sine / 20))), 0.1)
    end
    CreateSound("331666100", char, 10, 1)
    Effects.Sphere.Create(BrickColor.Random(), root.CFrame * CF(0, -1, 0), 2, 2, 2, 10.6, 10.6, 10.6, 0.05)
    Effects.Sphere.Create(BrickColor.Random(), root.CFrame * CF(0, -1, 0), 2, 2, 2, 10.6, 10.6, 10.6, 0.05)
    Effects.Sphere.Create(BrickColor.Random(), root.CFrame * CF(0, -1, 0), 2, 2, 2, 10.6, 10.6, 10.6, 0.05)
    Effects.Sphere.Create(BrickColor.Random(), root.CFrame * CF(0, -1, 0), 2, 2, 2, 10.6, 10.6, 10.6, 0.05)
    Effects.Sphere.Create(BrickColor.Random(), root.CFrame * CF(0, -1, 0), 2, 2, 2, 10.6, 35.6, 10.6, 0.05)
    Effects.Sphere.Create(BrickColor.Random(), root.CFrame * CF(0, -3, 0), 2, 2, 2, 150.6, .4, 150.6, 0.05)
    Effects.Ring.Create(BrickColor.Random(), root.CFrame * CF(0, -1.7, 0) * angles(Rad(90),Rad(0),Rad(0)), 2, 2, 2, 8.6, 8.6, 8.6, 0.03)
    for i, v in pairs(FindNearestHead(tors.CFrame.p, 52.5)) do
        if v:FindFirstChild("Head") then
            Eviscerate(v)
        end
    end
    coroutine.resume(coroutine.create(function()
        for i = 0,2.8,0.1 do
            swait()
            hum.CameraOffset = Vector3.new(Mrandom(-3,3),Mrandom(-3,3),Mrandom(-3,3))
        end
        for i = 0,1.8,0.1 do
            swait()
        hum.CameraOffset = Vector3.new(0,0,0)
        end
    end))
    for i = 0,3.7,0.1 do
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(20), Rad(0), Rad(0)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(20 - 2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
        RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(20)), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(5 * Cos(sine / 20)), Rad(-25)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(-40), Rad(0), Rad(25 - 2.5 * Sin(sine / 20))), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(-40), Rad(0), Rad(-25 + 2.5 * Sin(sine / 20))), 0.1)
    end
    wait(.6)
    attack = false
end


function LAZER()
	attack = true
	hum.WalkSpeed = 0.03
	for i = 0,4,0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-0), Rad(0), Rad(0)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0 - 2.5 * Sin(sine / 20)), Rad(-0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(-2)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(5 * Cos(sine / 20)), Rad(2)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(0), Rad(0 - 2.5 * Sin(sine / 20))), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-25 + 2.5 * Sin(sine / 20))), 0.1)
	end
        LAZOR:Play()
local GYRO = IT("BodyGyro",root)
GYRO.D = 100
GYRO.P = 2000
GYRO.MaxTorque = VT(0,4000000,0)
GYRO.cframe = CF(root.Position,mouse.Hit.p)
        repeat
        swait(2)
PixelBlock(2,1,"Add",Handle.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.3,0.3,0.3,0.4,maincolor,0)
PixelBlock(4,3,"Add",Handle.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.5,0.5,0.5,0.5,maincolor,0)
        GYRO.cframe = CF(root.Position,mouse.Hit.p)
        LAZOR.Parent = ra
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -5, -0), 4, 4, 4, 5, 5, 5, 0.08, 1)
	HitboxFunction(Handle.CFrame * CF(-0, -7, -0), 0.05, 1, 1, 1, 5, 1, 5, 0, "Freeze")
	CameraEnshaking(1, 7)
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -10, -0), 4, 4, 4, 5, 5, 5, 0.08, 1)
	HitboxFunction(Handle.CFrame * CF(-0, -12, -0), 0.05, 1, 1, 1, 5, 3, 5, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -15, -0), 4, 4, 4, 5, 5, 5, 0.08, 1)
	HitboxFunction(Handle.CFrame * CF(0, -17, -0), 0.05, 1, 1, 1, 5, 3, 5, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -20, -0), 4, 4, 4, 5, 5, 5, 0.08, 1)
	HitboxFunction(Handle.CFrame * CF(0, -22, -0), 0.05, 1, 1, 1, 5, 3, 5, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -25, -0), 4, 4, 4, 5, 5, 5, 0.08, 1)
	HitboxFunction(Handle.CFrame * CF(0, -27, -0), 0.05, 1, 1, 1, 5, 3, 5, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -30, -0), 4, 4, 4, 5, 5, 5, 0.08, 1)
	HitboxFunction(Handle.CFrame * CF(0, -32, -0), 0.05, 1, 1, 1, 5, 3, 5, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -35, -0), 4, 4, 4, 5, 5, 5, 0.08, 1)
	HitboxFunction(Handle.CFrame * CF(0, -37, -0), 0.05, 1, 1, 1, 5, 3, 5, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -40, -0), 4, 4, 4, 5, 5, 5, 0.08, 1)
	HitboxFunction(Handle.CFrame * CF(0, -42, -0), 0.05, 1, 1, 1, 5, 3, 5, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -45, -0), 4, 4, 4, 5, 5, 5, 0.08, 1)
	HitboxFunction(Handle.CFrame * CF(0, -47, -0), 0.05, 1, 1, 1, 5, 3, 5, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -50, -0), 4, 4, 4, 5, 5, 5, 0.08, 1)
	HitboxFunction(Handle.CFrame * CF(0, -52, -0), 0.05, 1, 1, 1, 5, 3, 5, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -55, -0), 4, 4, 4, 5, 5, 5, 0.08, 1)
	HitboxFunction(Handle.CFrame * CF(0, -57, -0), 0.05, 1, 1, 1, 5, 3, 5, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -60, -0), 4, 4, 4, 5, 5, 5, 0.08, 1)
	HitboxFunction(Handle.CFrame * CF(0, -62, -0), 0.05, 1, 1, 1, 5, 3, 5, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -65, -0), 4, 4, 4, 5, 5, 5, 0.08, 1)
	HitboxFunction(Handle.CFrame * CF(0, -67, -0), 0.05, 1, 1, 1, 5, 3, 5, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -70, -0), 4, 4, 4, 5, 5, 5, 0.08, 1)
	HitboxFunction(Handle.CFrame * CF(0, -72, -0), 0.05, 1, 1, 1, 5, 3, 5, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -75, -0), 4, 4, 4, 5, 5, 5, 0.08, 1)
	HitboxFunction(Handle.CFrame * CF(0, -77, -0), 0.05, 1, 1, 1, 5, 3, 5, 10, "Freeze")
	until LAZOR.Playing == false
        GYRO:Destroy()
	hum.WalkSpeed = 16
	attack = false
end
function new()
	attack = true
	hum.WalkSpeed = 0.03
	for i = 0,4,0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-0), Rad(0), Rad(0)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0 - 2.5 * Sin(sine / 20)), Rad(-0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(-2)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(5 * Cos(sine / 20)), Rad(2)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(0), Rad(0 - 2.5 * Sin(sine / 20))), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-25 + 2.5 * Sin(sine / 20))), 0.1)
	end
        LAZOR:Play()
local GYRO = IT("BodyGyro",root)
GYRO.D = 100
GYRO.P = 2000
GYRO.MaxTorque = VT(0,4000000,0)
GYRO.cframe = CF(root.Position,mouse.Hit.p)
        repeat
        swait(2)
PixelBlock(2,1,"Add",Handle.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.3,0.3,0.3,0.4,maincolor,0)
PixelBlock(4,3,"Add",Handle.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.5,0.5,0.5,0.5,maincolor,0)
        GYRO.cframe = CF(root.Position,mouse.Hit.p)
        LAZOR.Parent = ra
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -5, -0), 4, 4, 4, 5, 5, 5, 0.08, 1)
	HitboxFunction(Handle.CFrame * CF(-0, -7, -0), 0.05, 1, 1, 1, 5, 1, 5, 0, "Freeze")
	CameraEnshaking(1, 7)
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -10, -0), 4, 4, 4, 5, 5, 5, 0.08, 1)
	HitboxFunction(Handle.CFrame * CF(-0, -12, -0), 0.05, 1, 1, 1, 5, 3, 5, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -15, -0), 4, 4, 4, 5, 5, 5, 0.08, 1)
	HitboxFunction(Handle.CFrame * CF(0, -17, -0), 0.05, 1, 1, 1, 5, 3, 5, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -20, -0), 4, 4, 4, 5, 5, 5, 0.08, 1)
	HitboxFunction(Handle.CFrame * CF(0, -22, -0), 0.05, 1, 1, 1, 5, 3, 5, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -25, -0), 4, 4, 4, 5, 5, 5, 0.08, 1)
	HitboxFunction(Handle.CFrame * CF(0, -27, -0), 0.05, 1, 1, 1, 5, 3, 5, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -30, -0), 4, 4, 4, 5, 5, 5, 0.08, 1)
	HitboxFunction(Handle.CFrame * CF(0, -32, -0), 0.05, 1, 1, 1, 5, 3, 5, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -35, -0), 4, 4, 4, 5, 5, 5, 0.08, 1)
	HitboxFunction(Handle.CFrame * CF(0, -37, -0), 0.05, 1, 1, 1, 5, 3, 5, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -40, -0), 4, 4, 4, 5, 5, 5, 0.08, 1)
	HitboxFunction(Handle.CFrame * CF(0, -42, -0), 0.05, 1, 1, 1, 5, 3, 5, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -45, -0), 4, 4, 4, 5, 5, 5, 0.08, 1)
	HitboxFunction(Handle.CFrame * CF(0, -47, -0), 0.05, 1, 1, 1, 5, 3, 5, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -50, -0), 4, 4, 4, 5, 5, 5, 0.08, 1)
	HitboxFunction(Handle.CFrame * CF(0, -52, -0), 0.05, 1, 1, 1, 5, 3, 5, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -55, -0), 4, 4, 4, 5, 5, 5, 0.08, 1)
	HitboxFunction(Handle.CFrame * CF(0, -57, -0), 0.05, 1, 1, 1, 5, 3, 5, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -60, -0), 4, 4, 4, 5, 5, 5, 0.08, 1)
	HitboxFunction(Handle.CFrame * CF(0, -62, -0), 0.05, 1, 1, 1, 5, 3, 5, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -65, -0), 4, 4, 4, 5, 5, 5, 0.08, 1)
	HitboxFunction(Handle.CFrame * CF(0, -67, -0), 0.05, 1, 1, 1, 5, 3, 5, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -70, -0), 4, 4, 4, 5, 5, 5, 0.08, 1)
	HitboxFunction(Handle.CFrame * CF(0, -72, -0), 0.05, 1, 1, 1, 5, 3, 5, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -75, -0), 4, 4, 4, 5, 5, 5, 0.08, 1)
	HitboxFunction(Handle.CFrame * CF(0, -77, -0), 0.05, 1, 1, 1, 5, 3, 5, 10, "Freeze")
	until LAZOR.Playing == false
        GYRO:Destroy()
	hum.WalkSpeed = 16
	attack = false
end

function Tauntmelon()
	attack = true
	hum.WalkSpeed = 0
	for i = 0, 9, 0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
				tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
				RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(0)), 0.15)
				LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(0), Rad(0)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.06 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-9), Rad(0), Rad(155 + 25 * Sin(sine / 2.5))), 0.12)
		LW.C0 = clerp(LW.C0, CF(-1* Player_Size, 0.3 + 0.06 * Sin(sine / 20)* Player_Size, .6* Player_Size) * angles(Rad(-35), Rad(25 + 2.5 * Sin(sine / 20)), Rad(55 + 2.5 * Sin(sine / 20))), 0.12)
	end
	attack = false
	hum.WalkSpeed = 16
end

function Purity_Slam()
	attack = true
	for i = 0,5.2,0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-20), Rad(0), Rad(0)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-20 - 2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(-20)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(5 * Cos(sine / 20)), Rad(25)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(200), Rad(0), Rad(25 - 2.5 * Sin(sine / 20))), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(200), Rad(0), Rad(-25 + 2.5 * Sin(sine / 20))), 0.1)
	end
	CreateSound("331666100", tors, 10, 1)
	Effects.Ring.Create(BrickC("Dark indigo"), root.CFrame * CF(0, -2.7, 0) * angles(Rad(90),Rad(0),Rad(0)), 2, 2, 2, 3.6, 3.6, 3.6, 0.03)
	Effects.Ring.Create(BrickC("Royal purple"), root.CFrame * CF(0, -2.3, 0) * angles(Rad(90),Rad(0),Rad(0)), 2, 2, 2, 5.6, 5.6, 5.6, 0.03)
	Effects.Ring.Create(BrickC("Royal purple"), root.CFrame * CF(0, -1.7, 0) * angles(Rad(90),Rad(0),Rad(0)), 2, 2, 2, 8.6, 8.6, 8.6, 0.03)
	Effects.Ring.Create(BrickC("Royal purple"), root.CFrame * CF(0, -1.3, 0) * angles(Rad(90),Rad(0),Rad(0)), 2, 2, 2, 10.6, 10, 10, 0.03)
	MagniDamage(tors, 100, 400, 600, 10, "Normal")
	coroutine.resume(coroutine.create(function() 
		for i = 0,1.8,0.1 do
			swait()
			hum.CameraOffset = Vector3.new(Mrandom(-3,3),Mrandom(-3,3),Mrandom(-3,3))
		end
		for i = 0,1.8,0.1 do
			swait()
		hum.CameraOffset = Vector3.new(0,0,0)
		end
	end))
	for i = 1,4.7,0.1 do
	rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -1.4 + 0.1 * Cos(sine / 20)) * angles(Rad(45), Rad(0), Rad(0)), 0.15)
	tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(35), Rad(0), Rad(0)), 0.3)
	RH.C0 = clerp(RH.C0, CF(1, .4 - 0.1 * Cos(sine / 20), -.6 + 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-5), Rad(0), Rad(45)), 0.15)
	LH.C0 = clerp(LH.C0, CF(-1, -0.6 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-5), Rad(0), Rad(-0)), 0.15)
	RW.C0 = clerp(RW.C0, CF(1.5, 0.1 + 0.05 * Sin(sine / 30), -.4 + 0.025 * Cos(sine / 20)) * angles(Rad(65), Rad(0), Rad(25)), 0.1)
	LW.C0 = clerp(LW.C0, CF(-1.5, 0.1 + 0.05 * Sin(sine / 30), -.4 + 0.025 * Cos(sine / 20)) * angles(Rad(65), Rad(0), Rad(-25)), 0.1)
	end
	wait(.6)
	attack = false
end

function Spirit_Beam()
        attack = true
	hum.WalkSpeed = 0
local GYRO = IT("BodyGyro",root)
GYRO.D = 100
GYRO.P = 2000
GYRO.MaxTorque = VT(0,4000000,0)
GYRO.cframe = CF(root.Position,mouse.Hit.p)
	for i = 0,5,0.1 do
		swait()
                GYRO.cframe = CF(root.Position,mouse.Hit.p)
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, 1.3 + 0.6 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(8 - 2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.7 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5 + 3 * Sin(sine / 20)), Rad(0), Rad(10 + 3 * Sin(sine / 20))), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5 + 3 * Sin(sine / 20)), Rad(0), Rad(-10 + 3 * Sin(sine / 20))), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(-10 * Cos(sine / 20)), Rad(0 - 2.5 * Sin(sine / 20))), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(10 * Cos(sine / 20)), Rad(-0 + 2.5 * Sin(sine / 20))), 0.1)
        end
        ref = New("Part",m,"ref",{Anchored = true, CanCollide = false,Transparency = 1,Size = Vector3.new(0.200000018, 0.299999923, 0.2),Position = mouse.Hit.p,Color = Color3.new(1, 0, 0),})
	HitboxFunction(ref.CFrame * CF(0, -0, -0), 0.01, 1, 1, 1, 4, 25, 50, 1, "Random Guy")
        BlockEffect(maincolor, ref.CFrame * CF(-0, -0, -0), 4, 4, 4, 5, 5, 5, 0.07, 1)
	local beam = Instance.new("Part", workspace)
	beam.BrickColor = BrickColor.new("Fog")
	beam.FormFactor = "Custom"
	beam.Material = "Neon"
	beam.Transparency = 0.5
	beam.Anchored = true
	beam.Locked = true
	beam.CanCollide = false
	local distance = (Handle.CFrame.p - mouse.Hit.p).magnitude
	beam.Size = Vector3.new(1.05, 1.05, distance)
	beam.CFrame = CFrame.new(Handle.CFrame.p, mouse.Hit.p) * CFrame.new(0, 0, -distance / 2)
	game:GetService("Debris"):AddItem(beam, 0.14)
	local sound = Instance.new('Sound',Handle)
	sound.SoundId = 'rbxassetid://588697948'
	sound.Volume = 7
	sound.EmitterSize = 40
	sound.MaxDistance = 450
	sound:Play()
	game:GetService("Debris"):AddItem(beam, sound.TimeLength)
        GYRO:Destroy()
PixelBlock(3,1.5,"Add",ref.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.5,0.5,0.5,0.6,maincolor,0)
PixelBlock(3,1.5,"Add",ref.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.5,0.5,0.5,0.6,maincolor,0)
PixelBlock(3,1.5,"Add",ref.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.5,0.5,0.5,0.6,maincolor,0)
PixelBlock(3,1.5,"Add",ref.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.5,0.5,0.5,0.6,maincolor,0)
PixelBlock(3,1.5,"Add",ref.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.5,0.5,0.5,0.6,maincolor,0)
PixelBlock(3,1.5,"Add",ref.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.5,0.5,0.5,0.6,maincolor,0)
PixelBlock(3,1.5,"Add",ref.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.5,0.5,0.5,0.6,maincolor,0)
PixelBlock(3,1.5,"Add",ref.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.5,0.5,0.5,0.6,maincolor,0)
PixelBlock(3,1.5,"Add",ref.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.5,0.5,0.5,0.6,maincolor,0)
PixelBlock(3,1.5,"Add",ref.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.5,0.5,0.5,0.6,maincolor,0)
        wait(0.3)
        attack = false
	hum.WalkSpeed = 16
        ref:Destroy()
end
function Distort()
	attack = true
	hum.WalkSpeed = 0
		local pos = root.Position
		root.CFrame = CF(mouse.Hit.p+Vector3.new(0,3,0),pos)
	Cso("261227592", tors, 10, 0.85)
	for i = 1,2.5,0.1 do
        swait()
        rootj.C0 = char.Torso.Neck.C0 * CFrame.Angles(math.random(-10,10),math.random(-10,10),math.random(-10,10))
        end
	attack = false
	hum.WalkSpeed = 8
end
function Ancient_Rage()
	attack = true
	hum.WalkSpeed = 4
	Cso("135017578", tors, 10, 1.05)
	for i = 1,14,0.1 do
        swait()
                rootj.C0 = char.Torso.Neck.C0 * CFrame.Angles(math.random(-10,10),math.random(-10,10),math.random(-10,10))
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0 - 2.5 * Sin(sine / 20)), Rad(-0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(-2)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(5 * Cos(sine / 20)), Rad(2)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(140), Rad(0), Rad(0 - 2.5 * Sin(sine / 20))), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-25 + 2.5 * Sin(sine / 20))), 0.1)
	for i, v in pairs(FindNearestHead(tors.CFrame.p, 7)) do
		if v:FindFirstChild("Head") then
                        Eviscerate(v)
		end
	end
        end
	attack = false
	hum.WalkSpeed = 16
end
function Ancient_Ragu()
	attack = true
	hum.WalkSpeed = 4
	Cso("1028044973", tors, 10, 1.05)
	for i = 1,14,0.1 do
        swait()
                rootj.C0 = char.Torso.Neck.C0 * CFrame.Angles(math.random(-10,10),math.random(-10,10),math.random(-10,10))
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0 - 2.5 * Sin(sine / 20)), Rad(-0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(-2)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(5 * Cos(sine / 20)), Rad(2)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(140), Rad(0), Rad(0 - 2.5 * Sin(sine / 20))), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-25 + 2.5 * Sin(sine / 20))), 0.1)
	for i, v in pairs(FindNearestHead(tors.CFrame.p, 7)) do
		if v:FindFirstChild("Head") then
                        Eviscerate(v)
		end
	end
        end
	attack = false
	hum.WalkSpeed = 16
end
function TTTTTTTTTTGaunt()
	attack = true
	hum.WalkSpeed = 0
        sex:Play()
        repeat
        swait()
        sex.Parent = tors
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(math.random(-25,25),math.random(-25,25),math.random(-25,25)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.random(-25,25),math.random(-25,25),math.random(-25,25)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.001 * Cos(sine / 20)) * RHCF * angles (math.random(-25,25),math.random(-25,25),math.random(-25,25)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.001 * Cos(sine / 20)) * LHCF * angles(math.random(-25,25),math.random(-25,25),math.random(-25,25)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.2, 0.5 + 0.05 * Sin(sine / 30), 0.001 * Cos(sine / 20)) * angles (math.random(-25,25),math.random(-25,25),math.random(-25,25)), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.2, 0.5 + 0.05 * Sin(sine / 30), 0.001 * Cos(sine / 20)) * angles(math.random(-25,25),math.random(-25,25),math.random(-25,25)), 0.1)
	until sex.Playing == false
	attack = false
	hum.WalkSpeed = 16
end
function TTTTTTTTTTTaunt()
	attack = true
	hum.WalkSpeed = 0
        DTAUNT:Play()
        repeat
        swait()
        DTAUNT.Parent = tors
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(math.random(-25,25),math.random(-25,25),math.random(-25,25)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.random(-25,25),math.random(-25,25),math.random(-25,25)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.001 * Cos(sine / 20)) * RHCF * angles (math.random(-25,25),math.random(-25,25),math.random(-25,25)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.001 * Cos(sine / 20)) * LHCF * angles(math.random(-25,25),math.random(-25,25),math.random(-25,25)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.2, 0.5 + 0.05 * Sin(sine / 30), 0.001 * Cos(sine / 20)) * angles (math.random(-25,25),math.random(-25,25),math.random(-25,25)), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.2, 0.5 + 0.05 * Sin(sine / 30), 0.001 * Cos(sine / 20)) * angles(math.random(-25,25),math.random(-25,25),math.random(-25,25)), 0.1)
	until DTAUNT.Playing == false
	attack = false
	hum.WalkSpeed = 16
end

function Taunt3()
	attack = true
	hum.WalkSpeed = 0
        newnoob:Play()
        repeat
        swait()
        newnoob.Parent = tors
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(math.random(-25,25),math.random(-25,25),math.random(-25,25)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.random(-25,25),math.random(-25,25),math.random(-25,25)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.001 * Cos(sine / 20)) * RHCF * angles (math.random(-25,25),math.random(-25,25),math.random(-25,25)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.001 * Cos(sine / 20)) * LHCF * angles(math.random(-25,25),math.random(-25,25),math.random(-25,25)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.2, 0.5 + 0.05 * Sin(sine / 30), 0.001 * Cos(sine / 20)) * angles (math.random(-25,25),math.random(-25,25),math.random(-25,25)), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.2, 0.5 + 0.05 * Sin(sine / 30), 0.001 * Cos(sine / 20)) * angles(math.random(-25,25),math.random(-25,25),math.random(-25,25)), 0.1)
	until newnoob.Playing == false
	attack = false
	hum.WalkSpeed = 16
end


function Multi_Bombs()
    attack = true
    hum.WalkSpeed = 3.01
    for i = 0,3,0.1 do
        swait()
        Effects.Block.Create(BrickC("Really black"), ra.CFrame * CF(0, -1, 0), 2, 2, 2, 3, 3, 3, 0.05)
        Effects.Block.Create(BrickC("Really black"), la.CFrame * CF(0, -1, 0), 2, 2, 2, 3, 3, 3, 0.05)
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, 1.3 + 0.6 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-20 - 2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
        RH.C0 = clerp(RH.C0, CF(1, -0.5 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5 + 3 * Sin(sine / 20)), Rad(0), Rad(10 + 3 * Sin(sine / 20))), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5 + 3 * Sin(sine / 20)), Rad(0), Rad(20 + 3 * Sin(sine / 20))), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(-10 * Cos(sine / 20)), Rad(90 - 2.5 * Sin(sine / 20))), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(10 * Cos(sine / 20)), Rad(-90 + 2.5 * Sin(sine / 20))), 0.1)
    end
    Effects.Sphere.Create(BrickC("Really black"), root.CFrame * CF(0, 1, -4), 5, 5, 5, 18, 18, 18, 0.05)
    Effects.Sphere.Create(BrickC("Really black"), root.CFrame * CF(0, 1, -4), 5, 5, 5, 14, 14, 14, 0.03)
    Effects.Sphere.Create(BrickC("Really black"), root.CFrame * CF(0, 1, -4), 4.5, 4.5, 4.5, 10, 10, 10, 0.05)
    Effects.Sphere.Create(BrickC("Really black"), root.CFrame * CF(0, 1, -4), 4.2, 4.2, 4.2, 8, 8, 8, 0.05)
    Effects.Sphere.Create(BrickC("Really black"), root.CFrame * CF(0, 1, -4), 5, 5, 5, 11.5, 11.5, 11.5, 0.05)
    Effects.Ring.Create(BrickC("Really black"), root.CFrame * CF(0, 0, -4), 3, 3, 3, 3.6, 3.6, 3.6, 0.02)
    Effects.Ring.Create(BrickC("Really black"), root.CFrame * CF(0, 0, -4), 2, 2, 2, 3, 3, 3, 0.05)
    CreateSound("142070127", tors, 10, 1)
    MagniDamage(tors, 17, 15, 35, 10, "Normal")
    for i = 0,1,0.1 do
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, 1.3 + 0.6 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(20 - 2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
        RH.C0 = clerp(RH.C0, CF(1, -0.5 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5 + 3 * Sin(sine / 20)), Rad(0), Rad(10 + 3 * Sin(sine / 20))), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5 + 3 * Sin(sine / 20)), Rad(0), Rad(-10 + 3 * Sin(sine / 20))), 0.15)
        RW.C0 = clerp(RW.C0, CF(1, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(-10 * Cos(sine / 20)), Rad(-35 - 2.5 * Sin(sine / 20))), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(10 * Cos(sine / 20)), Rad(35 + 2.5 * Sin(sine / 20))), 0.1)
    end
    for i = 0,2,0.1 do
        swait()
        Effects.Block.Create(BrickC("Really black"), ra.CFrame * CF(0, -1, 0), 2, 2, 2, 3, 3, 3, 0.05)
        Effects.Block.Create(BrickC("Really black"), la.CFrame * CF(0, -1, 0), 2, 2, 2, 3, 3, 3, 0.05)
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, 1.3 + 0.6 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-20 - 2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
        RH.C0 = clerp(RH.C0, CF(1, -0.5 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5 + 3 * Sin(sine / 20)), Rad(0), Rad(10 + 3 * Sin(sine / 20))), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5 + 3 * Sin(sine / 20)), Rad(0), Rad(20 + 3 * Sin(sine / 20))), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(-10 * Cos(sine / 20)), Rad(90 - 2.5 * Sin(sine / 20))), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(10 * Cos(sine / 20)), Rad(-90 + 2.5 * Sin(sine / 20))), 0.1)
    end
    Effects.Sphere.Create(BrickC("Really black"), root.CFrame * CF(0, 1, -4), 5, 5, 5, 18, 18, 18, 0.05)
    Effects.Sphere.Create(BrickC("Really black"), root.CFrame * CF(0, 1, -4), 5, 5, 5, 14, 14, 14, 0.03)
    Effects.Sphere.Create(BrickC("Really black"), root.CFrame * CF(0, 1, -4), 4.5, 4.5, 4.5, 10, 10, 10, 0.05)
    Effects.Sphere.Create(BrickC("Really black"), root.CFrame * CF(0, 1, -4), 4.2, 4.2, 4.2, 8, 8, 8, 0.05)
    Effects.Sphere.Create(BrickC("Really black"), root.CFrame * CF(0, 1, -4), 5, 5, 5, 11.5, 11.5, 11.5, 0.05)
    Effects.Ring.Create(BrickC("Really black"), root.CFrame * CF(0, 0, -4), 3, 3, 3, 3.6, 3.6, 3.6, 0.02)
    Effects.Ring.Create(BrickC("Really black"), root.CFrame * CF(0, 0, -4), 2, 2, 2, 3, 3, 3, 0.05)
    CreateSound("142070127", tors, 10, 1)
    MagniDamage(tors, 17, 15, 35, 10, "Normal")
    for i = 0,1,0.1 do
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, 1.3 + 0.6 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(20 - 2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
        RH.C0 = clerp(RH.C0, CF(1, -0.5 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5 + 3 * Sin(sine / 20)), Rad(0), Rad(10 + 3 * Sin(sine / 20))), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5 + 3 * Sin(sine / 20)), Rad(0), Rad(-10 + 3 * Sin(sine / 20))), 0.15)
        RW.C0 = clerp(RW.C0, CF(1, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(-10 * Cos(sine / 20)), Rad(-35 - 2.5 * Sin(sine / 20))), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(10 * Cos(sine / 20)), Rad(35 + 2.5 * Sin(sine / 20))), 0.1)
    end
    for i = 0,2,0.1 do
        swait()
        Effects.Block.Create(BrickC("Really black"), ra.CFrame * CF(0, -1, 0), 2, 2, 2, 3, 3, 3, 0.05)
        Effects.Block.Create(BrickC("Really black"), la.CFrame * CF(0, -1, 0), 2, 2, 2, 3, 3, 3, 0.05)
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, 1.3 + 0.6 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-20 - 2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
        RH.C0 = clerp(RH.C0, CF(1, -0.5 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5 + 3 * Sin(sine / 20)), Rad(0), Rad(10 + 3 * Sin(sine / 20))), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5 + 3 * Sin(sine / 20)), Rad(0), Rad(20 + 3 * Sin(sine / 20))), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(-10 * Cos(sine / 20)), Rad(90 - 2.5 * Sin(sine / 20))), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(10 * Cos(sine / 20)), Rad(-90 + 2.5 * Sin(sine / 20))), 0.1)
    end
    Effects.Sphere.Create(BrickC("Really black"), root.CFrame * CF(0, 1, -4), 5, 5, 5, 18, 18, 18, 0.05)
    Effects.Sphere.Create(BrickC("Really black"), root.CFrame * CF(0, 1, -4), 5, 5, 5, 14, 14, 14, 0.03)
    Effects.Sphere.Create(BrickC("Really black"), root.CFrame * CF(0, 1, -4), 4.5, 4.5, 4.5, 10, 10, 10, 0.05)
    Effects.Sphere.Create(BrickC("Really black"), root.CFrame * CF(0, 1, -4), 4.2, 4.2, 4.2, 8, 8, 8, 0.05)
    Effects.Sphere.Create(BrickC("Really black"), root.CFrame * CF(0, 1, -4), 5, 5, 5, 11.5, 11.5, 11.5, 0.05)
    Effects.Ring.Create(BrickC("Really black"), root.CFrame * CF(0, 0, -4), 3, 3, 3, 3.6, 3.6, 3.6, 0.02)
    Effects.Ring.Create(BrickC("Really black"), root.CFrame * CF(0, 0, -4), 2, 2, 2, 3, 3, 3, 0.05)
    CreateSound("142070127", tors, 10, 1)
    MagniDamage(tors, 17, 15, 35, 10, "Normal")
    for i = 0,1,0.1 do
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, 1.3 + 0.6 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(20 - 2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
        RH.C0 = clerp(RH.C0, CF(1, -0.5 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5 + 3 * Sin(sine / 20)), Rad(0), Rad(10 + 3 * Sin(sine / 20))), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5 + 3 * Sin(sine / 20)), Rad(0), Rad(-10 + 3 * Sin(sine / 20))), 0.15)
        RW.C0 = clerp(RW.C0, CF(1, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(-10 * Cos(sine / 20)), Rad(-35 - 2.5 * Sin(sine / 20))), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(10 * Cos(sine / 20)), Rad(35 + 2.5 * Sin(sine / 20))), 0.1)
    end
    wait(.6)
    attack = false
    hum.WalkSpeed = 16
end

function Universal_Crush()
    attack = true
    for i = 0,5.2,0.05 do
        swait()
        Effects.Block.Create(BrickC("Really black"), ra.CFrame * CF(0, -1, 0), 2, 2, 2, 3, 3, 3, 0.05)
        Effects.Block.Create(BrickC("Really black"), la.CFrame * CF(0, -1, 0), 2, 2, 2, 3, 3, 3, 0.05)
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-20), Rad(0), Rad(0)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-20 - 2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
        RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(-20)), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(5 * Cos(sine / 20)), Rad(25)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(200), Rad(0), Rad(25 - 2.5 * Sin(sine / 20))), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(200), Rad(0), Rad(-25 + 2.5 * Sin(sine / 20))), 0.1)
    end
    CreateSound("331666100", tors, 10, 1)
    Effects.Ring.Create(BrickC("Really black"), root.CFrame * CF(0, -2.7, 0) * angles(Rad(90),Rad(0),Rad(0)), 14, 14, 14, 16.6, 16.6, 16.6, 0.01)
    Effects.Ring.Create(BrickC("Really black"), root.CFrame * CF(0, -2.3, 0) * angles(Rad(90),Rad(0),Rad(0)), 16, 16, 16, 19.6, 19.6, 19.6, 0.01)
    Effects.Ring.Create(BrickC("Really black"), root.CFrame * CF(0, -1.7, 0) * angles(Rad(90),Rad(0),Rad(0)), 18, 18, 18, 22.6, 22.6, 22.6, 0.01)
    Effects.Ring.Create(BrickC("Really black"), root.CFrame * CF(0, -1.3, 0) * angles(Rad(90),Rad(0),Rad(0)), 20, 20, 20, 25.6, 25, 25, 0.01)
    MagniDamage(tors, 170, 80, 175, 15, "DarkUp")
    coroutine.resume(coroutine.create(function()
        for i = 0,1.8,0.1 do
            swait()
            hum.CameraOffset = Vector3.new(Mrandom(-3,3),Mrandom(-3,3),Mrandom(-3,3))
        end
        for i = 0,1.8,0.1 do
            swait()
        hum.CameraOffset = Vector3.new(0,0,0)
        end
    end))
    for i = 1,4.7,0.1 do
    rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -1.4 + 0.1 * Cos(sine / 20)) * angles(Rad(45), Rad(0), Rad(0)), 0.15)
    tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(35), Rad(0), Rad(0)), 0.3)
    RH.C0 = clerp(RH.C0, CF(1, .4 - 0.1 * Cos(sine / 20), -.6 + 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-5), Rad(0), Rad(45)), 0.15)
    LH.C0 = clerp(LH.C0, CF(-1, -0.6 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-5), Rad(0), Rad(-0)), 0.15)
    RW.C0 = clerp(RW.C0, CF(1.5, 0.1 + 0.05 * Sin(sine / 30), -.4 + 0.025 * Cos(sine / 20)) * angles(Rad(65), Rad(0), Rad(25)), 0.1)
    LW.C0 = clerp(LW.C0, CF(-1.5, 0.1 + 0.05 * Sin(sine / 30), -.4 + 0.025 * Cos(sine / 20)) * angles(Rad(65), Rad(0), Rad(-25)), 0.1)
    end
    wait(.6)
    attack = false
end

function HAAH()
	attack = true
	hum.WalkSpeed = 0
	Cso("300208779", hed, 10, 1)
	for i = 0,9,0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 2)) * angles(Rad(-30), Rad(0), Rad(0)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-30 - 2.5 * Sin(sine / 2)), Rad(0), Rad(0)), 0.3)
		if Mrandom(1,15) == 1 then
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * CF(0, 0, 0 + ((1) - 1)) * angles(Rad(Mrandom(-15,15)), Rad(Mrandom(-15,15)), Rad(Mrandom(-15,15))), 1)
		end
		RH.C0 = clerp(RH.C0, CF(1, -1 - 0.1 * Cos(sine / 2), 0.025 * Cos(sine / 2)) * RHCF * angles(Rad(-4.5 - 7.5 * Sin(sine / 2)), Rad(0), Rad(-30)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -1 - 0.1 * Cos(sine / 2), 0.025 * Cos(sine / 2)) * LHCF * angles(Rad(-6.5 - 7.5 * Sin(sine / 2)), Rad(0), Rad(30)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 2), 0.025 * Cos(sine / 2)) * angles(Rad(-35 - 7.5 * Sin(sine / 2)), Rad(0), Rad(15 - 7.5 * Sin(sine / 2))), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 2), 0.025 * Cos(sine / 2)) * angles(Rad(-35 - 7.5 * Sin(sine / 2)), Rad(0), Rad(-15 - 7.5 * Sin(sine / 2))), 0.1)
	end
	attack = false
	hum.WalkSpeed = 16
end
function again()
        attack = true
	hum.WalkSpeed = 0
        ITAUNT:Play()
        repeat
        swait()
        ITAUNT.Parent = tors
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 20)) * angles(Rad(-20), Rad(0), Rad(0)), 0.08)
	tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(15 - 2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.08)
	RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(80), Rad(0)) * angles(Rad(-10.5), Rad(0), Rad(-25)), 0.08)
	LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-80), Rad(0)) * angles(Rad(-10.5), Rad(0), Rad(20)), 0.08)
	RW.C0 = clerp(RW.C0, CF(1.5, 0.8 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(-10 * Cos(sine / 20)), Rad(120 - 2.5 * Sin(sine / 20))), 0.1)
	LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(75), Rad(10 * Cos(sine / 20)), Rad(-0 + 2.5 * Sin(sine / 20))), 0.1)
	until ITAUNT.Playing == false
        attack = false
	hum.WalkSpeed = 16
end
function LunarSpin()
	attack = true
	hum.WalkSpeed = 0
	for i = 0,17,0.05 do
		CameraEnshaking(1, 5)
	        MagniDamage(tors, 47, 2, 5, 0, "Random Guy")
	        Effects.Spiral.Create(BrickC("Teal"), tors.CFrame * CF(0, 0, 0), 3, 3, 3, 4, 4, 4, 0.03)
		Effects.Block.Create(BrickC("Cyan"), ra.CFrame * CF(0, -1, 0), 2, 2, 2, 3, 3, 3, 0.05)
		swait()
		PixelBlock(1.5,14,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-360,360)),math.rad(math.random(-50,50))),3,3,3,0.3,maincolor,0)
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0-255.45*i)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(110)), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-110)), 0.1)
	end
	hum.WalkSpeed = 16
	attack = false
end
function Decapitate()
	local target = nil
	local targettorso = nil
	if mouse.Target.Parent ~= char and mouse.Target.Parent.Parent ~= char and mouse.Target.Parent:FindFirstChild("Humanoid") ~= nil then
		if mouse.Target.Parent.Humanoid.PlatformStand == false then
			target = mouse.Target.Parent.Humanoid
			targettorso = mouse.Target.Parent:FindFirstChild("Torso") or mouse.Target.Parent:FindFirstChild("UpperTorso")
			targethead = mouse.Target.Parent:FindFirstChild("Head")
		end
	end
	if target ~= nil then
		targettorso.Anchored = true
		attack = true
		hum.WalkSpeed = 0
		root.CFrame = targettorso.CFrame * CF(0,0,2.6)
		for i = 0,4.2,0.1 do
			swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-40)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(40)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-9), Rad(0), Rad(-10)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.6 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-8), Rad(0), Rad(10)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(115), Rad(0), Rad(35)), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(25), Rad(0), Rad(-15)), 0.1)
		end
		local ModelHead01 = New("Model", char, "", {})
        local Humanoid01 = New("Humanoid", ModelHead01, "Humanoid", {})
        local Head01 = targethead:Clone()
        targethead.Transparency = 1
        Head01.Parent = ModelHead01
        local weldHead01 = Instance.new("Weld")
        weldHead01.Parent = Head01
        weldHead01.Part0 = targethead
        weldHead01.Part1 = Head01
        weldHead01.C1 = CFrame.new(0, 0, 0)
		targethead.face:Remove()
		weldHead01.Part0 = ra
        weldHead01.C1 = CFrame.new(0, 0, 1.2) * angles(math.rad(90), math.rad(0), math.rad(0))
		targettorso:BreakJoints()
		CreateSound("314390675", targettorso, 5, .7)
		for i = 0,3.2,0.1 do
			swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(90)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(-90)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-5), Rad(0), Rad(0)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-5), Rad(0), Rad(50)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(115), Rad(20), Rad(90)), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(25), Rad(0), Rad(-15)), 0.1)
		end
		for i = 0,4.2,0.1 do
			swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-40)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(40)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-5), Rad(0), Rad(0)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-5), Rad(0), Rad(-0)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.4, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(185), Rad(0), Rad(15)), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(45), Rad(0), Rad(-15)), 0.1)
		end
		CreateSound("541909763", targettorso, 5, .8)
		weldHead01:Destroy()
        Head01.CanCollide = true
        local bodyVelocity2 = Create("BodyVelocity")({
          velocity = Vector3.new(0, 10, 0) + root.CFrame.lookVector * 50,
          P = 5000,
          maxForce = Vector3.new(8000, 8000, 8000),
          Parent = Head01
        })
        game:GetService("Debris"):AddItem(bodyVelocity2, 0.05)
		for i = 0,6.2,0.1 do
			swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(40)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(-40)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-5), Rad(0), Rad(0)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-5), Rad(0), Rad(-0)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.4, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(65), Rad(0), Rad(-15)), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(45), Rad(0), Rad(-15)), 0.1)
		end
		targettorso.Anchored = false
		attack = false
		hum.WalkSpeed = 16
		root.CFrame = targettorso.CFrame * CF(0,0,3.4)
	end
end
function BalanceSpin()
    attack = true
    hum.WalkSpeed = 2
    for i = 0,17,0.07 do
        CameraEnshaking(1, 5)
        MagniDamage(tors, 30, 7, 11, 0, "Random Guy")
        swait()
	Aura(5, 0.15, "Add", root.CFrame * CFrame.new(math.random(-25, 25), -6, math.random(-25, 25)) * CFrame.Angles(math.rad(90), 0, 0), 1.5, 1.5, 15, -0.015, maincolor, 0, "Brick")
	Aura(5, 0.15, "Add", root.CFrame * CFrame.new(math.random(-25, 25), -6, math.random(-25, 25)) * CFrame.Angles(math.rad(90), 0, 0), 1.5, 1.5, 15, -0.015, BrickColor.new("Black"), 0, "Brick")
	Aura(5, 0.15, "Add", root.CFrame * CFrame.new(math.random(-25, 25), -6, math.random(-25, 25)) * CFrame.Angles(math.rad(90), 0, 0), 1.5, 1.5, 15, -0.015, maincolor, 0, "Brick")
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0-255.45*i)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
        RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(110)), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-110)), 0.1)
    end
    hum.WalkSpeed = 16
    attack = false
end

function lolik()
	attack = true
	hum.WalkSpeed = 0
	pop:Play()
	repeat
	pop.Parent = tors
	swait()
	rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.5 + 0.02 * Cos(sine / 2)) * angles(Rad(-2), Rad(1), Rad(15)), 0.1)
	tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(19 + 1 * Cos(sine / 25)), Rad(0), Rad(-15)), 0.1)
	RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.35) * angles(Rad(90 - 2 * Cos(sine / 1)), Rad(0), Rad(-50)), 0.1)
	LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.15) * angles(Rad(70 + 2 * Cos(sine / 1)), Rad(-7), Rad(70)), 0.1)
	RH.C0 = clerp(RH.C0, CF(1, -0.5 - 0.02 * Cos(sine / 2), -0.2) * RHCF * angles(Rad(-4), Rad(0), Rad(-10 + 0.05 * math.cos(sine / 25))), 0.1)
	LH.C0 = clerp(LH.C0, CF(-1, -0.5 - 0.02 * Cos(sine / 2), -0.2) * LHCF * angles(Rad(-4), Rad(0), Rad(10 + 0.05 * Cos(sine / 25))), 0.1)
	until pop.Playing == false
	attack = false
	hum.WalkSpeed = 16
end

function BARK()
	attack = true
	hum.WalkSpeed = 0
	BATAUNT:Play()
	repeat
	BATAUNT.Parent = tors
	swait()
	rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.5 + 0.02 * Cos(sine / 2)) * angles(Rad(-2), Rad(1), Rad(15)), 0.1)
	tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(19 + 1 * Cos(sine / 25)), Rad(0), Rad(-15)), 0.1)
	RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.35) * angles(Rad(90 - 2 * Cos(sine / 1)), Rad(0), Rad(-50)), 0.1)
	LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.15) * angles(Rad(70 + 2 * Cos(sine / 1)), Rad(-7), Rad(70)), 0.1)
	RH.C0 = clerp(RH.C0, CF(1, -0.5 - 0.02 * Cos(sine / 2), -0.2) * RHCF * angles(Rad(-4), Rad(0), Rad(-10 + 0.05 * math.cos(sine / 25))), 0.1)
	LH.C0 = clerp(LH.C0, CF(-1, -0.5 - 0.02 * Cos(sine / 2), -0.2) * LHCF * angles(Rad(-4), Rad(0), Rad(10 + 0.05 * Cos(sine / 25))), 0.1)
	until BATAUNT.Playing == false
	attack = false
	hum.WalkSpeed = 16
end

function CreateSound(ID, PARENT, VOLUME, PITCH)
	local NSound = nil
	coroutine.resume(coroutine.create(function()
		NSound = Instance.new("Sound", PARENT)
		NSound.Volume = VOLUME
		NSound.Pitch = PITCH
		NSound.SoundId = "http://www.roblox.com/asset/?id="..ID
		swait()
		NSound:play()
		game:GetService("Debris"):AddItem(NSound, 10)
	end))
	return NSound
end
function nope()
	attack = true
	hum.WalkSpeed = 0
	NOTAUNT:Play()
	repeat
	NOTAUNT.Parent = tors
	swait()
	rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.5 + 0.02 * Cos(sine / 2)) * angles(Rad(-2), Rad(1), Rad(15)), 0.1)
	tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(19 + 1 * Cos(sine / 25)), Rad(0), Rad(-15)), 0.1)
	RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.35) * angles(Rad(90 - 2 * Cos(sine / 1)), Rad(0), Rad(-50)), 0.1)
	LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.15) * angles(Rad(70 + 2 * Cos(sine / 1)), Rad(-7), Rad(70)), 0.1)
	RH.C0 = clerp(RH.C0, CF(1, -0.5 - 0.02 * Cos(sine / 2), -0.2) * RHCF * angles(Rad(-4), Rad(0), Rad(-10 + 0.05 * math.cos(sine / 25))), 0.1)
	LH.C0 = clerp(LH.C0, CF(-1, -0.5 - 0.02 * Cos(sine / 2), -0.2) * LHCF * angles(Rad(-4), Rad(0), Rad(10 + 0.05 * Cos(sine / 25))), 0.1)
	until NOTAUNT.Playing == false
	attack = false
	hum.WalkSpeed = 16
end
function CreateSound(ID, PARENT, VOLUME, PITCH)
	local NSound = nil
	coroutine.resume(coroutine.create(function()
		NSound = Instance.new("Sound", PARENT)
		NSound.Volume = VOLUME
		NSound.Pitch = PITCH
		NSound.SoundId = "http://www.roblox.com/asset/?id="..ID
		swait()
		NSound:play()
		game:GetService("Debris"):AddItem(NSound, 10)
	end))
	return NSound
end
function Anime_Splosion()
	attack = true
	for i = 0,2,0.05 do
		swait()
		Effects.Block.Create(BrickC("Carnation pink"), ra.CFrame * CF(0, -1, 0), 2, 2, 2, 3, 3, 3, 0.05)
		Effects.Block.Create(BrickC("Carnation pink"), la.CFrame * CF(0, -1, 0), 2, 2, 2, 3, 3, 3, 0.05)
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-20), Rad(0), Rad(0)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-20 - 2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(-20)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(5 * Cos(sine / 20)), Rad(25)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(200), Rad(0), Rad(25 - 2.5 * Sin(sine / 20))), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(200), Rad(0), Rad(-25 + 2.5 * Sin(sine / 20))), 0.1)
	end
	CreateSound("331666100", tors, 10, 1)
	Effects.Ring.Create(BrickC("Carnation pink"), root.CFrame * CF(0, -2.3, 0) * angles(Rad(90),Rad(-1),Rad(0)), 2.5, 2.5, 40, 3, 3, 45, 0.01)
	MagniDamage(tors, 34, 25, 50, 15, "DarkUp")
	CameraEnshaking(1.5, 10)  
	for i = 1,2,0.1 do
        swait()
	PixelBlock(2,7,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2,2,2,0.3,maincolor,0)
	PixelBlock(1.5,9.5,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2,2,2,0.3,maincolor,0)
	PixelBlock(1,12,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2,2,2,0.3,maincolor,0)
	rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -1.4 + 0.1 * Cos(sine / 20)) * angles(Rad(45), Rad(0), Rad(0)), 0.8)
	tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(35), Rad(0), Rad(0)), 0.9)
	RH.C0 = clerp(RH.C0, CF(1, .4 - 0.1 * Cos(sine / 20), -.6 + 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-5), Rad(0), Rad(45)), 0.8)
	LH.C0 = clerp(LH.C0, CF(-1, -0.6 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-5), Rad(0), Rad(-0)), 0.8)
	RW.C0 = clerp(RW.C0, CF(1.5, 0.1 + 0.05 * Sin(sine / 30), -.4 + 0.025 * Cos(sine / 20)) * angles(Rad(65), Rad(0), Rad(25)), 0.75)
	LW.C0 = clerp(LW.C0, CF(-1.5, 0.1 + 0.05 * Sin(sine / 30), -.4 + 0.025 * Cos(sine / 20)) * angles(Rad(65), Rad(0), Rad(-25)), 0.75)
	end
	wait(.6)
	attack = false
end
corrupted = false
function Bark_Splosion()
	attack = true
	for i = 0,2,0.05 do
		swait()
		Effects.Block.Create(BrickC("Cool yellow"), ra.CFrame * CF(0, -1, 0), 2, 2, 2, 3, 3, 3, 0.05)
		Effects.Block.Create(BrickC("Medium stone grey"), la.CFrame * CF(0, -1, 0), 2, 2, 2, 3, 3, 3, 0.05)
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-20), Rad(0), Rad(0)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-20 - 2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(-20)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(5 * Cos(sine / 20)), Rad(25)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(200), Rad(0), Rad(25 - 2.5 * Sin(sine / 20))), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(200), Rad(0), Rad(-25 + 2.5 * Sin(sine / 20))), 0.1)
	end
	CreateSound("331666100", tors, 10, 1)
	Effects.Ring.Create(BrickC("Cool yellow"), root.CFrame * CF(0, -2.3, 0) * angles(Rad(90),Rad(-1),Rad(0)), 2.5, 2.5, 40, 3, 3, 45, 0.01)
	MagniDamage(tors, 34, 25, 50, 15, "DarkUp")
	CameraEnshaking(1.5, 10)  
	for i = 1,2,0.1 do
        swait()
	PixelBlock(2,7,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2,2,2,0.3,maincolor,0)
	PixelBlock(1.5,9.5,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2,2,2,0.3,maincolor,0)
	PixelBlock(1,12,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2,2,2,0.3,maincolor,0)
	rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -1.4 + 0.1 * Cos(sine / 20)) * angles(Rad(45), Rad(0), Rad(0)), 0.8)
	tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(35), Rad(0), Rad(0)), 0.9)
	RH.C0 = clerp(RH.C0, CF(1, .4 - 0.1 * Cos(sine / 20), -.6 + 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-5), Rad(0), Rad(45)), 0.8)
	LH.C0 = clerp(LH.C0, CF(-1, -0.6 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-5), Rad(0), Rad(-0)), 0.8)
	RW.C0 = clerp(RW.C0, CF(1.5, 0.1 + 0.05 * Sin(sine / 30), -.4 + 0.025 * Cos(sine / 20)) * angles(Rad(65), Rad(0), Rad(25)), 0.75)
	LW.C0 = clerp(LW.C0, CF(-1.5, 0.1 + 0.05 * Sin(sine / 30), -.4 + 0.025 * Cos(sine / 20)) * angles(Rad(65), Rad(0), Rad(-25)), 0.75)
	end
	wait(.6)
	attack = false
end
corrupted = false

function Taunt1000()
	attack = true
	hum.WalkSpeed = 0
	for i = 0, 9, 0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(15), Rad(0), Rad(0)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, -.2* Player_Size) * angles(Rad(0), Rad(78), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(15)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-78), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(-15)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.06 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-9), Rad(0), Rad(155 + 25 * Sin(sine / 2.5))), 0.12)
		LW.C0 = clerp(LW.C0, CF(-1* Player_Size, 0.3 + 0.06 * Sin(sine / 20)* Player_Size, .6* Player_Size) * angles(Rad(-35), Rad(25 + 2.5 * Sin(sine / 20)), Rad(55 + 2.5 * Sin(sine / 20))), 0.12)
	end
	attack = false
	hum.WalkSpeed = 16
end

function Pixel_Corrupt()
	attack = true
        corrupted = true
	for i = 0,3,0.05 do
		swait()
	rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -1.4 + 0.1 * Cos(sine / 20)) * angles(Rad(45), Rad(0), Rad(0)), 0.8)
	tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(35), Rad(0), Rad(0)), 0.9)
	RH.C0 = clerp(RH.C0, CF(1, .4 - 0.1 * Cos(sine / 20), -.6 + 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-5), Rad(0), Rad(45)), 0.8)
	LH.C0 = clerp(LH.C0, CF(-1, -0.6 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-5), Rad(0), Rad(-0)), 0.8)
	RW.C0 = clerp(RW.C0, CF(1.5, 0.1 + 0.05 * Sin(sine / 30), -.4 + 0.025 * Cos(sine / 20)) * angles(Rad(65), Rad(0), Rad(25)), 0.75)
	LW.C0 = clerp(LW.C0, CF(-1.5, 0.1 + 0.05 * Sin(sine / 30), -.4 + 0.025 * Cos(sine / 20)) * angles(Rad(65), Rad(0), Rad(-25)), 0.75)
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-20), Rad(0), Rad(0)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-20 - 2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(-20)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(5 * Cos(sine / 20)), Rad(25)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(200), Rad(0), Rad(25 - 2.5 * Sin(sine / 20))), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(200), Rad(0), Rad(-25 + 2.5 * Sin(sine / 20))), 0.1)
	end
        refa = New("Part",m,"refa",{Anchored = true, CanCollide = false,Transparency = 1,Size = Vector3.new(0.200000018, 0.299999923, 0.2),Position = mouse.Hit.p,Color = Color3.new(1, 0, 0),})
	HitboxFunction(refa.CFrame * CF(0, -0, -0), 0.01, 1, 1, 1, 20, 20, 25, 0, "Random Guy")
        BlockEffect(maincolor, refa.CFrame * CF(-0, -0, -0), 30, 30, 30, 32, 32, 32, 0.07, 1)
	CreateSound("331666100", refa, 10, 1)
	CameraEnshaking(1.5, 10)  
	coroutine.resume(coroutine.create(function() 
	for i = 1,20,0.1 do
        swait(5)
PixelBlock(2.5,11,"Add",refa.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3.5,3.5,3.5,0.3,maincolor,0)
PixelBlock(2.5,11,"Add",refa.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3.5,3.5,3.5,0.3,maincolor,0)
PixelBlock(2.5,11,"Add",refa.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3.5,3.5,3.5,0.3,maincolor,0)
PixelBlock(2.5,11,"Add",refa.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3.5,3.5,3.5,0.3,maincolor,0)
	CreateSound("331666100", refa, 10, 1)
        BlockEffect(maincolor, refa.CFrame * CF(-0, -0, -0), 22, 22, 22, 25, 25, 25, 0.041, 1)
	HitboxFunction(refa.CFrame * CF(0, -0, -0), 0.01, 1, 1, 1, 21.3, 5, 8, 0, "Random Guy")
        end
        refa:Destroy()
        corrupted = false
        end))
	for i = 1,2.5,0.1 do
        swait()
rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-20), Rad(0), Rad(0)), 0.4)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-20 - 2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.6)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(-20)), 0.4)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(5 * Cos(sine / 20)), Rad(25)), 0.4)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(200), Rad(0), Rad(25 - 2.5 * Sin(sine / 20))), 0.3)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(200), Rad(0), Rad(-25 + 2.5 * Sin(sine / 20))), 0.3)
	end
	wait(.3)
	attack = false
end

function FearMe()
	attack = true
	hum.WalkSpeed = 0
        so:Play()
        repeat
        swait()
        so.Parent = tors
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(math.random(-25,25),math.random(-25,25),math.random(-25,25)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.random(-25,25),math.random(-25,25),math.random(-25,25)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.001 * Cos(sine / 20)) * RHCF * angles (math.random(-25,25),math.random(-25,25),math.random(-25,25)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.001 * Cos(sine / 20)) * LHCF * angles(math.random(-25,25),math.random(-25,25),math.random(-25,25)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.2, 0.5 + 0.05 * Sin(sine / 30), 0.001 * Cos(sine / 20)) * angles (math.random(-25,25),math.random(-25,25),math.random(-25,25)), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.2, 0.5 + 0.05 * Sin(sine / 30), 0.001 * Cos(sine / 20)) * angles(math.random(-25,25),math.random(-25,25),math.random(-25,25)), 0.1)
	until so.Playing == false
	attack = false
	hum.WalkSpeed = 16
end

function heregoes()
	attack = true
	hum.WalkSpeed = 0
	Cso("134978657", hed, 10, 1)
	for i = 0,9,0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 2)) * angles(Rad(-30), Rad(0), Rad(0)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-30 - 2.5 * Sin(sine / 2)), Rad(0), Rad(0)), 0.3)
		if Mrandom(1,15) == 1 then
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * CF(0, 0, 0 + ((1) - 1)) * angles(Rad(Mrandom(-15,15)), Rad(Mrandom(-15,15)), Rad(Mrandom(-15,15))), 1)
		end
		RH.C0 = clerp(RH.C0, CF(1, -1 - 0.1 * Cos(sine / 2), 0.025 * Cos(sine / 2)) * RHCF * angles(Rad(-4.5 - 7.5 * Sin(sine / 2)), Rad(0), Rad(-30)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -1 - 0.1 * Cos(sine / 2), 0.025 * Cos(sine / 2)) * LHCF * angles(Rad(-6.5 - 7.5 * Sin(sine / 2)), Rad(0), Rad(30)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 2), 0.025 * Cos(sine / 2)) * angles(Rad(-35 - 7.5 * Sin(sine / 2)), Rad(0), Rad(15 - 7.5 * Sin(sine / 2))), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 2), 0.025 * Cos(sine / 2)) * angles(Rad(-35 - 7.5 * Sin(sine / 2)), Rad(0), Rad(-15 - 7.5 * Sin(sine / 2))), 0.1)
	end
	attack = false
	hum.WalkSpeed = 16
end
function again()
        attack = true
	hum.WalkSpeed = 0
        ITAUNT:Play()
        repeat
        swait()
        ITAUNT.Parent = tors
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 20)) * angles(Rad(-20), Rad(0), Rad(0)), 0.08)
	tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(15 - 2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.08)
	RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(80), Rad(0)) * angles(Rad(-10.5), Rad(0), Rad(-25)), 0.08)
	LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-80), Rad(0)) * angles(Rad(-10.5), Rad(0), Rad(20)), 0.08)
	RW.C0 = clerp(RW.C0, CF(1.5, 0.8 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(-10 * Cos(sine / 20)), Rad(120 - 2.5 * Sin(sine / 20))), 0.1)
	LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(75), Rad(10 * Cos(sine / 20)), Rad(-0 + 2.5 * Sin(sine / 20))), 0.1)
	until ITAUNT.Playing == false
        attack = false
	hum.WalkSpeed = 16
end

function thing()
    attack = true
        timetofly = false
    hum.WalkSpeed = 0.05
        Character.Head.face.Texture = "rbxassetid://705269463"
        Cause_Im_having_a_good_time_having_a_good_time:Play()
        Cause_Im_having_a_good_time_having_a_good_time.TimePosition = 35.3
        Humanoid.JumpPower = 0
    for i = 0,300,0.1 do --thatsalongtime
        swait()
        CameraEnshaking(1, 7)
            HitboxFunction(ll.CFrame, 0.01, 1, 1, 1, 7, 75, 500, 100, "Knockdown")
                Cause_Im_having_a_good_time_having_a_good_time.Parent = hed
                root.Velocity = root.CFrame.lookVector * 225
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0-255.45*i), Rad(0), Rad(0)), 0.3)
        RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0-255.45*i)), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0-255.45*i)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-75), Rad(0), Rad(0)), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-75), Rad(0), Rad(0)), 0.1)
    end
        Cause_Im_having_a_good_time_having_a_good_time:Stop()
    attack = false
        Humanoid.JumpPower = 50
        Character.Head.face.Texture = "rbxassetid://620619801"
    hum.WalkSpeed = 16
        wait(45)
        timetofly = true
        warn("You can FLY SKY HIGH Now! Go Nuts!") --please dont go nuts
end

function DANCEFORME()
    attack = true
        Character.Head.face.Texture = "rbxassetid://183225545"
        MERKIO:Play()
        repeat
    for i = 0,0.7,0.2 do
        swait()
                MERKIO.Parent = tors
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.8)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.9)
        RH.C0 = clerp(RH.C0, CF(1.8, -0.1 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.8)
        LH.C0 = clerp(LH.C0, CF(-1.8, -0.1 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.8)
        RW.C0 = clerp(RW.C0, CF(1.5, 0.7 + 0.1 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(115)), 0.77)
        LW.C0 = clerp(LW.C0, CF(-1.5, 0.7 + 0.1 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-115)), 0.67)
    end
        for i = 0,0.7,0.2 do
                swait()
                MERKIO.Parent = tors
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.8)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0), Rad(0), Rad(0)), 0.9)
        RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.8)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.8)
        RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(90)), 0.7)
        LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-90)), 0.7)
        end
        until MERKIO.Playing == false
        MERKIO:Stop()
        Character.Head.face.Texture = "rbxassetid://620619801"
    attack = false
    hum.WalkSpeed = 16
end

function HAA55() --ik
    attack = true
    hum.WalkSpeed = 1.01
        Character.Head.face.Texture = "rbxassetid://111523405"
    CreateSound("1395854043", hed, 10, 1)
    for i = 0,14,0.1 do
        swait()
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
        RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.3, 0.9 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-145)), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.3, 0.9 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(145)), 0.1)
    end
    attack = false
        Character.Head.face.Texture = "rbxassetid://620619801"
    hum.WalkSpeed = 16
end

function DistortThem()
    CanUse = false
    local HIT = tors.Touched:Connect(function(hit)
    Kill(hit.Parent)
    end)
    for i = 1, 350 do
                    swait()
                    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.8) * angles(math.rad(125), math.rad(0), math.rad(10)), 0.1)
                    CreateSound("333430981", hed, 1.5, 1)
                    RA.Parent = ra
                    LA.Parent = la
                    FT.Parent = tors
                    RL.Parent = rl
                    LL.Parent = ll
        for _,v in next, char:GetDescendants() do
            if(v:IsA'DataModelMesh')then
                v.Offset = Vector3.new(math.random(-50,50)/100,math.random(-50,50)/100,math.random(-50,50)/100)
            end
        end
        end
        FT.Parent = nil
        RA.Parent = nil
        LA.Parent = nil
        RL.Parent = nil
        LL.Parent = nil
        for _,v in next, char:GetDescendants() do
            if(v:IsA'DataModelMesh')then
                v.Offset = Vector3.new(0,0,0)
            end
        end
        HIT:Disconnect()
        wait(3.5)
        CanUse = true
end

function targett()
if mouse.Target.Parent ~= char and mouse.Target.Parent.Parent ~= char and mouse.Target.Parent:FindFirstChild("Humanoid") ~= nil then
TargetSelect(mouse.Target.Parent)
CreateSound("743521450", char, 1, .8)
end
end

function un_fun()
        attack = true
	hum.WalkSpeed = 0
        BTAUNT:Play()
        repeat
        swait()
        BTAUNT.Parent = tors
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 20)) * angles(Rad(10), Rad(0), Rad(0)), 0.08)
	tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(25 - 2.5 * Sin(sine / 30)), Rad(0), Rad(-2.5 * Cos(sine / 1.5))), 0.08)
	RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(80), Rad(0)) * angles(Rad(-10.5), Rad(-2.5 * Cos(sine / 1.5)), Rad(10)), 0.08)
	LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-80), Rad(0)) * angles(Rad(-10.5), Rad(-2.5 * Cos(sine / 1.5)), Rad(-10)), 0.08)
        RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-.6), Rad(210)), 0.08)
	LW.C0 = clerp(LW.C0, CF(-1 * Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, .6* Player_Size) * angles(Rad(-20), Rad(-.6), Rad(43)), 0.08)
	until BTAUNT.Playing == false
        attack = false
	hum.WalkSpeed = 16
end
function thisisit()
        attack = true
	hum.WalkSpeed = 0
        STAUNT:Play()
        repeat
        swait()
        STAUNT.Parent = tors
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 1 + 0.5 * Player_Size * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.08)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(15 - 2.5 * Sin(sine / 30)), Rad(20), Rad(0)), 0.08)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.3 - 0.1 * Cos(sine / 20)* Player_Size, -.4* Player_Size) * angles(Rad(0), Rad(80), Rad(0)) * angles(Rad(-10.5 + 3.5 * Sin(sine / 20)), Rad(0), Rad(-20)), 0.08)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-80), Rad(0)) * angles(Rad(-10.5 + 3.5 * Sin(sine / 20)), Rad(0), Rad(20)), 0.08)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.9 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(130)), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.9 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-130)), 0.1)
	until STAUNT.Playing == false
        attack = false
	hum.WalkSpeed = 16
end
function PENIS()
        attack = true
	hum.WalkSpeed = 0
        NOSOUND:Play()
        repeat
        swait()
        NOSOUND.Parent = tors
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 1 + 0.5 * Player_Size * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.08)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(15 - 2.5 * Sin(sine / 30)), Rad(20), Rad(0)), 0.08)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.3 - 0.1 * Cos(sine / 20)* Player_Size, -.4* Player_Size) * angles(Rad(0), Rad(80), Rad(0)) * angles(Rad(-10.5 + 3.5 * Sin(sine / 20)), Rad(0), Rad(-20)), 0.08)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-80), Rad(0)) * angles(Rad(-10.5 + 3.5 * Sin(sine / 20)), Rad(0), Rad(20)), 0.08)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.9 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(130)), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.9 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-130)), 0.1)
	until NOSOUND.Playing == false
        attack = false
	hum.WalkSpeed = 16
end
function Exploit()
        exploitable = false
	Cso("907332670", tors, 10, 1.05)
	coroutine.resume(coroutine.create(function() 
	for i = 1,20,0.1 do
        swait()
	BlockEffect(maincolor, tors.CFrame * CF(math.random(-2, 2), math.random(-2, 2), math.random(-2, 2)), 4, 4, 4, 0.8, 0.8, 0.8, 0.05, 1)
        end
	Cso("12222030", tors, 10, 1.05)
        BlockEffect(maincolor, tors.CFrame * CF(0, 0, 0), 17, 17, 17, 20, 20, 20, 0.04, 1)
	for i, v in pairs(FindNearestHead(tors.CFrame.p, 27)) do
		if v:FindFirstChild("Head") then
                        Eviscerate(v)
                        SoulSteal(v)
		end
	end
        wait(15)
        exploitable = true
        end))
end
function wutdefaq()
        attack = true
	hum.WalkSpeed = 0
        WTF:Play()
        repeat
        swait()
        WTF.Parent = tors
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 1 + 0.5 * Player_Size * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.08)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(15 - 2.5 * Sin(sine / 30)), Rad(20), Rad(0)), 0.08)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.3 - 0.1 * Cos(sine / 20)* Player_Size, -.4* Player_Size) * angles(Rad(0), Rad(80), Rad(0)) * angles(Rad(-10.5 + 3.5 * Sin(sine / 20)), Rad(0), Rad(-20)), 0.08)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-80), Rad(0)) * angles(Rad(-10.5 + 3.5 * Sin(sine / 20)), Rad(0), Rad(20)), 0.08)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.9 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(130)), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.9 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-130)), 0.1)
	until STAUNT.Playing == false
        attack = false
	hum.WalkSpeed = 16
end
function Exploit()
        exploitable = false
	Cso("135017578", tors, 10, 1.05)
	coroutine.resume(coroutine.create(function() 
	for i = 1,20,0.1 do
        swait()
	BlockEffect(maincolor, tors.CFrame * CF(math.random(-2, 2), math.random(-2, 2), math.random(-2, 2)), 4, 4, 4, 0.8, 0.8, 0.8, 0.05, 1)
        end
	Cso("160718677", tors, 10, 1.05)
        BlockEffect(maincolor, tors.CFrame * CF(0, 0, 0), 17, 17, 17, 20, 20, 20, 0.04, 1)
	for i, v in pairs(FindNearestHead(tors.CFrame.p, 27)) do
		if v:FindFirstChild("Head") then
                        Eviscerate(v)
                        SoulSteal(v)
		end
	end
        wait(15)
        exploitable = true
        end))
end
function ASCENTION()
	attack = true
	hum.WalkSpeed = 0
	Cso("987502413", tors, 10, 1.05)
        local vel2 = Instance.new("BodyVelocity",tors)
        vel2.Velocity = Vector3.new(0,30,0)
        vel2.MaxForce = Vector3.new(10000000,10000000,10000000)
	for i = 0,20,0.1 do
	HitboxFunction(tors.CFrame * CF(0, -0, -0), 0.01, 1, 1, 1, 7, 10, 20, 20, "Random Guy")
		swait()
                BlockEffect(maincolor, ra.CFrame * CF(-0, -1, -0), 4, 4, 4, 5, 5, 5, 0.07, 1)
                BlockEffect(maincolor, la.CFrame * CF(-0, -1, -0), 4, 4, 4, 5, 5, 5, 0.07, 1)
		CameraEnshaking(1, 4)
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0-255.45*i)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(90)), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-90)), 0.1)
	end
	hum.WalkSpeed = 16
        vel2:Destroy()
	attack = false
end

function Taunt1()
    attack = true
    hum.WalkSpeed = 3.01
    Cso("1535994137", hed, 10, 1)
    for i = 0, 9, 0.1 do
        swait()
        hum.CameraOffset = Vector3.new(0, -0.1 + 0.1 * Cos(sine / 20), 0.1)
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(30)), 0.1)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-2.5 * Sin(sine / 3.5)), Rad(0), Rad(-30)), 0.1)
        RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(86), Rad(0)) * angles(Rad(-5), Rad(0), Rad(0)), 0.1)
        LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-86), Rad(0)) * angles(Rad(-5), Rad(0), Rad(0)), 0.1)
        RW.C0 = clerp(RW.C0, CF(1* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, -.8* Player_Size) * angles(Rad(10), Rad(-20), Rad(-90)), 0.2)
        LW.C0 = clerp(LW.C0, CF(-1* Player_Size, 0 + 0.025 * Sin(sine / 20)* Player_Size, -.8* Player_Size) * angles(Rad(6), Rad(20), Rad(90)), 0.2)
    end
    hum.WalkSpeed = 16
    attack = false
end

function Destruction()
    attack = true
    local Ring1 = Instance.new("Part", char)
    Ring1.Anchored = true
    Ring1.BrickColor = maincolor
    Ring1.CanCollide = false
    Ring1.FormFactor = 3
    Ring1.Name = "Ring"
    Ring1.Material = "Neon"
    Ring1.Size = Vector3.new(1, 0.05, 1)
    Ring1.Transparency = 1
    Ring1.TopSurface = 0
    Ring1.BottomSurface = 0
    local Ring1Mesh = Instance.new("SpecialMesh", Ring1)
    Ring1Mesh.MeshType = "Brick"
    Ring1Mesh.Name = "SizeMesh"
    Ring1Mesh.Scale = Vector3.new(0, 1, 0)
    local InnerRing1 = Ring1:Clone()
    InnerRing1.Parent = char
    InnerRing1.Transparency = 0
    InnerRing1.BrickColor = BrickColor.new("New Yeller")
    InnerRing1.Size = Vector3.new(1, 1, 1)
    local InnerRing1Mesh = InnerRing1.SizeMesh
    InnerRing1Mesh.Scale = Vector3.new(0, 0, 0)
    InnerRing1Mesh.MeshType = "Sphere"
    Ring1:Destroy()
    for i = 0, 5, 0.1 do
        swait()
        SphereAura(7, 0.12, "Add", ra.CFrame * CF(0,-2,0) * angles(Rad(Mrandom(-360, 360)), Rad(Mrandom(-360, 360)), Rad(Mrandom(-360, 360))), 0.5, 0.5, 5, -0.005, maincolor, 0)
        SphereAura(7, 0.12, "Add", ra.CFrame * CF(0,-2,0) * angles(Rad(Mrandom(-360, 360)), Rad(Mrandom(-360, 360)), Rad(Mrandom(-360, 360))), 0.5, 0.5, 5, -0.005, BrickC("Institutional white"), 0)
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(5), Rad(0), Rad(0)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-4.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
        RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-12.5 + 3 * Sin(sine / 20)), Rad(0), Rad(0 + 2.5 * Sin(sine / 20))), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5 + 3 * Sin(sine / 20)), Rad(0), Rad(0 + 2.5 * Sin(sine / 20))), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.1, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(0), Rad(-25)), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.1, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(0), Rad(25)), 0.1)
        root.CFrame = FaceMouse()[1]
    end
    InnerRing1.Transparency = 1
    InnerRing1.CFrame = root.CFrame * CF(0, 0.5, 0) + root.CFrame.lookVector * 5
    CreateSound("294188875", char, 2.3, 1)
    local a = IT("Part", char)
    a.Name = "Direction"
    a.Anchored = true
    a.BrickColor = maincolor
    a.Material = "Neon"
    a.Transparency = 0
    a.Shape = "Cylinder"
    a.CanCollide = false
    local a2 = IT("Part", char)
    a2.Name = "Direction"
    a2.Anchored = true
    a2.BrickColor = maincolor
    a2.Color = maincolor.Color
    a2.Material = "Neon"
    a2.Transparency = 0.5
    a2.Shape = "Cylinder"
    a2.CanCollide = false
    local ba = IT("Part", char)
    ba.Name = "HitDirect"
    ba.Anchored = true
    ba.BrickColor = maincolor
    ba.Material = "Neon"
    ba.Transparency = 1
    ba.CanCollide = false
    local ray = Ray.new(InnerRing1.CFrame.p, (mouse.Hit.p - InnerRing1.CFrame.p).unit * 1000)
    local ignore = char
    local hit, position, normal = workspace:FindPartOnRay(ray, ignore)
    a.BottomSurface = 10
    a.TopSurface = 10
    a2.BottomSurface = 10
    a2.TopSurface = 10
    local distance = (InnerRing1.CFrame.p - position).magnitude
    a.Size = Vector3.new(distance, 1, 1)
    a.CFrame = CF(InnerRing1.CFrame.p, position) * CF(0, 0, -distance / 2)
    a2.Size = Vector3.new(distance, 1, 1)
    a2.CFrame = CF(InnerRing1.CFrame.p, position) * CF(0, 0, -distance / 2)
    ba.CFrame = CF(InnerRing1.CFrame.p, position) * CF(0, 0, -distance)
    a.CFrame = a.CFrame * angles(0, Rad(90), 0)
    a2.CFrame = a2.CFrame * angles(0, Rad(90), 0)
    game:GetService("Debris"):AddItem(a, 20)
    game:GetService("Debris"):AddItem(a2, 20)
    game:GetService("Debris"):AddItem(ba, 20)
    local msh = Instance.new("SpecialMesh", a)
    msh.MeshType = "Sphere"
    msh.Scale = Vector3.new(1, 25, 25)
    local msh2 = Instance.new("SpecialMesh", a2)
    msh2.MeshType = "Sphere"
    msh2.Scale = Vector3.new(1, 30, 30)
    for i = 0, 10, 0.1 do
        swait()
        root.CFrame = FaceMouse()[1]
        hum.CameraOffset = Vector3.new(Mrandom(-1,1),0,Mrandom(-1,1))
        a2.Color = maincolor.Color
        InnerRing1.CFrame = root.CFrame * CF(0, 0.5, 0) + root.CFrame.lookVector * 4
        ray = Ray.new(InnerRing1.CFrame.p, (mouse.Hit.p - InnerRing1.CFrame.p).unit * 1000)
        hit, position, normal = workspace:FindPartOnRay(ray, ignore)
        distance = (InnerRing1.CFrame.p - position).magnitude
        a.Size = Vector3.new(distance, 1, 1)
        a.CFrame = CF(InnerRing1.CFrame.p, position) * CF(0, 0, -distance / 2)
        a2.Size = Vector3.new(distance, 1, 1)
        a2.CFrame = CF(InnerRing1.CFrame.p, position) * CF(0, 0, -distance / 2)
        ba.CFrame = CF(InnerRing1.CFrame.p, position) * CF(0, 0, -distance)
        a.CFrame = a.CFrame * angles(0, Rad(90), 0)
        a2.CFrame = a2.CFrame * angles(0, Rad(90), 0)
        msh.Scale = msh.Scale - Vector3.new(0, 0.25, 0.25)
        msh2.Scale = msh2.Scale - Vector3.new(0, 0.3, 0.3)
        SphereAura(5, 0.15, "Add", ba.CFrame * angles(Rad(Mrandom(-360, 360)), Rad(Mrandom(-360, 360)), Rad(Mrandom(-360, 360))), 15, 15, 25, -0.15, maincolor, 0)
        SphereAura(5, 0.15, "Add", ba.CFrame * angles(Rad(Mrandom(-360, 360)), Rad(Mrandom(-360, 360)), Rad(Mrandom(-360, 360))), 15, 15, 25, -0.15, maincolor, 0)
        for i, v in pairs(FindNearestHead(ba.CFrame.p, 14.5)) do
        if v:FindFirstChild("Head") then
            Eviscerate(v)
            SoulSteal(v)
        end
    end
    end
    a:Destroy()
    a2:Destroy()
    ba:Destroy()
    InnerRing1:Destroy()
    attack = false
    hum.CameraOffset = Vector3.new(0,0,0)
end

function Flame_Burst()
	local target = nil
	local targettorso = nil
	if mouse.Target.Parent ~= char and mouse.Target.Parent.Parent ~= char and mouse.Target.Parent:FindFirstChild("Humanoid") ~= nil then
		if mouse.Target.Parent.Humanoid.PlatformStand == false then
			target = mouse.Target.Parent.Humanoid
			target2 = mouse.Target.Parent
			targettorso = mouse.Target.Parent:FindFirstChild("Torso") or mouse.Target.Parent:FindFirstChild("UpperTorso")
		end
	end
	if target ~= nil then
		attack = true
		hum.WalkSpeed = 0
		for i = 0, 3.4, 0.1 do
			swait()
			hum.WalkSpeed = 0
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0 - 0.04 * Sin(sine / 24) * Player_Size, 0 + 0.04 * Sin(sine / 12) * Player_Size, 0 + 0.05 * Player_Size * Cos(sine / 12)) * angles(Rad(0 - 2.5 * Sin(sine / 12)), Rad(0 - 2.5 * Sin(sine / 24)), Rad(45)), 0.1)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(15), Rad(0), Rad(-45)), 0.1)
			RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0.06  - 0.05 * Player_Size * Cos(sine / 12), -0.01 * Player_Size) * angles(Rad(0 - 2.5 * Sin(sine / 12)), Rad(79), Rad(0)) * angles(Rad(-6 - 2.5 * Sin(sine / 24)), Rad(0), Rad(0)), 0.1)
			LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0.06  - 0.05 * Player_Size * Cos(sine / 12), -0.01 * Player_Size) * angles(Rad(0 - 2.5 * Sin(sine / 12)), Rad(-79), Rad(0)) * angles(Rad(-6 + 2.5 * Sin(sine / 24)), Rad(0), Rad(0)), 0.1)
			RW.C0 = clerp(RW.C0, CF(1.5 * Player_Size, 0.5 + 0.02 * Sin(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(90), Rad(-15), Rad(46 + 4.5 * Sin(sine / 12))), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5 * Player_Size, 0.5 + 0.02 * Sin(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(25), Rad(-.6), Rad(-46 - 4.5 * Sin(sine / 12))), 0.1)
		end
		--targettorso:BreakJoints()
		for i = 0, 3.4, 0.1 do
			swait()
			hum.WalkSpeed = 0
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0 - 0.04 * Sin(sine / 24) * Player_Size, 0 + 0.04 * Sin(sine / 12) * Player_Size, 0 + 0.05 * Player_Size * Cos(sine / 12)) * angles(Rad(0 - 2.5 * Sin(sine / 12)), Rad(0 - 2.5 * Sin(sine / 24)), Rad(45)), 0.1)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(15), Rad(0), Rad(-45)), 0.1)
			RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0.06  - 0.05 * Player_Size * Cos(sine / 12), -0.01 * Player_Size) * angles(Rad(0 - 2.5 * Sin(sine / 12)), Rad(79), Rad(0)) * angles(Rad(-6 - 2.5 * Sin(sine / 24)), Rad(0), Rad(0)), 0.1)
			LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0.06  - 0.05 * Player_Size * Cos(sine / 12), -0.01 * Player_Size) * angles(Rad(0 - 2.5 * Sin(sine / 12)), Rad(-79), Rad(0)) * angles(Rad(-6 + 2.5 * Sin(sine / 24)), Rad(0), Rad(0)), 0.1)
			RW.C0 = clerp(RW.C0, CF(1.5 * Player_Size, 0.5 + 0.02 * Sin(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(135), Rad(-.6), Rad(46 + 4.5 * Sin(sine / 12))), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5 * Player_Size, 0.5 + 0.02 * Sin(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(25), Rad(-.6), Rad(-46 - 4.5 * Sin(sine / 12))), 0.1)
		end
		for i, v in pairs(target2:GetChildren()) do
			if(not char:IsAncestorOf(v))then
				local hum = (v and v.Parent and v.Parent:FindFirstChildOfClass'Humanoid')
				local hedder = (v and v.Parent and v.Parent:FindFirstChild'Head')
				if(hum and hedder and hum.Health > 0)then
				Eviscerate(v.Parent)
			end
			end
		end
		attack = false
		hum.WalkSpeed = 16
	end
end

function GIMME_THOSE()
    attack = true
    chatfunc("BURN....", BrickColor.random().Color)
    for i = 0,5.2,0.1 do
        swait()
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-20), Rad(0), Rad(0)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-20 - 2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
        RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(-20)), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.3 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(5 * Cos(sine / 20)), Rad(25)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(135), Rad(0), Rad(-45 - 2.5 * Sin(sine / 20))), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(135), Rad(0), Rad(45 + 2.5 * Sin(sine / 20))), 0.1)
    end
    chatfunc("IN....", BrickColor.random().Color)
    wait(2)
    CreateSound("331666100", char, 10, 1)
    Effects.Sphere.Create(BrickColor.Random(), root.CFrame * CF(0, -1, 0), 2, 2, 2, 10.6, 10.6, 10.6, 0.05)
    Effects.Sphere.Create(BrickColor.Random(), root.CFrame * CF(0, -1, 0), 2, 2, 2, 10.6, 10.6, 10.6, 0.05)
    Effects.Sphere.Create(BrickColor.Random(), root.CFrame * CF(0, -1, 0), 2, 2, 2, 10.6, 10.6, 10.6, 0.05)
    Effects.Sphere.Create(BrickColor.Random(), root.CFrame * CF(0, -1, 0), 2, 2, 2, 10.6, 10.6, 10.6, 0.05)
    Effects.Sphere.Create(BrickColor.Random(), root.CFrame * CF(0, -1, 0), 2, 2, 2, 10.6, 35.6, 10.6, 0.05)
    Effects.Sphere.Create(BrickColor.Random(), root.CFrame * CF(0, -3, 0), 2, 2, 2, 150.6, .4, 150.6, 0.05)
    chatfunc("HELL!!!!!", BrickColor.random().Color)
    for i, v in pairs(FindNearestHead(tors.CFrame.p, 52.5)) do
        if v:FindFirstChild("Head") then
            Eviscerate(v)
            SoulSteal(v)
        end
    end
    coroutine.resume(coroutine.create(function()
        for i = 0,2.8,0.1 do
            swait()
            hum.CameraOffset = Vector3.new(Mrandom(-3,3),Mrandom(-3,3),Mrandom(-3,3))
        end
        for i = 0,1.8,0.1 do
            swait()
        hum.CameraOffset = Vector3.new(0,0,0)
        end
    end))
    for i = 0,3.7,0.1 do
        SphereAura(2.5, 0.75, "Add", root.CFrame * CFrame.new(math.random(-52.5, 52.5), -5, math.random(-52.5, 52.5)) * CFrame.Angles(math.rad(90 + math.rad(math.random(-45, 45))), math.rad(math.random(-45, 45)), math.rad(math.random(-45, 45))), 2.5, 2.5, 25, -0.025, BrickColor.random(), 0)
        SphereAura(2.5, 0.75, "Add", root.CFrame * CFrame.new(math.random(-52.5, 52.5), -5, math.random(-52.5, 52.5)) * CFrame.Angles(math.rad(90 + math.rad(math.random(-45, 45))), math.rad(math.random(-45, 45)), math.rad(math.random(-45, 45))), 2.5, 2.5, 25, -0.025, BrickColor.random(), 0)
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(20), Rad(0), Rad(0)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(20 - 2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
        RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(20)), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(5 * Cos(sine / 20)), Rad(-25)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(-40), Rad(0), Rad(25 - 2.5 * Sin(sine / 20))), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(-40), Rad(0), Rad(-25 + 2.5 * Sin(sine / 20))), 0.1)
    end
    wait(.6)
    CreateSound("907332997", hed, 10, 1)
    attack = false
end

function Eruption()
    attack = true
    hum.WalkSpeed = 2
        hum.JumpPower = 0
    for i = 0,7,0.1 do
            HitboxFunction(tors.CFrame, 0.01, 1, 1, 1, 7, 5, 10, 1, "Normal")
        swait()
        Effects.Block.Create(BrickC("Really black"), ra.CFrame * CF(0, -1, 0), 2, 2, 2, 3, 3, 3, 0.05)
        Effects.Block.Create(BrickC("Really black"), la.CFrame * CF(0, -1, 0), 2, 2, 2, 3, 3, 3, 0.05)
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0-255.45*i)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
        RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(110)), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-45)), 0.1)
    end
    CreateSound("144699494", tors, 10, 1)
    Effects.Ring.Create(BrickC("Really black"), root.CFrame * CF(0, -2.7, 0) * angles(Rad(90),Rad(0),Rad(0)), 1, 1, 1, 1.6, 1.6, 1.6, 0.02)
    Effects.Ring.Create(BrickC("Really black"), root.CFrame * CF(0, -2.3, 0) * angles(Rad(90),Rad(0),Rad(0)), 1, 1, 1, 3.6, 3.6, 3.6, 0.02)
    Effects.Ring.Create(BrickC("Really black"), root.CFrame * CF(0, -1.7, 0) * angles(Rad(90),Rad(0),Rad(0)), 1, 1, 1, 5.6, 5.6, 5.6, 0.02)
    Effects.Ring.Create(BrickC("Really black"), root.CFrame * CF(0, -1.3, 0) * angles(Rad(90),Rad(0),Rad(0)), 1, 1, 1, 8.6, 8, 8, 0.03)
    MagniDamage(tors, 30, 40, 75, 7, "DarkUp")
    coroutine.resume(coroutine.create(function()
        for i = 0,1.8,0.1 do
            swait()
            hum.CameraOffset = Vector3.new(Mrandom(-4,4),Mrandom(-4,4),Mrandom(-4,4))
        end
        for i = 0,1.8,0.1 do
            swait()
        hum.CameraOffset = Vector3.new(0,0,0)
        end
    end))
        local vel2 = Instance.new("BodyVelocity",tors)
        vel2.Velocity = Vector3.new(0,55,0)
        vel2.MaxForce = Vector3.new(10000000,10000000,10000000)
    for i = 0,4,0.1 do
            HitboxFunction(tors.CFrame, 0.01, 1, 1, 1, 7, 20, 35, 3, "Normal")
        swait()
        Effects.Block.Create(BrickC("Really black"), ra.CFrame * CF(0, -1, 0), 2, 2, 2, 3, 3, 3, 0.05)
        Effects.Block.Create(BrickC("Really black"), la.CFrame * CF(0, -1, 0), 2, 2, 2, 3, 3, 3, 0.05)
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0-255.45*i)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
        RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(110)), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-45)), 0.1)
    end
    hum.WalkSpeed = 16
        vel2:Destroy()
        hum.JumpPower = 50
    attack = false
end

function Solar_Flare2()
    attack = true
    hum.WalkSpeed = 2
        hum.JumpPower = 75
        hum.Jump = true
        wait(0.4)
    CreateSound("144699494", tors, 10, 1)
        hum.JumpPower = 0
    Effects.Ring.Create(BrickC("Deep orange"), root.CFrame * CF(0, -2.7, 0) * angles(Rad(0),Rad(0),Rad(0)), .2, .2, .2, .6, .6, .6, 0.02)
    Effects.Ring.Create(BrickC("New Yeller"), root.CFrame * CF(0, -2.3, 0) * angles(Rad(0),Rad(0),Rad(0)), .2, .2, .2, 1.6, 1.6, 1.6, 0.02)
    Effects.Ring.Create(BrickC("Deep orange"), root.CFrame * CF(0, -1.7, 0) * angles(Rad(0),Rad(0),Rad(0)), .2, .2, .2, 2.6, 2.6, 2.6, 0.02)
    for i = 0,20,0.1 do
                root.Velocity = root.CFrame.lookVector * 60
            HitboxFunction(tors.CFrame, 0.01, 1, 1, 1, 14, 25, 35, 0, "Freeze")
        swait()
        Effects.Block.Create(BrickC("Deep orange"), ra.CFrame * CF(0, -1, 0), 2, 2, 2, 12, 12, 12, 0.05)
        Effects.Block.Create(BrickC("New Yeller"), la.CFrame * CF(0, -1, 0), 2, 2, 2, 12, 12, 12, 0.05)
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(90), Rad(0), Rad(0-255.45*i)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
        RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(90)), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-90)), 0.1)
    end
    hum.WalkSpeed = 16
        hum.JumpPower = 50
    attack = false
end

function Solar_Flare()
    attack = true
    hum.WalkSpeed = 2
        hum.JumpPower = 75
        hum.Jump = true
        wait(0.4)
    CreateSound("144699494", tors, 10, 1)
        hum.JumpPower = 0
    Effects.Ring.Create(BrickC("Really black"), root.CFrame * CF(0, -2.7, 0) * angles(Rad(0),Rad(0),Rad(0)), .2, .2, .2, .6, .6, .6, 0.02)
    Effects.Ring.Create(BrickC("Really black"), root.CFrame * CF(0, -2.3, 0) * angles(Rad(0),Rad(0),Rad(0)), .2, .2, .2, 1.6, 1.6, 1.6, 0.02)
    Effects.Ring.Create(BrickC("Really black"), root.CFrame * CF(0, -1.7, 0) * angles(Rad(0),Rad(0),Rad(0)), .2, .2, .2, 2.6, 2.6, 2.6, 0.02)
    for i = 0,20,0.1 do
                root.Velocity = root.CFrame.lookVector * 60
            HitboxFunction(tors.CFrame, 0.01, 1, 1, 1, 14, 25, 35, 0, "Freeze")
        swait()
        Effects.Block.Create(BrickC("Really black"), ra.CFrame * CF(0, -1, 0), 2, 2, 2, 12, 12, 12, 0.05)
        Effects.Block.Create(BrickC("Really black"), la.CFrame * CF(0, -1, 0), 2, 2, 2, 12, 12, 12, 0.05)
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(90), Rad(0), Rad(0-255.45*i)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
        RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(90)), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-90)), 0.1)
    end
    hum.WalkSpeed = 16
        hum.JumpPower = 50
    attack = false
end
function dmg(dude)
if dude.Name ~= char then
dude:FindFirstChildOfClass("Humanoid").PlatformStand = true
local bgf = Instance.new("BodyGyro",dude.Head)
bgf.CFrame = bgf.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0)
local val = Instance.new("BoolValue",dude)
val.Name = "IsHit"
local torsy = dude:FindFirstChild("UpperTorso") or dude:FindFirstChild("Torso")
local partasdeff = Instance.new("ParticleEmitter",torsy)
partasdeff.Color = ColorSequence.new(Color3.new(1, 0, 0), Color3.new(.5, 0, 0))
partasdeff.LightEmission = .1
partasdeff.Size = NumberSequence.new(0.2)
partasdeff.Texture = "rbxassetid://771221224"
aaa = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.2),NumberSequenceKeypoint.new(1, 5)})
bbb = NumberSequence.new({NumberSequenceKeypoint.new(0, 1),NumberSequenceKeypoint.new(0.0636, 0), NumberSequenceKeypoint.new(1, 1)})
partasdeff.Transparency = bbb
partasdeff.Size = aaa
partasdeff.ZOffset = .9
partasdeff.Acceleration = Vector3.new(0, -5, 0)
partasdeff.LockedToPart = false
partasdeff.EmissionDirection = "Back"
partasdeff.Lifetime = NumberRange.new(1, 2)
partasdeff.Rate = 1000
partasdeff.Rotation = NumberRange.new(-100, 100)
partasdeff.RotSpeed = NumberRange.new(-100, 100)
partasdeff.Speed = NumberRange.new(6)
partasdeff.VelocitySpread = 10000
partasdeff.Enabled=false
partasdeff:Emit(30)
coroutine.wrap(function()
targetted = nil
swait(30)
dude:BreakJoints()
swait(5)
dude:FindFirstChildOfClass("Humanoid"):Destroy()
for i=0,1,.05 do
for a,v in pairs(dude:GetChildren()) do
if v:IsA("BasePart") then
v.Transparency = i
end
end
swait()
end
for a,v in pairs(dude:GetChildren()) do
if v:IsA("BasePart") and v:FindFirstChild("ParticleEmitter") then
v.ParticleEmitter.Enabled = false
end
game:service'Debris':AddItem(v,2)
end
end)()
end
end
function kdown(dd)
if dd.Name ~= char then
dd.Humanoid.PlatformStand = true
local bgf = Instance.new("BodyGyro",dd.Head)
bgf.CFrame = bgf.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0)
local val = Instance.new("BoolValue",dd)
val.Name = "IsHit"
end
end
function TargetSelect(person)
local dd=coroutine.wrap(function()
if targetted ~= person then
targetted = person
img2.Size = UDim2.new(1,0,1,0)
img2.ImageTransparency = 0
img2.Position = UDim2.new(0,0,0,0)
for i = 0, 2, 0.1 do
swait()
img2.Size = img2.Size + UDim2.new(.05,0,.05,0)
img2.Position = img2.Position + UDim2.new(-.025,0,-.025,0)
img2.ImageTransparency = img2.ImageTransparency + 0.05
end
end
end)
dd()
end
function Oh_No_AN_ERROR_Has_OcccccccurrEEEED()
    attack = true
    hum.WalkSpeed = 0
    if targetted.Name ~= "makhail07" and targetted.Name ~= "Salvo_Starly" and targetted.Name ~= "Nebula_Zorua" and targetted.Name ~= "KillerDarkness0105" then
        local torsy = targetted:FindFirstChild("UpperTorso") or targetted:FindFirstChild("Torso")
            local partasdeff = Instance.new("ParticleEmitter",torsy)
            partasdeff.Color = ColorSequence.new(Color3.new(1, 0, 0), Color3.new(.5, 0, 0))
            partasdeff.LightEmission = .1
            partasdeff.Size = NumberSequence.new(0.2)
            partasdeff.Texture = "http://www.roblox.com/asset/?ID=771221224"
            aaa = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.2),NumberSequenceKeypoint.new(1, 5)})
            bbb = NumberSequence.new({NumberSequenceKeypoint.new(0, 1),NumberSequenceKeypoint.new(0.0636, 0), NumberSequenceKeypoint.new(1, 1)})
            partasdeff.Transparency = bbb
            partasdeff.Size = aaa
            partasdeff.ZOffset = .9
            partasdeff.Acceleration = Vector3.new(0, -5, 0)
            partasdeff.LockedToPart = false
            partasdeff.EmissionDirection = "Back"
            partasdeff.Lifetime = NumberRange.new(1, 2)
            partasdeff.Rate = 1000
            partasdeff.Rotation = NumberRange.new(-100, 100)
            partasdeff.RotSpeed = NumberRange.new(-100, 100)
            partasdeff.Speed = NumberRange.new(6)
            partasdeff.VelocitySpread = 10000
            partasdeff.Enabled=false
    for i = 0, 1.4, 0.1 do
        swait()
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(10), Rad(0), Rad(0)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-15), Rad(0), Rad(-25)), 0.3)
        if Mrandom(1,15) == 1 then
            tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(Mrandom(-20,20)), Rad(Mrandom(-20,20)), Rad(Mrandom(-20,20))), 0.3)
        end
        RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(-10)), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.2 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-10)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.4, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(0), Rad(-15)), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30),  -.3 + 0.025 * Cos(sine / 20)) * angles(Rad(175), Rad(0), Rad(20)), 0.1)
    end
    dmg(targetted)
    partasdeff.Enabled=true
CreateSound("429400881", torsy, 10, .8)
    for i = 0, 1.4, 0.1 do
        swait()
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(10), Rad(0), Rad(0)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(15), Rad(0), Rad(-25)), 0.3)
        if Mrandom(1,15) == 1 then
            tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(Mrandom(-20,20)), Rad(Mrandom(-20,20)), Rad(Mrandom(-20,20))), 0.3)
        end
        RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(-10)), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.2 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-10)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.4, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(0), Rad(-15)), 0.1)
        LW.C0 = clerp(LW.C0, CF(-.4, 0.5 + 0.05 * Sin(sine / 30),  -.3 + 0.025 * Cos(sine / 20)) * angles(Rad(75), Rad(0), Rad(65)), 0.1)
    end
    partasdeff.Enabled=false
    for i = 0, 1.4, 0.1 do
        swait()
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(10), Rad(0), Rad(0)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-15), Rad(0), Rad(-25)), 0.3)
        if Mrandom(1,15) == 1 then
            tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(Mrandom(-20,20)), Rad(Mrandom(-20,20)), Rad(Mrandom(-20,20))), 0.3)
        end
        RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(-10)), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.2 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-10)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.4, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(0), Rad(-15)), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30),  -.3 + 0.025 * Cos(sine / 20)) * angles(Rad(175), Rad(0), Rad(20)), 0.1)
        end
    attack = false
    hum.WalkSpeed = 16
    elseif targetted.Name == "makhail07" then
    for i = 0, 2.4, 0.1 do
        swait()
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(10), Rad(0), Rad(0)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(15), Rad(0), Rad(-25)), 0.3)
        if Mrandom(1,15) == 1 then
            tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(Mrandom(-20,20)), Rad(Mrandom(-20,20)), Rad(Mrandom(-20,20))), 0.3)
        end
        RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(-10)), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.2 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-10)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.4, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(0), Rad(-15)), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30),  -.3 + 0.025 * Cos(sine / 20)) * angles(Rad(175), Rad(0), Rad(20)), 0.1)
    end
    for i = 0, 2.4, 0.1 do
        swait()
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(10), Rad(0), Rad(0)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(15), Rad(0), Rad(-25 * Cos(sine / 20))), 0.3)
        if Mrandom(1,15) == 1 then
            tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(Mrandom(-20,20)), Rad(Mrandom(-20,20)), Rad(Mrandom(-20,20))), 0.3)
        end
        RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(-10)), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.2 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-10)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.4, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(0), Rad(-15)), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30),  -.3 + 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-10)), 0.1)
    end
    coroutine.wrap(function()
    wait(2)
    --partasdeff:Remove()
    end)()
    local sel = Mrandom(1,3)
    if sel == 1 then   
    chatfunc("Hmhmhm, Why try?")
    elseif sel == 2 then   
    chatfunc("Stop it that's my creator.")
    elseif sel == 3 then
    chatfunc("I can't do that...")
    end
    wait(2)
    hum.WalkSpeed = 16
    attack = false
    elseif targetted.Name == "Salvo_Starly" then
        for i = 0, 2.4, 0.1 do
        swait()
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(10), Rad(0), Rad(0)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(15), Rad(0), Rad(-25)), 0.3)
        if Mrandom(1,15) == 1 then
            tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(Mrandom(-20,20)), Rad(Mrandom(-20,20)), Rad(Mrandom(-20,20))), 0.3)
        end
        RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(-10)), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.2 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-10)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.4, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(0), Rad(-15)), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30),  -.3 + 0.025 * Cos(sine / 20)) * angles(Rad(175), Rad(0), Rad(20)), 0.1)
    end
        for i = 0, 2.4, 0.1 do
        swait()
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(10), Rad(0), Rad(0)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(15), Rad(0), Rad(-25 * Cos(sine / 20))), 0.3)
        if Mrandom(1,15) == 1 then
            tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(Mrandom(-20,20)), Rad(Mrandom(-20,20)), Rad(Mrandom(-20,20))), 0.3)
        end
        RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(-10)), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.2 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-10)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.4, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(0), Rad(-15)), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30),  -.3 + 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-10)), 0.1)
    end
    coroutine.wrap(function()
    wait(2)
    --partasdeff:Remove()
    end)()
    local sel = Mrandom(1,3)
    if sel == 1 then   
    chatfunc("Sorry about that.")
    elseif sel == 2 then   
    chatfunc("H-Hello. I almost killed you.")
    elseif sel == 3 then
    chatfunc("OwO?")
    end
    wait(2)
    hum.WalkSpeed = 16
    attack = false
    elseif targetted.Name == "Nebula_Zorua" then
        for i = 0, 2.4, 0.1 do
        swait()
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(10), Rad(0), Rad(0)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(15), Rad(0), Rad(-25)), 0.3)
        if Mrandom(1,15) == 1 then
            tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(Mrandom(-20,20)), Rad(Mrandom(-20,20)), Rad(Mrandom(-20,20))), 0.3)
        end
        RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(-10)), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.2 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-10)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.4, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(0), Rad(-15)), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30),  -.3 + 0.025 * Cos(sine / 20)) * angles(Rad(175), Rad(0), Rad(20)), 0.1)
    end
        for i = 0, 2.4, 0.1 do
        swait()
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(10), Rad(0), Rad(0)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(15), Rad(0), Rad(-25 * Cos(sine / 20))), 0.3)
        if Mrandom(1,15) == 1 then
            tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(Mrandom(-20,20)), Rad(Mrandom(-20,20)), Rad(Mrandom(-20,20))), 0.3)
        end
        RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(-10)), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.2 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-10)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.4, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(0), Rad(-15)), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30),  -.3 + 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-10)), 0.1)
    end
    coroutine.wrap(function()
    wait(2)
    --partasdeff:Remove()
    end)()
    local sel = Mrandom(1,3)
    if sel == 1 then   
    chatfunc("Sorry, Nebula.")
    elseif sel == 2 then   
    chatfunc("Theres no need to harm you. Yet...")
    elseif sel == 3 then
    chatfunc("My mistake.")
    end
    wait(2)
    hum.WalkSpeed = 16
    attack = false
    elseif targetted.Name == "KillerDarkness0105" then
        for i = 0, 2.4, 0.1 do
        swait()
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(10), Rad(0), Rad(0)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(15), Rad(0), Rad(-25)), 0.3)
        if Mrandom(1,15) == 1 then
            tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(Mrandom(-20,20)), Rad(Mrandom(-20,20)), Rad(Mrandom(-20,20))), 0.3)
        end
        RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(-10)), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.2 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-10)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.4, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(0), Rad(-15)), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30),  -.3 + 0.025 * Cos(sine / 20)) * angles(Rad(175), Rad(0), Rad(20)), 0.1)
    end
        for i = 0, 2.4, 0.1 do
        swait()
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(10), Rad(0), Rad(0)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(15), Rad(0), Rad(-25 * Cos(sine / 20))), 0.3)
        if Mrandom(1,15) == 1 then
            tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(Mrandom(-20,20)), Rad(Mrandom(-20,20)), Rad(Mrandom(-20,20))), 0.3)
        end
        RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(-10)), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.2 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(-10)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.4, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(0), Rad(-15)), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30),  -.3 + 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-10)), 0.1)
    end
    coroutine.wrap(function()
    wait(2)
    --partasdeff:Remove()
    end)()
    local sel = Mrandom(1,3)
    if sel == 1 then   
    chatfunc("Hm, Killer it's been a while.")
    elseif sel == 2 then   
    chatfunc("No need for this.")
    elseif sel == 3 then
    chatfunc("Hello, sorry.")
    end
    wait(2)
    hum.WalkSpeed = 16
    attack = false
    end
end
function HAAHHHHHH()
    attack = true
    hum.WalkSpeed = 0
    Cso("300208779", hed, 10, 1)
    for i = 0,9,0.1 do
        swait()
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 2)) * angles(Rad(-30), Rad(0), Rad(0)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-30 - 2.5 * Sin(sine / 2)), Rad(0), Rad(0)), 0.3)
        if Mrandom(1,15) == 1 then
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * CF(0, 0, 0 + ((1) - 1)) * angles(Rad(Mrandom(-15,15)), Rad(Mrandom(-15,15)), Rad(Mrandom(-15,15))), 1)
        end
        RH.C0 = clerp(RH.C0, CF(1, -1 - 0.1 * Cos(sine / 2), 0.025 * Cos(sine / 2)) * RHCF * angles(Rad(-4.5 - 7.5 * Sin(sine / 2)), Rad(0), Rad(-30)), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -1 - 0.1 * Cos(sine / 2), 0.025 * Cos(sine / 2)) * LHCF * angles(Rad(-6.5 - 7.5 * Sin(sine / 2)), Rad(0), Rad(30)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 2), 0.025 * Cos(sine / 2)) * angles(Rad(-35 - 7.5 * Sin(sine / 2)), Rad(0), Rad(15 - 7.5 * Sin(sine / 2))), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 2), 0.025 * Cos(sine / 2)) * angles(Rad(-35 - 7.5 * Sin(sine / 2)), Rad(0), Rad(-15 - 7.5 * Sin(sine / 2))), 0.1)
    end
    attack = false
    hum.WalkSpeed = 16
end
-------------------------------------------------------
--End Attacks N Stuff--
-------------------------------------------------------

Sprinting = false
mouse.KeyDown:connect(function(key)
    if string.byte(key) == 48 and attack == false and Mode ~= 10 then
        Swing = 2
        hum.WalkSpeed = 38.82
        Sprinting = true
    end
end)
mouse.KeyUp:connect(function(key)
    if string.byte(key) == 48 and attack == false then
        Swing = 1
        Sprinting = false
        hum.WalkSpeed = 16
    end
end)
mouse.KeyDown:connect(function(key)
    if attack == false then
        if key == 'q' and Mode == 1 then
                        Power_Burst()
        elseif key == 'e' and Mode == 1 then
            Mode = 2
            SONG = 254826701
            tecks2.Text = "Evil Gloves"
            tecks2.TextColor3 = Color3.fromRGB(196, 40, 28)
            tecks2.TextStrokeColor3 = Color3.fromRGB(255, 89, 89)
        for i, v in pairs(ArmourParts) do
        v.BrickColor = BrickColor.new("Bright red")
        v.Material = "Neon"
        v.Transparency = 0
        end
  for i, v in pairs(NeonParts) do
    maincolor = BrickColor.new("New Yeller")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
    char.Head.face.Texture = "http://www.roblox.com/asset/?id=404306534"
  end
  for i, v in pairs(ArmourParts2) do
    v.BrickColor = BrickColor.new("Bright red")
    v.Material = "Neon"
    v.Transparency = 0
  end
  for i, v in pairs(NeonParts2) do
    maincolor = BrickColor.new("New Yeller")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
  end
        elseif key == 'e' and Mode == 2 then
            resetmode()
        elseif key == 't' and Mode == 1 then
                        Taunt()
        elseif key == 'q' and Mode == 2 then
                        Magic_Bombs()
        elseif key == 'e' and Mode == 2 then
                        Dangerous_Field()
        elseif key == 't' and Mode == 2 then
                        HAAH()
        end
    ---------------------------------------------------------------------
    if key == 'r' and Mode == 1 then
        Mode = 98534
        SONG = 486598641
        tecks2.Text = "EDGY"
        tecks2.TextColor3 = Color3.fromRGB(0, 0, 0)
        tecks2.TextStrokeColor3 = Color3.fromRGB(98, 37, 209)
 for i, v in pairs(ArmourParts) do
    v.BrickColor = BrickColor.new("Really black")
    v.Material = "Neon"
    v.Transparency = 0
  end
  for i, v in pairs(NeonParts) do
    maincolor = BrickColor.new("Royal purple")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
    char.Head.face.Texture = "http://www.roblox.com/asset/?id=1471407701"
  end
 for i, v in pairs(ArmourParts2) do
    v.BrickColor = BrickColor.new("Really black")
    v.Material = "Neon"
    v.Transparency = 0
  end
  for i, v in pairs(NeonParts2) do
    maincolor = BrickColor.new("Royal purple")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
  end
        elseif key == 'q' and Mode == 98534 then
            targett()
        elseif key == 'e' and Mode == 98534 and targetted ~= nil then
            Oh_No_AN_ERROR_Has_OcccccccurrEEEED()
        elseif key == 't' and Mode == 98534 then
            HAAHHHHHH()
        elseif key == 'r' and Mode == 98534  then
            resetmode()
    end
    ---------------------------------------------------------------------
    if key == 'm' and Mode == 1 then
        Mode = pIXELATED
        SONG = 853518668
        tecks2.Text = "PiXeL"
        tecks2.TextColor3 = Color3.fromRGB(0, 255, 255)
        tecks2.TextStrokeColor3 = Color3.fromRGB(0, 0, 255)
 for i, v in pairs(ArmourParts) do
    v.BrickColor = BrickColor.new("Really black")
    v.Material = "Neon"
    v.Transparency = 0
  end
  for i, v in pairs(NeonParts) do
    maincolor = BrickColor.new("Lapis")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
    char.Head.face.Texture = "http://www.roblox.com/asset/?id=231432333"
  end
 for i, v in pairs(ArmourParts2) do
    v.BrickColor = BrickColor.new("Really black")
    v.Material = "Neon"
    v.Transparency = 0
  end
  for i, v in pairs(NeonParts2) do
    maincolor = BrickColor.new("Lapis")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
  end
        elseif key == 'm' and Mode == pIXELATED then
            resetmode()
        elseif key == 'q' and Mode == pIXELATED and corrupted == false then
            Pixel_Corrupt()
        elseif key == 'm' and Mode == pIXELATED then
            resetmode()
    end
    ---------------------------------------------------------------------
    if key == 'y' and Mode == 1 then
        Mode = 3
        SONG = 580367180
        tecks2.Text = "Stranger"
        tecks2.TextColor3 = Color3.fromRGB(.5, 0, .5)
        tecks2.TextStrokeColor3 = Color3.fromRGB(.5, 0, .5)
 for i, v in pairs(ArmourParts) do
    v.BrickColor = BrickColor.new("Black")
    v.Material = "Neon"
    v.Transparency = 0
  end
  for i, v in pairs(NeonParts) do
    maincolor = BrickColor.new("Royal purple")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
    char.Head.face.Texture = "http://www.roblox.com/asset/?id=148988280"
  end 
 for i, v in pairs(ArmourParts2) do
    v.BrickColor = BrickColor.new("Black")
    v.Material = "Neon"
    v.Transparency = 0
  end
  for i, v in pairs(NeonParts2) do
    maincolor = BrickColor.new("Royal purple")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
  end 
        elseif key == 'y' and Mode == 3 then
            resetmode()
        elseif key == 'e' and Mode == 3 then
            Painful_Stomp()
        elseif key == 'z' and Mode == 3 then
            Purity_Slam()
        elseif key == 'x' and Mode == 3 then
            Tauntmelon()
        elseif key == 't' and Mode == 3 then
            un_fun()
        elseif key == 'q' and Mode == 3 then
            Shockwave()
    end
    ---------------------------------------------------------------------
    if key == 'u' and Mode == 1 then
        Mode = 1555
        SONG = 1131624146
        tecks2.Text = "Anime"
        tecks2.TextColor3 = Color3.fromRGB(255,0,255)
        tecks2.TextStrokeColor3 = Color3.fromRGB(255,0,255)
 for i, v in pairs(ArmourParts) do
    v.BrickColor = BrickColor.new("Black")
    v.Material = "Neon"
    v.Transparency = 0
  end
  for i, v in pairs(NeonParts) do
    maincolor = BrickColor.new("Carnation pink")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
    char.Head.face.Texture = "http://www.roblox.com/asset/?id=648887959"
  end
 for i, v in pairs(ArmourParts2) do
    v.BrickColor = BrickColor.new("Black")
    v.Material = "Neon"
    v.Transparency = 0
  end
  for i, v in pairs(NeonParts2) do
    maincolor = BrickColor.new("Carnation pink")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
  end
        elseif key == 'u' and Mode == 1555 then
            resetmode()
        elseif key == 'y' and Mode == 1555 then
            Field()
        elseif key == 't' and Mode == 1555 then
            lolik()
        elseif key == 'q' and Mode == 1555 then
            Pixel_Corrupt()
        elseif key == 'f' and Mode == 1555 then
            Anime_Splosion()
        elseif key == 'z' and Mode == 1555 then
            Cryo_Freeze()
        elseif key == 'x' and Mode == 1555 then
            Painful_Stomp2()
    end
    ---------------------------------------------------------------------
    if key == 'i' and Mode == 1 then
        Mode = 56565
        SONG = 419346122
        tecks2.Text = "Solar"
        tecks2.TextColor3 = Color3.fromRGB(222,255,0)
        tecks2.TextStrokeColor3 = Color3.fromRGB(222,255,0)
 for i, v in pairs(ArmourParts) do
    v.BrickColor = BrickColor.new("Really black")
    v.Material = "Neon"
    v.Transparency = 0
  end
  for i, v in pairs(NeonParts) do
    maincolor = BrickColor.new("Deep orange")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
    char.Head.face.Texture = "http://www.roblox.com/asset/?id=313921371"
  end
 for i, v in pairs(ArmourParts2) do
    v.BrickColor = BrickColor.new("Really black")
    v.Material = "Neon"
    v.Transparency = 0
  end
  for i, v in pairs(NeonParts2) do
    maincolor = BrickColor.new("Deep orange")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
    char.Head.face.Texture = "http://www.roblox.com/asset/?id=313921371"
  end
        elseif key == 't' and Mode == 56565 then
            Taunt2()
        elseif key == 'i' and Mode == 56565 then
            resetmode()
        elseif key == 'c' and Mode == 56565 then
            Eruption2()
        elseif key == 'x' and Mode == 56565 then
            Solar_Flare2()
        elseif key == 'z' and Mode == 56565 then
            Painful_Stomp()
    end
    ---------------------------------------------------------------------
    if key == 'm' and Mode == 6 then
        Mode = 1800
        SONG = 1118967006
        tecks2.Text = "Forbidden Soul"
        tecks2.TextColor3 = Color3.fromRGB(0, 0, 0)
        tecks2.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
 for i, v in pairs(ArmourParts) do
    v.BrickColor = BrickColor.new("Hot White")
    v.Material = "Neon"
    v.Transparency = 0
  end
  for i, v in pairs(NeonParts) do
    maincolor = BrickColor.new("Really black")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
  end
 for i, v in pairs(ArmourParts2) do
    v.BrickColor = BrickColor.new("Hot White")
    v.Material = "Neon"
    v.Transparency = 0
  end
  for i, v in pairs(NeonParts2) do
    maincolor = BrickColor.new("Really black")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
  end
char.Head.face.Texture = "http://www.roblox.com/asset/?id=404306534"
        elseif key == 't' and Mode == 1800 then
            TTTTTTTTTTGaunt()
        elseif key == 'm' and Mode == 1800 then
            resetmode()
        elseif key == 'q' and Mode == 1800 and exploitable == true then
            Exploit()
        elseif key == 'y' and Mode == 1800 then
            Ancient_Rage()
        elseif key == 'r' and Mode == 1800 then
            Distort()
        elseif key == 'g' and Mode == 1800 then
            Hell_From_Above()
        elseif key == 'h' and Mode == 1800 then
            Universal_Crush()
        elseif key == 'j' and Mode == 1800 then
            Multi_Bombs()
        elseif key == 'z' and Mode == 1800 then
            Eruption()
        elseif key == 'x' and Mode == 1800 then
            Solar_Flare()
    end
    ---------------------------------------------------------------------
    if key == 'o' and Mode == 1 then
        Mode = 4
        SONG = 595800581
        tecks2.Text = "Divinity"
        tecks2.TextColor3 = Color3.fromRGB(0, 0, 0)
        tecks2.TextStrokeColor3 = Color3.fromRGB(245, 205, 48)
 for i, v in pairs(ArmourParts) do
    v.BrickColor = BrickColor.new("Black")
    v.Material = "Neon"
    v.Transparency = 0
  end
  for i, v in pairs(NeonParts) do
    maincolor = BrickColor.new("Bright yellow")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
char.Head.face.Texture = "http://www.roblox.com/asset/?id=329945268"
  end
 for i, v in pairs(ArmourParts2) do
    v.BrickColor = BrickColor.new("Black")
    v.Material = "Neon"
    v.Transparency = 0
  end
  for i, v in pairs(NeonParts2) do
    maincolor = BrickColor.new("Bright yellow")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
  end
        elseif key == 'o' and Mode == 4 then
            resetmode()
        elseif key == 't' and Mode == 4 then
            again()
        elseif key == 'q' and Mode == 4 then
            Pulse()
    end
    ---------------------------------------------------------------------
    if key == 'p' and Mode == 1 then
                attack = true
        SONG = 1881895904
                hum.WalkSpeed = 0
            for i = 1,20,0.1 do
                swait()
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 2 + 0.25* Player_Size * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.05)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-25 - 6.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.05)
        RH.C0 = clerp(RH.C0, CF(1.1* Player_Size, -0.6 - 0.15 * Cos(sine / 20)* Player_Size, -0.3* Player_Size) * angles(Rad(0), Rad(76), Rad(0)) * angles(Rad(-8.5), Rad(0), Rad(-15)), 0.05)
        LH.C0 = clerp(LH.C0, CF(-1.1* Player_Size, -0.6 - 0.15 * Cos(sine / 20)* Player_Size, -0.3* Player_Size) * angles(Rad(0), Rad(-76), Rad(0)) * angles(Rad(-8.5), Rad(15), Rad(45)), 0.05)
        RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.08 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(5), Rad(-.6), Rad(75)), 0.05)
        LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.08 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(5), Rad(-.6), Rad(-75)), 0.05)
            BlockEffect(maincolor, tors.CFrame * CF(math.random(-2, 2), math.random(-2, 2), math.random(-2, 2)), 4, 4, 4, 0.8, 0.8, 0.8, 0.05, 1)
                end
                hum.WalkSpeed = 16
                attack = false
        Mode = 100
        tecks2.Text = "OverPowered-Divinity"
        tecks2.TextColor3 = Color3.fromRGB(1, 1, 1)
        tecks2.TextStrokeColor3 = Color3.fromRGB(255, 176, 0)
            Cso("743499393", tors, 10, 1.05)
            BlockEffect(BrickC("New Yeller"), Handle.CFrame * CF(0, -0, 0), 16, 16, 16, 22, 22, 22, 0.04, 1)
            BlockEffect(BrickC("Really black"), Handle.CFrame * CF(0, -0, 0), 10, 10, 10, 12, 12, 12, 0.04, 1)
 for i, v in pairs(ArmourParts) do
    v.BrickColor = BrickColor.new("Really black")
    v.Material = "Neon"
    v.Transparency = 0.2
  end
  for i, v in pairs(NeonParts) do
    maincolor = BrickColor.new("Deep orange")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0.5
char.Head.face.Texture = "http://www.roblox.com/asset/?id=329945268"
  end
 for i, v in pairs(ArmourParts2) do
    v.BrickColor = BrickColor.new("Really black")
    v.Material = "Neon"
    v.Transparency = 0.2
  end
  for i, v in pairs(NeonParts2) do
    maincolor = BrickColor.new("Deep orange")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0.5
  end
        elseif key == 'p' and Mode == 100 then
            resetmode()
        elseif key == 'q' and Mode == 100 then
            LAZER()
    end
    ---------------------------------------------------------------------
    if key == 'f' and Mode == 1 then
        Mode = 5
        SONG = 170282324
        tecks2.Text = "Cyber Monarch"
        tecks2.TextColor3 = Color3.fromRGB(0, 0, 0)
        tecks2.TextStrokeColor3 = Color3.fromRGB(255,0,0)
 for i, v in pairs(ArmourParts) do
    v.BrickColor = BrickColor.new("Black")
    v.Material = "Neon"
    v.Transparency = 0
  end
  for i, v in pairs(NeonParts) do
    maincolor = BrickColor.new("Really red")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
char.Head.face.Texture = "http://www.roblox.com/asset/?id=300139178"
  end
 for i, v in pairs(ArmourParts2) do
    v.BrickColor = BrickColor.new("Black")
    v.Material = "Neon"
    v.Transparency = 0
  end
  for i, v in pairs(NeonParts2) do
    maincolor = BrickColor.new("Really red")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
  end
        elseif key == 'f' and Mode == 5 then
            resetmode()
        elseif key == 'q' and Mode == 5 and exploitable == true then
            Exploit()
        elseif key == 't' and Mode == 5 then
            PENIS()
    end
    ---------------------------------------------------------------------
    if key == 'g' and Mode == 1 then
        Mode = 6
        SONG = 1810750535
        tecks2.Text = "The_Hell_Error_BR"
        tecks2.TextColor3 = Color3.fromRGB(0, 0, 0)
        tecks2.TextStrokeColor3 = Color3.fromRGB(255, 89, 89)
 for i, v in pairs(ArmourParts) do
    v.BrickColor = BrickColor.new("Black")
    v.Material = "Metal"
    v.Transparency = 0
  end
  for i, v in pairs(NeonParts) do
    maincolor = BrickColor.new("Really red")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
    char.Head.face.Texture = "http://www.roblox.com/asset/?id=176777497"
  end
 for i, v in pairs(ArmourParts2) do
    v.BrickColor = BrickColor.new("Black")
    v.Material = "Metal"
    v.Transparency = 0
  end
  for i, v in pairs(NeonParts2) do
    maincolor = BrickColor.new("Really red")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
  end
        elseif key == 'g' and Mode == 6 then
            resetmode()
        elseif key == 'q' and Mode == 6 then
            Distort()
        elseif key == 'e' and Mode == 6 then
            Ancient_Rage()
        elseif key == 't' and Mode == 6 then
            TTTTTTTTTTTaunt()
    end
    ---------------------------------------------------------------------
    if key == 'h' and Mode == 1 then
        Mode = 7
        SONG = 150794704
        tecks2.Text = "Doge"
        tecks2.TextColor3 = Color3.fromRGB(163, 162, 165)
        tecks2.TextStrokeColor3 = Color3.fromRGB(253, 234, 141)
 for i, v in pairs(ArmourParts) do
    v.BrickColor = BrickColor.new("Cool yellow")
    v.Material = "Neon"
    v.Transparency = 0
  end
  for i, v in pairs(NeonParts) do
    maincolor = BrickColor.new("New Yeller")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
    char.Head.face.Texture = "http://www.roblox.com/asset/?id=246991049"
  end
 for i, v in pairs(ArmourParts2) do
    v.BrickColor = BrickColor.new("Cool yellow")
    v.Material = "Neon"
    v.Transparency = 0
  end
  for i, v in pairs(NeonParts2) do
    maincolor = BrickColor.new("New Yeller")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
  end
    elseif key == 'h' and Mode == 7 then
        resetmode()
    elseif key == 't' and Mode == 7 then
                BARK()
    elseif key == 'q' and Mode == 7 then
                Bark_Splosion()
    end
    if key == 'j' and Mode == 1 then
        SONG = 1359036559
            attack = true
            hum.WalkSpeed = 0
    for i = 0,10,0.08 do
        swait()
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, 1.3 + 0.6 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0 + 255.45 * i)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-20 - 2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
        RH.C0 = clerp(RH.C0, CF(1, -0.7 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5 + 3 * Sin(sine / 20)), Rad(0), Rad(10 + 3 * Sin(sine / 20))), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5 + 3 * Sin(sine / 20)), Rad(0), Rad(-10 + 3 * Sin(sine / 20))), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(-10 * Cos(sine / 20)), Rad(90 - 2.5 * Sin(sine / 20))), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(10 * Cos(sine / 20)), Rad(-90 + 2.5 * Sin(sine / 20))), 0.1)
    end
    attack = false
    hum.WalkSpeed = 16
        Mode = 50
            BlockEffect(BrickC("Magenta"), Handle.CFrame * CF(0, -0, 0), 25, 25, 25, 30, 30, 30, 0.05, 1)
        tecks2.Text = "SUPER_OVERPOWERED_DOGE"
        tecks2.TextColor3 = Color3.fromRGB(255, 0, 255)
        tecks2.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
 for i, v in pairs(ArmourParts) do
    v.BrickColor = BrickColor.new("Magenta")
    v.Material = "Neon"
    v.Transparency = 0
  end
  for i, v in pairs(NeonParts) do
    maincolor = BrickColor.new("White")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
    char.Head.face.Texture = "http://www.roblox.com/asset/?id=148988280"
  end
 for i, v in pairs(ArmourParts2) do
    v.BrickColor = BrickColor.new("Magenta")
    v.Material = "Neon"
    v.Transparency = 0
  end
  for i, v in pairs(NeonParts2) do
    maincolor = BrickColor.new("White")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
  end
        elseif key == 'j' and Mode == 50 then
            resetmode()
        elseif key == 'q' and Mode == 50 then
            ASCENTION()
        elseif key == 't' and Mode == 50 then
            nope()
        elseif key == 'y' and Mode == 50 then
            EndMySufferingV2()
    end
    ---------------------------------------------------------------------
    if key == 'k' and Mode == 1 then
        Mode = 6666
        SONG = 2039029608
        tecks2.Text = "Meme Guy"
            BlockEffect(BrickC("Dark Blue"), Handle.CFrame * CF(0, -0, 0), 25, 25, 25, 30, 30, 30, 0.05, 1)
        tecks2.TextColor3 = Color3.fromRGB(0, 0, 255)
        tecks2.TextStrokeColor3 = Color3.fromRGB(0, 0, 255)
 for i, v in pairs(ArmourParts) do
    v.BrickColor = BrickColor.new("Black")
    v.Material = "Neon"
    v.Transparency = 0
  end
  for i, v in pairs(NeonParts) do
    maincolor = BrickColor.new("Dark blue")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
    char.Head.face.Texture = "http://www.roblox.com/asset/?id=620619801"
  end
 for i, v in pairs(ArmourParts2) do
    v.BrickColor = BrickColor.new("Black")
    v.Material = "Neon"
    v.Transparency = 0
  end
  for i, v in pairs(NeonParts2) do
    maincolor = BrickColor.new("Dark blue")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
  end
        elseif key == 'y' and Mode == 6666 then
            somuchcancerwhy()
        elseif key == 'r' and Mode == 6666 then
            HAA55()
        elseif key == 'k' and Mode == 6666 then
            resetmode()
        elseif key == 't' and Mode == 6666 then
            EndMySufferingV3()
        elseif key == 'f' and Mode == 6666 then
            WhatHuh()
        elseif key == 'g' and Mode == 6666 then
            slap()
        elseif key == 'h' and Mode == 6666 then
            HAAAAA()
        elseif key == 'j' and Mode == 6666 then
            DANCEFORME()
        elseif key == 'm' and Mode == 6666 then
            thing()
    end
    ---------------------------------------------------------------------
    if key == 'l' and Mode == 1 then
        Mode = 8888
        SONG = 1752290765
        tecks2.Text = "Cancerous"
            BlockEffect(BrickC("Really black"), Handle.CFrame * CF(0, -0, 0), 25, 25, 25, 30, 30, 30, 0.05, 1)
        tecks2.TextColor3 = Color3.fromRGB(0, 0, 0)
        tecks2.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
 for i, v in pairs(ArmourParts) do
    v.BrickColor = BrickColor.new("Really black")
    v.Material = "Neon"
    v.Transparency = 0
  end
  for i, v in pairs(NeonParts) do
    maincolor = BrickColor.new("Really red")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
    char.Head.face.Texture = "http://www.roblox.com/asset/?id=1895698679"
  end
 for i, v in pairs(ArmourParts2) do
    v.BrickColor = BrickColor.new("Black")
    v.Material = "Neon"
    v.Transparency = 0
  end
  for i, v in pairs(NeonParts2) do
    maincolor = BrickColor.new("Really red")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
  end
        elseif key == 'l' and Mode == 8888 then
            resetmode()
        elseif key == 'r' and Mode == 8888 then
            Technobeam()
        elseif key == 't' and Mode == 8888 then
            Taunt1()
        elseif key == 'y' and Mode == 8888 then
            Destruction()
    end
    ---------------------------------------------------------------------
    if key == 'z' and Mode == 1 then
        Mode = 111111112
        SONG = 601069330
        tecks2.Text = "Dark-God"
            BlockEffect(BrickC("Really black"), Handle.CFrame * CF(0, -0, 0), 25, 25, 25, 30, 30, 30, 0.05, 1)
        tecks2.TextColor3 = Color3.fromRGB(1, 1, 1)
        tecks2.TextStrokeColor3 = Color3.fromRGB(1, 1, 1)
 for i, v in pairs(ArmourParts) do
    v.BrickColor = BrickColor.new("Really black")
    v.Material = "Neon"
    v.Transparency = 0
  end
  for i, v in pairs(NeonParts) do
    maincolor = BrickColor.new("Really black")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
    char.Head.face.Texture = "http://www.roblox.com/asset/?id=1895698679"
  end
 for i, v in pairs(ArmourParts2) do
    v.BrickColor = BrickColor.new("Really black")
    v.Material = "Neon"
    v.Transparency = 0
  end
  for i, v in pairs(NeonParts2) do
    maincolor = BrickColor.new("Really black")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
  end
        elseif key == 'z' and Mode == 111111112 then
            resetmode()
        elseif key == 'q' and Mode == 111111112 then
            Flame_Burst()
        elseif key == 't' and Mode == 111111112 then
            Taunt10000()
    end
    ---------------------------------------------------------------------
    if key == 'x' and Mode == 1 then
        Mode = 111111111
        SONG = 1494452913
        tecks2.Text = "Eyo-zen"
            BlockEffect(BrickC("Really black"), Handle.CFrame * CF(0, -0, 0), 25, 25, 25, 30, 30, 30, 0.05, 1)
        tecks2.TextColor3 = Color3.fromRGB(1, 1, 1)
        tecks2.TextStrokeColor3 = Color3.fromRGB(1, 1, 1)
 for i, v in pairs(ArmourParts) do
    v.BrickColor = BrickColor.new("Really black")
    v.Material = "Neon"
    v.Transparency = 0
  end
  for i, v in pairs(NeonParts) do
    maincolor = BrickColor.new("Hot white")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
    char.Head.face.Texture = "http://www.roblox.com/asset/?id=1895698679"
  end
 for i, v in pairs(ArmourParts2) do
    v.BrickColor = BrickColor.new("Really black")
    v.Material = "Neon"
    v.Transparency = 0
  end
  for i, v in pairs(NeonParts2) do
    maincolor = BrickColor.new("Hot white")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
  end
        elseif key == 'x' and Mode == 111111111 then
            resetmode()
        elseif key == 'q' and Mode == 111111111 then
            Destruction()
        elseif key == 't' and Mode == 111111111 then
            Taunt1000()
    end
    ---------------------------------------------------------------------
    if key == 'c' and Mode == 1 then
        Mode = 99900
        SONG = 265241849
        tecks2.Text = "Noob"
            BlockEffect(BrickC("Really black"), Handle.CFrame * CF(0, -0, 0), 25, 25, 25, 30, 30, 30, 0.05, 1)
        tecks2.TextColor3 = Color3.fromRGB(1, 1, 1)
        tecks2.TextStrokeColor3 = Color3.fromRGB(1, 1, 1)
 for i, v in pairs(ArmourParts) do
    v.BrickColor = BrickColor.new("Really black")
    v.Material = "Neon"
    v.Transparency = 0
  end
  for i, v in pairs(NeonParts) do
    maincolor = BrickColor.new("New Yeller")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
    char.Head.face.Texture = "http://www.roblox.com/asset/?id=268018808"
  end
 for i, v in pairs(ArmourParts2) do
    v.BrickColor = BrickColor.new("Really black")
    v.Material = "Neon"
    v.Transparency = 0
  end
  for i, v in pairs(NeonParts2) do
    maincolor = BrickColor.new("New Yeller")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
  end
        elseif key == 'q' and Mode == 99900 then
            Sayonara()
        elseif key == 't' and Mode == 99900 then
            Taunt3()
        elseif key == 'c' and Mode == 99900 then
            resetmode()
    end
--------------------------------------------------------
    if key == 'v' and Mode == 1 then
        Mode = 7777
        SONG = 919231299
        tecks2.Text = "The_Insanity_Error"
            BlockEffect(BrickC("Really black"), Handle.CFrame * CF(0, -0, 0), 25, 25, 25, 30, 30, 30, 0.05, 1)
        tecks2.TextColor3 = Color3.fromRGB(0, 0, 0)
        tecks2.TextStrokeColor3 = Color3.fromRGB(255, 89, 89)
 for i, v in pairs(ArmourParts) do
    v.BrickColor = BrickColor.new("Dark blue")
    v.Material = "Neon"
    v.Transparency = 0
  end
  for i, v in pairs(NeonParts) do
    maincolor = BrickColor.new("Really red")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
    char.Head.face.Texture = "http://www.roblox.com/asset/?id="..insanityface[math.random(1,#insanityface)]
  end
 for i, v in pairs(ArmourParts2) do
    v.BrickColor = BrickColor.new("Dark blue")
    v.Material = "Neon"
    v.Transparency = 0
  end
  for i, v in pairs(NeonParts2) do
    maincolor = BrickColor.new("Really red")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
  end
        elseif key == 'y' and Mode == 7777 then
            Painful_Stomp()
        elseif key == 't' and Mode == 7777 then
            FearMe()
        elseif key == 'r' and Mode == 7777 then
            GIMME_THOSE()
        elseif key == 'v' and Mode == 7777 then
            resetmode()
    end
--------------------------------------------------------
    if key == 'b' and Mode == 1 then
        Mode = 25
        SONG = 1564523997
        tecks2.Text = "Ghost"
            BlockEffect(BrickC("Fog"), Handle.CFrame * CF(0, -0, 0), 25, 25, 25, 30, 30, 30, 0.05, 1)
        tecks2.TextColor3 = Color3.fromRGB(255, 255, 255)
        tecks2.TextStrokeColor3 = Color3.fromRGB(163, 162, 165)
 for i, v in pairs(ArmourParts) do
    v.BrickColor = BrickColor.new("Ghost grey")
    v.Material = "Neon"
    v.Transparency = 0.7
  end
  for i, v in pairs(NeonParts) do
    maincolor = BrickColor.new("Fog")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0.5
    char.Head.face.Texture = "http://www.roblox.com/asset/?id=148988280"
  end
 for i, v in pairs(ArmourParts2) do
    v.BrickColor = BrickColor.new("Ghost grey")
    v.Material = "Neon"
    v.Transparency = 0.7
  end
  for i, v in pairs(NeonParts2) do
    maincolor = BrickColor.new("Fog")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0.5
  end
        elseif key == 'b' and Mode == 25 then
            resetmode()
        elseif key == 't' and Mode == 25 then
            thisisit()
        elseif key == 'q' and Mode == 25 then
            Spirit_Beam()
    end
    ---------------------------------------------------------------------
    if key == 'n' and Mode == 1 then
        Mode = 8
        SONG = 207375545
        tecks2.Text = "Purity"
        tecks2.TextColor3 = Color3.fromRGB(18, 238, 212)
        tecks2.TextStrokeColor3 = Color3.fromRGB(4, 175, 236)
    for i, v in pairs(ArmourParts) do
    v.BrickColor = BrickColor.new("Cyan")
    v.Material = "Neon"
    v.Transparency = 0
    end
    for i, v in pairs(NeonParts) do
    maincolor = BrickColor.new("Institutional white")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
    char.Head.face.Texture = "http://www.roblox.com/asset/?id=155195214"
    end
    for i, v in pairs(ArmourParts2) do
    v.BrickColor = BrickColor.new("Cyan")
    v.Material = "Neon"
    v.Transparency = 0
    end
    for i, v in pairs(NeonParts2) do
    maincolor = BrickColor.new("Institutional white")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
    end
        elseif key == 'n' and Mode == 8 then
            resetmode()
        elseif key == 'q' and Mode == 8 then
            LunarSpin()
    end
    ---------------------------------------------------------------------
    if key == 'm' and Mode == 8 then
        Mode = 9
        SONG = 563062677
        tecks2.Text = "Grim"
        tecks2.TextColor3 = Color3.new(255, 255, 255)
        tecks2.TextStrokeColor3 = Color3.new(0, 0, 0)
 for i, v in pairs(ArmourParts) do
    v.BrickColor = BrickColor.new("Institutional white")
    v.Material = "Neon"
    v.Transparency = 0
  end
  for i, v in pairs(NeonParts) do
    maincolor = BrickColor.new("Really black")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
    char.Head.face.Texture = "http://www.roblox.com/asset/?id=398671601"
  end
 for i, v in pairs(ArmourParts2) do
    v.BrickColor = BrickColor.new("Institutional white")
    v.Material = "Neon"
    v.Transparency = 0
  end
  for i, v in pairs(NeonParts2) do
    maincolor = BrickColor.new("Really black")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
  end
        elseif key == 'm' and Mode == 9 then
            resetmode()
        elseif key == 't' and Mode == 9 then
            heregoes()
        elseif key == 'q' and Mode == 9 then
            BalanceSpin()
        elseif key == 'y' and Mode == 9 then
            Ancient_Ragu()
    end
    ---------------------------------------------------------------------------
    if key == 'm' and Mode == 7 then
        Mode = 10
        SONG = 865839103
        local A = math.random(1,4)
        if A == 1 then
    SONG = 623662713
        elseif A == 2 then
    SONG = 865839103
        elseif A == 3 then
    SONG = 623662713
        elseif A == 4 then
    SONG = 919231299
        end
        tecks2.Text = "ErRoR Of The InSaNiTy"
        tecks2.TextColor3 = Color3.new(0, 0, 0)
        tecks2.TextStrokeColor3 = Color3.new(0, 0, 0)
 for i, v in pairs(ArmourParts) do
    v.BrickColor = BrickColor.random()
    v.Material = "Neon"
    v.Transparency = 0
  end
  for i, v in pairs(NeonParts) do
    maincolor = BrickColor.random()
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
    char.Head.face.Texture = "http://www.roblox.com/asset/?id=398671601"
  end
 for i, v in pairs(ArmourParts2) do
    v.BrickColor = BrickColor.new("Hot white")
    v.Material = "Neon"
    v.Transparency = 0
  end
  for i, v in pairs(NeonParts2) do
    maincolor = BrickColor.new("Hot white")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
  end
    elseif key == 'm' and Mode == 10 then
        resetmode()
    elseif key == 'q' and Mode == 10 then
        Decapitate()
    elseif key == 't' and Mode == 10 then
        wutdefaq() 
    elseif key == 'y' and Mode == 10 then
        Painful_Stomp()
    end
    end
end)
local Combo = 1
mouse.Button1Down:connect(function(key)
    if attack == false then
        if Combo == 1 then
            Combo = 2
            attackone()
        elseif Combo == 2 then
            Combo = 3
            attacktwo()
        elseif Combo == 3 then
            Combo = 1
            attackthree()
        end
    end
end)
 
 
 
 
 
 
 -------------------------------------------------------
--Start Animations--
-------------------------------------------------------
while true do
	swait()
	sine = sine + change
	local torvel = (root.Velocity * Vector3.new(1, 0, 1)).magnitude
	local velderp = root.Velocity.y
	hitfloor, posfloor = rayCast(root.Position, CFrame.new(root.Position, root.Position - Vector3.new(0, 1, 0)).lookVector, 4* Player_Size, char)
	if equipped == true or equipped == false then
		if attack == false then
			idle = idle + 1
		else
			idle = 0
		end
		if 1 < root.Velocity.y and hitfloor == nil then
            Anim = "Jump"
            if attack == false then
                rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1 * Cos(sine / 20)* Player_Size) * angles(Rad(-16), Rad(0), Rad(0)), 0.08)
                neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(10 - 2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.08)
                RH.C0 = clerp(RH.C0, CF(1* Player_Size, -.2 - 0.1 * Cos(sine / 20)* Player_Size, -.3* Player_Size) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.08)
                LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -.9 - 0.1 * Cos(sine / 20), -.5* Player_Size) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.08)
                RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(25), Rad(-.6), Rad(13 + 4.5 * Sin(sine / 20))), 0.08)
                LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(25), Rad(-.6), Rad(-13 - 4.5 * Sin(sine / 20))), 0.08)
            end
        elseif -1 > root.Velocity.y and hitfloor == nil then
            Anim = "Fall"
            if attack == false then
                rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1 * Cos(sine / 20)* Player_Size) * angles(Rad(24), Rad(0), Rad(0)), 0.08)
                neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(10 - 2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.08)
                RH.C0 = clerp(RH.C0, CF(1* Player_Size, -1 - 0.1 * Cos(sine / 20)* Player_Size, -.3* Player_Size) * RHCF * angles(Rad(-3.5), Rad(0), Rad(0)), 0.08)
                LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -.8 - 0.1 * Cos(sine / 20)* Player_Size, -.3* Player_Size) * LHCF * angles(Rad(-3.5), Rad(0), Rad(0)), 0.08)
                RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(65), Rad(-.6), Rad(45 + 4.5 * Sin(sine / 20))), 0.08)
                LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(55), Rad(-.6), Rad(-45 - 4.5 * Sin(sine / 20))), 0.08)
            end
        elseif torvel < 1 and hitfloor ~= nil then
            Anim = "Idle"
            change = 1
            if attack == false then
                if Mode == 1 then --Normal
                rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, 1.3 + 0.6 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(25)), 0.15)
                tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(20 - 2.5 * Sin(sine / 20)), Rad(20), Rad(-15)), 0.3)
                RH.C0 = clerp(RH.C0, CF(1, -0.5 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5 + 3 * Sin(sine / 20)), Rad(0), Rad(10 + 3 * Sin(sine / 20))), 0.15)
                LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5 + 3 * Sin(sine / 20)), Rad(0), Rad(-10 + 3 * Sin(sine / 20))), 0.15)
                RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(-10 * Cos(sine / 20)), Rad(65 - 2.5 * Sin(sine / 20))), 0.1)
                LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(10 * Cos(sine / 20)), Rad(-15 + 2.5 * Sin(sine / 20))), 0.1)
                elseif Mode == 99900 then 
                rootj.C0 = clerp(rootj.C0, RootCF * CF(0 - 0.04 * Sin(sine / 24) * Player_Size, 0 + 0.04 * Sin(sine / 12) * Player_Size, 0 + 0.05 * Player_Size * Cos(sine / 12)) * angles(Rad(0 - 2.5 * Sin(sine / 12)), Rad(0 - 2.5 * Sin(sine / 24)), Rad(0)), 0.15)
                tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(25 - 6.5 * Cos(sine / 12)), Rad(0), Rad(20 * Cos(sine / 12))), 0.3)
                RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size + 0.06 * Sin(sine / 24) - 0.05 * Player_Size * Cos(sine / 12), -0.01 * Player_Size) * angles(Rad(0 - 2.5 * Sin(sine / 12)), Rad(84), Rad(0)) * angles(Rad(-6 - 2.5 * Sin(sine / 24)), Rad(0), Rad(0)), 0.15)
                LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0.06 * Sin(sine / 24) - 0.05 * Player_Size * Cos(sine / 12), -0.01 * Player_Size) * angles(Rad(0 - 2.5 * Sin(sine / 12)), Rad(-84), Rad(0)) * angles(Rad(-6 + 2.5 * Sin(sine / 24)), Rad(0), Rad(0)), 0.15)
                RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.35 + 0.15 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(-6 + 4.5 * Sin(sine / 12)), Rad(25 + 2.5 * Sin(sine / 12)), Rad(25 + 4.5 * Sin(sine / 12))), 0.1)
                LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.35 + 0.15 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(7 + 4.5 * Sin(sine / 12)), Rad(0 + 2.5 * Sin(sine / 12)), Rad(-13 - 4.5 * Sin(sine / 12))), 0.1)
                elseif Mode == 8888 then --idk
                rootj.C0 = clerp(rootj.C0, RootCF * CF(0 - 0.04 * Sin(sine / 24) * Player_Size, 0 + 0.04 * Sin(sine / 12) * Player_Size, 0 + 0.05 * Player_Size * Cos(sine / 12)) * angles(Rad(0 - 2.5 * Sin(sine / 12)), Rad(0 - 2.5 * Sin(sine / 24)), Rad(0)), 0.15)
                tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(25 - 12.5 * Sin(sine / 12)), Rad(0), Rad(0)), 0.3)
                RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0.06  - 0.05 * Player_Size * Cos(sine / 12), -0.01 * Player_Size) * angles(Rad(0 - 2.5 * Sin(sine / 12)), Rad(79), Rad(0)) * angles(Rad(-6 - 2.5 * Sin(sine / 24)), Rad(0), Rad(0)), 0.15)
                LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0.06  - 0.05 * Player_Size * Cos(sine / 12), -0.01 * Player_Size) * angles(Rad(0 - 2.5 * Sin(sine / 12)), Rad(-79), Rad(0)) * angles(Rad(-6 + 2.5 * Sin(sine / 24)), Rad(0), Rad(0)), 0.15)
                RW.C0 = clerp(RW.C0, CF(1.5 * Player_Size, 0.5 + 0.02 * Sin(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(20), Rad(-.6), Rad(43 + 4.5 * Sin(sine / 12))), 0.1)
                LW.C0 = clerp(LW.C0, CF(-1.5 * Player_Size, 0.5 + 0.02 * Sin(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(20), Rad(-.6), Rad(-43 - 4.5 * Sin(sine / 12))), 0.1)
                elseif Mode == 98534 then
                rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
                tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(30 - 2.5 * Sin(sine / 18)), Rad(0), Rad(0)), 0.3)
                if Mrandom(1,15) == 1 then
                tors.Neck.C0 = clerp(tors.Neck.C0, necko * CF(0, 0, 0 + ((1) - 1)) * angles(Rad(Mrandom(-15,15)), Rad(Mrandom(-15,15)), Rad(Mrandom(-15,15))), 1)
                end
                RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(0)), 0.15)
                LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(0), Rad(0)), 0.15)
                RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(-10 * Cos(sine / 20)), Rad(5 - 2.5 * Sin(sine / 20))), 0.1)
                LW.C0 = clerp(LW.C0, CF(-.8, 0.5 + 0.05 * Sin(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(20), Rad(-215)), 0.1)
                elseif Mode == 56565 then --idk
                rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(20)), 0.15)
                tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(15 - 7.5 * Sin(sine / 30)), Rad(0), Rad(-20)), 0.3)
                RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(75), Rad(0)) * angles(Rad(-12.5), Rad(0), Rad(0)), 0.15)
                LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-75), Rad(0)) * angles(Rad(-12.5), Rad(0), Rad(8)), 0.15)
                RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.05 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(10), Rad(-.6), Rad(15 + 6.5 * Sin(sine / 20))), 0.1)
                LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.05 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-10), Rad(-.6), Rad(-15 - 6.5 * Sin(sine / 20))), 0.1)
                elseif Mode == pIXELATED then --PIXELATED
                rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 20)) * angles(Rad(20 + Mrandom(-4,4)), Rad(0), Rad(0)), 0.08)
                tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(46 - 2.5 + Mrandom(-30,30)), Rad(-4.5 + Mrandom(-30,30)), Rad(-4.5 + Mrandom(-30,30))), 0.08)
                RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0 + Mrandom(-6,6)), Rad(80), Rad(0)) * angles(Rad(-10.5 + Mrandom(-6,6)), Rad(0 + Mrandom(-6,6)), Rad(20 + Mrandom(-6,6))), 0.08)
                LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0 + Mrandom(-6,6)), Rad(-80 + Mrandom(-6,6)), Rad(0 + Mrandom(-6,6))) * angles(Rad(-10.5 + Mrandom(-6,6)), Rad(0 + Mrandom(-6,6)), Rad(-20 + Mrandom(-6,6))), 0.08)
                RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(25 + Mrandom(-6,6)), Rad(0 + Mrandom(-6,6)), Rad(5 + Mrandom(-6,6))), 0.08)
                LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(25 + Mrandom(-6,6)), Rad(0 + Mrandom(-6,6)), Rad(-5 + Mrandom(-6,6))), 0.08)
                elseif Mode == 50 then --ASCENDED
                rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.08)
                tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(15 - 4.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.08)
                RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(80), Rad(0)) * angles(Rad(-6.5), Rad(0), Rad(0)), 0.08)
                LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-80), Rad(0)) * angles(Rad(-6.5), Rad(0), Rad(0)), 0.08)
                RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-.6), Rad(13 + 4.5 * Sin(sine / 20))), 0.08)
                LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-.6), Rad(-13 - 4.5 * Sin(sine / 20))), 0.08)
            elseif Mode == 7777 then --NOTHING SPECIAL
                rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(4), Rad(0), Rad(0)), 0.15)
                tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(20), Rad(0), Rad(0)), 0.3)
                if Mrandom(1,15) == 1 then
                tors.Neck.C0 = clerp(tors.Neck.C0, necko * CF(0, 0, 0 + ((1) - 1)) * angles(Rad(Mrandom(-15,15)), Rad(Mrandom(-15,15)), Rad(Mrandom(-15,15))), 1)
                end
                RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-1.5), Rad(0), Rad(10)), 0.15)
                LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-1.5), Rad(0), Rad(10)), 0.15)
                RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(15 - 4 * Cos(sine / 20)), Rad(0), Rad(5)), 0.1)
                LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(15 - 4 * Cos(sine / 20)), Rad(0), Rad(-5)), 0.1)
            elseif Mode == 6666 then --MEMER
                rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
                tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
                RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
                LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
                RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(30 * Cos(sine / 20)), Rad(0), Rad(5)), 0.1)
                LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(30 * Cos(sine / 20)), Rad(0), Rad(-5)), 0.1)
            elseif Mode == 2 then --Machinery
                rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(20)), 0.08)
                tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(46 - 2.5 * Sin(sine / 30)), Rad(-4.5 * Sin(sine / .5)), Rad(-20 - 4.5 * Sin(sine / .5))), 0.08)
                RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(80), Rad(0)) * angles(Rad(-10.5), Rad(0), Rad(0)), 0.08)
                LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-80), Rad(0)) * angles(Rad(-10.5), Rad(0), Rad(0)), 0.08)
                RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(155), Rad(0), Rad(-45)), 0.08)
                LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(0), Rad(-25)), 0.08)
            elseif Mode == 3 then --ICE
rootj.C0=clerp(rootj.C0,RootCF*CF(0,0,-0.1+0.1*math.cos(sine/20))*angles(math.rad(-20),math.rad(0),math.rad(0)),0.15)
tors.Neck.C0=clerp(tors.Neck.C0,necko*angles(math.rad(-15*math.sin(sine/25)/2),math.rad(0),math.rad(10*math.sin(sine/25))),.3)
RH.C0=clerp(RH.C0,CF(1,-0.9-0.1*math.cos(sine/20),0.025*math.cos(sine/20))*RHCF*angles(math.rad(-10),math.rad(-0),math.rad(-25)),0.15)
LH.C0=clerp(LH.C0,CF(-1,-0.9-0.1*math.cos(sine/20),0.025*math.cos(sine/20))*LHCF*angles(math.rad(-3),math.rad(-4*math.sin(sine/25)),math.rad(15)),0.15)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5+0.04*math.sin(sine/25), 0) * angles(math.rad(-35 ), math.rad(-7*math.sin(sine/25)), math.rad(5)), 0.1)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5+0.04*math.sin(sine/25),0) * angles(math.rad(-35 ), math.rad(7*math.sin(sine/25)), math.rad(-5)), 0.1)
            elseif Mode == 4 then --Infused
                rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, 1.2 + 0.3 * Cos(sine / 20)) * angles(Rad(5), Rad(0), Rad(10)), 0.15)
                tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-4.5 * Sin(sine / 30)), Rad(0), Rad(-10)), 0.3)
                RH.C0 = clerp(RH.C0, CF(1, -0.4 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5 + 3 * Sin(sine / 20)), Rad(0), Rad(-20 + 2.5 * Sin(sine / 20))), 0.15)
                LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5 + 3 * Sin(sine / 20)), Rad(0), Rad(0 + 2.5 * Sin(sine / 20))), 0.15)
                RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-3 * Sin(sine / 20)), Rad(-10 * Sin(sine / 20)), Rad(13 - 2.5 * Sin(sine / 20))), 0.1)
                LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(4 * Sin(sine / 20)), Rad(10 * Sin(sine / 20)), Rad(-13 + 2.5 * Sin(sine / 20))), 0.1)
            elseif Mode == 5 then --Cybernetic
                rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 1 + 0.5 * Player_Size * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.08)
                tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(15 - 2.5 * Sin(sine / 30)), Rad(20), Rad(0)), 0.08)
                RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.3 - 0.1 * Cos(sine / 20)* Player_Size, -.4* Player_Size) * angles(Rad(0), Rad(80), Rad(0)) * angles(Rad(-10.5 + 3.5 * Sin(sine / 20)), Rad(0), Rad(-20)), 0.08)
                LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-80), Rad(0)) * angles(Rad(-10.5 + 3.5 * Sin(sine / 20)), Rad(0), Rad(20)), 0.08)
                RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(0), Rad(25 + 10.5 * Sin(sine / 20))), 0.08)
                LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(0), Rad(-25 - 10.5 * Sin(sine / 20))), 0.08)
            elseif Mode == 25 then --Spiritual
                rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 1 + 0.5 * Player_Size * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.08)
                tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(15 - 2.5 * Sin(sine / 30)), Rad(20), Rad(0)), 0.08)
                RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.3 - 0.1 * Cos(sine / 20)* Player_Size, -.4* Player_Size) * angles(Rad(0), Rad(80), Rad(0)) * angles(Rad(-10.5 + 3.5 * Sin(sine / 20)), Rad(0), Rad(-20)), 0.08)
                LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-80), Rad(0)) * angles(Rad(-10.5 + 3.5 * Sin(sine / 20)), Rad(0), Rad(20)), 0.08)
                RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(0), Rad(25 + 10.5 * Sin(sine / 20))), 0.08)
                LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(0), Rad(-25 - 10.5 * Sin(sine / 20))), 0.08)
            elseif Mode == 6 then --Controlled Beyond Recognition
                rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(10), Rad(0), Rad(0)), 0.15)
                tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(30 - 2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
                if Mrandom(1,15) == 1 then
                tors.Neck.C0 = clerp(tors.Neck.C0, necko * CF(0, 0, 0 + ((1) - 1)) * angles(Rad(Mrandom(-15,15)), Rad(Mrandom(-15,15)), Rad(Mrandom(-15,15))), 1)
                end
                RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(10)), 0.15)
                LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.2 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(0), Rad(-10)), 0.15)
                RW.C0 = clerp(RW.C0, CF(.8, 0.5 + 0.05 * Sin(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(-20), Rad(215)), 0.1)
                LW.C0 = clerp(LW.C0, CF(-.8, 0.5 + 0.05 * Sin(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(20), Rad(-215)), 0.1)
            elseif Mode == 1800 then --demon
                rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 20)) * angles(Rad(20), Rad(0), Rad(0)), 0.1)
                tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(20 - 2.5 * Sin(sine / 20)), Rad(Mrandom(-45, 45)), Rad(Mrandom(-45, 45))), 0.1)
                RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9* Player_Size - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(85), Rad(0)) * angles(Rad(-5), Rad(Mrandom(-15, 15)), Rad(20)), 0.1)
                LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9* Player_Size - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-85), Rad(0)) * angles(Rad(-5), Rad(Mrandom(-15, 15)), Rad(-20)), 0.1)
                RW.C0 = clerp(RW.C0, CF(1* Player_Size, 0.8* Player_Size + 0.01 * Sin(sine / 20)* Player_Size, -0.6* Player_Size) * angles(Rad(165), Rad(Mrandom(-15, 15)), Rad(-50)), 0.1)
                LW.C0 = clerp(LW.C0, CF(-1* Player_Size, 0.8* Player_Size + 0.01 * Sin(sine / 20)* Player_Size, -0.6* Player_Size) * angles(Rad(165), Rad(Mrandom(-15, 15)), Rad(50)), 0.1)
            elseif Mode == 7 or Mode == 9 then --Sucho Wowo --Mr.Balancia  ----------hdfsfhg
                rootj.C0 = clerp(rootj.C0, RootCF * CF(0 - 0.04 * Sin(sine / 24) * Player_Size, 0 + 0.04 * Sin(sine / 12) * Player_Size, 0 + 0.05 * Player_Size * Cos(sine / 12)) * angles(Rad(0 - 2.5 * Sin(sine / 12)), Rad(0 - 2.5 * Sin(sine / 24)), Rad(0)), 0.08)
                tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(25 - 2.5 * Sin(sine / 12)), Rad(0), Rad(0)), 0.08)
                RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0.06  - 0.05 * Player_Size * Cos(sine / 12), -0.01 * Player_Size) * angles(Rad(0 - 2.5 * Sin(sine / 12)), Rad(79), Rad(0)) * angles(Rad(-6 - 2.5 * Sin(sine / 24)), Rad(0), Rad(0)), 0.08)
                LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0.06  - 0.05 * Player_Size * Cos(sine / 12), -0.01 * Player_Size) * angles(Rad(0 - 2.5 * Sin(sine / 12)), Rad(-79), Rad(0)) * angles(Rad(-6 + 2.5 * Sin(sine / 24)), Rad(0), Rad(0)), 0.08)
                RW.C0 = clerp(RW.C0, CF(1 * Player_Size, 0.5 + 0.02 * Sin(sine / 12)* Player_Size, .6* Player_Size) * angles(Rad(-20), Rad(-.6), Rad(-43)), 0.08)
                LW.C0 = clerp(LW.C0, CF(-1 * Player_Size, 0.5 + 0.02 * Sin(sine / 12)* Player_Size, .6* Player_Size) * angles(Rad(-20), Rad(-.6), Rad(43)), 0.08)
            elseif Mode == 1555 then --anime
                rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(10)), 0.15)
                tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(20 - 2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
                RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(-10)), 0.15)
                LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(5 * Cos(sine / 20)), Rad(6)), 0.15)
                RW.C0 = clerp(RW.C0, CF(.8, 0.5 + 0.05 * Sin(sine / 20), -.6 + 0.025 * Cos(sine / 20)) * angles(Rad(21), Rad(11), Rad(-90 - 2.5 * Sin(sine / 20))), 0.1)
                LW.C0 = clerp(LW.C0, CF(-.8, 0.3 + 0.05 * Sin(sine / 20), -.6 + 0.025 * Cos(sine / 20)) * angles(Rad(8), Rad(5), Rad(90 + 2.5 * Sin(sine / 20))), 0.1)
            elseif Mode == 111111111 then
                rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(0), Rad(0)), 0.15)
                tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
                RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, -.2* Player_Size) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(74), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(-4)), 0.15)
                LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(-74), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(-4)), 0.15)
                RW.C0 = clerp(RW.C0, CF(1* Player_Size, 0.3 + 0.06 * Sin(sine / 20)* Player_Size, .6* Player_Size) * angles(Rad(-35), Rad(-25 + 2.5 * Sin(sine / 20)), Rad(-55 + 2.5 * Sin(sine / 20))), 0.12)
                LW.C0 = clerp(LW.C0, CF(-1* Player_Size, 0.3 + 0.06 * Sin(sine / 20)* Player_Size, .6* Player_Size) * angles(Rad(-35), Rad(25 + 2.5 * Sin(sine / 20)), Rad(55 + 2.5 * Sin(sine / 20))), 0.12)
            elseif Mode == 100 then --Overclocked
                rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, 1.3 + 0.6 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(25)), 0.15)
                tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(20 - 2.5 * Sin(sine / 20)), Rad(20), Rad(-15)), 0.3)
                RH.C0 = clerp(RH.C0, CF(1, -0.5 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5 + 3 * Sin(sine / 20)), Rad(0), Rad(10 + 3 * Sin(sine / 20))), 0.15)
                LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5 + 3 * Sin(sine / 20)), Rad(0), Rad(-10 + 3 * Sin(sine / 20))), 0.15)
                RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(-10 * Cos(sine / 20)), Rad(65 - 2.5 * Sin(sine / 20))), 0.1)
                LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(10 * Cos(sine / 20)), Rad(-15 + 2.5 * Sin(sine / 20))), 0.1)
            elseif Mode == 8 then --Lunarist
                MagicCharge(7, 0, "Add", ra.CFrame * CF(0, -1.3, 0) * CFrame.Angles(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360))), 0.5, 0.5, 1.5 * math.random(-1.8, 2), -0.005, maincolor, 0, "Brick")
                rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 0.8 + 0.2* Player_Size * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.08)
                tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(15 - 4.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.08)
                RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.3 - 0.1 * Cos(sine / 20)* Player_Size, -0.5* Player_Size) * angles(Rad(0), Rad(75), Rad(0)) * angles(Rad(-6.5), Rad(0), Rad(0)), 0.08)
                LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-75), Rad(0)) * angles(Rad(-6.5), Rad(0), Rad(0)), 0.08)
                RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-.6), Rad(135)), 0.08)
                LW.C0 = clerp(LW.C0, CF(-1 * Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, .6* Player_Size) * angles(Rad(-20), Rad(-.6), Rad(43)), 0.08)
            elseif Mode == 111111112 then
                rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 2 + 0.25* Player_Size * Cos(sine / 12)) * angles(Rad(25), Rad(0), Rad(0)), 0.1)
                tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(15 - 6.5 * Sin(sine / 12)), Rad(0), Rad(0)), 0.05)
                RH.C0 = clerp(RH.C0, CF(1* Player_Size, -1 - 0.15 * Cos(sine / 20)* Player_Size, -0.1* Player_Size) * angles(Rad(0), Rad(76), Rad(0)) * angles(Rad(-8.5 - 6.5 * Sin(sine / 12)), Rad(0), Rad(15)), 0.1)
                LH.C0 = clerp(LH.C0, CF(-1.1* Player_Size, -0.6 - 0.15 * Cos(sine / 20)* Player_Size, -0.3* Player_Size) * angles(Rad(0), Rad(-76), Rad(0)) * angles(Rad(-8.5 - 6.5 * Sin(sine / 12)), Rad(15), Rad(25)), 0.1)
                RW.C0 = clerp(RW.C0, CF(1.4* Player_Size, 0.4 + 0.08 * Sin(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(25 - 6.5 * Cos(sine / 12)), Rad(-.6), Rad(13 + 6.5 * Sin(sine / 12))), 0.1)
                LW.C0 = clerp(LW.C0, CF(-1.4* Player_Size, 0.4 + 0.08 * Sin(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(25 - 6.5 * Cos(sine / 12)), Rad(-.6), Rad(-13 - 6.5 * Sin(sine / 12))), 0.1)
            elseif Mode == 10 then --INSANITY
                rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.2 + 0.1 * Cos(sine / 7)) * angles(Rad(10), Rad(0), Rad(0)), 0.15)
                tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(45), Rad(0), Rad(-20)), 0.3)
                rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 7)) * angles(Rad(10 + Mrandom(-6,6)), Rad(0), Rad(Mrandom(-6,6))), 0.15)
                tors.Neck.C0 = clerp(tors.Neck.C0, necko * CF(0, 0, 0 + ((1) - 1)) * angles(Rad(45 + Mrandom(-4,4)), Rad(Mrandom(-4,4)), Rad(-20 + Mrandom(-4,4))), 1)
                RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 7), 0.025 * Cos(sine / 7)) * angles(Rad(180 + Mrandom(-35,35)), Rad(35 + Mrandom(-35,35)), Rad(-50 - 2.5 * Sin(sine / 20) + Mrandom(-35,35))), 0.1)
                LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 7), 0.025 * Cos(sine / 7)) * angles(Rad(15 + Mrandom(-35,35)), Rad(Mrandom(-35,35)), Rad(-15 + 2.5 * Sin(sine / 20) + Mrandom(-35,35))), 0.1)
                RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 7), -.2 +  0.025 * Cos(sine / 7)) * RHCF * angles(Rad(-5 + Mrandom(-6,6)), Rad(0), Rad(10 + Mrandom(-6,6))), 0.15)
                LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 7), 0.025 * Cos(sine / 7)) * LHCF * angles(Rad(-5 + Mrandom(-6,6)), Rad(0), Rad(-10 + Mrandom(-6,6))), 0.15)
            end
            end
        elseif torvel > 2 and torvel < 25 and hitfloor ~= nil then
            Anim = "Walk"
            change = 1.1
            if attack == false then
                if Mode == 6 then
                rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.175 + 0.025 * Cos(sine / 3.5) + -Sin(sine / 3.5) / 7) * angles(Rad(4-2.5 * Cos(sine / 3.5)), Rad(0) - root.RotVelocity.Y / 75, Rad(5 * Cos(sine / 7))), 0.15)
                tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(30 - 2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
                if Mrandom(1,15) == 1 then
                tors.Neck.C0 = clerp(tors.Neck.C0, necko * CF(0, 0, 0 + ((1) - 1)) * angles(Rad(Mrandom(-15,15)), Rad(Mrandom(-15,15)), Rad(Mrandom(-15,15))), 1)
                end
                RH.C0 = clerp(RH.C0, CF(1, -0.925 - 0.5 * Cos(sine / 7) / 2, 0.5 * Cos(sine / 7) / 2) * angles(Rad(-15 - 5 * Cos(sine / 7)) - rl.RotVelocity.Y / 75 + -Sin(sine / 7) / 2.5, Rad(90 - 0.1 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 + 0.1 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
                LH.C0 = clerp(LH.C0, CF(-1, -0.925 + 0.5 * Cos(sine / 7) / 2, -0.5 * Cos(sine / 7) / 2) * angles(Rad(-15 + 5 * Cos(sine / 7)) + ll.RotVelocity.Y / 75 + Sin(sine / 7) / 2.5, Rad(-90 - 0.1 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 - 0.1 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
                RW.C0 = clerp(RW.C0, CF(.8, 0.5 + 0.05 * Sin(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(-20), Rad(215)), 0.1)
                LW.C0 = clerp(LW.C0, CF(-.8, 0.5 + 0.05 * Sin(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(20), Rad(-215)), 0.1)
                elseif Mode == 3 then
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.175 + 0.025 * Cos(sine / 3.5) + -Sin(sine / 3.5) / 7) * angles(Rad(3 - 2.5 * Cos(sine / 3.5)), Rad(0) - root.RotVelocity.Y / 75, Rad(8 * Cos(sine / 7))), 0.15)
				tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(6 - 2.5 * Sin(sine / 7)), Rad(0), Rad(0) - hed.RotVelocity.Y / 15), 0.3)
				RH.C0 = clerp(RH.C0, CF(1, -0.8 - 0.5 * Cos(sine / 7) / 2, 0.6 * Cos(sine / 7) / 2)  * angles(Rad(-15 - 5 * Cos(sine / 7)) - rl.RotVelocity.Y / 75 + -Sin(sine / 7) / 2.5, Rad(90 - 3 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 + 2 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
         		LH.C0 = clerp(LH.C0, CF(-1, -0.8 + 0.5 * Cos(sine / 7) / 2, -0.6 * Cos(sine / 7) / 2) * angles(Rad(-15 + 5 * Cos(sine / 7)) + ll.RotVelocity.Y / 75 + Sin(sine / 7) / 2.5, Rad(-90 - 3 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 - 2 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
				RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 7), 0) * angles(Rad(37)  * Cos(sine / 7) , Rad(0), Rad(-.6) - ra.RotVelocity.Y / 75), 0.1)
				LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 7), 0) * angles(Rad(-37)  * Cos(sine / 7) , Rad(0) ,	Rad(.6) + la.RotVelocity.Y / 75), 0.1)
                elseif Mode == 98534 then
                rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.175 + 0.025 * Cos(sine / 3.5) + -Sin(sine / 3.5) / 7) * angles(Rad(9-2.5 * Cos(sine / 3.5)), Rad(0) - root.RotVelocity.Y / 75, Rad(10 * Cos(sine / 7))), 0.15)
                tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(30 * Cos(sine / 20)), Rad(0) - hed.RotVelocity.Y / 15), 0.3)
                RH.C0 = clerp(RH.C0, CF(1, -0.925 - 0.5 * Cos(sine / 7) / 2, 0.5 * Cos(sine / 7) / 2) * angles(Rad(-15 - 35 * Cos(sine / 7)) - rl.RotVelocity.Y / 75 + -Sin(sine / 7) / 2.5, Rad(90 - 0.1 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 + 0.1 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
                LH.C0 = clerp(LH.C0, CF(-1, -0.925 + 0.5 * Cos(sine / 7) / 2, -0.5 * Cos(sine / 7) / 2) * angles(Rad(-15 + 35 * Cos(sine / 7)) + ll.RotVelocity.Y / 75 + Sin(sine / 7) / 2.5, Rad(-90 - 0.1 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 - 0.1 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
                RW.C0 = clerp(RW.C0, CF(1.4, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(0), Rad(-15) - ra.RotVelocity.Y / 75), 0.1)
                LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-70)  * Cos(sine / 7) , Rad(0) ,    Rad(-5) + la.RotVelocity.Y / 75), 0.1)
                elseif Mode == 111111112 then
                rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 2 + 0.25* Player_Size * Cos(sine / 12)) * angles(Rad(25), Rad(0), Rad(0)), 0.1)
                tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-15 - 6.5 * Sin(sine / 12)), Rad(20), Rad(0)), 0.1)
                RH.C0 = clerp(RH.C0, CF(1* Player_Size, -1 - 0.15 * Cos(sine / 20)* Player_Size, -0.1* Player_Size) * angles(Rad(0), Rad(76), Rad(0)) * angles(Rad(-18.5 - 6.5 * Sin(sine / 12)), Rad(0), Rad(-35)), 0.1)
                LH.C0 = clerp(LH.C0, CF(-1.1* Player_Size, -0.6 - 0.15 * Cos(sine / 20)* Player_Size, -0.2* Player_Size) * angles(Rad(0), Rad(-76), Rad(0)) * angles(Rad(-18.5 - 6.5 * Sin(sine / 12)), Rad(15), Rad(35)), 0.1)
                RW.C0 = clerp(RW.C0, CF(1.4* Player_Size, 0.4 + 0.08 * Sin(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(-45 - 6.5 * Cos(sine / 12)), Rad(-.6), Rad(25 + 6.5 * Sin(sine / 12))), 0.1)
                LW.C0 = clerp(LW.C0, CF(-1.4* Player_Size, 0.4 + 0.08 * Sin(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(-45 - 6.5 * Cos(sine / 12)), Rad(-.6), Rad(-25 - 6.5 * Sin(sine / 12))), 0.1)
                elseif Mode == 111111111 then
                rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.175 + 0.025 * Cos(sine / 3.5) + -Sin(sine / 3.5) / 7) * angles(Rad(3 - 2.5 * Cos(sine / 3.5)), Rad(0) - root.RotVelocity.Y / 75, Rad(3 * Cos(sine / 7))), 0.15)
                tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(6 - 2.5 * Sin(sine / 7)), Rad(0), Rad(0) - hed.RotVelocity.Y / 15), 0.3)
                RH.C0 = clerp(RH.C0, CF(1, -0.8 - 0.5 * Cos(sine / 7) / 2, 0.6 * Cos(sine / 7) / 2)  * angles(Rad(-15 - 5 * Cos(sine / 7)) - rl.RotVelocity.Y / 75 + -Sin(sine / 7) / 2.5, Rad(90 - 3 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 + 2 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
                LH.C0 = clerp(LH.C0, CF(-1, -0.8 + 0.5 * Cos(sine / 7) / 2, -0.6 * Cos(sine / 7) / 2) * angles(Rad(-15 + 5 * Cos(sine / 7)) + ll.RotVelocity.Y / 75 + Sin(sine / 7) / 2.5, Rad(-90 - 3 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 - 2 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
                RW.C0 = clerp(RW.C0, CF(1* Player_Size, 0.3 + 0.02 * Sin(sine / 20)* Player_Size, .6* Player_Size) * angles(Rad(-35), Rad(-25 + 2.5 * Sin(sine / 20)), Rad(-55 + 2.5 * Sin(sine / 20))), 0.12)
                LW.C0 = clerp(LW.C0, CF(-1* Player_Size, 0.3 + 0.02 * Sin(sine / 20)* Player_Size, .6* Player_Size) * angles(Rad(-35), Rad(25 + 2.5 * Sin(sine / 20)), Rad(55 + 2.5 * Sin(sine / 20))), 0.12)
                elseif Mode == 99900 then
                rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.175 + 0.13 * Cos(sine / 3.5) + -Sin(sine / 3.5) / 7* Player_Size) * angles(Rad(3 - 2.5 * Cos(sine / 3.5)), Rad(0) - root.RotVelocity.Y / 75, Rad(10 * Cos(sine / 7))), 0.15)
                tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0) - hed.RotVelocity.Y / 15), 0.3)
                RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.8 - 0.5 * Cos(sine / 7) / 2* Player_Size, 0.6 * Cos(sine / 7) / 2* Player_Size)  * angles(Rad(-10 - 25 * Cos(sine / 7)) - rl.RotVelocity.Y / 75 + -Sin(sine / 7) / 2.5, Rad(90 - 15 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 + 2 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
                LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.8 + 0.5 * Cos(sine / 7) / 2* Player_Size, -0.6 * Cos(sine / 7) / 2* Player_Size) * angles(Rad(-10 + 25 * Cos(sine / 7)) + ll.RotVelocity.Y / 75 + Sin(sine / 7) / 2.5, Rad(-90 - 15 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 - 2 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
                RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.05 * Sin(sine / 7)* Player_Size, 0* Player_Size) * angles(Rad(57)  * Cos(sine / 7) , Rad(10 * Cos(sine / 7)), Rad(10) - ra.RotVelocity.Y / 75), 0.1)
                LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.05 * Sin(sine / 7)* Player_Size, 0* Player_Size) * angles(Rad(-57)  * Cos(sine / 7) , Rad(10 * Cos(sine / 7)) ,  Rad(-10) + la.RotVelocity.Y / 75), 0.1)
                elseif Mode == 1 then --Normal
                rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, 1.3 + 0.6 * Cos(sine / 20)) * angles(Rad(30), Rad(0), Rad(0)), 0.15)
                tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
                RH.C0 = clerp(RH.C0, CF(1, -0.5 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5 + 3 * Sin(sine / 20)), Rad(0), Rad(-10 + 3 * Sin(sine / 20))), 0.15)
                LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5 + 3 * Sin(sine / 20)), Rad(0), Rad(10 + 3 * Sin(sine / 20))), 0.15)
                RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(-17), Rad(-10 * Cos(sine / 20)), Rad(15 - 2.5 * Sin(sine / 20))), 0.1)
                LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(-17), Rad(10 * Cos(sine / 20)), Rad(-15 + 2.5 * Sin(sine / 20))), 0.1)
                elseif Mode == 7777 then --NORTHING SPECIAL
                rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.175 + 0.025 * Cos(sine / 3.5) + -Sin(sine / 3.5) / 7) * angles(Rad(7-2.5 * Cos(sine / 3.5)), Rad(0), Rad(10 * Cos(sine / 7))), 0.15)
                tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
                RH.C0 = clerp(RH.C0, CF(1, -0.925 - 0.1 * Cos(sine / 3.5), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-1.5), Rad(0), Rad(70) * Cos(sine / 7) ), 0.15)
                LH.C0 = clerp(LH.C0, CF(-1, -0.925 + 0.1 * Cos(sine / 3.5), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-1.5), Rad(0), Rad(70) * Cos(sine / 7) ), 0.15)
                RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(70) * Cos(sine / 7) , Rad(0), Rad(15)), 0.1)
                LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-70) * Cos(sine / 7) , Rad(0),  Rad(-15)), 0.1)
                elseif Mode == 4 then --Infused
                rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, 1.2 + 0.3 * Cos(sine / 20)) * angles(Rad(25), Rad(0), Rad(0)), 0.15)
                tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-5 - 4.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
                RH.C0 = clerp(RH.C0, CF(1, -0.4 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5 + 3 * Sin(sine / 20)), Rad(0), Rad(-20 + 2.5 * Sin(sine / 20))), 0.15)
                LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5 + 3 * Sin(sine / 20)), Rad(0), Rad(20 + 2.5 * Sin(sine / 20))), 0.15)
                RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-25 - 3 * Sin(sine / 20)), Rad(-10 * Sin(sine / 20)), Rad(14 - 2.5 * Sin(sine / 20))), 0.1)
                LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-25 + 4 * Sin(sine / 20)), Rad(10 * Sin(sine / 20)), Rad(-14 + 2.5 * Sin(sine / 20))), 0.1)
                elseif Mode == 56565 then --idk
                rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.175 + 0.025 * Cos(sine / 3.5) + -Sin(sine / 3.5) / 7* Player_Size) * angles(Rad(3 - 2.5 * Cos(sine / 3.5)), Rad(0) - root.RotVelocity.Y / 75, Rad(8 * Cos(sine / 7))), 0.15)
                tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(6 - 2.5 * Sin(sine / 7)), Rad(0), Rad(0) - hed.RotVelocity.Y / 15), 0.3)
                RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.8 - 0.5 * Cos(sine / 7) / 2* Player_Size, 0.6 * Cos(sine / 7) / 2* Player_Size)  * angles(Rad(-10 - 25 * Cos(sine / 7)) - rl.RotVelocity.Y / 75 + -Sin(sine / 7) / 2.5, Rad(90 - 10 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 + 2 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
                LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.8 + 0.5 * Cos(sine / 7) / 2* Player_Size, -0.6 * Cos(sine / 7) / 2* Player_Size) * angles(Rad(-10 + 25 * Cos(sine / 7)) + ll.RotVelocity.Y / 75 + Sin(sine / 7) / 2.5, Rad(-90 - 10 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 - 2 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
                RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.05 * Sin(sine / 7)* Player_Size, 0* Player_Size) * angles(Rad(37)  * Cos(sine / 7) , Rad(8 * Cos(sine / 7)), Rad(6) - ra.RotVelocity.Y / 75), 0.1)
                LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.05 * Sin(sine / 7)* Player_Size, 0* Player_Size) * angles(Rad(-37)  * Cos(sine / 7) , Rad(8 * Cos(sine / 7)) ,   Rad(-6) + la.RotVelocity.Y / 75), 0.1)
                elseif Mode == 8888 then --ik
                rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.175 + 0.025 * Cos(sine / 3.5) + -Sin(sine / 3.5) / 7* Player_Size) * angles(Rad(3 - 2.5 * Cos(sine / 3.5)), Rad(0) - root.RotVelocity.Y / 75, Rad(8 * Cos(sine / 7))), 0.15)
                tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(6 - 2.5 * Sin(sine / 7)), Rad(0), Rad(0) - hed.RotVelocity.Y / 15), 0.3)
                RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -0.8 * Player_Size - 0.5 * Player_Size * Cos(sine / 7) / 2 * Player_Size, 0.6 * Player_Size * Cos(sine / 7) / 2 * Player_Size)  * angles(Rad(-15 - 35 * Cos(sine / 7)) - rl.RotVelocity.Y / 75 + -Sin(sine / 7) / 2.5, Rad(90 - 3 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 + 2 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
                LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -0.8 * Player_Size + 0.5 * Player_Size * Cos(sine / 7) / 2 * Player_Size, -0.6 * Player_Size * Cos(sine / 7) / 2 * Player_Size) * angles(Rad(-15 + 35 * Cos(sine / 7)) + ll.RotVelocity.Y / 75 + Sin(sine / 7) / 2.5, Rad(-90 - 3 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 - 2 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
                RW.C0 = clerp(RW.C0, CF(1.5 * Player_Size, 0.5 + 0.02 * Sin(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(65) * Cos(sine / 7), Rad(-.6), Rad(15 + 4.5 * Sin(sine / 12))), 0.1)
                LW.C0 = clerp(LW.C0, CF(-1.5 * Player_Size, 0.5 + 0.02 * Sin(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(-65) * Cos(sine / 7), Rad(-.6), Rad(-15 - 4.5 * Sin(sine / 12))), 0.1)
            elseif Mode == 1555 then --anime
                rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.175 + 0.025 * Cos(sine / 3.5) + -Sin(sine / 3.5) / 7* Player_Size) * angles(Rad(3 - 2.5 * Cos(sine / 3.5)), Rad(0) - root.RotVelocity.Y / 75, Rad(8 * Cos(sine / 7))), 0.15)
                tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(6 - 2.5 * Sin(sine / 7)), Rad(0), Rad(0) - hed.RotVelocity.Y / 15), 0.3)
                RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.8 - 0.5 * Cos(sine / 7) / 2* Player_Size, 0.6 * Cos(sine / 7) / 2* Player_Size)  * angles(Rad(-10 - 25 * Cos(sine / 7)) - rl.RotVelocity.Y / 75 + -Sin(sine / 7) / 2.5, Rad(90 - 10 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 + 2 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
                LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.8 + 0.5 * Cos(sine / 7) / 2* Player_Size, -0.6 * Cos(sine / 7) / 2* Player_Size) * angles(Rad(-10 + 25 * Cos(sine / 7)) + ll.RotVelocity.Y / 75 + Sin(sine / 7) / 2.5, Rad(-90 - 10 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 - 2 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
                RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.05 * Sin(sine / 7)* Player_Size, 0* Player_Size) * angles(Rad(37)  * Cos(sine / 7) , Rad(8 * Cos(sine / 7)), Rad(6) - ra.RotVelocity.Y / 75), 0.1)
                LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.05 * Sin(sine / 7)* Player_Size, 0* Player_Size) * angles(Rad(-37)  * Cos(sine / 7) , Rad(8 * Cos(sine / 7)) ,   Rad(-6) + la.RotVelocity.Y / 75), 0.1)
            elseif Mode == 6666 then
                rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.175 + 0.025 * Cos(sine / 3.5) + -Sin(sine / 3.5) / 7) * angles(Rad(9-2.5 * Cos(sine / 3.5)), Rad(0), Rad(10 * Cos(sine / 7))), 0.15)
                tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
                RH.C0 = clerp(RH.C0, CFrame.new(1, -0.925 - 0.5 * math.cos(sine / 7) / 2, 0.5 * math.cos(sine / 7) / 2) * angles(math.rad(-15 - 35 * math.cos(sine / 7)) + -math.sin(sine / 7) / 2.5, math.rad(90 - 2 * math.cos(sine / 7)), math.rad(0)) * angles(math.rad(0 + 2.5 * math.cos(sine / 7)), math.rad(0), math.rad(0)), 0.3)
                LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.925 + 0.5 * math.cos(sine / 7) / 2, -0.5 * math.cos(sine / 7) / 2) * angles(math.rad(-15 + 35 * math.cos(sine / 7)) + math.sin(sine / 7) / 2.5, math.rad(-90 - 2 * math.cos(sine / 7)), math.rad(0)) * angles(math.rad(0 - 2.5 * math.cos(sine / 7)), math.rad(0), math.rad(0)), 0.3)
                RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(70) * Cos(sine / 7) , Rad(0), Rad(5)), 0.1)
                LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-70) * Cos(sine / 7) , Rad(0),  Rad(-5)), 0.1)
            elseif Mode == 1800 then
                rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.175 + 0.025 * Cos(sine / 3.5) + -Sin(sine / 3.5) / 7* Player_Size) * angles(Rad(20 - 2.5 * Cos(sine / 3.5)), Rad(0) - root.RotVelocity.Y / 75, Rad(8 * Cos(sine / 7))), 0.15)
                tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(46 - 2.5 * Sin(sine / 7)), Rad(0), Rad(0) - hed.RotVelocity.Y / 15), 0.3)
                RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.8 - 0.5 * Cos(sine / 7) / 2* Player_Size, 0.6 * Cos(sine / 7) / 2* Player_Size)  * angles(Rad(-5 - 5 * Cos(sine / 7)) - rl.RotVelocity.Y / 75 + -Sin(sine / 7) / 2.5, Rad(90 - 3 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 + 2 * Cos(sine / 7)), Rad(0), Rad(20)), 0.3)
                    LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.8 + 0.5 * Cos(sine / 7) / 2* Player_Size, -0.6 * Cos(sine / 7) / 2* Player_Size) * angles(Rad(-5 + 5 * Cos(sine / 7)) + ll.RotVelocity.Y / 75 + Sin(sine / 7) / 2.5, Rad(-90 - 3 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 - 2 * Cos(sine / 7)), Rad(0), Rad(-20)), 0.3)
                RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.05 * Sin(sine / 7)* Player_Size, 0* Player_Size) * angles(Rad(25 + 15 * Cos(sine / 7)), Rad(0), Rad(5) - ra.RotVelocity.Y / 75), 0.1)
                LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.05 * Sin(sine / 7)* Player_Size, 0* Player_Size) * angles(Rad(25 - 15 * Cos(sine / 7)), Rad(0), Rad(-5) + la.RotVelocity.Y / 75), 0.1)
            elseif Mode == 5 then
                rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 1 + 0.5 * Player_Size * Cos(sine / 20)) * angles(Rad(20), Rad(0), Rad(0)), 0.15)
                tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(15 - 2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
                RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.3 - 0.1 * Cos(sine / 20)* Player_Size, -.4* Player_Size) * angles(Rad(0), Rad(80), Rad(0)) * angles(Rad(-10.5 + 3.5 * Sin(sine / 20)), Rad(0), Rad(-20)), 0.15)
                LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-80), Rad(0)) * angles(Rad(-10.5 + 3.5 * Sin(sine / 20)), Rad(0), Rad(20)), 0.15)
                RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-35), Rad(0), Rad(25)), 0.1)
                LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-35), Rad(0), Rad(-25)), 0.1)
            elseif Mode == 25 then
                rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 1 + 0.5 * Player_Size * Cos(sine / 20)) * angles(Rad(20), Rad(0), Rad(0)), 0.15)
                tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(15 - 2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
                RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.3 - 0.1 * Cos(sine / 20)* Player_Size, -.4* Player_Size) * angles(Rad(0), Rad(80), Rad(0)) * angles(Rad(-10.5 + 3.5 * Sin(sine / 20)), Rad(0), Rad(-20)), 0.15)
                LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-80), Rad(0)) * angles(Rad(-10.5 + 3.5 * Sin(sine / 20)), Rad(0), Rad(20)), 0.15)
                RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-35), Rad(0), Rad(25)), 0.1)
                LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-35), Rad(0), Rad(-25)), 0.1)
            elseif Mode == 100 then
                rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, 1.3 + 0.6 * Cos(sine / 20)) * angles(Rad(30), Rad(0), Rad(0)), 0.15)
                tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
                RH.C0 = clerp(RH.C0, CF(1, -0.5 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5 + 3 * Sin(sine / 20)), Rad(0), Rad(-10 + 3 * Sin(sine / 20))), 0.15)
                LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5 + 3 * Sin(sine / 20)), Rad(0), Rad(10 + 3 * Sin(sine / 20))), 0.15)
                RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(-17), Rad(-10 * Cos(sine / 20)), Rad(15 - 2.5 * Sin(sine / 20))), 0.1)
                LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(-17), Rad(10 * Cos(sine / 20)), Rad(-15 + 2.5 * Sin(sine / 20))), 0.1)
            elseif Mode == 10 then
                tors.Neck.C0 = clerp(tors.Neck.C0, necko * CF(0, 0, 0 + ((1) - 1)) * angles(Rad(55 + Mrandom(-20,20)), Rad(Mrandom(-20,20)), Rad(-0 + Mrandom(-20,20))), 1)
                rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, 1.3 + 0.6 * Cos(sine / 20)) * angles(Rad(30), Rad(0), Rad(0)), 0.15)
                tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(55), Rad(0), Rad(-0)), 0.3)
                RH.C0 = clerp(RH.C0, CF(1, -0.5 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5 + Mrandom(-23,23)), Rad(0 + Mrandom(-23,23)), Rad(35 + Mrandom(-23,23))), 0.15)
                LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5 + Mrandom(-23,23)), Rad(0 + Mrandom(-23,23)), Rad(-35 + Mrandom(-23,23))), 0.15)
                RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(35 + Mrandom(-23,23)), Rad(-10 + Mrandom(-23,23)), Rad(15 + Mrandom(-23,23))), 0.1)
                LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(35 + Mrandom(-23,23)), Rad(10 + Mrandom(-23,23)), Rad(-15 + Mrandom(-23,23))), 0.1)
            elseif Mode == 8 then
                rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 0.8 + 0.2* Player_Size * Cos(sine / 20)) * angles(Rad(20), Rad(0), Rad(0)), 0.08)
                tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(15 - 4.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.08)
                RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.3 - 0.1 * Cos(sine / 20)* Player_Size, -0.5* Player_Size) * angles(Rad(0), Rad(75), Rad(0)) * angles(Rad(-6.5), Rad(0), Rad(-20)), 0.08)
                LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-75), Rad(0)) * angles(Rad(-6.5), Rad(0), Rad(20)), 0.08)
                RW.C0 = clerp(RW.C0, CF(1* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, .6* Player_Size) * angles(Rad(-20), Rad(-.6), Rad(-43)), 0.08)
                LW.C0 = clerp(LW.C0, CF(-1 * Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, .6* Player_Size) * angles(Rad(-20), Rad(-.6), Rad(43)), 0.08)
            elseif Mode ~= 6 or Mode ~= 5 or Mode ~= 8 then
                rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.175 + 0.025 * Cos(sine / 3.5) + -Sin(sine / 3.5) / 7* Player_Size) * angles(Rad(3 - 2.5 * Cos(sine / 3.5)), Rad(0) - root.RotVelocity.Y / 75, Rad(8 * Cos(sine / 7))), 0.15)
                tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(6 - 2.5 * Sin(sine / 7)), Rad(0), Rad(0) - hed.RotVelocity.Y / 15), 0.3)
                RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.8 - 0.5 * Cos(sine / 7) / 2* Player_Size, 0.6 * Cos(sine / 7) / 2* Player_Size)  * angles(Rad(-15 - 5 * Cos(sine / 7)) - rl.RotVelocity.Y / 75 + -Sin(sine / 7) / 2.5, Rad(90 - 3 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 + 2 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
                    LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.8 + 0.5 * Cos(sine / 7) / 2* Player_Size, -0.6 * Cos(sine / 7) / 2* Player_Size) * angles(Rad(-15 + 5 * Cos(sine / 7)) + ll.RotVelocity.Y / 75 + Sin(sine / 7) / 2.5, Rad(-90 - 3 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 - 2 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
                RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.05 * Sin(sine / 7)* Player_Size, 0* Player_Size) * angles(Rad(37)  * Cos(sine / 7) , Rad(0), Rad(5) - ra.RotVelocity.Y / 75), 0.1)
                LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.05 * Sin(sine / 7)* Player_Size, 0* Player_Size) * angles(Rad(-37)  * Cos(sine / 7) , Rad(0) ,   Rad(-5) + la.RotVelocity.Y / 75), 0.1)
            end
            end
        elseif torvel >= 25 and hitfloor ~= nil then
            Anim = "Sprint"
            change = 1.35
            if attack == false then
        if Mode == 5 then
            rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 1 + 0.5 * Player_Size * Cos(sine / 20)) * angles(Rad(45), Rad(0), Rad(0)), 0.15)
            tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(5 - 2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
            RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.3 - 0.1 * Cos(sine / 20)* Player_Size, -.4* Player_Size) * angles(Rad(0), Rad(80), Rad(0)) * angles(Rad(-10.5 + 3.5 * Sin(sine / 20)), Rad(0), Rad(-45)), 0.15)
            LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-80), Rad(0)) * angles(Rad(-10.5 + 3.5 * Sin(sine / 20)), Rad(0), Rad(45)), 0.15)
            RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-65), Rad(0), Rad(25)), 0.1)
            LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-65), Rad(0), Rad(-25)), 0.1)
        elseif Mode == 56565 then
            rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.175 + 0.025 * Cos(sine / 3.5) + -Sin(sine / 3.5) / 7) * angles(Rad(26 - 4.5 * Cos(sine / 3.5)), Rad(0) - root.RotVelocity.Y / 75, Rad(15 * Cos(sine / 7))), 0.15)
            tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-2.5 * Sin(sine / 20)), Rad(0), Rad(0) - hed.RotVelocity.Y / 15), 0.3)
            RH.C0 = clerp(RH.C0, CF(1, -0.925 - 0.5 * Cos(sine / 7) / 2, 0.7 * Cos(sine / 7) / 2) * angles(Rad(-15 - 55 * Cos(sine / 7)) - rl.RotVelocity.Y / 75 + -Sin(sine / 7) / 2.5, Rad(90 - 0.1 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 + 0.1 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
            LH.C0 = clerp(LH.C0, CF(-1, -0.925 + 0.5 * Cos(sine / 7) / 2, -0.7 * Cos(sine / 7) / 2) * angles(Rad(-15 + 55 * Cos(sine / 7)) + ll.RotVelocity.Y / 75 + Sin(sine / 7) / 2.5, Rad(-90 - 0.1 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 - 0.1 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
            RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.34 * Cos(sine / 7)) * angles(Rad(110)  * Cos(sine / 7) , Rad(0), Rad(13) - ra.RotVelocity.Y / 75), 0.15)
            LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), -0.34 * Cos(sine / 7)) * angles(Rad(-110)  * Cos(sine / 7) , Rad(0) ,    Rad(-13) + la.RotVelocity.Y / 75), 0.15)
        elseif Mode  == 111111111 then
            rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.175 + 0.025 * Cos(sine / 3.5) + -Sin(sine / 3.5) / 7) * angles(Rad(26 - 4.5 * Cos(sine / 3.5)), Rad(0) - root.RotVelocity.Y / 75, Rad(15 * Cos(sine / 7))), 0.15)
            tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-2.5 * Sin(sine / 20)), Rad(0), Rad(0) - hed.RotVelocity.Y / 15), 0.3)
            RH.C0 = clerp(RH.C0, CF(1, -0.925 - 0.5 * Cos(sine / 7) / 2, 0.7 * Cos(sine / 7) / 2) * angles(Rad(-15 - 55 * Cos(sine / 7)) - rl.RotVelocity.Y / 75 + -Sin(sine / 7) / 2.5, Rad(90 - 0.1 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 + 0.1 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
            LH.C0 = clerp(LH.C0, CF(-1, -0.925 + 0.5 * Cos(sine / 7) / 2, -0.7 * Cos(sine / 7) / 2) * angles(Rad(-15 + 55 * Cos(sine / 7)) + ll.RotVelocity.Y / 75 + Sin(sine / 7) / 2.5, Rad(-90 - 0.1 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 - 0.1 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
            RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.34 * Cos(sine / 7)) * angles(Rad(110)  * Cos(sine / 7) , Rad(0), Rad(13) - ra.RotVelocity.Y / 75), 0.15)
            LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), -0.34 * Cos(sine / 7)) * angles(Rad(-110)  * Cos(sine / 7) , Rad(0) ,    Rad(-13) + la.RotVelocity.Y / 75), 0.15)
        elseif Mode  == 4 then
                rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, 1.2 + 0.3 * Cos(sine / 20)) * angles(Rad(45), Rad(0), Rad(0)), 0.15)
                tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-5 - 4.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
                RH.C0 = clerp(RH.C0, CF(1, -0.4 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5 + 3 * Sin(sine / 20)), Rad(0), Rad(-34 + 2.5 * Sin(sine / 20))), 0.15)
                LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5 + 3 * Sin(sine / 20)), Rad(0), Rad(34 + 2.5 * Sin(sine / 20))), 0.15)
                RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-55 - 3 * Sin(sine / 20)), Rad(-10 * Sin(sine / 20)), Rad(14 - 2.5 * Sin(sine / 20))), 0.1)
                LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-55 + 4 * Sin(sine / 20)), Rad(10 * Sin(sine / 20)), Rad(-14 + 2.5 * Sin(sine / 20))), 0.1) 
        elseif Mode == 1 then
                rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, 1.3 + 0.6 * Cos(sine / 20)) * angles(Rad(65), Rad(0), Rad(0)), 0.15)
                tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-25 - 2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
                RH.C0 = clerp(RH.C0, CF(1, -0.5 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-14.5 + 3 * Sin(sine / 20)), Rad(0), Rad(-35 + 3 * Sin(sine / 20))), 0.15)
                LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-16.5 + 3 * Sin(sine / 20)), Rad(0), Rad(35 + 3 * Sin(sine / 20))), 0.15)
                RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(-35), Rad(-10 * Cos(sine / 20)), Rad(25 - 2.5 * Sin(sine / 20))), 0.1)
                LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(-35), Rad(10 * Cos(sine / 20)), Rad(-25 + 2.5 * Sin(sine / 20))), 0.1)
        elseif Mode == 25 or Mode == 10 then
            rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 1 + 0.5 * Player_Size * Cos(sine / 20)) * angles(Rad(45), Rad(0), Rad(0)), 0.15)
            tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(5 - 2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
            RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.3 - 0.1 * Cos(sine / 20)* Player_Size, -.4* Player_Size) * angles(Rad(0), Rad(80), Rad(0)) * angles(Rad(-10.5 + 3.5 * Sin(sine / 20)), Rad(0), Rad(-45)), 0.15)
            LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-80), Rad(0)) * angles(Rad(-10.5 + 3.5 * Sin(sine / 20)), Rad(0), Rad(45)), 0.15)
            RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-65), Rad(0), Rad(25)), 0.1)
            LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-65), Rad(0), Rad(-25)), 0.1)
        elseif Mode ~= 5 then
            rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.175 + 0.025 * Cos(sine / 3.5) + -Sin(sine / 3.5) / 7* Player_Size) * angles(Rad(26 - 4.5 * Cos(sine / 3.5)), Rad(0) - root.RotVelocity.Y / 75, Rad(15 * Cos(sine / 7))), 0.15)
            tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-2.5 * Sin(sine / 20)), Rad(0), Rad(0) - hed.RotVelocity.Y / 15), 0.3)
            RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.925 - 0.5 * Cos(sine / 7) / 2* Player_Size, 0.7 * Cos(sine / 7) / 2* Player_Size) * angles(Rad(-15 - 55 * Cos(sine / 7)) - rl.RotVelocity.Y / 75 + -Sin(sine / 7) / 2.5, Rad(90 - 0.1 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 + 0.1 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
                LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.925 + 0.5 * Cos(sine / 7) / 2* Player_Size, -0.7 * Cos(sine / 7) / 2* Player_Size) * angles(Rad(-15 + 55 * Cos(sine / 7)) + ll.RotVelocity.Y / 75 + Sin(sine / 7) / 2.5, Rad(-90 - 0.1 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 - 0.1 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
            RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.05 * Sin(sine / 30)* Player_Size, 0.34 * Cos(sine / 7* Player_Size)) * angles(Rad(125)  * Cos(sine / 7) , Rad(0), Rad(5) - ra.RotVelocity.Y / 75), 0.15)
            LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.05 * Sin(sine / 30)* Player_Size, -0.34 * Cos(sine / 7* Player_Size)) * angles(Rad(-125)  * Cos(sine / 7) , Rad(0) , Rad(-5) + la.RotVelocity.Y / 75), 0.15)
            end
            end
        end
    end
    Music.SoundId = "rbxassetid://"..SONG
    Music.Looped = true
    Music.Pitch = 1
    Music.Volume = 2.5
    Music.Parent = tors
    Music:Resume()
    if 0 < #Effects then
        for e = 1, #Effects do
            if Effects[e] ~= nil then
                local Thing = Effects[e]
                if Thing ~= nil then
                    local Part = Thing[1]
                    local Mode = Thing[2]
                    local Delay = Thing[3]
                    local IncX = Thing[4]
                    local IncY = Thing[5]
                    local IncZ = Thing[6]
                    if 1 >= Thing[1].Transparency then
                        if Thing[2] == "Block1" then
                            Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                            local Mesh = Thing[1].Mesh
                            Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                            Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                        elseif Thing[2] == "Block2" then
                            Thing[1].CFrame = Thing[1].CFrame + Vector3.new(0, 0, 0)
                            local Mesh = Thing[7]
                            Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                            Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                        elseif Thing[2] == "Block3" then
                            Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)) + Vector3.new(0, 0.15, 0)
                            local Mesh = Thing[7]
                            Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                            Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                        elseif Thing[2] == "Cylinder" then
                            local Mesh = Thing[1].Mesh
                            Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                            Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                        elseif Thing[2] == "Blood" then
                            local Mesh = Thing[7]
                            Thing[1].CFrame = Thing[1].CFrame * Vector3.new(0, 0.5, 0)
                            Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                            Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                        elseif Thing[2] == "Elec" then                          local Mesh = Thing[1].Mesh
                            Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
                            Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                        elseif Thing[2] == "Disappear" then
                            Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                        elseif Thing[2] == "Shatter" then
                            Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                            Thing[4] = Thing[4] * CFrame.new(0, Thing[7], 0)
                            Thing[1].CFrame = Thing[4] * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
                            Thing[6] = Thing[6] + Thing[5]
                        end
                    else
                        Part.Parent = nil
                        table.remove(Effects, e)
                    end
                end
            end
        end
    end
end
-------------------------------------------------------
--End Animations And Script--