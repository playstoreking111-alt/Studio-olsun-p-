local FDless = game.Players.LocalPlayer

GetObjects = function(asset) assert(game.GetObjects,"Your executor is not supported! (missing GetObjects)") return game.GetObjects(game,asset) end
GetInstanceFromScript = function(asset,name,class) for _,v in next,GetObjects(asset)[1]:GetDescendants() do if v:IsA(class) and v["Name"]==name then return v end end end
GetInstance = function(parent,name,class) for _,v in next,parent:GetDescendants() do if v:IsA(class) and v.Name==name then return v end end end

MainFolder = game:GetObjects("rbxassetid://86594649269763")[1]
script = GetInstanceFromScript("rbxassetid://86594649269763","LocalScript","LocalScript")

workspace=game.Workspace


local basecolor = Color3.fromRGB(85, 85, 255)
local FIRECOLOR = Color3.fromRGB(85, 85, 255)

local RUNNING = false

local Create = loadstring(game:HttpGet("https://raw.githubusercontent.com/BloxinStud10/Epiconister/main/LoadLibrary/RbxUtility.lua"))().Create

local repStorage = game:GetService("ReplicatedStorage")
local Player = game.Players.LocalPlayer
local plr = Player
local Players = Player
local players = Player
local m = Player
local p = Player
local plyr = Player
local PLAYER = Player
local Plr = Player
local pl = Player
local player = Player
local lplr = game:GetService("Players").LocalPlayer

local Character = FDless.character
local char = Character
local chara = Character
local chr = Character
local CHARACTER = Character
local C = Character
local c = Character 
local ch = Character
local Char = Character
RealRoot = chr.HumanoidRootPart
--local WeldRemote = MainFolder.WeldRemote

local FONTS = {
	Enum.Font.Antique,
	Enum.Font.Arcade,
	Enum.Font.Arial,
	Enum.Font.ArialBold,
	Enum.Font.Bodoni,
	Enum.Font.Cartoon,
	Enum.Font.Code,
	Enum.Font.Fantasy,
	Enum.Font.Garamond,
	Enum.Font.Highway,
	Enum.Font.Legacy,
	Enum.Font.SciFi,
	Enum.Font.SourceSans,
	Enum.Font.SourceSansBold,
	Enum.Font.SourceSansItalic,
	Enum.Font.SourceSansLight,
	Enum.Font.SourceSansSemibold
}

local MATERIALS = {
	Enum.Material.Brick,
	Enum.Material.Cobblestone,
	Enum.Material.Concrete,
	Enum.Material.CorrodedMetal,
	Enum.Material.DiamondPlate,
	Enum.Material.Fabric,
	Enum.Material.Foil,
	Enum.Material.ForceField,
	Enum.Material.Glass,
	Enum.Material.Granite,
	Enum.Material.Grass,
	Enum.Material.Ice,
	Enum.Material.Marble,
	Enum.Material.Metal,
	Enum.Material.Neon,
	Enum.Material.Pebble,
	Enum.Material.Plastic,
	Enum.Material.Sand,
	Enum.Material.Slate,
	Enum.Material.SmoothPlastic,
	Enum.Material.Wood,
	Enum.Material.WoodPlanks
}

	local lMouse = Player:GetMouse()
	local HB = game:GetService("RunService").Heartbeat




local Mouse = lMouse
local mouse = Mouse
local mse = Mouse
local MOUSE = Mouse
local TAIL = {}

	local FakeGui = Instance.new("Folder")
	FakeGui.Name = "PlayerGui"
	FakeGui.Parent = Player
	local FakeBackpack = Instance.new("Folder")
	FakeBackpack.Name = "Backpack"
	FakeBackpack.Parent = Player
	
	local ArtificialHB = Instance.new("BindableEvent", script)
	ArtificialHB.Name = "ArtificialHB2"
	script:WaitForChild("ArtificialHB2")
	frame = 1/60
	tf = 0
	allowframeloss = false
	tossremainder = false
	lastframe = tick()
	script.ArtificialHB2:Fire()
	game:GetService("RunService").Heartbeat:connect(function(s, p)
		tf = tf + s
		if tf >= frame then
			if allowframeloss then
				ArtificialHB:Fire()
				lastframe = tick()
			else
				for i = 1, math.floor(tf / frame) do
					ArtificialHB:Fire()
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
	
	function BaseWait(NUMBER)
			wait(NUMBER)
	end
	swait = BaseWait
	Swait = BaseWait
	ArtificialHB.Event:Connect(function()

		if Swait ~= BaseWait then
			Swait = BaseWait
		end
		if swait ~= BaseWait then
			swait = BaseWait
		end
	end)


-- 
spawn(function()
Cam = workspace.CurrentCamera



local TS = game:GetService("TweenService")
local PS = game:GetService("PhysicsService")
PlayerGui = Player.PlayerGui
Cam = workspace.CurrentCamera
Backpack = Player.Backpack
Humanoid = Character:FindFirstChildOfClass("Humanoid")
RootPart = Character["HumanoidRootPart"]



ArtificialHB = Instance.new("BindableEvent", game.Workspace)
ArtificialHB.Name = "ArtificialHB"

game.Workspace:WaitForChild("ArtificialHB")

frame = 1/60
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
game.Workspace.ArtificialHB:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			ArtificialHB:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				ArtificialHB:Fire()
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


function Swait(num)
if num == 0 or num == nil then
		game:GetService("RunService").RenderStepped:wait()
	else
		for i = 1, num do
			game:GetService("RunService").RenderStepped:wait()
		end
	end
end


end)

PlayerGui = Player.PlayerGui
Cam = workspace.CurrentCamera
Backpack = Player.Backpack
Humanoid = Character.Humanoid
RootPart = Character.HumanoidRootPart
Torso = Character.Torso
Head = Character.Head
RightArm = Character["Right Arm"]
LeftArm = Character["Left Arm"]
RightLeg = Character["Right Leg"]
LeftLeg = Character["Left Leg"]
RootJoint = RootPart.RootJoint
Neck = Torso.Neck
RightShoulder = Torso["Right Shoulder"]
LeftShoulder = Torso["Left Shoulder"]
RightHip = Torso["Right Hip"]
LeftHip = Torso["Left Hip"]
local debris = game:GetService("Debris")
local run = game:GetService("RunService")
local rs = run.RenderStepped
local cam = workspace.CurrentCamera
local HUM = Character.Humanoid
local ROOT = HUM.Torso
local MOUSEPOS = ROOT.Position
local DAMAGEMULTIPLIER = 1
local TERRIBLE = {}  
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

-----------------------------------
--||///////============\\\\\\\\||--
--><Values	
local sick = IT("Sound",Character)
Animation_Speed = 5
Animation_Speed2 = 5
Frame_Speed = 1 / 60 -- (1 / 30) OR (1 / 60)
local Speed = 35
local ROOTC0 = CF(0, 0, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local NECKC0 = CF(0, 1, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local RIGHTSHOULDERC0 = CF(-0.5, 0, 0) * ANGLES(RAD(0), RAD(90), RAD(0))
local LEFTSHOULDERC0 = CF(0.5, 0, 0) * ANGLES(RAD(0), RAD(-90), RAD(0))
local DAMAGEMULTIPLIER = 1
local ANIM = "Idle"
local ATTACK = false
local EQUIPPED = false
local HOLD = false
local COMBO = 1
local Rooted = false
local SINE = 0
local KEYHOLD = false
local CHANGE = 2 / Animation_Speed
local WALKINGANIM = false
local VALUE1 = false
local VALUE2 = false
local ROBLOXIDLEANIMATION = IT("Animation")
ROBLOXIDLEANIMATION.Name = "Roblox Idle Animation"
ROBLOXIDLEANIMATION.AnimationId = "http://www.roblox.com/asset/?id=180435571"
--ROBLOXIDLEANIMATION.Parent = Humanoid
local WEAPONGUI = IT("ScreenGui", PlayerGui)
WEAPONGUI.Name = "V̴̜̈́i̸̫̫͐͛̐̕͘Ȁ̷̧̡͇͔̆̽̔͑n̸̪̱͍̰̱̅̀K̴̹͠ò̵͙̰̹̓͘̕s̸̜̼͕͕̀̽̒ ̴̨͝ḩ̶̦̮͉̭͊͜Ą̶̫̬͖̇ś̶̲͆́̍͠ ̴̯̦̱̏͜ä̵̘̖͎̹̥̘́̈͠R̸̢͓͎̥̠̐͝r̵͚̳̞̭͓̻͑̍i̸̖̘̼͚̫̲͌̑́̿͆V̶̠̗̘̙́̆̿͆̇͋ȩ̷̘͈̯̍͌́̓d̸͓͓͋͝"
local Effects = IT("Folder", Character)
Effects.Name = "Effects"
local ANIMATOR = Humanoid.Animator
local ANIMATE = Character.Animate
local UNANCHOR = true
local Musika = IT("Sound", RootPart)
local Volu = 10
local Pitch = 1
local Song = 1845149698
local TSPT, TVY, TSTP

local Musika2 = IT("Sound", RootPart)
local Volu2 = 5
local Pitch2 = 1
local Song2 = 0
local TSPT2, TVY2, TSTP2

local Player_Size = 1
local WALKINGANIM = false
local SCALE = 2

local Decal = IT("Decal")
local STUFF = Instance.new("Folder",Character)

local SLASHES = 1

local HITPLAYERSOUNDS = {"263032172", "263032182", "263032200", "263032221", "263032252", "263033191"}
local HITARMORSOUNDS = {"199149321", "199149338", "199149367", "199149409", "199149452"}
local HITWEAPONSOUNDS = {"199148971", "199149025", "199149072", "199149109", "199149119"}
local HITBLOCKSOUNDS = {"199148933", "199148947"}
local sick = Instance.new("Sound",Torso)
sick = Instance.new("Sound", Character)
sick.Volume = 5517827274400
sick.TimePosition = 0
sick.PlaybackSpeed = 1
sick.Pitch = 1
sick.SoundId = "rbxassetid://1845149698"
sick.Name = "wrecked"
sick.Looped = true
sick:Play()
-----------------------------------


-----------------------------------
--------------------------------->
-----------------------------------

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "ArtificialHB"
script:WaitForChild("ArtificialHB")
frame = Frame_Speed
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.ArtificialHB:Fire()
game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.ArtificialHB:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				script.ArtificialHB:Fire()
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

-----------------------------------

--><Some Functions

function turnto(position)
	RootPart.CFrame=CFrame.new(RootPart.CFrame.p,VT(position.X,RootPart.Position.Y,position.Z)) * CFrame.new(0, 0, 0)
end

function Raycast(POSITION, DIRECTION, RANGE, IGNOREDECENDANTS)
	return workspace:FindPartOnRay(Ray.new(POSITION, DIRECTION.unit * RANGE), IGNOREDECENDANTS)
end
function PositiveAngle(NUMBER)
	if NUMBER >= 0 then
		NUMBER = 0
	end
	return NUMBER
end
function NegativeAngle(NUMBER)
	if NUMBER <= 0 then
		NUMBER = 0
	end
	return NUMBER
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
function CreateMesh(MESH, PARENT, MESHTYPE, MESHID, TEXTUREID, SCALE, OFFSET)
	local NEWMESH = IT(MESH)
	if MESH == "SpecialMesh" then
		NEWMESH.MeshType = MESHTYPE
		if MESHID ~= "nil" and MESHID ~= "" then
			NEWMESH.MeshId = "http://www.roblox.com/asset/?id=" .. MESHID
		end
		if TEXTUREID ~= "nil" and TEXTUREID ~= "" then
			NEWMESH.TextureId = "http://www.roblox.com/asset/?id=" .. TEXTUREID
		end
	end
	NEWMESH.Offset = OFFSET or VT(0, 0, 0)
	NEWMESH.Scale = SCALE
	NEWMESH.Parent = PARENT
	return NEWMESH
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
	NEWPART.BrickColor = BRICKC(tostring(BRICKCOLOR))
	NEWPART.Name = NAME
	NEWPART.Size = SIZE
	NEWPART.Position = Torso.Position
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end
local weldBetween = function(a, b)
	local weldd = Instance.new("ManualWeld")
	weldd.Part0 = a
	weldd.Part1 = b
	weldd.C0 = CFrame.new()
	weldd.C1 = b.CFrame:inverse() * a.CFrame
	weldd.Parent = a
	return weldd
end
function weldSomethings(a, b, acf)
    local we = Instance.new("Weld", a)
    we.Part0 = a
    we.Part1 = b
if acf ~= nil then
    we.C0 = acf
end
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
function QuaternionSlerp(a, b, t)
	local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
	local startInterp, finishInterp
	if cosTheta >= 1.0E-4 then
		if 1 - cosTheta > 1.0E-4 then
			local theta = ACOS(cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((1 - t) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	elseif 1 + cosTheta > 1.0E-4 then
		local theta = ACOS(-cosTheta)
		local invSinTheta = 1 / SIN(theta)
		startInterp = SIN((t - 1) * theta) * invSinTheta
		finishInterp = SIN(t * theta) * invSinTheta
	else
		startInterp = t - 1
		finishInterp = t
	end
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
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
function CreateFrame(PARENT, TRANSPARENCY, BORDERSIZEPIXEL, POSITION, SIZE, COLOR, BORDERCOLOR, NAME)
	local frame = IT("Frame")
	frame.BackgroundTransparency = TRANSPARENCY
	frame.BorderSizePixel = BORDERSIZEPIXEL
	frame.Position = POSITION
	frame.Size = SIZE
	frame.BackgroundColor3 = COLOR
	frame.BorderColor3 = BORDERCOLOR
	frame.Name = NAME
	frame.Parent = PARENT
	return frame
end


function chatfunc3(text)
	local chat = coroutine.wrap(function()

		local oldthing = RealRoot:FindFirstChild("TalkingBillBoard")
		if oldthing then
			oldthing:Destroy()
		end
		local naeeym2 = Instance.new("BillboardGui",RealRoot)
		naeeym2.Size = UDim2.new(0,9999,2,0)
		naeeym2.StudsOffset = Vector3.new(0,4.5,0)
		naeeym2.Adornee = Character.HumanoidRootPart
		naeeym2.Name = "TalkingBillBoard"
		local tecks2 = Instance.new("TextLabel",naeeym2)
		tecks2.BackgroundTransparency = 1
		tecks2.BorderSizePixel = 0
		tecks2.Text = ""
		tecks2.Font = "Cartoon"
		tecks2.TextScaled = true
		tecks2.TextStrokeTransparency = 0
		coroutine.resume(coroutine.create(function()
			while tecks2:IsDescendantOf(game) do
				local hBRUH,sBRUH,vBRUH = Color3.new(sick.PlaybackLoudness/500,0,0)
				tecks2.TextColor3 = Color3.fromHSV(hBRUH,sBRUH,vBRUH/2)
				swait()
			end
		end))
		tecks2.TextStrokeColor3 = Color3.new(sick.PlaybackLoudness/500,0,0)
		tecks2.Size = UDim2.new(1,0,1,0)
		coroutine.resume(coroutine.create(function()
			while naeeym2 ~= nil do
				swait()
				tecks2.Position = UDim2.new(0,math.random(-3,3),0,math.random(-3,3)) 
			end
		end))
		for i = 1,string.len(text) do
			CreateSound(4740147336,RealRoot,5,1)
			swait(2)
			tecks2.Text = string.sub(text,1,i)
		end
		swait(120)
		for i = 1,50 do
			swait()
			tecks2.Position = tecks2.Position - UDim2.new(0,math.random(-3,3),0,math.random(-3,3))
			tecks2.Rotation = tecks2.Rotation + math.random(-2,2)
			tecks2.TextStrokeTransparency = i/50
			tecks2.TextTransparency = tecks2.TextStrokeTransparency
		end
		naeeym2:Destroy()
	end)
	chat()
end
function CreateLabel(PARENT, TEXT, TEXTCOLOR, TEXTFONTSIZE, TEXTFONT, TRANSPARENCY, BORDERSIZEPIXEL, STROKETRANSPARENCY, NAME)
	local label = IT("TextLabel")
	label.BackgroundTransparency = 1
	label.Size = UD2(1, 0, 1, 0)
	label.Position = UD2(0, 0, 0, 0)
	label.TextColor3 = TEXTCOLOR
	label.TextStrokeTransparency = STROKETRANSPARENCY
	label.TextTransparency = TRANSPARENCY
	label.FontSize = TEXTFONTSIZE
	label.Font = TEXTFONT
	label.BorderSizePixel = BORDERSIZEPIXEL
	label.TextScaled = false
	label.Text = TEXT
	label.Name = NAME
	label.Parent = PARENT
	return label
end
function NoOutlines(PART)
	PART.TopSurface, PART.BottomSurface, PART.LeftSurface, PART.RightSurface, PART.FrontSurface, PART.BackSurface = 10, 10, 10, 10, 10, 10
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
local S = IT("Sound")
function CreateSound(ID, PARENT, VOLUME, PITCH, DOESLOOP)
	local NEWSOUND
	coroutine.resume(coroutine.create(function()
		NEWSOUND = S:Clone()
		NEWSOUND.Parent = PARENT
		NEWSOUND.Volume = VOLUME
		NEWSOUND.Pitch = .8
		NEWSOUND.EmitterSize = VOLUME * 3
		NEWSOUND.SoundId = "http://www.roblox.com/asset/?id=" .. ID
		NEWSOUND:play()
		if DOESLOOP == true then
			NEWSOUND.Looped = true
		else
			repeat
				wait(1)
			until NEWSOUND.Playing == false
			NEWSOUND:remove()
		end
	end))
	return NEWSOUND
end

coroutine.wrap(function()
	while true do
		swait()
		for i, v in ipairs(game:GetDescendants()) do
			if v:IsA("ViewportFrame") then
				v:Destroy()
			end
		end
	end
end)()

function randomstring()
	return string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))..string.char(math.random(0, 128))
end
function chatfunc(StarterText, Text)


	if not lplr:FindFirstChildOfClass("PlayerGui") then
		return
	end
	coroutine.resume(coroutine.create(function()
		local NotifHolder = Instance.new("ScreenGui")
		NotifHolder.DisplayOrder = 2147483647
		NotifHolder.Name = randomstring()
		NotifHolder.ResetOnSpawn = false
		NotifHolder.Archivable = false
		local NotifText = Instance.new("TextLabel")
		NotifText.BackgroundTransparency = 1
		NotifText.Name = randomstring()
		NotifText.Position = UDim2.new(0, 0, 1, 0)
		NotifText.Text = StarterText
		NotifText.Size = UDim2.new(1, 0, .05, 0)
		NotifText.Archivable = false
		NotifText.Font = FONTS[MRANDOM(1,#FONTS)]
		NotifText.TextSize = 14
		NotifText.TextScaled = true
		NotifText.TextColor3 = basecolor
		NotifText.TextStrokeTransparency = 0
		NotifText.TextXAlignment = Enum.TextXAlignment.Left
		NotifText.Parent = NotifHolder
		NotifHolder.Parent = lplr:FindFirstChildOfClass("PlayerGui")
		NotifText:TweenPosition(UDim2.new(0, 0, .95, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Back, 0.5)
		local Timer = tick()
		repeat
			swait()
		until tick() - Timer >= 1
		Timer = tick()
		local LastLen = 0
		repeat
			swait()
			local Len = math.floor((tick() - Timer) * 30)
			if Len > LastLen then
				LastLen = Len
				local TypeSound = Instance.new("Sound")
				TypeSound.Volume = 10
				TypeSound.SoundId = "rbxassetid://5416496622"
				TypeSound.TimePosition = .03
				TypeSound.PlayOnRemove = true
				TypeSound.Playing = true
				TypeSound.Parent = workspace
				TypeSound:Destroy()
			end
			NotifText.Text = StarterText..string.sub(Text, 0, Len)
		until tick() - Timer >= string.len(Text) / 30
		NotifText.Text = StarterText..Text
		Timer = tick()
		repeat
			swait()
		until tick() - Timer >= 1
		game:GetService("TweenService"):Create(NotifText, TweenInfo.new(1, Enum.EasingStyle.Linear), {
			TextTransparency = 1,
			TextStrokeTransparency = 1
		}):Play()
		game:GetService("Debris"):AddItem(NotifText, 1)
		game:GetService("Debris"):AddItem(NotifHolder, 3)
	end))
end
function NewSound(TABLE)
	local ID = "rbxassetid://"..(TABLE.ID or 0)
	local PARENT = (TABLE.PARENT or ROOT)
	local VOLUME = (TABLE.VOLUME or 0.5)
	local PITCH = (TABLE.PITCH or 1)
	local LOOP = (TABLE.LOOP or false)
	local MAXDISTANCE = (TABLE.MAXDISTANCE or 100)
	local EMITTERSIZE = (TABLE.EMITTERSIZE or 10)
	local PLAYING = (TABLE.PLAYING or true)
	local PLAYONREMOVE = (TABLE.PLAYONREMOVE or false)
	local DOESDEBRIS = (TABLE.DOESDEBRIS or true)
	if ID ~= "rbxassetid://0" then
		local SOUND = IT("Sound",PARENT)
		SOUND.SoundId = ID
		SOUND.Volume = VOLUME
		SOUND.Pitch = PITCH
		SOUND.Looped = LOOP
		SOUND.MaxDistance = MAXDISTANCE
		SOUND.EmitterSize = EMITTERSIZE
		SOUND.PlayOnRemove = PLAYONREMOVE
		if DOESDEBRIS == true and PLAYING == true and LOOP == false then
			Debris:AddItem(SOUND,SOUND.TimeLength+5)
		end
		if PLAYING == true then
			SOUND:Play()
		end
		return SOUND
	end
end 
function Wyvern(Size,DoesBurn)
	local WYVERN = IT("Model")
	local BASEPART = CreatePart(3, WYVERN, "Neon", 0, 0.5, "Deep orange", "Wyvern Base",(VT(1, 7.2, 1)*1.5)*Size,false)
	local BASEWELD = CreateWeldOrSnapOrMotor("Weld", Torso, Torso, BASEPART, CF(0,0,0), CF(0, 0, 0))
	CreateMesh("SpecialMesh", BASEPART, "FileMesh", "90615474", "", VT(1.5,1.5,1.5)*Size, VT(0,0,0))
	local RWING = CreatePart(3, WYVERN, "Neon", 0, 0.5, "Deep orange", "Right Wing", (VT(2, 3, 2)*1.5)*Size,false)
	local RWELD = CreateWeldOrSnapOrMotor("Weld", Torso, Torso, RWING, CF(2*Size , 2*Size, 0.75*Size), CF(-2*Size, 0, 0))
	local LWING = CreatePart(3, WYVERN, "Neon", 0, 0.5, "Deep orange", "Left Wing", (VT(2, 3, 2)*1.5)*Size,false)
	local LWELD = CreateWeldOrSnapOrMotor("Weld", Torso, Torso, LWING, CF(-2*Size , 2*Size, 0.75*Size), CF(2*Size, 0, 0))
	CreateMesh("SpecialMesh", RWING, "FileMesh", "90615661", "", VT(1.5,1.5,1.5)*Size, VT(0,0,0))
	CreateMesh("SpecialMesh", LWING, "FileMesh", "90615581", "", VT(1.5,1.5,1.5)*Size, VT(0,0,0))
	for _, c in pairs(WYVERN:GetChildren()) do
		if c.ClassName == "Part" then
			c.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
			c.Color = FIRECOLOR
		end
	end
	WYVERN.Parent = Effects
	if DoesBurn == false then
		return WYVERN,BASEPART,RWING,LWING,BASEWELD,RWELD,LWELD
	elseif DoesBurn == true then
		local BodyFire = BurningLimb(BASEPART)
		BodyFire.Size = NumberSequence.new(Size,0)
		BodyFire.Acceleration = VT(0,2*Size,0)
		local RightWingFire = BurningLimb(RWING)
		RightWingFire.Size = NumberSequence.new(Size,0)
		RightWingFire.Acceleration = VT(0,6*Size,0)
		local LeftWingFire = BurningLimb(LWING)
		LeftWingFire.Size = NumberSequence.new(Size,0)
		LeftWingFire.Acceleration = VT(0,6*Size,0)
		BodyFire.Color = ColorSequence.new(FIRECOLOR,C3(1,1,1))
		RightWingFire.Color = ColorSequence.new(FIRECOLOR,C3(1,1,1))
		LeftWingFire.Color = ColorSequence.new(FIRECOLOR,C3(1,1,1))
		return WYVERN,BASEPART,RWING,LWING,BASEWELD,RWELD,LWELD,BodyFire,RightWingFire,LeftWingFire
	end
end
function CFrameFromTopBack(at, top, back)
	local right = top:Cross(back)
	return CF(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end
function MagicRing()
	local O1 = CreatePart(3, Effects, "Neon", 0, 1, "Really black", "Warphole", VT(0, 0, 0))
	O1.CFrame = RootPart.CFrame * CF(0, 0, -3) * ANGLES(RAD(90), RAD(0), RAD(0))
	local decal = Decal:Clone()
	decal.Parent = O1
	decal.Face = "Top"
	decal.Texture = "http://www.roblox.com/asset/?id=0"
	local decal2 = Decal:Clone()
	decal2.Parent = O1
	decal2.Face = "Bottom"
	decal2.Texture = "http://www.roblox.com/asset/?id=0"
	return O1
end
function MagicRing2(PART,CFRAME)
	local RING = CreatePart(3, Effects, "Neon", 0, 1, "Royal purple", "MagicRing", VT(0,0,0),false)
	local WELD = CreateWeldOrSnapOrMotor("Weld", PART, PART, RING, CFRAME, CF(0, 0, 0))
	local MESH = IT("BlockMesh",RING)
	local BOTTOMTEXTURE = Decal:Clone()
	BOTTOMTEXTURE.Parent = RING
	BOTTOMTEXTURE.Face = "Bottom"
	BOTTOMTEXTURE.Name = "BottomTexture"
	local TOPTEXTURE = Decal:Clone()
	TOPTEXTURE.Parent = RING
	TOPTEXTURE.Face = "Top"
	TOPTEXTURE.Name = "TopTexture"
	local LIGHT = IT("PointLight",RING)
	BOTTOMTEXTURE.Texture = "http://www.roblox.com/asset/?id=2829906887"
	TOPTEXTURE.Texture = "http://www.roblox.com/asset/?id=2829906887"
	return RING,WELD,MESH
end
local DECAL = IT("Decal")
function MagicRing3()
	local RING = CreatePart(3, Effects, "Neon", 0, 1, BRICKC("Pearl"), "MagicRing", VT(0, 0, 0), true)
	local MSH = IT("BlockMesh", RING)
	local TOP = DECAL:Clone()
	local BOTTOM = DECAL:Clone()
	TOP.Parent = RING
	BOTTOM.Parent = RING
	TOP.Face = "Top"
	BOTTOM.Face = "Bottom"
	TOP.Texture = "http://www.roblox.com/asset/?id=0"
	BOTTOM.Texture = "http://www.roblox.com/asset/?id=0"
	local function REMOVE()
		coroutine.resume(coroutine.create(function()
			local SIZE = MSH.Scale.X
			for i = 1, 35 do
				Swait()
				MSH.Scale = MSH.Scale - VT(SIZE, 0, SIZE) / 60
				TOP.Transparency = TOP.Transparency + 0.02857142857142857
				BOTTOM.Transparency = BOTTOM.Transparency + 0.02857142857142857
				RING.CFrame = RING.CFrame * ANGLES(RAD(0), RAD(-5), RAD(0))
			end
			RING:remove()
		end))
	end
	return RING, MSH, REMOVE
end
function CreateWave(SIZE, WAIT, CFRAME, DOESROT, ROT, COLOR, GROW)
	local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC(COLOR), "Effect", VT(0, 0, 0))
	local mesh = CreateMesh("SpecialMesh", wave, "FileMesh", "20329976", "", SIZE, VT(0, 0, -SIZE.X / 8))
	wave.CFrame = CFRAME
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, WAIT do
			Swait()
			mesh.Scale = mesh.Scale + GROW
			mesh.Offset = VT(0, 0, -(mesh.Scale.X / 8))
			if DOESROT == true then
				wave.CFrame = wave.CFrame * CFrame.fromEulerAnglesXYZ(0, ROT, 0)
			end
			wave.Transparency = wave.Transparency + 0.5 / WAIT
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end
function SpecialSphere(SIZE,WAIT,CFRAME,COLOR,GROW)
    local wave = CreatePart(3, Effects, "Neon", 0, 0, BRICKC(COLOR), "Eye", VT(1,1,1), true)
    wave.Color = COLOR
    local mesh = CreateMesh("SpecialMesh", wave, "Sphere", "", "", SIZE, VT(0,0,0))
    wave.CFrame = CFRAME
    coroutine.resume(coroutine.create(function(PART)
        for i = 1, WAIT do
            Swait()
            mesh.Scale = mesh.Scale + GROW
            wave.Transparency = wave.Transparency + (1/WAIT)
            if wave.Transparency > 0.99 then
                wave:remove()
            end
        end
    end))
end
function MagicSphere(SIZE,WAIT,CFRAME,COLOR,GROW)
	local wave = CreatePart(3, Effects, "Neon", 0, 0, BRICKC(COLOR), "Effect", VT(1,1,1), true)
	local mesh = IT("SpecialMesh",wave)
	mesh.MeshType = "Sphere"
	mesh.Scale = SIZE
	mesh.Offset = VT(0,0,0)
	wave.CFrame = CFRAME
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, WAIT do
			Swait()
			mesh.Scale = mesh.Scale + GROW
			wave.Transparency = wave.Transparency + (1/WAIT)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end
function WACKYEFFECT(Table)
	local TYPE = Table.EffectType or "Sphere"
	local SIZE = Table.Size or VT(1, 1, 1)
	local ENDSIZE = Table.Size2 or VT(0, 0, 0)
	local TRANSPARENCY = Table.Transparency or 0
	local ENDTRANSPARENCY = Table.Transparency2 or 1
	local CFRAME = Table.CFrame or Torso.CFrame
	local MOVEDIRECTION = Table.MoveToPos or nil
	local ROTATION1 = Table.RotationX or 0
	local ROTATION2 = Table.RotationY or 0
	local ROTATION3 = Table.RotationZ or 0
	local MATERIAL = Table.Material --or "Neon"
	local COLOR = (Table.Color or C3(1,1,1))
	local TIME = Table.Time or 45
	local SOUNDID = Table.SoundID or nil
	local SOUNDPITCH = Table.SoundPitch or nil
	local SOUNDVOLUME = Table.SoundVolume or nil
	local USEBOOMERANGMATH = Table.UseBoomerangMath or false
	local BOOMERANG = Table.Boomerang or 0
	local SIZEBOOMERANG = Table.SizeBoomerang or 0
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND
		local EFFECT = CreatePart(3, Effects, MATERIAL, 0, TRANSPARENCY, BRICKC("Pearl"), "Effect", VT(1, 1, 1), true)
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID, EFFECT, SOUNDVOLUME, SOUNDPITCH, false)
		end
		EFFECT.Color = COLOR
		local MSH
		if TYPE == "Sphere" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "Sphere", "", "", SIZE, VT(0, 0, 0))
		elseif TYPE == "Block" or TYPE == "Box" then
			MSH = IT("BlockMesh", EFFECT)
			MSH.Scale = SIZE
		elseif TYPE == "Wave" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "20329976", "", SIZE, VT(0, 0, -SIZE.X / 8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "559831844", "", VT(SIZE.X, SIZE.X, 0.1), VT(0, 0, 0))
		elseif TYPE == "Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662586858", "", VT(SIZE.X / 10, 0, SIZE.X / 10), VT(0, 0, 0))
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662585058", "", VT(SIZE.X / 10, 0, SIZE.X / 10), VT(0, 0, 0))
		elseif TYPE == "Swirl" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "168892432", "", SIZE, VT(0, 0, 0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "4770583", "", SIZE, VT(0, 0, 0))
		elseif TYPE == "Star" then 
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "2760116123", "", SIZE, VT(0,0,0))   	
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "450656451", "", SIZE, VT(0, 0, 0))
		end
		coroutine.resume(coroutine.create(function()
			if MSH ~= nil then
				local BOOMR1 = 1 + BOOMERANG / 50
				local BOOMR2 = 1 + SIZEBOOMERANG / 50
				local MOVESPEED = nil
			if MOVEDIRECTION ~= nil then
				MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude/TIME
			end
				local GROWTH
				if USEBOOMERANGMATH == true then
					GROWTH = (SIZE - ENDSIZE) * (BOOMR2 + 1)
				else
					GROWTH = SIZE - ENDSIZE
				end
				local TRANS = TRANSPARENCY - ENDTRANSPARENCY
				if TYPE == "Block" then
					EFFECT.CFrame = CFRAME * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
				else
					EFFECT.CFrame = CFRAME
				end
				if USEBOOMERANGMATH == true then
					for LOOP = 1, TIME + 1 do
						Swait()
						MSH.Scale = MSH.Scale - VT(GROWTH.X * (1 - LOOP / TIME * BOOMR2), GROWTH.Y * (1 - LOOP / TIME * BOOMR2), GROWTH.Z * (1 - LOOP / TIME * BOOMR2)) * BOOMR2 / TIME
						if TYPE == "Wave" then
							MSH.Offset = VT(0, 0, -MSH.Scale.Z / 8)
						end
						EFFECT.Transparency = EFFECT.Transparency - TRANS / TIME
						if TYPE == "Block" then
							EFFECT.CFrame = CFRAME * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
						else
							EFFECT.CFrame = EFFECT.CFrame * ANGLES(RAD(ROTATION1), RAD(ROTATION2), RAD(ROTATION3))
						end
						if MOVEDIRECTION ~= nil then
							local ORI = EFFECT.Orientation
							EFFECT.CFrame = CF(EFFECT.Position, MOVEDIRECTION) * CF(0, 0, -MOVESPEED * (1 - LOOP / TIME * BOOMR1))
							EFFECT.Orientation = ORI
						end
					end
				else
					for LOOP = 1, TIME + 1 do
						Swait()
						MSH.Scale = MSH.Scale - GROWTH / TIME
						if TYPE == "Wave" then
							MSH.Offset = VT(0, 0, -MSH.Scale.Z / 8)
						end
						EFFECT.Transparency = EFFECT.Transparency - TRANS / TIME
						if TYPE == "Block" then
							EFFECT.CFrame = CFRAME * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
						else
							EFFECT.CFrame = EFFECT.CFrame * ANGLES(RAD(ROTATION1), RAD(ROTATION2), RAD(ROTATION3))
						end
						if MOVEDIRECTION ~= nil then
					local ORI = EFFECT.Orientation
					EFFECT.CFrame = CF(EFFECT.Position,MOVEDIRECTION)*CF(0,0,-MOVESPEED)
					EFFECT.Orientation = ORI
				end
			end
				end
				EFFECT.Transparency = 1
				if PLAYSSOUND == false then
					EFFECT:remove()
				else
					repeat
						Swait()
					until EFFECT:FindFirstChildOfClass("Sound") == nil
					EFFECT:remove()
				end
			elseif PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat
					Swait()
				until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:remove()
			end
		end))
		return EFFECT
	end))
end      
local shade = ("0,0,0")
local stopeverything = false
function WACKYEFFECT2(Table)
	local TYPE = (Table.EffectType or "Sphere")
	local SIZE = (Table.Size or Vector3.new(1,1,1))
	local ENDSIZE = (Table.Size2 or Vector3.new(0,0,0))
	local TRANSPARENCY = (Table.Transparency or 0)
	local ENDTRANSPARENCY = (Table.Transparency2 or 1)
	local CFRAME = (Table.CFrame or Torso.CFrame)
	local MOVEDIRECTION = (Table.MoveToPos or nil)
	local ROTATION1 = (Table.RotationX or 0)
	local ROTATION2 = (Table.RotationY or 0)
	local ROTATION3 = (Table.RotationZ or 0)
	local MATERIAL = (Table.Material or "Neon")
	local COLOR = (Table.Color or shade)
	local hOK,sOK,vOK = Color3.toHSV(COLOR)
	local RAINBOWPART = false
	local TIME = (Table.Time or 45)
	local SOUNDID = (Table.SoundID or nil)
	local SOUNDPITCH = (Table.SoundPitch or nil)
	local SOUNDVOLUME = (Table.SoundVolume or nil)
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND = nil
		local EFFECT = CreatePart(3,Effects,MATERIAL,0,TRANSPARENCY,shade,"Effect",Vector3.new(1,1,1),true)
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID,EFFECT,SOUNDVOLUME,SOUNDPITCH,false)
		end
		EFFECT.Color = COLOR
		local MSH = nil
		if TYPE == "Sphere" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"Sphere","","",SIZE,Vector3.new(0,0,0))
		elseif TYPE == "Block" then
			MSH = Instance.new("BlockMesh",EFFECT)
			MSH.Scale = Vector3.new(SIZE.X,SIZE.Y,SIZE.Z)
		elseif TYPE == "Wave" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","20329976","",SIZE,Vector3.new(0,0,-SIZE.X/8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","559831844","",Vector3.new(SIZE.X,SIZE.X,0.1),Vector3.new(0,0,0))
		elseif TYPE == "Slash" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","662586858","",Vector3.new(SIZE.X/10,0,SIZE.X/10),Vector3.new(0,0,0))
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","662585058","",Vector3.new(SIZE.X/10,0,SIZE.X/10),Vector3.new(0,0,0))
		elseif TYPE == "Swirl" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","1051557","",SIZE,Vector3.new(0,0,0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","4770583","",SIZE,Vector3.new(0,0,0))
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","9756362","",SIZE,Vector3.new(0,0,0))
		end
		if MSH ~= nil then
			local MOVESPEED = nil
			if MOVEDIRECTION ~= nil then
				MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude/TIME
			end
			local GROWTH = SIZE - ENDSIZE
			local TRANS = TRANSPARENCY - ENDTRANSPARENCY
			EFFECT.CFrame = CFRAME
			for LOOP = 1,TIME+1 do
				swait()
				MSH.Scale = MSH.Scale - GROWTH/TIME
				if TYPE == "Wave" then
					MSH.Offset = Vector3.new(0,0,-MSH.Scale.X/8)
				end
				if TYPE == "Block" then
					EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
				else
					EFFECT.CFrame = EFFECT.CFrame*ANGLES(RAD(ROTATION1),RAD(ROTATION2),RAD(ROTATION3))
				end
				EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
				EFFECT.CFrame = EFFECT.CFrame*CFrame.Angles(math.rad(ROTATION1),math.rad(ROTATION2),math.rad(ROTATION3))
				if MOVEDIRECTION ~= nil then
					local ORI = EFFECT.Orientation
					EFFECT.CFrame = CFrame.new(EFFECT.Position,MOVEDIRECTION)*CFrame.new(0,0,-MOVESPEED)
					EFFECT.Orientation = ORI
				end
			end
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat if stopeverything then wait(math.huge) end swait() until SOUND.Playing == false
				EFFECT:remove()
			end
		else
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat if stopeverything then wait(math.huge) end swait() until SOUND.Playing == false
				EFFECT:remove()
			end
		end
	end))
end
function PixelBlockX(bonuspeed, FastSpeed, type, pos, x1, y1, z1, value, color, outerpos)
	local type = type
	local rng = Instance.new("Part", Effects)
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
	rngm.MeshType = "Brick"
	rngm.Scale = Vector3.new(x1, y1, z1)
	local scaler2 = 1
	local speeder = FastSpeed / 10
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
			speeder = speeder - 0.01 * FastSpeed * bonuspeed / 10
			rng.CFrame = rng.CFrame + rng.CFrame.lookVector * speeder * bonuspeed
			rng.Transparency = rng.Transparency + 0.01 * bonuspeed
			rngm.Scale = rngm.Scale - Vector3.new(scaler2 * bonuspeed, scaler2 * bonuspeed, scaler2 * bonuspeed)
		end
		rng:Destroy()
	end))
end

function slash(bonuspeed, rotspeed, rotatingop, typeofshape, type, typeoftrans, pos, scale, value, color)
	local type = type
	local rotenable = rotatingop
	local rng = Instance.new("Part", Effects)
	rng.Anchored = true
	rng.BrickColor = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Material = "Neon"
	rng.Size = Vector3.new(1, 1, 1)
	rng.Transparency = 0
	if typeoftrans == "In" then
		rng.Transparency = 1
	end
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	local rngm = Instance.new("SpecialMesh", rng)
	rngm.MeshType = "FileMesh"
	if typeofshape == "Normal" then
		rngm.MeshId = "rbxassetid://662586858"
	elseif typeofshape == "Round" then
		rngm.MeshId = "rbxassetid://662585058"
	end
	rngm.Scale = scale
	local scaler2 = 1 / 10
	if type == "Add" then
		scaler2 = 1 * value / 10
	elseif type == "Divide" then
		scaler2 = 1 / value / 10
	end
	local randomrot = math.random(1, 2)
	coroutine.resume(coroutine.create(function()
		for i = 0, 10 / bonuspeed, 0.1 do
			swait()
			if type == "Add" then
				scaler2 = scaler2 - 0.01 * value / bonuspeed / 10
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01 / value * bonuspeed / 10
			end
			if rotenable == true then
				if randomrot == 1 then
					rng.CFrame = rng.CFrame * CFrame.Angles(0, math.rad(rotspeed * bonuspeed / 2), 0)
				elseif randomrot == 2 then
					rng.CFrame = rng.CFrame * CFrame.Angles(0, math.rad(-rotspeed * bonuspeed / 2), 0)
				end
			end
			if typeoftrans == "Out" then
				rng.Transparency = rng.Transparency + 0.01 * bonuspeed
			elseif typeoftrans == "In" then
				rng.Transparency = rng.Transparency - 0.01 * bonuspeed
			end
			rngm.Scale = rngm.Scale + Vector3.new(scaler2 * bonuspeed / 10, 0, scaler2 * bonuspeed / 10)
		end
		rng:Destroy()
	end))
end
function Lightning(Part0, Part1, Times, Offset, Color, Timer, sSize, eSize, Trans, Boomer, sBoomer, slow, stime)
	local magz = (Part0 - Part1).magnitude
	local curpos = Part0
	local trz = {
		-Offset,
		Offset
	}
	for i = 1, Times do
		local li = Instance.new("Part", Effects)
		li.Name = "Lightning"
		li.TopSurface = 0
		li.Material = "Neon"
		li.BottomSurface = 0
		li.Anchored = true
		li.Locked = true
		li.Transparency = 0
		li.BrickColor = Color
		li.formFactor = "Custom"
		li.CanCollide = false
		li.Size = Vector3.new(0.1, 0.1, magz / Times)
		local Offzet = Vector3.new(trz[math.random(1, 2)], trz[math.random(1, 2)], trz[math.random(1, 2)])
		local trolpos = CFrame.new(curpos, Part1) * CFrame.new(0, 0, magz / Times).p + Offzet
		if Times == i then
			local magz2 = (curpos - Part1).magnitude
			li.Size = Vector3.new(0.1, 0.1, magz2)
			li.CFrame = CFrame.new(curpos, Part1) * CFrame.new(0, 0, -magz2 / 2)
		else
			li.CFrame = CFrame.new(curpos, trolpos) * CFrame.new(0, 0, magz / Times / 2)
		end
		curpos = li.CFrame * CFrame.new(0, 0, magz / Times / 2).p
		li:Destroy()
		WACKYEFFECT({Time = Timer, EffectType = "Box", Size = Vector3.new(sSize,sSize,li.Size.Z), Size2 = Vector3.new(eSize,eSize,li.Size.Z), Transparency = Trans, Transparency2 = 1, CFrame = li.CFrame, MoveToPos = nil, RotationX = nil, RotationY = nil, RotationZ = nil, Material = "Neon", Color = li.Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = Boomer, Boomerang = 0, SizeBoomerang = sBoomer})
		if slow == true then
			swait(stime)
		end
	end
end
function GetRoot(MODEL, ROOT)
	if ROOT == true then
		return MODEL:FindFirstChild("HumanoidRootPart") or MODEL:FindFirstChild("Torso") or MODEL:FindFirstChild("UpperTorso")
	else
		return MODEL:FindFirstChild("Torso") or MODEL:FindFirstChild("UpperTorso")
	end
end
function MakeForm(PART, TYPE)
	if TYPE == "Cyl" then
		local MSH = IT("CylinderMesh", PART)
	elseif TYPE == "Ball" then
		local MSH = IT("SpecialMesh", PART)
		MSH.MeshType = "Sphere"
	elseif TYPE == "Wedge" then
		local MSH = IT("SpecialMesh", PART)
		MSH.MeshType = "Wedge"
	end
end
function sphere(bonuspeed, type, pos, scale, value, color)
	local type = type
	local rng = Instance.new("Part", Effects)
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
	rngm.MeshType = "Sphere"
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
			rng.BrickColor = BrickColor.random()
			rng.Transparency = rng.Transparency + 0.01 * bonuspeed
			rngm.Scale = rngm.Scale + Vector3.new(scaler2 * bonuspeed, scaler2 * bonuspeed, scaler2 * bonuspeed)
		end
		rng:Destroy()
	end))
end

function sphere2(bonuspeed, type, pos, scale, value, value2, value3, color)
	local type = type
	local rng = Instance.new("Part", Effects)
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
	rngm.MeshType = "Sphere"
	rngm.Scale = scale
	local scaler2 = 1
	local scaler2b = 1
	local scaler2c = 1
	if type == "Add" then
		scaler2 = 1 * value
		scaler2b = 1 * value2
		scaler2c = 1 * value3
	elseif type == "Divide" then
		scaler2 = 1 / value
		scaler2b = 1 / value2
		scaler2c = 1 / value3
	end
	coroutine.resume(coroutine.create(function()
		for i = 0, 10 / bonuspeed, 0.1 do
			swait()
			if type == "Add" then
				scaler2 = scaler2 - 0.01 * value / bonuspeed
				scaler2b = scaler2b - 0.01 * value / bonuspeed
				scaler2c = scaler2c - 0.01 * value / bonuspeed
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01 / value * bonuspeed
				scaler2b = scaler2b - 0.01 / value * bonuspeed
				scaler2c = scaler2c - 0.01 / value * bonuspeed
			end
			rng.Transparency = rng.Transparency + 0.01 * bonuspeed
			rngm.Scale = rngm.Scale + Vector3.new(scaler2 * bonuspeed, scaler2b * bonuspeed, scaler2c * bonuspeed)
		end
		rng:Destroy()
	end))
end
Debris = game:GetService("Debris")
function CastProperRay(StartPos, EndPos, Distance, Ignore)
	local DIRECTION = CF(StartPos, EndPos).lookVector
	local Ignore = type(Ignore) == "table" and Ignore or {Ignore}
	return game:GetService("Workspace"):FindPartOnRayWithIgnoreList(Ray.new(StartPos, DIRECTION * Distance), Ignore)
end
function SpawnTrail(FROM,TO,BIG)
local TRAIL = CreatePart(3, Effects, "Neon", 0, 0, "Really black", "Trail", VT(45,45,45))           
MakeForm(TRAIL,"Cyl")
	local DIST = (FROM - TO).Magnitude
	if BIG == true then
		TRAIL.Size = VT(2,DIST,5)
	else
		TRAIL.Size = VT(2,DIST,5)
	end
	TRAIL.CFrame = CF(FROM, TO) * CF(0, 0, -DIST/2) * ANGLES(RAD(90),RAD(0),RAD(0))
	coroutine.resume(coroutine.create(function()
		for i = 1, 55 do
			Swait()
			TRAIL.Transparency = TRAIL.Transparency + 0.03
		end
		TRAIL:remove()
	end))
end

function Debree(Table)
	local KindOf = Table.Variant or "Ring"
	local Position = Table.Location or Torso.Position
	local Coloration = Table.Color or C3(1, 1, 1)
	local Texture = Table.Material or "Slate"
	local Fling = Table.Scatter or 1
	local Number = Table.Amount or 1
	local Rocks = Table.DebreeCount or 1
	local Range = Table.Distance or 1
	local Scale = Table.Size or 1
	local Timer = Table.Delay or 1.5
	coroutine.resume(coroutine.create(function()
		local ScaleVector = VT(Scale, Scale, Scale)
		local Boulders = {}
		Position = CF(Position)
		if KindOf == "Ring" or KindOf == "Both" then
			for RockValue = 1, Number do
				local LOCATION = Position * ANGLES(RAD(0), RAD(360 / Number * RockValue), RAD(0)) * CF(0, MRANDOM(-math.ceil(Scale / 2), math.ceil(Scale / 2)), Range)
				local BOULDER = CreatePart(3, workspace, Texture, 0, 0, BRICKC("Pearl"), "Debree", ScaleVector, true)
				BOULDER.CanCollide = true
				BOULDER.CFrame = LOCATION * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
				BOULDER.Color = Coloration
				table.insert(Boulders, BOULDER)
			end
		end
		if KindOf == "Loose" or KindOf == "Both" then
			for RockValue = 1, Rocks do
				local LOCATION = Position * ANGLES(RAD(0), RAD(360 / Number * RockValue), RAD(0)) * CF(0, MRANDOM(-math.ceil(Scale - Scale / 2), math.ceil(Scale - Scale / 2)), 0.7)
				local BOULDER = CreatePart(3, workspace, Texture, 0, 0, BRICKC("Pearl"), "Debree", ScaleVector, false)
				BOULDER.CanCollide = true
				BOULDER.CFrame = LOCATION * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
				BOULDER.Velocity = CF(BOULDER.Position - VT(0, 4, 0), BOULDER.CFrame * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360))) * CF(0, 5, 0).p).lookVector * MRANDOM(Fling - Fling / 1.5, Fling + Fling / 1.5)
				BOULDER.Color = Coloration
				table.insert(Boulders, BOULDER)
			end
		end
		if KindOf == "Random" then
			for RockValue = 1, Number do
				local LOCATION = Position * ANGLES(RAD(0), RAD(360 / Number * RockValue), RAD(0)) * CF(0, MRANDOM(-math.ceil(Scale / 2), math.ceil(Scale / 2)), MRANDOM(0, Range))
				local BOULDER = CreatePart(3, workspace, Texture, 0, 0, BRICKC("Pearl"), "Debree", ScaleVector, true)
				BOULDER.CanCollide = true
				BOULDER.CFrame = LOCATION * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
				BOULDER.Color = Coloration
				table.insert(Boulders, BOULDER)
			end
		end
		wait(Timer)
		for E = 1, 45 do
			Swait()
			for A = 1, #Boulders do
				Boulders[A].Transparency = Boulders[A].Transparency + 0.022222222222222223
			end
		end
		for A = 1, #Boulders do
			Boulders[A]:Destroy()
		end
	end))
end

function CameraShake(AREA,RANGE,SHAKE,TIMER)
	for index, CHILD in pairs(workspace:GetChildren()) do
		if CHILD:FindFirstChildOfClass("Humanoid") then
			local HUMAN = CHILD:FindFirstChildOfClass("Humanoid")
			local ROOT = HUMAN.Torso
			if ROOT and game.Players:GetPlayerFromCharacter(CHILD) then
				if (ROOT.Position - AREA).Magnitude <= RANGE then
					if CHILD:FindFirstChild("CamShake") then
						Debris:AddItem(CHILD:FindFirstChild("CamShake"),0.05)
					end
					local CAMSHAKE = script.CamShake:Clone()
					CAMSHAKE.Parent = CHILD
					local TIMER_V = IT("NumberValue",CAMSHAKE)
					TIMER_V.Name = "Timer"
					TIMER_V.Value = TIMER
					local SHAKE_V = IT("NumberValue",CAMSHAKE)
					SHAKE_V.Name = "Shake"
					SHAKE_V.Value = SHAKE
					CAMSHAKE.Disabled = false
					Debris:AddItem(CAMSHAKE,15)
				end
			end
		end
	end
end


local weldBetween = function(a, b)
	local weldd = Instance.new("ManualWeld")
	weldd.Part0 = a
	weldd.Part1 = b
	weldd.C0 = CFrame.new()
	weldd.C1 = b.CFrame:inverse() * a.CFrame
	weldd.Parent = a
	return weldd
end
local DECAL = IT("Decal")
local chatremote = Instance.new("RemoteEvent")
chatremote.Name = "um.."


chatfunc("ME Switcher", "Loaded.")

local HALO = MainFolder.Halo:Clone()
HALO.Parent = Character

local HALOWELD = CreateWeldOrSnapOrMotor("Weld", Head, Head, HALO, CF(0, 0, 0) * ANGLES(RAD(120), RAD(0), RAD(0)), CF(0, 0, 1))
coroutine.resume(coroutine.create(function()
	while true do
		Swait()
		HALO.Color = basecolor
	end
end))

local LASTPART = Torso
for i = 1, 35 do
	local MATH = 1 - i / 35
	if LASTPART == Torso then
		local Tail = CreatePart(3, Character, "Neon", 0, 0, "Carnation pink", "Tail", VT(0.25 * MATH, 0.25, 0.25 * MATH), false)
		local WLD = CreateWeldOrSnapOrMotor("Weld", LASTPART, LASTPART, Tail, CF(0, -0.75, 0.5) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
		LASTPART = Tail	
		coroutine.resume(coroutine.create(function()
			while true do
				Swait()
				Tail.Color = basecolor
			end
		end))
		table.insert(TAIL, WLD)
	else
		local Tail = CreatePart(3, Character, "Neon", 0, 0, "Carnation pink", "Tail", VT(0.25 * MATH, 0.25, 0.25 * MATH), false)
		local WLD = CreateWeldOrSnapOrMotor("Weld", LASTPART, LASTPART, Tail, CF(0, Tail.Size.Y / 2, 0) * ANGLES(RAD(-1.2), RAD(0), RAD(0)), CF(0, 0, 0))
		LASTPART = Tail
		coroutine.resume(coroutine.create(function()
			while true do
				Swait()
				Tail.Color = basecolor
			end
		end))
		table.insert(TAIL, WLD)
	end
end


function AdvancedChatfunc(Text, Timer, Delay, ChatterSound)
	local chat = coroutine.wrap(function()
 
		if Character:FindFirstChild("SpeechBoard") ~= nil then
			Character:FindFirstChild("SpeechBoard"):destroy()
		end
		local naeeym2 = IT("BillboardGui", Character)
		naeeym2.Size = UD2(80, 35, 3, 15)
		naeeym2.StudsOffset = VT(0, 5, 0)
		naeeym2.Adornee = Head
		naeeym2.Name = "SpeechBoard"
		naeeym2.AlwaysOnTop = true
		local tecks2 = IT("TextLabel", naeeym2)
		tecks2.BackgroundTransparency = 1
		tecks2.BorderSizePixel = 0
		tecks2.Text = ""
		tecks2.Font = FONTS[MRANDOM(1,#FONTS)]
		tecks2.TextSize = 35
		tecks2.TextStrokeTransparency = 0.3
		tecks2.TextColor3 = basecolor
		tecks2.TextStrokeColor3 = basecolor
		tecks2.Size = UDim2.new(1, 0, 0.5, 0)
		local FINISHED = false
		local DONE = false
		coroutine.wrap(function()
			while wait() do
				tecks2.Font = FONTS[MRANDOM(1,#FONTS)]
				tecks2.TextColor3 = basecolor
				tecks2.TextStrokeColor3 = basecolor
				if DONE == true then
					break
				end
			end
		end)()
		coroutine.resume(coroutine.create(function()
			for i = 1, string.len(Text) do
				if naeeym2.Parent ~= Character then
					FINISHED = true
				end
				if ChatterSound ~= false and naeeym2.Parent == Character then
					CreateSound(265970978, Head, 7, MRANDOM(-6,12)/4, false)
				end
				tecks2.Text = string.sub(Text, 1, i)
				Swait(Timer)
			end
			FINISHED = true
		end))
		repeat
			wait()
		until FINISHED == true
		wait(Delay)
		naeeym2.Name = "FadingDialogue"
		if Character:FindFirstChild("SpeechBoard") == nil then
			coroutine.resume(coroutine.create(function()
				for i = 1, 35 do
					Swait()
				end
			end))
		end
		for i = 1, 45 do
			Swait()
			naeeym2.StudsOffset = naeeym2.StudsOffset + VT(0, (2 - 0.044444444444444446 * i) / 45, 0)
			tecks2.TextTransparency = tecks2.TextTransparency + 0.022222222222222223
			tecks2.TextStrokeTransparency = tecks2.TextTransparency
		end
		naeeym2:Destroy()
		DONE = true
	end)
	chat()
end
  
function CheckTableForString(Table, String)
	for i, v in pairs(Table) do
		if string.find(string.lower(String), string.lower(v)) then
			return true
		end
	end
	return false
end

function CreateFlyingDebree(FLOOR,POSITION,AMOUNT,BLOCKSIZE,SWAIT,STRENGTH)
	if FLOOR ~= nil then
		for i = 1, AMOUNT do
			local DEBREE = CreatePart(3, Effects, "Neon", 0, 0, "Peal", "Debree", BLOCKSIZE, false)
			DEBREE.Material = FLOOR.Material
			DEBREE.Color = FLOOR.Color
			DEBREE.CFrame = POSITION * ANGLES(RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)))
			DEBREE.Velocity = VT(MRANDOM(-STRENGTH,STRENGTH),STRENGTH,MRANDOM(-STRENGTH,STRENGTH))
			coroutine.resume(coroutine.create(function()
				Swait(15)
				DEBREE.Parent = workspace
				DEBREE.CanCollide = true
				Debris:AddItem(DEBREE,SWAIT)
			end))
		end
	end
end
function CheckIntangible(Hit)
	local ProjectileNames = {"Water", "Arrow", "Projectile", "Effect", "Rail", "Lightning", "Bullet"}
	if Hit and Hit.Parent then
		if ((not Hit.CanCollide or CheckTableForString(ProjectileNames, Hit.Name)) and not Hit.Parent:FindFirstChild("Humanoid")) then
			return true
		end
	end
	return false
end

function CastZapRay(StartPos, Vec, Length, Ignore, DelayIfHit)
	local Direction = CFrame.new(StartPos, Vec).lookVector
	local Ignore = ((type(Ignore) == "table" and Ignore) or {Ignore})
	local RayHit, RayPos, RayNormal = game:GetService("Workspace"):FindPartOnRayWithIgnoreList(Ray.new(StartPos, Direction * Length), Ignore)
	if RayHit and CheckIntangible(RayHit) then
		if DelayIfHit then
			wait()
		end
		RayHit, RayPos, RayNormal = CastZapRay((RayPos + (Vec * 0.01)), Vec, (Length - ((StartPos - RayPos).magnitude)), Ignore, DelayIfHit)
	end
	return RayHit, RayPos, RayNormal
end

function MagicSphere2(size,waitt,cframe,color)
	local wave = CreatePart(3, Effects, "Neon", 0, 1, BRICKC(color), "Effect", VT(1,1,1))
	local mesh = IT("SpecialMesh",wave)
	mesh.MeshType = "Sphere"
	mesh.Scale = VT(size,size,size)
	mesh.Offset = VT(0,0,0)
	wave.CFrame = cframe
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, waitt do
			Swait()
			mesh.Scale = mesh.Scale - VT(size/waitt,size/waitt,size/waitt)
			wave.Transparency = wave.Transparency - (1/waitt)
		end
		wave:remove()
	end))
end

function VELOC(Part,Resistance,Position)
	local GRAV = IT("BodyPosition",Part)
	GRAV.D = Resistance
	GRAV.P = 20000
	GRAV.MaxForce = VT(math.huge,math.huge,math.huge)
	GRAV.Position = Position
	return GRAV
end


function MakeWings(DoesBurn)
	local RWING = CreatePart(3, Effects, "Neon", 0, 0.5, "Deep orange", "Right Wing", (VT(2, 3, 2)*1.5),false)
	local LWING = CreatePart(3, Effects, "Neon", 0, 0.5, "Deep orange", "Left Wing", (VT(2, 3, 2)*1.5),false)
	CreateMesh("SpecialMesh", RWING, "FileMesh", "90615661", "", VT(1.5,1.5,1.5), VT(0,0,0))
	CreateMesh("SpecialMesh", LWING, "FileMesh", "90615581", "", VT(1.5,1.5,1.5), VT(0,0,0))
	local RWELD = CreateWeldOrSnapOrMotor("Weld", Torso, Torso, RWING, CF(2 , 2, 0.75), CF(-3.5, 0, 0))
	local LWELD = CreateWeldOrSnapOrMotor("Weld", Torso, Torso, LWING, CF(-2 , 2, 0.75), CF(3.5, 0, 0))
	RWING.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
	LWING.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
	RWING.Color = FIRECOLOR
	LWING.Color = FIRECOLOR
	if DoesBurn == true then
		local RightWingFire = BurningLimb(RWING)
		local LeftWingFire = BurningLimb(LWING)
		return RWING,LWING,RWELD,LWELD,RightWingFire,LeftWingFire
	else
		return RWING,LWING,RWELD,LWELD
	end
end

function BurningLimb(Limb)
	local PRTCL = ParticleEmitter({Speed = 2, Drag = 4, Size1 = 1, Size2 = 0, Lifetime1 = 0.6, Lifetime2 = 1.5, Parent = Limb, Emit = 100, Offset = 360, Enabled = true})
	PRTCL.Acceleration = VT(0,5,0)
	PRTCL.ZOffset = 1
	return PRTCL
end


local Particle = IT("ParticleEmitter",nil)
Particle.Enabled = false
Particle.LightEmission = 0.5
Particle.Rate = 150
Particle.ZOffset = 1
Particle.Rotation = NumberRange.new(-180, 180)
Particle.RotSpeed = NumberRange.new(-180, 180)
Particle.Texture = "http://www.roblox.com/asset/?id=284205403"
Particle.Color = ColorSequence.new(Color3.new(0,0,0),Color3.new(0,0,0))

function ParticleEmitter(Table)
	local PRTCL = Particle:Clone()
	local Speed = Table.Speed or 5
	local Drag = Table.Drag or 0
	local Size1 = Table.Size1 or 1
	local Size2 = Table.Size2 or 5
	local Lifetime1 = Table.Lifetime1 or 1
	local Lifetime2 = Table.Lifetime2 or 1.5
	local Parent = Table.Parent or Torso
	local Emit = Table.Emit or 100
	local Offset = Table.Offset or 360
	local Acel = Table.Acel or Vector3.new(0,-50,0)
	local Enabled = Table.Enabled or false
	PRTCL.Parent = Parent
	PRTCL.Size = NumberSequence.new(Size1,Size2)
	PRTCL.Lifetime = NumberRange.new(Lifetime1,Lifetime2)
	PRTCL.Speed = NumberRange.new(Speed)
	PRTCL.VelocitySpread = Offset
	PRTCL.Drag = Drag
	PRTCL.Acceleration = Acel
	if Enabled == false then
		PRTCL:Emit(Emit)
		game:GetService("Debris"):AddItem(PRTCL,Lifetime2)
	else
		PRTCL.Enabled = true
	end
	return PRTCL
end

function ShakeCam(Length,Intensity)
	coroutine.resume(coroutine.create(function()
		local intensity = 1 * Intensity
		local rotM = 0.01 * Intensity
		for i = 0, Length, 0.1 do
			Swait()
			intensity = intensity - 0.05 * Intensity / Length
			rotM = rotM - 5.0E-4 * Intensity / Length
			Humanoid.CameraOffset = Vector3.new(RAD(MRANDOM(-intensity, intensity)), RAD(MRANDOM(-intensity, intensity)), RAD(MRANDOM(-intensity, intensity)))
			Cam.CFrame = Cam.CFrame * CF(RAD(MRANDOM(-intensity, intensity)), RAD(MRANDOM(-intensity, intensity)), RAD(MRANDOM(-intensity, intensity))) * EULER(RAD(MRANDOM(-intensity, intensity)) * rotM, RAD(MRANDOM(-intensity, intensity)) * rotM, RAD(MRANDOM(-intensity, intensity)) * rotM)
		end
		Humanoid.CameraOffset = Vector3.new(0, 0, 0)
	end))
end

local HEADSHADOW = script.HEAD:Clone()
HEADSHADOW.Parent = Character
CreateWeldOrSnapOrMotor("Weld", HEADSHADOW.PART, Head, HEADSHADOW.PART, CF(0, 0, 0)*ANGLES(RAD(0),RAD(0),RAD(0)), CF(0, 0, 0))

local TORSOSHADOW = script.TORSO:Clone()
TORSOSHADOW.Parent = Character
CreateWeldOrSnapOrMotor("Weld", TORSOSHADOW.PART, Torso, TORSOSHADOW.PART, CF(0, 0, 0)*ANGLES(RAD(0),RAD(0),RAD(0)), CF(0, 0, 0))

Humanoid:SetStateEnabled("Dead",false)
Humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead,false)

Humanoid:SetStateEnabled("GettingUp",true)
Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)
Humanoid:SetStateEnabled("Ragdoll",false)
Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)

local PlayerSize = 1
local FT,FRA,FLA,FRL,FLL = Instance.new("SpecialMesh"),Instance.new("SpecialMesh"),Instance.new("SpecialMesh"),Instance.new("SpecialMesh"),Instance.new("SpecialMesh")
FT.MeshId,FT.Scale = "rbxasset://fonts/torso.mesh",Vector3.new(PlayerSize,PlayerSize,PlayerSize)
FRA.MeshId,FRA.Scale = "rbxasset://fonts/rightarm.mesh",Vector3.new(PlayerSize,PlayerSize,PlayerSize)
FLA.MeshId,FLA.Scale = "rbxasset://fonts/leftarm.mesh",Vector3.new(PlayerSize,PlayerSize,PlayerSize)
FRL.MeshId,FRL.Scale = "rbxasset://fonts/rightleg.mesh",Vector3.new(PlayerSize,PlayerSize,PlayerSize)
FLL.MeshId,FLL.Scale = "rbxasset://fonts/leftleg.mesh",Vector3.new(PlayerSize,PlayerSize,PlayerSize)
--><All Attack Functions

function Kill(dude)

end

function ApplyAoE(POSITION,RANGE)

end

function Sprint()
	Speed = 30
	RUNNING = true
	Mouse.KeyUp:Connect(function(Key)
		if Key == "0" then
			Speed = 15
			RUNNING = false
		end
	end)
end

function HandBeam()
	ATTACK = true
	local savespeed = Speed
	Speed = 5
	for i = 0, 0.5, 0.05 do
		swait()
		turnto(Mouse.Hit.Position)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(30)), 1 / 3)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(-30)), 1 / 3)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(30)) * RIGHTSHOULDERC0, 1 / 3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(0)) * LEFTSHOULDERC0, 1 / 3)
		RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-5), math.rad(80), math.rad(0)) * CFrame.Angles(math.rad(-4), math.rad(0), math.rad(0)), 1 / 3)
		LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-70), math.rad(0)) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), 1 / 3)
	end
	ApplyAoE(Mouse.Hit.Position,10)
	WACKYEFFECT({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(1,0,0), SoundID = 642890855, SoundPitch = 0.45, SoundVolume = 6, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
	WACKYEFFECT({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
	Lightning(RightArm.Position,Mouse.Hit.p,15,3.5,BrickColor.new("Really black"),math.random(15,35),1,3,0,true,55) Lightning(RightArm.Position,Mouse.Hit.p,15,3.5,BrickColor.new("Really red"),math.random(15,35),1,3,0,true,55)
	for i = 0, 2 do
	WACKYEFFECT({Time = math.random(25,50), EffectType = "Round Slash", Size = Vector3.new(0.1,0.1,0.1), Size2 = Vector3.new(0.4,0,0.4), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
	WACKYEFFECT({Time = math.random(25,50), EffectType = "Round Slash", Size = Vector3.new(0.1,0.1,0.1), Size2 = Vector3.new(0.4,0,0.4), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
	end
	WACKYEFFECT({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = Mouse.Hit, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(1,0,0), SoundID = 192410089, SoundPitch = .55, SoundVolume = 8, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
	WACKYEFFECT({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = Mouse.Hit, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
	for i = 0, 2 do
	WACKYEFFECT({Time = math.random(25,50), EffectType = "Round Slash", Size = Vector3.new(0.1,0.1,0.1), Size2 = Vector3.new(0.4,0,0.4), Transparency = 0, Transparency2 = 1, CFrame = Mouse.Hit*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
	WACKYEFFECT({Time = math.random(25,50), EffectType = "Round Slash", Size = Vector3.new(0.1,0.1,0.1), Size2 = Vector3.new(0.4,0,0.4), Transparency = 0, Transparency2 = 1, CFrame = Mouse.Hit*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
    end
	ShakeCam(1,25)
	for i = 0, 0.5, 0.075 do
		swait()
		turnto(Mouse.Hit.Position)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(60)), 1 / 3)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-60)), 1 / 3)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(160), math.rad(-20), math.rad(60)) * RIGHTSHOULDERC0, 1 / 3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(40), math.rad(5), math.rad(5)) * LEFTSHOULDERC0, 1 / 3)
		RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-5), math.rad(75), math.rad(0)) * CFrame.Angles(math.rad(-4), math.rad(0), math.rad(0)), 1 / 3)
		LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-65), math.rad(0)) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), 1 / 3)
	end
	Speed = savespeed
	ATTACK = false
end

function Dash()
	ATTACK = true
	local savespeed = Speed
	Speed = 5
	CreateSound(235097614, RootPart, 6, 1.5, false)
	for i = 0, 0.5, 0.05 do
		swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-60)), 1 / 3)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(60)), 1 / 3)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-60)) * RIGHTSHOULDERC0, 1 / 3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(40), math.rad(5), math.rad(5)) * LEFTSHOULDERC0, 1 / 3)
		RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-5), math.rad(75), math.rad(0)) * CFrame.Angles(math.rad(-4), math.rad(0), math.rad(0)), 1 / 3)
		LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-65), math.rad(0)) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), 1 / 3)
	end
	ApplyAoE(RootPart.Position,15)
	WACKYEFFECT({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(1,0,0), SoundID = 642890855, SoundPitch = 0.45, SoundVolume = 6, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
	WACKYEFFECT({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
	WACKYEFFECT({Time = math.random(25,45), EffectType = "Sphere", Size = Vector3.new(2,100,2), Size2 = Vector3.new(6,100,6), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(math.random(-1,1),math.random(-1,1),-50)*CFrame.Angles(math.rad(math.random(89,91)),math.rad(math.random(-1,1)),math.rad(math.random(-1,1))), MoveToPos = nil, RotationX = nil, RotationY = nil, RotationZ = nil, Material = "Neon", Color = Color3.new(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 45})
	WACKYEFFECT({Time = math.random(25,45), EffectType = "Sphere", Size = Vector3.new(3,100,3), Size2 = Vector3.new(9,100,9), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(math.random(-1,1),math.random(-1,1),-50)*CFrame.Angles(math.rad(math.random(89,91)),math.rad(math.random(-1,1)),math.rad(math.random(-1,1))), MoveToPos = nil, RotationX = nil, RotationY = nil, RotationZ = nil, Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 45})
	ShakeCam(1,15)
	for i = 1, 4 do
		RootPart.CFrame = RootPart.CFrame * CFrame.new(0,0,-25)
		ApplyAoE(RootPart.Position,15)
		ShakeCam(1,15)
	end
	WACKYEFFECT({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
	WACKYEFFECT({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
	for i = 0, 0.5, 0.1 do
		swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(90)), 1 / 3)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), 1 / 3)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(90)) * RIGHTSHOULDERC0, 1 / 3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(40), math.rad(5), math.rad(5)) * LEFTSHOULDERC0, 1 / 3)
		RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-5), math.rad(75), math.rad(0)) * CFrame.Angles(math.rad(-4), math.rad(0), math.rad(0)), 1 / 3)
		LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-65), math.rad(0)) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), 1 / 3)
	end
	ATTACK = false
	Speed = savespeed
end

function Grab()
	if Mouse.Target.Parent ~= Character and Mouse.Target.Parent.Parent ~= Character and Mouse.Target.Parent:FindFirstChildOfClass("Humanoid") ~= nil and Mouse.Target.Parent:FindFirstChild("Torso") then
		local originalposition = RootPart.Position
		local HITBODY = Mouse.Target.Parent
		local TORS = HITBODY:FindFirstChild("Torso")
		local HUMAN = Mouse.Target.Parent:FindFirstChildOfClass("Humanoid")
		if TORS ~= nil and HUMAN ~= nil then
			ATTACK = true
			Rooted = true
			TORS.Anchored = true
			RootPart.CFrame = TORS.CFrame * CF(0,0,4)
			local HITFLOOR, HITPOS = Raycast(TORS.Position, (CF(TORS.Position, TORS.Position + VT(0, -1, 0))).lookVector, 4 * TORS.Size.Y/2, HITBODY)
			local FLOOR = HITFLOOR
			local POS = HITPOS
			print(FLOOR)
			UNANCHOR = false
			RootPart.Anchored = true
			CreateSound("1295446488",Torso,10,.8,false)
			for i=0, 1, 0.1 / Animation_Speed do
				Swait()
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 2 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 2 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 2 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 2 / Animation_Speed)
			end
			local TAUNTS = {"907329532","907333294","907329893"}
			CreateSound(TAUNTS[MRANDOM(1,#TAUNTS)], Torso, 10, .8,false)
			for i=0, 1, 0.1 / Animation_Speed do
				Swait()
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-45)), 2 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(45)), 2 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 2 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 2 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 2 / Animation_Speed)
			end
			RootPart.CFrame = TORS.CFrame * CF(0,0,2)
			CreateSound("260411131", TORS, 10, 1)
			TORS.Anchored = false
			local WELD = CreateWeldOrSnapOrMotor("Weld", TORS, RightArm, TORS, CF(0,-1,-0.5) * ANGLES(RAD(-90), RAD(0), RAD(0)), CF(0, 0, 0))
			for i=0, 1, 0.1 / Animation_Speed do
				Swait()
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(45)), 2 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(-45)), 2 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(150), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 2 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 2 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 2 / Animation_Speed)
			end
			local FT1 = FT:Clone()
			local FRA1 = FRA:Clone()
			local FLA1 = FLA:Clone()
			local FRL1 = FRL:Clone()
			local FLL1 = FLL:Clone()
			for i=1,25 do
				Swait()
				FT1.Parent = Torso
				FRA1.Parent = RightArm
				FLA1.Parent = LeftArm
				FRL1.Parent = RightLeg
				FLL1.Parent = LeftLeg
				for _,v in next, HITBODY:GetDescendants() do
				if(v:IsA'DataModelMesh')then
						v.Offset = VT(math.random(-50,50)/100,math.random(-50,50)/100,math.random(-50,50)/100)
					end
				end	
			end
			FT:remove()
			FRA:remove()
			FLA:remove()
			FRL:remove()
			FLL:remove()
			for _,v in next, Character:GetDescendants() do
				if(v:IsA'DataModelMesh')then
					v.Offset = VT(0,0,0)
				end
			end
			RootPart.CFrame = TORS.CFrame * CF(0,0,2)
			CreateSound("260411131", TORS, 10, 1)
			TORS.Anchored = false
			Kill(HITBODY)
			ATTACK = false
			Rooted = false
			RootPart.Anchored = false
			RootPart.CFrame = CF(originalposition)
		end
	end
end

function WyvernWinggale()
	ATTACK = true
	local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4, Character)
	local RWING,LWING,RWELD,LWELD,FIRE1,FIRE2 = MakeWings(true)
	local GRAV = VELOC(RootPart,1200,RootPart.CFrame*CF(0,35,55).p)
	for i=1, 6 do
		Swait()
		RWELD.C0 = Clerp(RWELD.C0, CF(2,2,0.75) * ANGLES(RAD(-25), RAD(0), RAD(-65)), 0.7 / Animation_Speed)
		LWELD.C0 = Clerp(LWELD.C0, CF(-2,2,0.75) * ANGLES(RAD(-25), RAD(0), RAD(65)), 0.7 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-15), RAD(0), RAD(0)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(25), RAD(0), RAD(0)), 1/ Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(15), RAD(0), RAD(25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(15), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	if HITFLOOR then
		ApplyAoE(HITPOS,15,15,55,120)
		CreateFlyingDebree(HITFLOOR,CF(HITPOS),8,VT(3,3,3),5,25)
	end
	for i=1, 14 do
		Swait()
		WACKYEFFECT({EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(15+i*2,5,15+i*2), Transparency = 0.7, Transparency2 = 1, CFrame = CF(RootPart.Position,HITPOS)*CF(0,0,-1) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,1,1), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(15+i*2,5,15+i*2), Transparency = 0.7, Transparency2 = 1, CFrame = CF(RootPart.Position,HITPOS)*CF(0,0,-1) * ANGLES(RAD(-90), RAD(45), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,1,1), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		RWELD.C0 = Clerp(RWELD.C0, CF(2,2,0.75) * ANGLES(RAD(-25), RAD(0), RAD(-65)), 1.2 / Animation_Speed)
		LWELD.C0 = Clerp(LWELD.C0, CF(-2,2,0.75) * ANGLES(RAD(-25), RAD(0), RAD(65)), 1.2 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-15), RAD(0), RAD(0)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(25), RAD(0), RAD(0)), 1/ Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(15), RAD(0), RAD(25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(15), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	GRAV:remove()
	coroutine.resume(coroutine.create(function()
		FIRE1.Enabled = false
		FIRE2.Enabled = false
		for i = 1, 10 do
			Swait()
			RWING.Transparency = RWING.Transparency + 0.5/10
			LWING.Transparency = LWING.Transparency + 0.5/10
		end
		Debris:AddItem(RWING,2)
		Debris:AddItem(LWING,2)
	end))
	ATTACK = false
end

function WyvernBreath()
	ATTACK = true
	local RWING,LWING,RWELD,LWELD,FIRE1,FIRE2 = MakeWings(true)
	CreateSound(Torso,5,1,false)
	local GRAV = VELOC(RootPart,1200,RootPart.CFrame*CF(0,35,25).p)
	for i=1, 10 do
		Swait()
		RWELD.C0 = Clerp(RWELD.C0, CF(2,2,0.75) * ANGLES(RAD(-25), RAD(0), RAD(-65)), 0.7 / Animation_Speed)
		LWELD.C0 = Clerp(LWELD.C0, CF(-2,2,0.75) * ANGLES(RAD(-25), RAD(0), RAD(65)), 0.7 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-15), RAD(0), RAD(0)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(25), RAD(0), RAD(0)), 1/ Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(15), RAD(0), RAD(25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(15), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	local GYRO = IT("BodyGyro",RootPart)
	GYRO.D = 2
	GYRO.P = 2000
	GYRO.MaxTorque = VT(0,4000000,0)
	local RING = MagicRing()
	RING.Anchored = false
	RING.CFrame = RightArm.CFrame*CF(0,-1.3,0)*ANGLES(RAD(180),RAD(0),RAD(0))
	local MSH = IT("BlockMesh",RING)
	local WLD = weldBetween(RightArm,RING)
	for i=1, 30 do
		Swait()
		MSH.Scale = MSH.Scale + VT(8,0,8)
		GYRO.cframe = CF(RootPart.Position,Mouse.Hit.p)
		RWELD.C0 = Clerp(RWELD.C0, CF(2,2,0.75) * ANGLES(RAD(-25), RAD(0), RAD(-65)), 0.7 / Animation_Speed)
		LWELD.C0 = Clerp(LWELD.C0, CF(-2,2,0.75) * ANGLES(RAD(-25), RAD(0), RAD(65)), 0.7 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-15), RAD(0), RAD(25)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(25), RAD(0), RAD(-25)), 1/ Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.5, -0.3) * ANGLES(RAD(65), RAD(0), RAD(25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(15), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	GRAV:remove()
	GYRO:remove()
	coroutine.resume(coroutine.create(function()
		local IMPACT = false
		local FIREBALL = CreatePart(3, Effects, "Neon", 0, 1, "Deep orange", "Fire",VT(1,1,1))
		local SOUND = CreateSound(FIREBALL,8,1,false)
		FIREBALL.CFrame = CF(RING.Position,Mouse.Hit.p)*CF(0,0,-2)
		local INNER = ParticleEmitter({Speed = 2, Drag = 3, Size1 = 7, Size2 = 0, Lifetime1 = 1, Lifetime2 = 1.5, Parent = FIREBALL, Emit = 0, Offset = 360, Enabled = true})
		INNER.Color = ColorSequence.new(C3(1,1,1))
		INNER.ZOffset = 2
		local OUTTER = ParticleEmitter({Speed = 0, Drag = 3, Size1 = 15, Size2 = 0, Lifetime1 = 1, Lifetime2 = 1.5, Parent = FIREBALL, Emit = 0, Offset = 0, Enabled = true})
		for i = 1, 300 do
			Swait()
			FIREBALL.CFrame = FIREBALL.CFrame*CF(0,0,-2)
			local HITFLOOR,HITPOS = Raycast(FIREBALL.Position, FIREBALL.CFrame.lookVector, 2.2, Character)
			if HITFLOOR ~= nil then
				IMPACT = true
				break
			end
		end
		INNER.Enabled = false
		OUTTER.Enabled = false
		Debris:AddItem(FIREBALL,5)
		if IMPACT == true then
			WACKYEFFECT({Time = 75, EffectType = "Sphere", Size = VT(25,25,25), Size2 = VT(40,40,40), Transparency = 0.5, Transparency2 = 1, CFrame = FIREBALL.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = FIRECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({Time = 75, EffectType = "Sphere", Size = VT(25,25,25), Size2 = VT(50,50,50), Transparency = 0.5, Transparency2 = 1, CFrame = FIREBALL.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = FIRECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({Time = 75, EffectType = "Sphere", Size = VT(25,25,25), Size2 = VT(60,60,60), Transparency = 0.5, Transparency2 = 1, CFrame = FIREBALL.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = FIRECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({Time = 75, EffectType = "Swirl", Size = VT(0,0,0), Size2 = VT(75,75,75), Transparency = 0.5, Transparency2 = 1, CFrame = CF(FIREBALL.Position), MoveToPos = nil, RotationX = 0, RotationY = 25, RotationZ = 0, Material = "Neon", Color = C3(1,1,1), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			SOUND.Playing = false
			local WHITE = ParticleEmitter({Speed = 35, Drag = 1, Size1 = 7, Size2 = 8, Lifetime1 = 1, Lifetime2 = 5, Parent = FIREBALL, Emit = 75, Offset = 360, Enabled = false})
			WHITE.Color = ColorSequence.new(C3(1,1,1))
			WHITE.ZOffset = 2
			ParticleEmitter({Speed = 35, Drag = 1, Size1 = 15, Size2 = 16, Lifetime1 = 1, Lifetime2 = 5, Parent = FIREBALL, Emit = 150, Offset = 360, Enabled = false})
			ApplyAoE(FIREBALL.Position,25,35,54,150)
			CreateSound(FIREBALL,8,1,false)
		end
	end))
	coroutine.resume(coroutine.create(function()
		WLD:remove()
		RING.Anchored = true
		FIRE1.Enabled = false
		FIRE2.Enabled = false
		local SCALE = MSH.Scale.X
		for i = 1, 10 do
			Swait()
			MSH.Scale = MSH.Scale - VT(SCALE/10,0,SCALE/10)
			RWING.Transparency = RWING.Transparency + 0.5/10
			LWING.Transparency = LWING.Transparency + 0.5/10
		end
		Debris:AddItem(RWING,2)
		Debris:AddItem(LWING,2)
	end))
	ATTACK = false
end

function WyvernWingrage()
	ATTACK = true
	local BODIES = {}
	local VELOCITIES = {}
	local FIRE = BurningLimb(RightArm)
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, -0.3, 0) * ANGLES(RAD(0), RAD(0), RAD(-75)), 0.6 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(75)), 0.6 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(15)) * RIGHTSHOULDERC0, 0.3 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)) * LEFTSHOULDERC0, 0.1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	for i=0, 0.3, 0.1 / Animation_Speed do
		Swait()
		RootPart.CFrame = RootPart.CFrame*CF(0,0,-0.3)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, -0.3, 0) * ANGLES(RAD(0), RAD(0), RAD(75)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-75)), 0.9 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(65)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)) * LEFTSHOULDERC0, 0.1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(45), RAD(0)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-25), RAD(0)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 0.8 / Animation_Speed)
	end
	FIRE.Enabled = false
	Debris:AddItem(FIRE,3)
	for i = 1, 7 do
		local WHITE = ParticleEmitter({Speed = -i-5, Drag = 2, Size1 = 0.2, Size2 = 0, Lifetime1 = 1, Lifetime2 = 2, Parent = RightArm, Emit = 75, Offset = 5, Enabled = false})
		WHITE.Color = ColorSequence.new(C3(1,1,1))
		WHITE.ZOffset = 2
		local PRT = ParticleEmitter({Speed = -i-5, Drag = 2, Size1 = 1, Size2 = 0, Lifetime1 = 1, Lifetime2 = 2, Parent = RightArm, Emit = 75, Offset = 5, Enabled = false})
		Debris:AddItem(WHITE,5)
		Debris:AddItem(PRT,5)
	end
	CreateSound(RightArm,5,1,false)
	CreateSound(RightArm,2,1.5,false)
	ApplyAoE(RightArm.CFrame*CF(0,-1,0).p,5)
	local POS = RootPart.CFrame*CF(0,25,-25).p
	if #BODIES ~= 0 then
		for E = 1, #BODIES do
			if BODIES[E] ~= nil then
				local TORSO = BODIES[E]:FindFirstChild("HumanoidRootPart") or BODIES[E]:FindFirstChild("Torso") or BODIES[E]:FindFirstChild("UpperTorso")
				if TORSO then
					local DISTANCE = (TORSO.Position - RootPart.Position).Magnitude
					local GRAV = VELOC(TORSO,850,POS+VT(MRANDOM(-5,5),MRANDOM(-5,5),MRANDOM(-5,5)))
					table.insert(VELOCITIES,GRAV)
					local HUM = BODIES[E]:FindFirstChildOfClass("Humanoid")
				end
			end
		end
	end
	for i=0, 0.7, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, -0.3, 0) * ANGLES(RAD(0), RAD(0), RAD(75)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-75)), 0.9 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(65)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)) * LEFTSHOULDERC0, 0.1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(45), RAD(0)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-25), RAD(0)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 0.8 / Animation_Speed)
	end
	if #BODIES ~= 0 then
		for i=0, 2, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -1.2) * ANGLES(RAD(65), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-40), RAD(0), RAD(20)) * RIGHTSHOULDERC0, 0.2 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-40), RAD(0), RAD(-20)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.3, -1) * ANGLES(RAD(65), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-20)), 0.2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.3, -1) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(20)), 0.2 / Animation_Speed)
		end
		local TFIR = BurningLimb(Torso)
		local FIRER = BurningLimb(RightArm)
		local FIREL = BurningLimb(LeftArm)
		local FIRER2 = BurningLimb(RightLeg)
		local FIREL2 = BurningLimb(LeftLeg)
		CreateSound(Torso,2,1,false)
		local GRAV = VELOC(RootPart,75,POS)
		local RWING,LWING,RWELD,LWELD,RFIRE,LFIRE = MakeWings(true)
		for i=1, 15 do
			Swait()
			RWELD.C0 = Clerp(RWELD.C0, CF(0,2,0.75) * ANGLES(RAD(0), RAD(0), RAD(-65)), 0.1 / Animation_Speed)
			LWELD.C0 = Clerp(LWELD.C0, CF(0,2,0.75) * ANGLES(RAD(0), RAD(0), RAD(65)), 0.1 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(75-(i*2)), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1/ Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		UNANCHOR = false
		RootPart.Anchored = true
		local A = IT("Attachment",RWING)
		A.Position = VT(1.2, 0, 0)
		local B = IT("Attachment",RWING)
		B.Position = VT(-1.2, 0, 0)
		local Trail1 = IT("Trail",RWING)
		Trail1.Attachment0 = A
		Trail1.Attachment1 = B
		Trail1.Lifetime = 0.6
		Trail1.Color = ColorSequence.new(FIRECOLOR)
		Trail1.Transparency = NumberSequence.new(0, 1)
		local A = IT("Attachment",LWING)
		A.Position = VT(1.2, 0, 0)
		local B = IT("Attachment",LWING)
		B.Position = VT(-1.2, 0, 0)
		local Trail2 = IT("Trail",LWING)
		Trail2.Attachment0 = A
		Trail2.Attachment1 = B
		Trail2.Lifetime = 0.6
		Trail2.Color = ColorSequence.new(FIRECOLOR)
		Trail2.Transparency = NumberSequence.new(0, 1)
		CreateSound(Torso,10,0.5,false)
		for i=1, 250 do
			Swait()
			for E = 1, #VELOCITIES do
				if VELOCITIES[E] ~= nil then
					VELOCITIES[E].D = 800
					VELOCITIES[E].position = Torso.Position
				end
			end
			for E = 1, #BODIES do
				if BODIES[E] ~= nil then
					local TORSO = BODIES[E]:FindFirstChild("HumanoidRootPart") or BODIES[E]:FindFirstChild("Torso") or BODIES[E]:FindFirstChild("UpperTorso")
					if TORSO then
						local HUM = BODIES[E]:FindFirstChildOfClass("Humanoid")
						if HUM then
							HUM.Health = HUM.Health - 0.3
						end
					end
				end
			end
			RootPart.Velocity = VT(0,0,0)
			RWELD.C0 = Clerp(RWELD.C0, CF(0,2,0.75) * ANGLES(RAD(0), RAD(0), RAD(-65)), 0.1 / Animation_Speed)
			LWELD.C0 = Clerp(LWELD.C0, CF(0,2,0.75) * ANGLES(RAD(0), RAD(0), RAD(65)), 0.1 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(90), RAD(i*25), RAD(i*5)) * CF(-i/10,i/45,0), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1/ Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		for E = 1, #BODIES do
			if BODIES[E] ~= nil then
				local TORSO = BODIES[E]:FindFirstChild("HumanoidRootPart") or BODIES[E]:FindFirstChild("Torso") or BODIES[E]:FindFirstChild("UpperTorso")
				if TORSO then
					TORSO.Velocity = VT(0,0,0)
				end
			end
		end
		for E = 1, #VELOCITIES do
			if VELOCITIES[E] ~= nil then
				VELOCITIES[E]:remove()
			end
		end
		for _, c in pairs(Character:GetChildren()) do
			if c.ClassName == "Part" then
				c.Velocity = VT(0,0,0)
				c.RotVelocity = VT(0,0,0)
			end
		end
		TFIR.Enabled = false
		FIRER.Enabled = false
		FIREL.Enabled = false
		FIRER2.Enabled = false
		FIREL2.Enabled = false
		Debris:AddItem(TFIR,3)
		Debris:AddItem(FIRER,3)
		Debris:AddItem(FIREL,3)
		Debris:AddItem(FIRER2,3)
		Debris:AddItem(FIREL2,3)
		coroutine.resume(coroutine.create(function()
			Trail1.Enabled = false
			Trail2.Enabled = false
			RFIRE.Enabled = false
			LFIRE.Enabled = false
			for i = 1, 10 do
				Swait()
				RWING.Transparency = RWING.Transparency + 0.5/10
				LWING.Transparency = LWING.Transparency + 0.5/10
			end
			Debris:AddItem(RWING,2)
			Debris:AddItem(LWING,2)
		end))
		GRAV:remove()
		UNANCHOR = true
		RootPart.Anchored = false
	end
	ATTACK = false
end

function WyvernEruption()
	ATTACK = true
	for i=0, 2, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -1.2) * ANGLES(RAD(65), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-40), RAD(0), RAD(20)) * RIGHTSHOULDERC0, 0.2 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-40), RAD(0), RAD(-20)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.3, -1) * ANGLES(RAD(65), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-20)), 0.2 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.3, -1) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(20)), 0.2 / Animation_Speed)
	end
	local TFIR = BurningLimb(Torso)
	local FIRER = BurningLimb(RightArm)
	local FIREL = BurningLimb(LeftArm)
	local FIRER2 = BurningLimb(RightLeg)
	local FIREL2 = BurningLimb(LeftLeg)
	CreateSound(Torso,2,1,false)
	local RWING,LWING,RWELD,LWELD,RFIRE,LFIRE = MakeWings(true)
	UNANCHOR = false
	RootPart.Anchored = true
	for i=1, 35 do
		Swait()
		RootPart.CFrame = RootPart.CFrame * CF(0,5,-(75-i*2)/30)
		RWELD.C0 = Clerp(RWELD.C0, CF(0,2,0.75) * ANGLES(RAD(0), RAD(0), RAD(-65)), 0.1 / Animation_Speed)
		LWELD.C0 = Clerp(LWELD.C0, CF(0,2,0.75) * ANGLES(RAD(0), RAD(0), RAD(65)), 0.1 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(75-(i*2)), RAD(0), RAD(0)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1/ Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	for i=1, 18 do
		Swait()
		RWELD.C0 = Clerp(RWELD.C0, CF(0,2,0.75) * ANGLES(RAD(0), RAD(0), RAD(-65)), 0.1 / Animation_Speed)
		LWELD.C0 = Clerp(LWELD.C0, CF(0,2,0.75) * ANGLES(RAD(0), RAD(0), RAD(65)), 0.1 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0-i*20), RAD(0), RAD(0)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1/ Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 1000, Character)
	local ORI = RootPart.Orientation
	RootPart.CFrame = CF(HITPOS)
	RootPart.Orientation = ORI
	RootJoint.Parent = RootPart
	TFIR.Enabled = false
	FIRER.Enabled = false
	FIREL.Enabled = false
	FIRER2.Enabled = false
	FIREL2.Enabled = false
	Debris:AddItem(TFIR,3)
	Debris:AddItem(FIRER,3)
	Debris:AddItem(FIREL,3)
	Debris:AddItem(FIRER2,3)
	Debris:AddItem(FIREL2,3)
	ApplyAoE(HITPOS,45,35,54,150)
	WACKYEFFECT({EffectType = "Ring", Size = VT(00,0.01)/20, Size2 = VT(35,35,0.01), Transparency = 0.7, Transparency2 = 1, CFrame = CF(HITPOS), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = FIRECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	WACKYEFFECT({EffectType = "Ring", Size = VT(00,0.01)/20, Size2 = VT(35,35,0.01), Transparency = 0.7, Transparency2 = 1, CFrame = CF(HITPOS)*ANGLES(RAD(0), RAD(90), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = FIRECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	WACKYEFFECT({EffectType = "Ring", Size = VT(00,0.01)/20, Size2 = VT(35,35,0.01), Transparency = 0.7, Transparency2 = 1, CFrame = CF(HITPOS)*ANGLES(RAD(90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = FIRECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	WACKYEFFECT({EffectType = "Sphere", Size = VT(65,65,65), Size2 = VT(85,85,85), Transparency = 0, Transparency2 = 1, CFrame = CF(HITPOS), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = FIRECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	WACKYEFFECT({EffectType = "Sphere", Size = VT(65,65,65), Size2 = VT(85,85,85)/1.3, Transparency = 0.8, Transparency2 = 1, CFrame = CF(HITPOS), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,1,1), SoundPitch = 1, SoundVolume = 5})
	for i=1, 45 do
		Swait()
		RootPart.CFrame = RootPart.CFrame * CF(0,2,0)
		RWELD.C0 = Clerp(RWELD.C0, CF(0,2,0.75) * ANGLES(RAD(0), RAD(0), RAD(-65)), 0.1 / Animation_Speed)
		LWELD.C0 = Clerp(LWELD.C0, CF(0,2,0.75) * ANGLES(RAD(0), RAD(0), RAD(65)), 0.1 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(i*25), RAD(0), RAD(0)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1/ Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.5, -0.5) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	coroutine.resume(coroutine.create(function()
		RFIRE.Enabled = false
		LFIRE.Enabled = false
		for i = 1, 10 do
			Swait()
			RWING.Transparency = RWING.Transparency + 0.5/10
			LWING.Transparency = LWING.Transparency + 0.5/10
		end
		Debris:AddItem(RWING,2)
		Debris:AddItem(LWING,2)
	end))
	UNANCHOR = false
	RootPart.Anchored = false
	ATTACK = false
end

function ChaoticWyvernOutburst()
	ATTACK = true
	local VELOCITIES = {}
	local BODIES = {}
	local RING = MagicRing()
	RING.CFrame = RootPart.CFrame*CF(0,-2.9,0)
	CreateSound(RING,2,2,false)
	local FIRE = BurningLimb(RightArm)
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RING.Size = RING.Size + VT(3,0,3)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, -0.3, 0) * ANGLES(RAD(0), RAD(0), RAD(-75)), 0.6 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(75)), 0.6 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(15)) * RIGHTSHOULDERC0, 0.3 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)) * LEFTSHOULDERC0, 0.1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	for i=0, 0.4, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, -1, -0.3) * ANGLES(RAD(75), RAD(0), RAD(75)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-75)), 1/ Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.01) * ANGLES(RAD(75), RAD(25), RAD(0)) * ANGLES(RAD(-35), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	WACKYEFFECT({EffectType = "Ring", Size = VT(RING.Size.X,RING.Size.X,0.01)/20, Size2 = VT(RING.Size.X*2,RING.Size.X*2,0.01)/10, Transparency = 0.7, Transparency2 = 1, CFrame = RING.CFrame*ANGLES(RAD(90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = FIRECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	WACKYEFFECT({EffectType = "Sphere", Size = RING.Size, Size2 = VT(RING.Size.X,1000,RING.Size.X), Transparency = 0, Transparency2 = 1, CFrame = RING.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = FIRECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	WACKYEFFECT({EffectType = "Sphere", Size = RING.Size/3, Size2 = VT(RING.Size.X,900,RING.Size.X)/1.3, Transparency = 0.8, Transparency2 = 1, CFrame = RING.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,1,1), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	ApplyAoE(RING.Position,RING.Size.X/1.5)
	ParticleEmitter({Speed = 15, Drag = 3, Size1 = 3, Size2 = 3, Lifetime1 = 1, Lifetime2 = 5, Parent = RING, Emit = 150, Offset = 180, Enabled = false})
	CreateSound(RING,5,1,false)
	if #BODIES ~= 0 then
		for E = 1, #BODIES do
			if BODIES[E] ~= nil then
				local TORSO = BODIES[E]:FindFirstChild("HumanoidRootPart") or BODIES[E]:FindFirstChild("Torso") or BODIES[E]:FindFirstChild("UpperTorso")
				if TORSO then
					local DISTANCE = (TORSO.Position - RootPart.Position).Magnitude
					local GRAV = VELOC(TORSO,850,RootPart.CFrame*CF(MRANDOM(-35,35),MRANDOM(60,120),-15-DISTANCE).p)
					table.insert(VELOCITIES,GRAV)
					local HUM = BODIES[E]:FindFirstChildOfClass("Humanoid")
					if HUM then
						HUM.Health = HUM.Health / 2
					end
				end
			end
		end
	end
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, -1, -0.3) * ANGLES(RAD(75), RAD(0), RAD(75)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-75)), 1/ Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.01) * ANGLES(RAD(75), RAD(25), RAD(0)) * ANGLES(RAD(-35), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	FIRE.Enabled = false
	Debris:AddItem(FIRE,5)
	coroutine.resume(coroutine.create(function()
		for i = 1, 200 do
			Swait()
			RING.Size = RING.Size - VT(0.3,0,0.3)
		end
		RING:remove()
	end))
	if #BODIES ~= 0 then
		for i=0, 2, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -1.2) * ANGLES(RAD(65), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-40), RAD(0), RAD(20)) * RIGHTSHOULDERC0, 0.2 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-40), RAD(0), RAD(-20)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.3, -1) * ANGLES(RAD(65), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-20)), 0.2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.3, -1) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(20)), 0.2 / Animation_Speed)
		end
		local TFIR = BurningLimb(Torso)
		local FIRER = BurningLimb(RightArm)
		local FIREL = BurningLimb(LeftArm)
		local FIRER2 = BurningLimb(RightLeg)
		local FIREL2 = BurningLimb(LeftLeg)
		CreateSound(511715134,Torso,2,1,false)
		CreateSound(Torso,8,1,false)
		local GRAV = VELOC(RootPart,5,RootPart.Position)
		local RWING,LWING,RWELD,LWELD = MakeWings()
		for i=1, 35 do
			Swait()
			RWELD.C0 = Clerp(RWELD.C0, CF(0,2,0.75) * ANGLES(RAD(0), RAD(0), RAD(-65)), 0.1 / Animation_Speed)
			LWELD.C0 = Clerp(LWELD.C0, CF(0,2,0.75) * ANGLES(RAD(0), RAD(0), RAD(65)), 0.1 / Animation_Speed)
			GRAV.position = RootPart.CFrame*CF(0,100/35,-15/35).p
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(75-(i*2)), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1/ Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		local RING = MagicRing()
		RING.CFrame = RootPart.CFrame*CF(0,0,15)*ANGLES(RAD(-90),RAD(0),RAD(0))
		CreateSound(RING,10,1,false)
		TFIR.Enabled = false
		FIRER.Enabled = false
		FIREL.Enabled = false
		FIRER2.Enabled = false
		FIREL2.Enabled = false
		Debris:AddItem(TFIR,3)
		Debris:AddItem(FIRER,3)
		Debris:AddItem(FIREL,3)
		Debris:AddItem(FIRER2,3)
		Debris:AddItem(FIREL2,3)
		UNANCHOR = false
		RootPart.Anchored = true
		local WYVERN,WBODY,WRWING,WLWING,BASEWELD,RWELD2,LWELD2,BodyFire,RightWingFire,LeftWingFire = Wyvern(10,true)
		for i=1, 20 do
			Swait()
			RootPart.Anchored = true
			RING.Size = RING.Size + VT(6,0,6)
			RWELD.C0 = Clerp(RWELD.C0, CF(0,2,0.75) * ANGLES(RAD(0), RAD(0), RAD(-25)), 0.1 / Animation_Speed)
			LWELD.C0 = Clerp(LWELD.C0, CF(0,2,0.75) * ANGLES(RAD(0), RAD(0), RAD(25)), 0.1 / Animation_Speed)
			BASEWELD.C0 = Clerp(BASEWELD.C0, CF(0,0,0) * ANGLES(RAD(-25), RAD(0), RAD(0)), 0.1 / Animation_Speed)
			RWELD2.C0 = Clerp(RWELD2.C0, CF(2,20,0.75*5) * ANGLES(RAD(-25), RAD(65), RAD(0)), 0.1 / Animation_Speed)
			LWELD2.C0 = Clerp(LWELD2.C0, CF(-2,20,0.75*5) * ANGLES(RAD(-25), RAD(-65), RAD(0)), 0.1 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(20), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.15, 0.5, -1) * ANGLES(RAD(90), RAD(0), RAD(-75)) * RIGHTSHOULDERC0, 0.2 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.15, 0.5, -1) * ANGLES(RAD(90), RAD(0), RAD(75)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.5, -0.5) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		end
		for E = 1, 3 do
			if #BODIES ~= 0 then
				for E = 1, #BODIES do
					if BODIES[E] ~= nil then
						local TORSO = BODIES[E]:FindFirstChild("HumanoidRootPart") or BODIES[E]:FindFirstChild("Torso") or BODIES[E]:FindFirstChild("UpperTorso")
						if TORSO then
							local HUM = BODIES[E]:FindFirstChildOfClass("Humanoid")
							if HUM then
								HUM.Health = HUM.Health / 2
							end
						end
					end
				end
			end
			WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(400,400,400), Size2 = VT(0,0,0), Transparency = 1, Transparency2 = 0.5, CFrame = RootPart.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = FIRECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			for i=1, 65 do
				Swait()
				RootPart.Anchored = true
				RING.CFrame = RootPart.CFrame*CF(0,0,15)*ANGLES(RAD(-90),RAD(0),RAD(0))
				RWELD.C0 = Clerp(RWELD.C0, CF(0,2,0.75) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.1 / Animation_Speed)
				LWELD.C0 = Clerp(LWELD.C0, CF(0,2,0.75) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.1 / Animation_Speed)
				BASEWELD.C0 = Clerp(BASEWELD.C0, CF(0,0,0) * ANGLES(RAD(-25), RAD(0), RAD(0)), 0.1 / Animation_Speed)
				RWELD2.C0 = Clerp(RWELD2.C0, CF(2,20,0.75*5) * ANGLES(RAD(-25), RAD(65), RAD(0)), 0.1 / Animation_Speed)
				LWELD2.C0 = Clerp(LWELD2.C0, CF(-2,20,0.75*5) * ANGLES(RAD(-25), RAD(-65), RAD(0)), 0.1 / Animation_Speed)
				RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(20), RAD(0), RAD(0)), 0.2 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.15, 0.5, -1) * ANGLES(RAD(90), RAD(0), RAD(-75)) * RIGHTSHOULDERC0, 0.2 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.15, 0.5, -1) * ANGLES(RAD(90), RAD(0), RAD(75)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 0.2 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.5, -0.5) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			end
		end
		CreateSound(889016272,Effects,4,1.2,false)
		CreateSound(605005842,Effects,6,1,false)
		local Swirls = function()
			for i = 1, 3 do
				CreateSound(Effects,0.3,1.2,false)
				WACKYEFFECT({Time = 100, EffectType = "Swirl", Size = VT(0,0,0), Size2 = VT(175,175,175)*i, Transparency = 0.8, Transparency2 = 1, CFrame = RootPart.CFrame, MoveToPos = nil, RotationX = 0, RotationY = -i*3, RotationZ = 0, Material = "Neon", Color = FIRECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = 100, EffectType = "Swirl", Size = VT(0,0,0), Size2 = VT(225,225,225)*i, Transparency = 0.8, Transparency2 = 1, CFrame = RootPart.CFrame, MoveToPos = nil, RotationX = 0, RotationY = i*3, RotationZ = 0, Material = "Neon", Color = C3(1,1,1), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end
		end
		for E = 1, #VELOCITIES do
			if VELOCITIES[E] ~= nil then
				VELOCITIES[E]:remove()
			end
		end
		ApplyAoE(RootPart.Position,250)
		local LOOP = 0
		Swirls()
		coroutine.resume(coroutine.create(function()
			for i = 1, 10 do
				Swait()
				RING.Size = RING.Size - VT(12,0,12)
			end
			RING:remove()
		end))
		for i=0, 8, 0.1 / Animation_Speed do
			Swait()
			LOOP = LOOP + 1
			if LOOP >= 25 then
				Swirls()
				ApplyAoE(RootPart.Position,250)
				LOOP = 0
			end
			local PRT = ParticleEmitter({Speed = MRANDOM(400,850), Drag = 10, Size1 = 20, Size2 = 15, Lifetime1 = 1, Lifetime2 = 3, Parent = Torso, Emit = 15, Offset = 360, Enabled = false})
			PRT.Color = ColorSequence.new(C3(1,1,1))
			PRT.LightEmission = 1
			PRT.ZOffset = 2
			RootPart.Anchored = true
			ParticleEmitter({Speed = MRANDOM(400,850), Drag = 8, Size1 = 15, Size2 = 25, Lifetime1 = 1, Lifetime2 = 3, Parent = Torso, Emit = 25, Offset = 360, Enabled = false})
			ParticleEmitter({Speed = -25, Drag = -5, Size1 = 15, Size2 = 25, Lifetime1 = 3, Lifetime2 = 6, Parent = RootPart, Emit = 15, Offset = 25, Enabled = false})
			RWELD.C0 = Clerp(RWELD.C0, CF(0,2,0.75) * ANGLES(RAD(0), RAD(0), RAD(45)), 1 / Animation_Speed)
			LWELD.C0 = Clerp(LWELD.C0, CF(0,2,0.75) * ANGLES(RAD(0), RAD(0), RAD(-45)), 1 / Animation_Speed)
			BASEWELD.C0 = Clerp(BASEWELD.C0, CF(0,0,0) * ANGLES(RAD(-15), RAD(0), RAD(0)), 1 / Animation_Speed)
			RWELD2.C0 = Clerp(RWELD2.C0, CF(2,20,0.75*5) * ANGLES(RAD(-15), RAD(-35), RAD(0)), 1 / Animation_Speed)
			LWELD2.C0 = Clerp(LWELD2.C0, CF(-2,20,0.75*5) * ANGLES(RAD(-15), RAD(35), RAD(0)), 1 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-25), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-20), RAD(0), RAD(0)), 2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-60), RAD(0), RAD(20)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-60), RAD(0), RAD(-20)) * LEFTSHOULDERC0, 2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.3) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(-50)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.3) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(50)), 2 / Animation_Speed)
		end
		coroutine.resume(coroutine.create(function()
			coroutine.resume(coroutine.create(function()
				WBODY.Anchored = true
				BASEWELD:remove()
				WRWING.Anchored = true
				RWELD2:remove()
				WLWING.Anchored = true
				LWELD2:remove()
				BodyFire.Enabled = false
				RightWingFire.Enabled = false
				LeftWingFire.Enabled = false
				for i = 1, 50 do
					Swait()
					WBODY.Transparency = WBODY.Transparency + 0.5/50
					WRWING.Transparency = WBODY.Transparency
					WLWING.Transparency = WBODY.Transparency
				end
				wait(2)
				WYVERN:remove()
			end))
		end))
		GRAV:remove()
		RootPart.Velocity = VT(0,0,0)
		RootPart.Anchored = false
		UNANCHOR = true
		RWING:remove()
		LWING:remove()
	end
	ATTACK = false
end

function Warp()
	WACKYEFFECT({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(1,0,0), SoundID = 642890855, SoundPitch = 0.45, SoundVolume = 6, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
	WACKYEFFECT({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
	Lightning(RightArm.Position,Mouse.Hit.p,15,3.5,BrickColor.new("Really black"),math.random(15,35),1,3,0,true,55) Lightning(RightArm.Position,Mouse.Hit.p,15,3.5,BrickColor.new("Really red"),math.random(15,35),1,3,0,true,55)
	for i = 0, 2 do
	WACKYEFFECT({Time = math.random(25,50), EffectType = "Round Slash", Size = Vector3.new(0.1,0.1,0.1), Size2 = Vector3.new(0.4,0,0.4), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
	WACKYEFFECT({Time = math.random(25,50), EffectType = "Round Slash", Size = Vector3.new(0.1,0.1,0.1), Size2 = Vector3.new(0.4,0,0.4), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
	end
	WACKYEFFECT({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = Mouse.Hit, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(1,0,0), SoundID = 192410089, SoundPitch = .55, SoundVolume = 8, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
	WACKYEFFECT({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = Mouse.Hit, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
	for i = 0, 2 do
	WACKYEFFECT({Time = math.random(25,50), EffectType = "Round Slash", Size = Vector3.new(0.1,0.1,0.1), Size2 = Vector3.new(0.4,0,0.4), Transparency = 0, Transparency2 = 1, CFrame = Mouse.Hit*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
	WACKYEFFECT({Time = math.random(25,50), EffectType = "Round Slash", Size = Vector3.new(0.1,0.1,0.1), Size2 = Vector3.new(0.4,0,0.4), Transparency = 0, Transparency2 = 1, CFrame = Mouse.Hit*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
    end
	RootPart.CFrame = CF(Mouse.Hit.Position)
end

function Overthrower()
	ATTACK = true
	Rooted = true
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size + 0.05 * COS(SINE / 12) * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(5 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(180), RAD(0), RAD(25)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(180), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -1 * Player_Size, -0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1 * Player_Size, -0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	end
	CreateSound("348663022", Torso, 5, 1)
	local StartPos = RootPart.CFrame * CF(0,10,0).p
	for i = 1, 5 do
		MagicSphere2(25,25,CF(StartPos),"Really red")
		Swait(7.5)
		MagicSphere2(25,25,CF(StartPos),"Really black")
		Swait(7.5)
	end
	local soundeffect = IT("Sound",Torso)
	soundeffect.SoundId = "rbxassetid://487186990"
	soundeffect.Looped = true
	soundeffect.Volume = 10
	soundeffect.Playing = true
	repeat
	WACKYEFFECT({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = CF(StartPos), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(1,0,0), SoundID = 642890855, SoundPitch = 0.45, SoundVolume = 6, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
	WACKYEFFECT({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = CF(StartPos), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
	Lightning(StartPos,Mouse.Hit.p,15,3.5,BrickColor.new("Really black"),math.random(15,35),1,3,0,true,55) Lightning(StartPos,Mouse.Hit.p,15,3.5,BrickColor.new("Really red"),math.random(15,35),1,3,0,true,55)
	for i = 0, 2 do
	WACKYEFFECT({Time = math.random(25,50), EffectType = "Round Slash", Size = Vector3.new(0.1,0.1,0.1), Size2 = Vector3.new(0.4,0,0.4), Transparency = 0, Transparency2 = 1, CFrame = CF(StartPos)*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
	WACKYEFFECT({Time = math.random(25,50), EffectType = "Round Slash", Size = Vector3.new(0.1,0.1,0.1), Size2 = Vector3.new(0.4,0,0.4), Transparency = 0, Transparency2 = 1, CFrame = CF(StartPos)*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
	end
	WACKYEFFECT({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = Mouse.Hit, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(1,0,0), SoundID = 192410089, SoundPitch = .55, SoundVolume = 8, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
	WACKYEFFECT({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = Mouse.Hit, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
	for i = 0, 2 do
	WACKYEFFECT({Time = math.random(25,50), EffectType = "Round Slash", Size = Vector3.new(0.1,0.1,0.1), Size2 = Vector3.new(0.4,0,0.4), Transparency = 0, Transparency2 = 1, CFrame = Mouse.Hit*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
	WACKYEFFECT({Time = math.random(25,50), EffectType = "Round Slash", Size = Vector3.new(0.1,0.1,0.1), Size2 = Vector3.new(0.4,0,0.4), Transparency = 0, Transparency2 = 1, CFrame = Mouse.Hit*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
    end
		turnto(Mouse.Hit.p)
		local RayHit, RayPos, RayNormal = CastZapRay(StartPos, Mouse.Hit.p, 750, Character, false)
		local distance = (StartPos - RayPos).magnitude
		ApplyAoE(RayPos,15)
		MagicSphere2(25,25,CF(StartPos),"Really red")
		Swait(5)
		MagicSphere2(25,25,CF(StartPos),"Really black")
		Swait(5)
	until KEYHOLD == false
	soundeffect:remove()
	ATTACK = false
	Rooted = false
end

function Nightmare_Is_ALIVE()
	ATTACK = true
	CreateSound("459523898",RootPart,10,1,false)
	CreateSound("459523898",RootPart,10,1,false)
	CreateSound("223103466",RootPart,3,.8,false)
	CreateSound("3651185476",RootPart,10,1,false)
	CreateSound("3651185476",RootPart,10,1,false)
	CreateSound("3651185476",RootPart,10,1,false)
	CreateSound("3651185476",RootPart,10,1,false)
	local SCOLOR = Instance.new("ColorCorrectionEffect")
	SCOLOR.Brightness = 0
	SCOLOR.Contrast = 0
	SCOLOR.Saturation = 0
	SCOLOR.Name = "SpookyColor"
	SCOLOR.Parent = game:GetService('Lighting')
	for i=0, 11.5, 0.1 / Animation_Speed2 do
			Swait()
			Humanoid.CameraOffset = VT(MRANDOM(-500,500)/2.5,MRANDOM(-50,50)/2.5,MRANDOM(-500,500)/2.5)/30
			ApplyAoE(RootPart.Position,1e9)
			WACKYEFFECT({
			Time = 12,
			EffectType = "Sphere",
			Size = VT(5, 5, 5)/10 * 25,
			Size2 = VT(0, 0, 250)/10 * 25,
			Transparency = 0,
			Transparency2 = 1,
			CFrame = CF(RootPart.Position) * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360))),
			MoveToPos = nil,
			RotationX = 0,
			RotationY = 0,
			RotationZ = 0,
			Material = "Neon",
			Color = basecolor,
			SoundID = nil,
			SoundPitch = 1,
			SoundVolume = 6,
			UseBoomerangMath = true,
			Boomerang = 0,
			SizeBoomerang = 0
			})
			WACKYEFFECT({
			Time = 75 - i * 4,
			EffectType = "Box",
			Size = VT(0, 0, 0),
			Size2 = VT(5, 5, 5) + VT(i, i, i) * 55,
			Transparency = 0,
			Transparency2 = 1,
			CFrame = CF(RootPart.Position) * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360))),
			MoveToPos = nil,
			RotationX = 360,
			RotationY = 360,
			RotationZ = 360,
			Material = "Neon",
			Color = basecolor,
			SoundID = nil,
			SoundPitch = MRANDOM(8, 20) / 10,
			SoundVolume = 2,
			UseBoomerangMath = true,
			Boomerang = 25,
			SizeBoomerang = 100
		})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
            Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-7), RAD(-10), RAD(27 - 2.5 * SIN(SINE / 13))) * ANGLES(RAD(0), RAD(0), RAD(-22 - 2.5 * SIN(SINE / 13))), 1 / Animation_Speed)
            RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.55, .5, 0) * ANGLES(RAD(0), RAD(0), RAD(15))* RIGHTSHOULDERC0, 0.15 / 3)
            LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.65, .5, 0) *ANGLES(RAD(0),RAD(0 + .5 * COS(SINE / 12)),RAD(MRANDOM(-40,10))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
            RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 + 0.01, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / Animation_Speed)
            LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 + 0.01, -0.01) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	end
	CreateSound("168513088",RootPart,10,1,false)
	CreateSound("168513088",RootPart,10,1,false)
	CreateSound("168513088",RootPart,10,1,false)
	CreateSound("168513088",RootPart,10,1,false)
	--
	CreateSound("231917744",RootPart,10,1,false)
	CreateSound("231917744",RootPart,10,1,false)
	CreateSound("231917744",RootPart,10,1,false)
	CreateSound("231917744",RootPart,10,1,false)



	Humanoid.HipHeight = 10
	local BLUR = Instance.new("BlurEffect")
	BLUR.Size = 0
	BLUR.Name = "Wasted"
	BLUR.Parent = game:GetService('Lighting')
	local thing = 1
	for i = 1,350 do
			Swait()
			thing = thing +1
		SCOLOR.Brightness = 5-((i/10)*5)
		SCOLOR.Contrast = 4-((i/10)*4)
		SCOLOR.Saturation = 3-((i/10)*3)
			BLUR.Size = (i/30)*10
			ApplyAoE(RootPart.Position,1e9999)
			if thing >= 250 then
				game.Players:ClearAllChildren()
			end
			WACKYEFFECT({
			Time = 75 - i * 4,
			EffectType = "Box",
			Size = VT(0, 0, 0),
			Size2 = VT(5, 5, 5) + VT(i, i, i) * 100,
			Transparency = 0,
			Transparency2 = 1,
			CFrame = CF(RootPart.Position) * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360))),
			MoveToPos = nil,
			RotationX = 360,
			RotationY = 360,
			RotationZ = 360,
			Material = "Neon",
			Color = basecolor,
			SoundID = 231917744,
			SoundPitch = MRANDOM(8, 20) / 10,
			SoundVolume = 3,
			UseBoomerangMath = true,
			Boomerang = 25,
			SizeBoomerang = 100
		})
			WACKYEFFECT({EffectType = "Wave", Size = VT(0,5,0), Size2 = VT(i*12,5,i*12), Transparency = 0.6, Transparency2 = 1, CFrame = CF(RootPart.Position) * ANGLES(RAD(0), RAD(MRANDOM(0,360)), RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0.1, RotationY = 1, RotationZ = -0.1, Material = "Slate", Color = basecolor, SoundID = 528589382, SoundPitch = MRANDOM(5,15)/10, SoundVolume = 3, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
		WACKYEFFECT({EffectType = "Sphere", Size = VT(0,5,0), Size2 = VT(i*12,5,i*12), Transparency = 0.6, Transparency2 = 1, CFrame = CF(RootPart.Position) * ANGLES(RAD(0), RAD(MRANDOM(0,360)), RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0.1, RotationY = 1, RotationZ = -0.1, Material = "Neon", Color = C3(1,0,0), SoundID = 528589382, SoundPitch = MRANDOM(5,15)/10, SoundVolume = 3, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
		WACKYEFFECT({EffectType = "Slash", Size = VT(0,5,0), Size2 = VT(i*12,5,i*12), Transparency = 0.6, Transparency2 = 1, CFrame = CF(RootPart.Position) * ANGLES(RAD(0), RAD(MRANDOM(0,360)), RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0.1, RotationY = 1, RotationZ = -0.1, Material = "Neon", Color = C3(1,0,0), SoundID = 528589382, SoundPitch = MRANDOM(5,15)/10, SoundVolume = 3, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
            Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-7), RAD(-10), RAD(27 - 2.5 * SIN(SINE / 13))) * ANGLES(RAD(0), RAD(0), RAD(-22 - 2.5 * SIN(SINE / 13))), 1 / Animation_Speed)
            RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.55, .5, 0) * ANGLES(RAD(0), RAD(0), RAD(15))* RIGHTSHOULDERC0, 0.15 / 3)
            LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.65, .5, 0) *ANGLES(RAD(0),RAD(0 + .5 * COS(SINE / 12)),RAD(MRANDOM(-40,10))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
            RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 + 0.01, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / Animation_Speed)
            LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 + 0.01, -0.01) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	end
end





local sine = 0


local MODE = "0"
function Modes()
	if MODE == "0" then
		MODE =  "1"
		ChangeName("")
		sick.SoundId = 'rbxassetid://9038254260'
		sick.Volume = 100
		sick.PlaybackSpeed = 1
	elseif MODE == "1" then
		MODE =  "2"
		ChangeName("")
		sick.SoundId = 'rbxassetid://9038251495'
		sick.Volume = 100
		sick.PlaybackSpeed = 1
	elseif MODE == "2" then
		MODE =  "3"
		ChangeName("")
		sick.SoundId = 'rbxassetid://9038256465'
		sick.Volume = 100
		sick.PlaybackSpeed = 1
	elseif MODE == "3" then
		MODE =  "4"
		ChangeName("")
		sick.SoundId = 'rbxassetid://9038254803'
		sick.Volume = 100
		sick.PlaybackSpeed = 1
	elseif MODE == "4" then
		MODE =  "5"
		ChangeName("")
		sick.SoundId = 'rbxassetid://9038253895'
		sick.Volume = 100
		sick.PlaybackSpeed = 1
	elseif MODE == "5" then
		MODE =  "6"
		ChangeName("")
		sick.SoundId = 'rbxassetid://9039352991'
		sick.Volume = 100
		sick.PlaybackSpeed = 1
	elseif MODE == "6" then
		MODE =  "7"
		ChangeName("")
		sick.SoundId = 'rbxassetid://9039352032'
		sick.Volume = 100
		sick.PlaybackSpeed = 1
	elseif MODE == "7" then
		MODE =  "8"
		ChangeName("")
		sick.SoundId = 'rbxassetid://9038254571'
		sick.Volume = 100
		sick.PlaybackSpeed = 1
	elseif MODE == "8" then
		MODE =  "9"
		ChangeName("")
		sick.SoundId = 'rbxassetid://9038252384'
		sick.Volume = 100
		sick.PlaybackSpeed = 1
	elseif MODE == "9" then
		MODE =  "0"
		ChangeName("")
		spawn(function() Rainbowify() end)
		sick.SoundId = 'rbxassetid://9038254696'
		sick.Volume = 100
		sick.PlaybackSpeed = 0.9
	
	end
end
local NAMEBILL = Instance.new("BillboardGui",Character)
NAMEBILL.AlwaysOnTop = true
NAMEBILL.Size = UDim2.new(7,35,3,15)
NAMEBILL.StudsOffset = Vector3.new(0,2,0)
NAMEBILL.MaxDistance = 10000
NAMEBILL.Adornee = Head
NAMEBILL.Name = "NameBillboard"
local NAMEMODE = Instance.new("TextLabel",NAMEBILL)
NAMEMODE.BackgroundTransparency = 1
NAMEMODE.TextScaled = false
NAMEMODE.BorderSizePixel = 0
NAMEMODE.Text = " "
NAMEMODE.Font = "Antique"
NAMEMODE.TextSize = 30
NAMEMODE.TextStrokeTransparency = 0
NAMEMODE.Size = UDim2.new(1,0,0.5,0)
NAMEMODE.Parent = NAMEBILL
NAMEMODE.TextColor3 = basecolor
NAMEMODE.TextStrokeColor3 = basecolor
local mon = false
function ChangeName(Text)
	NAMEMODE.Text = Text
end

local VISUALS = game.Lighting
local VISUALSSz = game.Lighting
local Bloom = script.Bloom
Bloom.Parent = VISUALS
script["C-Correction"].Parent = VISUALS
wait(0.1)
coroutine.resume(coroutine.create(function()
	while true do
		Swait()
		if Idk == true  then
			VISUALS.FogColor = basecolor
			VISUALS.Ambient = basecolor
			VISUALS.OutdoorAmbient = basecolor
			VISUALS.TimeOfDay = 0
			Bloom.Intensity = 0 + sick.PlaybackLoudness/100
			VISUALSSz.ExposureCompensation = 0 + sick.PlaybackLoudness/40
			VISUALSSz.FogEnd = 700
			VISUALSSz.Brightness = 0
			VISUALS.EnvironmentDiffuseScale = 0 + sick.PlaybackLoudness/20
			VISUALS["C-Correction"].Contrast= 0.1 + sick.PlaybackLoudness/300
			workspace.CurrentCamera.FieldOfView = 50 - sick.PlaybackLoudness/25
		else

		end
	end
end))
fonts = {
	Enum.Font.PermanentMarker,
	Enum.Font.Code,
	Enum.Font.SourceSansBold,
	Enum.Font.Arcade,
	Enum.Font.JosefinSans,
	Enum.Font.AmaticSC,
}
local EF = "1"
function OhnoItsAShotgun()
	local SHOOTgun = CreatePart(3, Effects, "Neon", 0, 1, BRICKC("Black"), randomstring(), VT(0.25, 0.5, 5), true)
	CreateMesh("SpecialMesh", SHOOTgun, "FileMesh", "3824749", "", VT(0.9, 1.13, 1), VT(0, -0.3, 0))
	return SHOOTgun
end



function PAW_HAHA(LOC, AIMTO, OUCH)
	WACKYEFFECT({
		Time = 25,
		EffectType = "Block",
		Size = VT(0, 0, 0),
		Size2 = VT(1.4, 1.4, 1.4),
		Transparency = 0,
		Transparency2 = 1,
		CFrame = CF(LOC),
		MoveToPos = nil,
		RotationX = 0,
		RotationY = 0,
		RotationZ = 0,
		Material = "Neon",
		Color = BRICKC"New Yeller".Color,
		SoundID = 138083993,
		SoundPitch = MRANDOM(8, 12) / 13,
		SoundVolume = 2
	})
	for i = 1, 4 do
		local POS1 = CF(LOC, AIMTO) * CF(0, 0, -45).p
		local AIMPOS = CF(LOC, POS1) * CF(0, 0, -45) * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360))) * CF(0, 0, MRANDOM(5, 75) / 10).p
		local HIT, POS = CastProperRay(LOC, AIMPOS, 1000, Character)
		local DISTANCE = (POS - LOC).Magnitude
		if HIT then
			coroutine.resume(coroutine.create(function()
				if HIT ~= RealRoot then
					if HIT.Parent ~= workspace and HIT.Parent.ClassName ~= "Folder" then
						WACKYEFFECT({
							EffectType = "Sphere",
							Size = VT(5, 5, 5),
							Size2 = VT(20, 20, 20),
							Transparency = 0.5,
							Transparency2 = 1,
							CFrame = CF(HIT.Position),
							MoveToPos = nil,
							RotationX = 0,
							RotationY = 0,
							RotationZ = 0,
							Material = "Neon",
							Color = C3(17 / 255, 17 / 255, 17 / 255),
							SoundID = nil,
							SoundPitch = nil,
							SoundVolume = nil,
							UseBoomerangMath = false,
							Boomerang = 0,
							SizeBoomerang = 0
						})
				
						HIT.Parent:Destroy()
					end
					if HIT:IsA("MeshPart") then
						WACKYEFFECT({
							EffectType = "Sphere",
							Size = VT(5, 5, 5),
							Size2 = VT(20, 20, 20),
							Transparency = 0.5,
							Transparency2 = 1,
							CFrame = CF(HIT.Position),
							MoveToPos = nil,
							RotationX = 0,
							RotationY = 0,
							RotationZ = 0,
							Material = "Neon",
							Color = C3(17 / 255, 17 / 255, 17 / 255),
							SoundID = nil,
							SoundPitch = nil,
							SoundVolume = nil,
							UseBoomerangMath = false,
							Boomerang = 0,
							SizeBoomerang = 0
						})

						HIT:Destroy()
					end
				end
			end))
		end
		WACKYEFFECT({
			Time = 20,
			EffectType = "Block",
			Size = VT(0, 0, 0),
			Size2 = VT(1, 1, 1),
			Transparency = 0,
			Transparency2 = 1,
			CFrame = CF(POS),
			MoveToPos = nil,
			RotationX = 0,
			RotationY = 0,
			RotationZ = 0,
			Material = "Neon",
			Color = BRICKC"New Yeller".Color,
			SoundID = nil,
			SoundPitch = 1,
			SoundVolume = 4
		})
		WACKYEFFECT({
			Time = 20,
			EffectType = "Box",
			Size = VT(0, 0, DISTANCE),
			Size2 = VT(0.7, 0.7, DISTANCE),
			Transparency = 0.6,
			Transparency2 = 1,
			CFrame = CF(LOC, POS) * CF(0, 0, -DISTANCE / 2),
			MoveToPos = nil,
			RotationX = 0,
			RotationY = 0,
			RotationZ = 0,
			Material = "Neon",
			Color = BRICKC"New Yeller".Color,
			SoundID = nil,
			SoundPitch = nil,
			SoundVolume = nil
		})
	end
end
function CamShake(SHAKE, TIMER)
	coroutine.resume(coroutine.create(function()
		local FADER = SHAKE / TIMER
		for i = 1, TIMER do
			wait()
			Humanoid.CameraOffset = VT(MRANDOM(-(SHAKE - (FADER * i)), (SHAKE - (FADER * i))) / 10, MRANDOM(-(SHAKE - (FADER * i)), (SHAKE - (FADER * i))) / 10, MRANDOM(-(SHAKE - (FADER * i)), (SHAKE - (FADER * i))) / 10)
		end
		Humanoid.CameraOffset = VT(0, 0, 0)
	end))
end
function Tripwire()
	coroutine.wrap(function()
		repeat
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0.1, -0.1) * ANGLES(RAD(-10), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.5, -0.5) * ANGLES(RAD(0), RAD(0), RAD(-100)) * ANGLES(RAD(20), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-15), RAD(5), RAD(-25)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(-10), RAD(80), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(-10), RAD(-80), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
		until ATTACK == false
	end)()
	local SHOOT = OhnoItsAShotgun()
	local CFRAME = CF(-1.5, 0, 1.5) * ANGLES(RAD(0), RAD(45), RAD(0))
	SHOOT.CFrame = Torso.CFrame * CFRAME
	coroutine.wrap(function()
		repeat
			SHOOT.CFrame = Clerp(SHOOT.CFrame, Torso.CFrame * CFRAME, 0.1)
			Swait()
		until HOLD == true
		local LOC = SHOOT.CFrame * CF(0, 3, 0).p
		for i = 1, 15 do
			Swait()
			SHOOT.Transparency = SHOOT.Transparency - 1 / 15
			SHOOT.CFrame = Clerp(SHOOT.CFrame, CF(LOC, Mouse.Hit.p), 0.3)
		end
		SHOOT.Transparency = 0
		for i = 1, 2 do
			Swait()
			SHOOT.CFrame = Clerp(SHOOT.CFrame, CF(LOC, Mouse.Hit.p), 0.5)
		end
		PAW_HAHA(SHOOT.CFrame * CF(0, 0, -SHOOT.Size.Z / 2).p, Mouse.Hit.p, 10)
		CamShake(8, 9)
		SHOOT.CFrame = SHOOT.CFrame * ANGLES(RAD(45), RAD(0), RAD(0))
		SHOOT.CanCollide = true
		SHOOT.Anchored = false
		SHOOT.Parent = workspace
		local bv = Instance.new("BodyVelocity", SHOOT) 
		bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
		bv.velocity = CF(SHOOT.Position, SHOOT.CFrame * CF(0, 2.5, 2).p).lookVector * 45
		Debris:AddItem(bv, 0.1)
		wait(5)
		for i = 1, 45 do
			Swait()
			SHOOT.Transparency = SHOOT.Transparency + 1 / 45
		end
	end)()
	CreateSound(233856115, SHOOT, 1.2, (10) - 0.3, false)
	for i = 1, 15 do
		Swait()
		SHOOT.Transparency = SHOOT.Transparency - 1 / 150
	end
end
local Cam = true
function ToggleCam()
	if Cam == true then
		Cam = false
	elseif EF == false then
		Cam = true
	end
end
function ToggleEF()
	if EF == "1" then
		EF = "2"
	elseif EF == "2" then
		EF = "3"
	elseif EF == "3" then
		EF = "4"
	elseif EF == "4" then
		EF = "5"
	elseif EF == "5" then
		EF = "6"
	elseif EF == "6" then
		EF = "1"
	end
end
function Conjour()
	local SHOOT = OhnoItsAShotgun()
	local CFRAME = CF(RootPart.Position) * ANGLES(RAD(0), RAD(MRANDOM(0, 360)), RAD(0)) * CF(0, MRANDOM(15, 25) / 3, MRANDOM(15, 25) / 3)
	local ORI = 90
	SHOOT.CFrame = CF(CFRAME.p, Mouse.Hit.p) * ANGLES(RAD(0), RAD(ORI), RAD(0))
	local GOODRIDDANCE = false
	CreateSound(233856115, SHOOT, 2, (MRANDOM(8, 12) / 10) + 0.3, false)
	coroutine.resume(coroutine.create(function()
		repeat
			SHOOT.CFrame = Clerp(SHOOT.CFrame, CF(CFRAME.p, Mouse.Hit.p) * ANGLES(RAD(ORI), RAD(0), RAD(0)), 0.25)
			Swait()
		until GOODRIDDANCE == true
		SHOOT.CFrame = SHOOT.CFrame * ANGLES(RAD(45), RAD(0), RAD(0))
		SHOOT.CanCollide = true
		SHOOT.Anchored = false
		SHOOT.Parent = workspace
		local bv = Instance.new("BodyVelocity", SHOOT) 
		bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
		bv.velocity = CF(SHOOT.Position, SHOOT.CFrame * CF(0, 2.5, 2).p).lookVector * 45
		Debris:AddItem(bv, 0.1)
		wait(0.1)
		for i = 1, 45 do
			Swait()
			SHOOT.Transparency = SHOOT.Transparency + 1 / 45
		end
		SHOOT:remove()
	end))
	for i = 1, 15 do
		Swait()
		SHOOT.Transparency = SHOOT.Transparency - 1 / 15
		ORI = ORI - 3
	end
	for i = 1, 15 do
		Swait()
		ORI = ORI - 3
	end
	wait(MRANDOM(2, 8) / 10)
	PAW_HAHA(SHOOT.CFrame * CF(0, 0, -SHOOT.Size.Z / 2).p, Mouse.Hit.p, 14)
	CamShake(4, 4)
	GOODRIDDANCE = true
end
local mod = "1"
function ToggleMod()
	if mod == "1" then
		mod = "2"
	elseif mod == "2" then
		mod = "1"
	end
end
local hawd = "1"
function dadMod()
	if hawd == "1" then
		hawd = "2"
	elseif hawd == "2" then
		hawd = "1" 
	end
end
function Aerial_Bombardament()
	local HITFLOOR, HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4, Character)
	if HITFLOOR then
		ATTACK = true
		Rooted = true
		local bv = Instance.new("BodyVelocity") 
		bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
		bv.velocity = CF(RootPart.Position, RootPart.CFrame * CF(0, 1.5, -2).p).lookVector * 175
		bv.Parent = RootPart
		local GYRO = IT("BodyGyro", RootPart)
		GYRO.D = 2
		GYRO.P = 20000
		GYRO.MaxTorque = VT(0, 4000000, 0)
		GYRO.CFrame = CF(RootPart.Position, RootPart.CFrame * CF(0, 0, -5).p)
		CreateSound(145486992, Torso, 10, 0.85, false)
		for i = 0, 0.05, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(65), RAD(0), RAD(-10)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-35), RAD(0), RAD(10)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(50), RAD(-20), RAD(25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(15), RAD(20), RAD(-25)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			if ANIM == "Fall" or ANIM == "Jump" then
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.6) * ANGLES(RAD(1), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			else
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(-5), RAD(80), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
			end
		end
		bv:Remove()
		local E = 360 / 15
		for i = 1, 15 do
			Swait()
			WACKYEFFECT({
				Time = 10,
				EffectType = "Wave",
				Size = VT(8, 1, 8),
				Size2 = VT(2, 15, 2),
				Transparency = 0.9,
				Transparency2 = 1,
				CFrame = CF(RootPart.Position, HITPOS) * ANGLES(RAD(-90), RAD(0), RAD(0)),
				MoveToPos = nil,
				RotationX = 0,
				RotationY = 0,
				RotationZ = 0,
				Material = "Neon",
				Color = C3(1, 1, 1),
				SoundID = nil,
				SoundPitch = nil,
				SoundVolume = nil,
				UseBoomerangMath = false,
				Boomerang = 0,
				SizeBoomerang = 0
			})
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(i * E), RAD(0), RAD(0)), 2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(25), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(5), RAD(15), RAD(90)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(-5), RAD(-90)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.6) * ANGLES(RAD(-35), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		WACKYEFFECT({
			EffectType = "Sphere",
			Size = VT(5, 5, 5),
			Size2 = VT(20, 20, 20),
			Transparency = 0.5,
			Transparency2 = 1,
			CFrame = CF(Torso.Position),
			MoveToPos = nil,
			RotationX = 0,
			RotationY = 0,
			RotationZ = 0,
			Material = "Neon",
			Color = C3(17 / 255, 17 / 255, 17 / 255),
			SoundID = nil,
			SoundPitch = nil,
			SoundVolume = nil,
			UseBoomerangMath = false,
			Boomerang = 0,
			SizeBoomerang = 0
		})
		for i = 1, 25 do
			coroutine.resume(coroutine.create(function()
				Conjour()
			end))
		end
		local LANDED = nil
		local POS = nil
		coroutine.resume(coroutine.create(function()
			repeat
				Swait()
				RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 ) * ANGLES(RAD(-15), RAD(0), RAD(0)), 1 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(0)), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-35 - 4 * COS(SINE / 6)), RAD(0), RAD(45 + 10 * COS(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-35 - 4 * COS(SINE / 6)), RAD(0), RAD(-45 - 10 * COS(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.3, -0.7) * ANGLES(RAD(-25 + 5 * SIN(SINE / 12)), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8, -0.3) * ANGLES(RAD(-10), RAD(-80), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			until LANDED ~= nil
		end))
		repeat
			Swait()
			local HITFLOOR, HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4.2, Character)
			if HITFLOOR then
				LANDED = HITFLOOR
				POS = HITPOS
			end
		until LANDED ~= nil
		GYRO:remove()
		CamShake(6, 3)
		CreateSound(765590102, Torso, 2, (MRANDOM(8, 12) / 10) + 0.3, false)
		ATTACK = false
		Rooted = false
	end
end
local GRUNTS = {
	1146556975,
	1146556706,
	1278006076
}
function Point_Blank()
	ATTACK = true
	Rooted = true
	local HIT = nil
	local HUMAN = nil
	local ROOT = nil
	CreateSound(145486992, Torso, 10, 0.85, false)
	for i = 0, 0.5, 0.1 / Animation_Speed do
		Swait()
		if HIT ~= nil then
			break
		end
		for index, CHILD in pairs(workspace:GetDescendants()) do
			if CHILD.ClassName == "Model" and CHILD ~= Character then
				local HUM = CHILD:FindFirstChildOfClass("Humanoid")
				if HUM then
					local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
					if TORSO and HUM.Health > 0 then
						if (TORSO.Position - RootPart.CFrame * CF(0, 0, -2).p).Magnitude <= 2 then
							ROOT = TORSO
							HUMAN = HUM
							HIT = CHILD
						end
					end
				end
			end
		end
		RootPart.CFrame = Clerp(RootPart.CFrame, RootPart.CFrame, 0.07) * CF(0, 0, -1)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -0.75) * ANGLES(RAD(45), RAD(0), RAD(0)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-35), RAD(0), RAD(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-45), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -0.5) * ANGLES(RAD(135), RAD(0), RAD(12)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(-10), RAD(80), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(-5), RAD(-80), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	if HIT then
		local bv = Instance.new("BodyVelocity") 
		bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
		bv.velocity = CF(RootPart.Position, RootPart.CFrame * CF(0, 1.5, 2).p).lookVector * 75
		bv.Parent = RootPart
		Debris:AddItem(bv, 0.1)
		coroutine.resume(coroutine.create(function()
			local GUNS = {}
			for i = 1, 4 do
				local SHOOT = OhnoItsAShotgun()
				local CFRAME = CF(ROOT.Position) * ANGLES(RAD(0), RAD(MRANDOM(0, 360)), RAD(0)) * CF(0, MRANDOM(15, 25) / 3, MRANDOM(15, 25) / 3)
				SHOOT.CFrame = CF(CFRAME.p, ROOT.Position)
				CreateSound(233856115, SHOOT, 2, (MRANDOM(8, 12) / 10) + 0.3, false)
				table.insert(GUNS, SHOOT)
			end
			for i = 1, 25 do
				Swait()
				for E = 1, #GUNS do
					GUNS[E].Transparency = GUNS[E].Transparency - 1 / 25
				end
			end
			wait(0.1)
			CamShake(8, 15)
			for E = 1, #GUNS do
				local SHOOT = GUNS[E]
				coroutine.resume(coroutine.create(function()
					PAW_HAHA(SHOOT.CFrame * CF(0, 0, -SHOOT.Size.Z / 2).p, SHOOT.CFrame * CF(0, 0, -15).p, 17)
					SHOOT.CFrame = SHOOT.CFrame * ANGLES(RAD(45), RAD(0), RAD(0))
					SHOOT.CanCollide = true
					SHOOT.Anchored = false
					SHOOT.Parent = workspace
					local bv = Instance.new("BodyVelocity", SHOOT) 
					bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
					bv.velocity = CF(SHOOT.Position, SHOOT.CFrame * CF(0, 2.5, 2).p).lookVector * 45
					Debris:AddItem(bv, 0.1)
					wait(5)
					for i = 1, 45 do
						Swait()
						SHOOT.Transparency = SHOOT.Transparency + 1 / 45
					end
				end))
				wait()
			end
		end))
		CreateSound(GRUNTS[MRANDOM(1, #GRUNTS)], Torso, 6, 1.1, false)
		for i = 0, 1, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0.1, -0.1) * ANGLES(RAD(-20), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(-10), RAD(80), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(-10), RAD(-80), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	end
	ATTACK = false
	Rooted = false
end
function MouseDown(Mouse)
	HOLD = true
	if ATTACK == false then
	end
end
function MouseUp(Mouse)
	HOLD = false
end
function KeyDown(Key)
	KEYHOLD = true
	if Key == "e" then
		for i = 0, 49 do
        

		end
		Modes()
	end
	if Key == "c" and ATTACK == false and  hawd == "1" then
		repeat 
			coroutine.wrap(function()
				Conjour()

			end)()
			swait(3)
		until KEYHOLD == false
	end
	if Key == "2" then
		dadMod()
	end
	if Key == "v" and ATTACK == false and  hawd == "1" then
		Aerial_Bombardament()
	end

	if Key == "b" and ATTACK == false and  hawd == "1" then
		Point_Blank()
	end
	if Key == "q" and ATTACK == false and RUNNING == false and hawd == "2" then
		Warp()
	end
	if Key == "y" then
		ToggleEF()
	end
	if Key == "3" then
		ToggleCam()
	end
	if Key == "t"  then

		AdvancedChatfunc("bye cannon",0,0,false)
	end
	if Key == "z" and ATTACK == false and RUNNING == false and hawd == "2" then
		HandBeam()
	end

	if Key == "x" and ATTACK == false and RUNNING == false and hawd == "2" then
		Dash()
	end
	if Key == "c" and ATTACK == false and RUNNING == false and hawd == "2" then
		Grab()
	end
	if Key == "v" and ATTACK == false and RUNNING == false and hawd == "2" then
		Overthrower()
	end
	if Key == "b" and ATTACK == false and RUNNING == false and hawd == "2" then
		Nightmare_Is_ALIVE()
	end
	if Key == "g" and ATTACK == false and RUNNING == false and hawd == "2" then
		WyvernBreath()
	end
	if Key == "h" and ATTACK == false and RUNNING == false and hawd == "2"  then
		WyvernWinggale()
	end
	if Key == "j" and ATTACK == false and RUNNING == false and hawd == "2" then
		ChaoticWyvernOutburst()
	end
	if Key == "f" and hawd == "1" then
		repeat 
			coroutine.wrap(function()
				Tripwire()
			end)()
			swait(3)
		until KEYHOLD == false
	end
	if Key == "0" and ATTACK == false and RUNNING == false then
		Sprint()
	end
end	


local ActualVelocity = Vector3.new(0,0,0)
if lplr == Player then
	spawn(function()
		while true do

			for i = 1,10 do

				script.ArtificialHB2.Event:wait()
			end

		end
	end)
	spawn(function()
		while true do
			game:GetService("RunService").RenderStepped:wait()

		end
	end)

end

if lplr ~= Player then
	local Last = RootPart.Position

	spawn(function()
		while true do
			game:GetService("RunService").RenderStepped:wait()

		end
	end)
end



function KeyUp(Key)
	KEYHOLD = false
end

	Mouse.Button1Down:connect(function(NEWKEY)
		MouseDown(NEWKEY)
	end)
	Mouse.Button1Up:connect(function(NEWKEY)
		MouseUp(NEWKEY)
	end)
	Mouse.KeyDown:connect(function(NEWKEY)
		KeyDown(NEWKEY)
	end)
	Mouse.KeyUp:connect(function(NEWKEY)
		KeyUp(NEWKEY)
	end)  
	
--><:thinking:
function unanchor()
	for _, c in pairs(Character:GetChildren()) do
		if c:IsA("BasePart") and c ~= RootPart then
			c.Anchored = false
		end
	end
	if UNANCHOR == true then
		RootPart.Anchored = false
	else
		RootPart.Anchored = true
	end
end

------------------------------------------------------------------------------
Humanoid.Changed:connect(function(Jump)
	if Jump == "Jump" and (Disable_Jump == true) then
		Humanoid.Jump = false
	end
end)

coroutine.wrap(function()

end)()
local d = "0"
local RunService = game:GetService("RunService")
function Rainbowify(name)
	while RunService.Stepped:Wait() do
		if d ~= "0"  then
			for a = 1,360,1 do wait(0.0000000000000000000000001)
				if  d ~= "0" then
					basecolor = Color3.fromHSV(a/360,1,1)
				end
			end
		end
	end
end
local gaa = "Neon"
script.Darkness:Clone().Parent = LeftLeg
script.Darkness:Clone().Parent = LeftArm
local spinc=0
local spinc2=0
Humanoid.HipHeight = 0
Humanoid.JumpPower = 100
local Field = Instance.new("ForceField",Character)
Field.Visible = false
Character.Parent = workspace
local BMUSIC = IT("Sound",RootPart)
while true do
	Swait()
	ANIMATE.Parent = nil
	for _,v in next, Humanoid:GetPlayingAnimationTracks() do
	    v:Stop();
	end
	SINE = SINE + CHANGE
TORSOVELOCITY=(ActualVelocity*Vector3.new(1,0,1)).magnitude
if lplr == Player then
TORSOVELOCITY=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude
end
	local TORSOVERTICALVELOCITY = RootPart.Velocity.y
	spinc=spinc+1
	spinc2=spinc2-1
	local HITFLOOR = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4, Character)
	local WALKSPEEDVALUE = 6 / (Humanoid.WalkSpeed / 16)
	if TORSOVERTICALVELOCITY > 20 then
		TORSOVERTICALVELOCITY = 20
	elseif TORSOVERTICALVELOCITY < -20 then
		TORSOVERTICALVELOCITY = -20
	end
	HALOWELD.C0 = Clerp(HALOWELD.C0, CF(0, 0, 0) * ANGLES(RAD(90 - 12 * SIN(SINE / 15)), RAD(-12 * COS(SINE / 15)), RAD(0)), 0.2)
	for T = 1, #TAIL do
		if TAIL[T] ~= nil then
			TAIL[T].C1 = Clerp(TAIL[T].C1, CF(0, 0, 0) * ANGLES(RAD(0), RAD(1), RAD(3.5 * SIN(SINE / 12))), 1 / Animation_Speed)
		end
	end
	if MRANDOM(1,1) == 1 and EF == "1" and MODE ~= "5"   then
		WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(10*sick.PlaybackLoudness/75,0,1*sick.PlaybackLoudness/75), Size2 = VT(2*sick.PlaybackLoudness/75,0.5,7*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(spinc),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = gaa, Color = basecolor, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
		WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(1*sick.PlaybackLoudness/75,0,10*sick.PlaybackLoudness/75), Size2 = VT(7*sick.PlaybackLoudness/75,0.69,1*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(spinc),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = gaa, Color = basecolor, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
		WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(3.5*sick.PlaybackLoudness/75,0,4*sick.PlaybackLoudness/75), Size2 = VT(4*sick.PlaybackLoudness/75,0.5,4*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(spinc),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = gaa, Color = basecolor, SoundID = nil, SoundPitch = nil, SoundVolume = nil})	
	end
	if MRANDOM(1,1) == 1 and EF == "1" and MODE == "5"   then
		WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(20*sick.PlaybackLoudness/75,0,2*sick.PlaybackLoudness/75), Size2 = VT(4*sick.PlaybackLoudness/75,0.5,12*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(spinc),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = gaa, Color = basecolor, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
		WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(2*sick.PlaybackLoudness/75,0,20*sick.PlaybackLoudness/75), Size2 = VT(14*sick.PlaybackLoudness/75,0.69,2*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(spinc),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = gaa, Color = basecolor, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
		WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(7*sick.PlaybackLoudness/75,0,8*sick.PlaybackLoudness/75), Size2 = VT(8*sick.PlaybackLoudness/75,0.5,8.5*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(spinc),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = gaa, Color = basecolor, SoundID = nil, SoundPitch = nil, SoundVolume = nil})	
	end
	if MODE == "0" then
		d = "1"
	end
	if MRANDOM(1,4) == 4 and EF == "2" then
		local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4, Character)
		local POSITION = CF(HITPOS)*ANGLES(RAD(0),RAD(MRANDOM(0,360)),RAD(0))*CF(MRANDOM(3,6),0,0).p
		local SPHEREFLOOR,SPHEREPOS = Raycast(POSITION+VT(0,1,0), (CF(POSITION, POSITION + VT(0, -1, 0))).lookVector, 5, Character)
		WACKYEFFECT({Time = MRANDOM(10,30)*3, EffectType = "Box" , Size = Vector3.new(0.5,0.5,0.5)*2.95, Size2 = Vector3.new(0.425,0.425,0.425), Transparency = 0, Transparency2 = 1, CFrame = CFrame.new(SPHEREPOS-Vector3.new(0,2,0))*CFrame.Angles(math.rad(spinc),math.rad(spinc),math.rad(spinc)), MoveToPos = SPHEREPOS+Vector3.new(0,MRANDOM(15,45)/5,0), MRANDOM(-15,35)/35, RotationY = MRANDOM(-25,25)/35, RotationZ = MRANDOM(-25,25)/35, Material = gaa, Color = basecolor, SoundID = nil, SoundPitch = MRANDOM(12,16)/10, SoundVolume = 2,RED = true})	
		WACKYEFFECT({Time = MRANDOM(10,30)*3, EffectType = "Sphere" , Size = Vector3.new(0.5,0.5,0.5)*2.95, Size2 = Vector3.new(0.425,0.425,0.425), Transparency = 0, Transparency2 = 1, CFrame = CFrame.new(SPHEREPOS-Vector3.new(0,2,0))*CFrame.Angles(math.rad(spinc),math.rad(spinc),math.rad(spinc)), MoveToPos = SPHEREPOS+Vector3.new(0,MRANDOM(15,45)/5,0), MRANDOM(-15,35)/35, RotationY = MRANDOM(-25,25)/35, RotationZ = MRANDOM(-25,25)/35, Material = gaa, Color = basecolor, SoundID = nil, SoundPitch = MRANDOM(12,16)/10, SoundVolume = 2,RED = true})
	end
	if MRANDOM(1,1) == 1 and EF == "2" then
		WACKYEFFECT({Time = 10, EffectType = "Box", Size = VT(0.5,0.5,0.5), Size2 = VT(1,1,1), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(MRANDOM(-15,15),MRANDOM(-2.5,13.1),MRANDOM(-15,15)), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = gaa, Color = Color3.fromRGB(0+178*sick.PlaybackLoudness/100,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 10, EffectType = "Sphere", Size = VT(0.5,0.5,0.5), Size2 = VT(1,1,1), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(MRANDOM(-15,15),MRANDOM(-2.5,13.1),MRANDOM(-15,15)), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = gaa, Color = Color3.fromRGB(0+178*sick.PlaybackLoudness/100,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	end
	if MRANDOM(1,1) == 1 and EF == "3" then
		WACKYEFFECT2({Time = 12.5, EffectType = "Sphere", Size = VT(20*sick.PlaybackLoudness/75,0,2*sick.PlaybackLoudness/75), Size2 = VT(1*sick.PlaybackLoudness/75,0.5,7*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 50, RotationZ = 0, Material = gaa, Color = Color3.fromRGB(0+178*sick.PlaybackLoudness/92,238,226), SoundID = nil, SoundPitch = nil, SoundVolume = nil})        
		WACKYEFFECT2({Time = 12.5, EffectType = "Sphere", Size = VT(2*sick.PlaybackLoudness/75,0,20*sick.PlaybackLoudness/75), Size2 = VT(7*sick.PlaybackLoudness/75,0.69,1*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 50, RotationZ = 0, Material = gaa, Color = Color3.fromRGB(0+178*sick.PlaybackLoudness/92,238,226), SoundID = nil, SoundPitch = nil, SoundVolume = nil})        
		WACKYEFFECT2({Time = 12.5, EffectType = "Sphere", Size = VT(8*sick.PlaybackLoudness/75,0,8*sick.PlaybackLoudness/75), Size2 = VT(4*sick.PlaybackLoudness/75,0.5,4*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 50, RotationZ = 0, Material = gaa, Color = Color3.fromRGB(0+178*sick.PlaybackLoudness/92,238,226), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	end
	if MRANDOM(1,1) == 1 and EF == "5"   then
		WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(20*sick.PlaybackLoudness/75,0,2*sick.PlaybackLoudness/75), Size2 = VT(4*sick.PlaybackLoudness/75,0.5,12*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(spinc),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = MATERIALS[MRANDOM(1,#MATERIALS)], Color = basecolor, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
		WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(2*sick.PlaybackLoudness/75,0,20*sick.PlaybackLoudness/75), Size2 = VT(14*sick.PlaybackLoudness/75,0.69,2*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(spinc),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = MATERIALS[MRANDOM(1,#MATERIALS)], Color = basecolor, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
		WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(7*sick.PlaybackLoudness/75,0,8*sick.PlaybackLoudness/75), Size2 = VT(8*sick.PlaybackLoudness/75,0.5,8.5*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(spinc),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = MATERIALS[MRANDOM(1,#MATERIALS)], Color = basecolor, SoundID = nil, SoundPitch = nil, SoundVolume = nil})	
	end
	if MODE == "1" then
		d = "0"
		basecolor = Color3.fromRGB(0,0,0+255*sick.PlaybackLoudness/300)
	end
	if MODE == "2" then
		d = "0"
		basecolor = Color3.fromRGB(0, 0, 0)
		basecolor = Color3.fromRGB(255, 255, 255)
	end
	if MODE == "3" then
		d = "0"
		basecolor = Color3.fromRGB(0+255*sick.PlaybackLoudness/300,0,0)
	end
	if MODE == "4" then
		d = "0"
		basecolor = Color3.fromRGB(0+255*sick.PlaybackLoudness/200,0+170*sick.PlaybackLoudness/200,0+255*sick.PlaybackLoudness/200)
	end
	if Cam == true then
		CamShake(1, 3)
	end
	if MODE == "5" then
		d = "0"
		basecolor = Color3.fromRGB(0+255*sick.PlaybackLoudness/50,0+85*sick.PlaybackLoudness/50,0)
	end
	if MODE == "6" then
		d = "0"
		basecolor = Color3.fromRGB(0+230*sick.PlaybackLoudness/300,0+236*sick.PlaybackLoudness/300,0+107*sick.PlaybackLoudness/300)
	end
	if MODE == "7" then
		d = "0"
		basecolor = Color3.fromRGB(0,0+255*sick.PlaybackLoudness/300,0+255*sick.PlaybackLoudness/300)
	end
	if MODE == "8" then
		d = "0"
		basecolor = Color3.fromRGB(0,0,0+127*sick.PlaybackLoudness/300)
	end
	if MODE == "9" then
		d = "0"
		basecolor = BrickColor.Random().Color
	end
	local WALKSPEEDVALUE = 8 / (Humanoid.WalkSpeed / 16)
	if ANIM == "Walk" and TORSOVELOCITY > 1 then
		RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, 0.1 * COS(SINE / (WALKSPEEDVALUE/2))) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 * (Humanoid.WalkSpeed / 16) / 3)
		Neck.C1 = Clerp(Neck.C1, CF(0, -0.5, 0) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(0), RAD(0), RAD(0) - Head.RotVelocity.Y / 30), 0.2 * (Humanoid.WalkSpeed / 16) / 3)
		RightHip.C1 = Clerp(RightHip.C1, CF(0.5, 0.875 - 0.125 * SIN(SINE / WALKSPEEDVALUE) - 0.15 * COS(SINE / WALKSPEEDVALUE*2), 0.25 * SIN(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(10+50 * COS(SINE / WALKSPEEDVALUE))), 0.6 / 3)
		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5, 0.875 + 0.125 * SIN(SINE / WALKSPEEDVALUE) - 0.15 * COS(SINE / WALKSPEEDVALUE*2), -0.25 * SIN(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-10+50 * COS(SINE / WALKSPEEDVALUE))), 0.6 / 3)
	elseif (ANIM ~= "Walk") or (TORSOVELOCITY < 1) then
		RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		Neck.C1 = Clerp(Neck.C1, CF(0, -0.5, 0) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		RightHip.C1 = Clerp(RightHip.C1, CF(0.5, 1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.7 / Animation_Speed)
		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5, 1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.7 / Animation_Speed)
	end
	if TORSOVERTICALVELOCITY > 1 and HITFLOOR == nil and ATTACK == false then
		ANIM = "Jump"
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -0.1 + 0.1 * COS(SINE / 20)) * ANGLES(RAD(10), RAD(0), RAD(0)), 0.3)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(-40), RAD(0), RAD(0)), 0.3)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-40), RAD(0), RAD(20)) * RIGHTSHOULDERC0, 0.2 / 1.75)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0 * 1) * ANGLES(RAD(-40), RAD(0), RAD(-20)) * LEFTSHOULDERC0, 0.2 / 1.75)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.3) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(-20)), 0.2 / 1.75)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.3) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(20)), 0.2 / 1.75)
	elseif TORSOVERTICALVELOCITY < -1 and HITFLOOR == nil and ATTACK == false then
		ANIM = "Fall"
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -0.1 + 0.1 * COS(SINE / 20)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 0.3)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(40), RAD(0), RAD(0)), 0.3)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(60)) * RIGHTSHOULDERC0, 0.2 / 1.75)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-60)) * LEFTSHOULDERC0, 0.2 / 1.75)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(20)), 0.2 / 1.75)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(10)), 0.2 / 1.75)
	elseif TORSOVELOCITY < 1 and HITFLOOR ~= nil and ATTACK == false then
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0.1, -0.1 + 0.05 * SIN(SINE / 12)) * ANGLES(RAD(-10), RAD(0), RAD(0)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-5 - 2.5 * SIN(SINE / 12)), RAD(7 * COS(SINE / 24)), RAD(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.5 + 0.05 * SIN(SINE / 12), -0.5) * ANGLES(RAD(0), RAD(0), RAD(-100)) * ANGLES(RAD(20), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.3 + 0.05 * SIN(SINE / 12), -0.35) * ANGLES(RAD(0), RAD(0), RAD(70)) * ANGLES(RAD(20), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(-10), RAD(80), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(-10), RAD(-80), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
	elseif TORSOVELOCITY > 1 and HITFLOOR ~= nil and ATTACK == false then
	if RUNNING == false then
		ANIM = "Walk"
		DOUBLED = false
		READYTODOUBLE = false
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.05) * ANGLES(RAD(15), RAD(0), RAD(-7 * COS(SINE / (WALKSPEEDVALUE)))), 1 / 3)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 - 1 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(7 * COS(SINE / (WALKSPEEDVALUE)))), 1 / 3)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-15), RAD(-5), RAD(5)) * RIGHTSHOULDERC0, 1 / 3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-15), RAD(5), RAD(-5)) * LEFTSHOULDERC0, 1 / 3)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / 3)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / 3)
	else
		ANIM = "Run"
		DOUBLED = false
		READYTODOUBLE = false
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0* 1, 0* 1, -0.175 + 0.025 * COS(SINE / 3.5) + -SIN(SINE / 3.5) / 7* 1) * ANGLES(RAD(26 - 4.5 * COS(SINE / 3.5)), RAD(0) - RootPart.RotVelocity.Y / 75, RAD(15 * COS(SINE / 7))), 0.15)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(20 + MRANDOM(-5,5) - 1 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(MRANDOM(-5,5)), RAD(0)), 1 / 1.75)
		RightHip.C0 = Clerp(RightHip.C0, CF(1* 1, -0.925 - 0.5 * COS(SINE / 7) / 2* 1, 0.7 * COS(SINE / 7) / 2* 1) * ANGLES(RAD(-15 - 55 * COS(SINE / 7)) - RightLeg.RotVelocity.Y / 75 + -SIN(SINE / 7) / 2.5, RAD(90 - 0.1 * COS(SINE / 7)), RAD(0)) * ANGLES(RAD(0 + 0.1 * COS(SINE / 7)), RAD(0), RAD(0)), 0.3)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1* 1, -0.925 + 0.5 * COS(SINE / 7) / 2* 1, -0.7 * COS(SINE / 7) / 2* 1) * ANGLES(RAD(-15 + 55 * COS(SINE / 7)) + LeftLeg.RotVelocity.Y / 75 + SIN(SINE / 7) / 2.5, RAD(-90 - 0.1 * COS(SINE / 7)), RAD(0)) * ANGLES(RAD(0 - 0.1 * COS(SINE / 7)), RAD(0), RAD(0)), 0.3)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.5 + 0.05 * SIN(SINE / 30)* 1, 0.34 * COS(SINE / 7* 1)) * ANGLES(RAD(110)  * COS(SINE / 7) , RAD(90), RAD(13) - RightArm.RotVelocity.Y / 75), 0.15)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.5 + 0.05 * SIN(SINE / 30)* 1, -0.34 * COS(SINE / 7* 1)) * ANGLES(RAD(-110)  * COS(SINE / 7) , RAD(-90) ,	RAD(-13) + LeftArm.RotVelocity.Y / 75), 0.15)
	end
end
	unanchor()
	Humanoid.MaxHealth = "inf"
	Humanoid.Health = "inf"
	Humanoid.DisplayDistanceType = "None"
	if Rooted == false then
		Disable_Jump = false
		Humanoid.WalkSpeed = Speed
	elseif Rooted == true then
		Disable_Jump = true
		Humanoid.WalkSpeed = 0
	end
	for _, c in pairs(Character:GetChildren()) do
		if c == LeftArm then
			c.Color = basecolor
		elseif c == LeftLeg then
			c.Color = basecolor
		end
		if c:FindFirstChildWhichIsA("Decal") then
			c:FindFirstChildWhichIsA("Decal"):remove()
		end
	end
	for _, c in pairs(Effects:GetChildren()) do
		if c:IsA("Part") or c:IsA("MeshPart") then
			c.Color = basecolor
		end
	end
	if ATTACK == false then
		for _, c in pairs(Character:GetChildren()) do
			if c:IsA("Part") or c:IsA("MeshPart") then
				c.Anchored = false
			end
		end
	end
	LeftArm.Material = "Neon"
	LeftLeg.Material = "Neon"
end	