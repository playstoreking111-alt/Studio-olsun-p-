--//=========================\\--
--||  CREATED BY SHACKLUSTER ||--
--\\=========================//--

wait(0.2)

Player = game:GetService("Players").LocalPlayer PlayerGui = Player.PlayerGui
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
local sick = Instance.new("Sound",Character)
sick.SoundId = "rbxassetid://945264562"
sick.Looped = true
sick.Pitch = 1
sick.Volume = 10
sick:Play()
local sick2 = Instance.new("Sound",Character)
sick2.SoundId = "rbxassetid://1454553151"
sick2.Looped = true
sick2.Pitch = 1
sick2.Volume = 10
Humanoid.DisplayDistanceType = "None"
Player:ClearCharacterAppearance()

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

function CreateMesh(MESH, PARENT, MESHTYPE, MESHID, TEXTUREID, SCALE, OFFSET)
	local NEWMESH = IT(MESH)
	if MESH == "SpecialMesh" then
		NEWMESH.MeshType = MESHTYPE
		if MESHID ~= "nil" and MESHID ~= "" then
			NEWMESH.MeshId = "http://www.roblox.com/asset/?id="..MESHID
		end
		if TEXTUREID ~= "nil" and TEXTUREID ~= "" then
			NEWMESH.TextureId = "http://www.roblox.com/asset/?id="..TEXTUREID
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



local HBill = Instance.new("BillboardGui",Head)
local HMain, HBar = Instance.new("Frame", HBill), Instance.new("Frame")
local HName = Instance.new("TextLabel")
HBill.Size = UDim2.new(15,0,2.2,0)
HBill.Name = "Health Display"
HBill.StudsOffset = Vector3.new(3.675,2,0)
HBill.AlwaysOnTop = true
HBill.Enabled = true
HMain.BackgroundColor3 = Color3.new(0, 0, 0)
HMain.BackgroundTransparency = 1
HMain.Size = UDim2.new(.5,0,.5,0)
HName.Parent = HMain
HName.BackgroundTransparency = 1
HName.BackgroundColor3 = Color3.new(0,0,0)
HName.BorderColor3 = Color3.new(0,0,0)
HName.BorderSizePixel = 2
HName.Size = UDim2.new(1,0,.75,0)
HName.Font = "SciFi"
HName.Text = "Demon Of Death"
HName.TextScaled = true
HName.TextColor3 = Color3.new(255,0,0)
HName.TextStrokeColor3 = Color3.new(0,0,0)
HName.TextStrokeTransparency = 0
HName.TextYAlignment = "Bottom"


--//=================================\\
--||		  CUSTOMIZATION
--\\=================================//

Class_Name = "SatanBot.exe"
Weapon_Name = "Add-ons"

Custom_Colors = {
	Custom_Color_1 = BRICKC("Institutional white"); --1st color for the weapon.
	Custom_Color_2 = BRICKC("Institutional white"); --2nd color for the weapon.

	Custom_Color_3 = BRICKC("Institutional white"); --Color for the abilities.
	Custom_Color_4 = BRICKC("Institutional white"); --Color for the secondary bar.
	Custom_Color_5 = BRICKC("Institutional white"); --Color for the mana bar.
	Custom_Color_6 = BRICKC("Institutional white"); --Color for the health bar.
	Custom_Color_7 = BRICKC("Institutional white"); --Color for the stun bar.

	Custom_Color_8 = BRICKC("Institutional white"); --Background for the mana bar.
	Custom_Color_9 = BRICKC("Institutional white"); --Background for the secondary mana bar.
	Custom_Color_10 = BRICKC("Institutional white"); --Background for the stun bar.
	Custom_Color_11 = BRICKC("Institutional white"); --Background for the health bar.
	Custom_Color_12 = BRICKC("Institutional white"); --Background for the abilities.
}


Player_Size = 1 --Size of the player.
Animation_Speed = 3
Frame_Speed = 1 / 60 -- (1 / 30) OR (1 / 60)

local Speed = 35
local Effects2 = {}

--//=================================\\
--|| 	  END OF CUSTOMIZATION
--\\=================================//

	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end

function createaccessory(attachmentpart,mesh,texture,scale,offset,color)
local acs = Instance.new("Part")
acs.CanCollide = false
acs.Anchored = false
acs.Size = Vector3.new(0,0,0)
acs.CFrame = attachmentpart.CFrame
acs.Parent = attachmentpart
acs.BrickColor = color
    local meshs = Instance.new("SpecialMesh")
    meshs.MeshId = mesh
    meshs.TextureId = texture
    meshs.Parent = acs
    meshs.Scale = scale
    meshs.Offset = offset
weldBetween(attachmentpart,acs)
end

function createbodypart(TYPE,COLOR,PART,OFFSET,SIZE)
if TYPE == "Gem" then
	local acs = CreatePart(3, PART, "Plastic", 0, 0, COLOR, "Part", VT(0,0,0))
	acs.Anchored = false
    acs.CanCollide = false
	acs.CFrame = PART.CFrame
	local acs2 = CreateMesh("SpecialMesh", acs, "FileMesh", "9756362", "", SIZE, OFFSET)
weldBetween(PART,acs)
elseif TYPE == "Skull" then
	local acs = CreatePart(3, PART, "Plastic", 0, 0, COLOR, "Part", VT(0,0,0))
	acs.Anchored = false
    acs.CanCollide = false
	acs.CFrame = PART.CFrame
	local acs2 = CreateMesh("SpecialMesh", acs, "FileMesh", "4770583", "", SIZE, OFFSET)
weldBetween(PART,acs)
elseif TYPE == "Eye" then
	local acs = CreatePart(3, PART, "Neon", 0, 0, COLOR, "Part", VT(0,0,0))
	acs.Anchored = false
    acs.CanCollide = false
	acs.CFrame = PART.CFrame
	local acs2 = CreateMesh("SpecialMesh", acs, "Sphere", "", "", SIZE, OFFSET)
weldBetween(PART,acs)
end
end

createbodypart("Eye", "Really red", Head, VT(0.2, 0, -0.55), VT(2, 6, 2))
createbodypart("Eye", "Really red", Head, VT(-0.2, 0, -0.55), VT(2, 6, 2))
createbodypart("Eye", "Really red", Head, VT(0, 0, -0.6), VT(2, 8, 2))

--//=================================\\
--|| 	      USEFUL VALUES
--\\=================================//

local ROOTC0 = CF(0, 0, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local NECKC0 = CF(0, 1, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local RIGHTSHOULDERC0 = CF(-0.5, 0, 0) * ANGLES(RAD(0), RAD(90), RAD(0))
local LEFTSHOULDERC0 = CF(0.5, 0, 0) * ANGLES(RAD(0), RAD(-90), RAD(0))
local CO1 = 0
local CO2 = 0
local CO3 = 0
local CO4 = 0
local CHANGEDEFENSE = 0
local CHANGEDAMAGE = 0
local CHANGEMOVEMENT = 0
local ANIM = "Idle"
local ATTACK = false
local EQUIPPED = false
local HOLD = false
local COMBO = 1
local LASTPOINT = nil
local BLCF = nil
local SCFR = nil
local KEYHOLD = false
local STAGGERHITANIM = false
local STAGGERANIM = false
local STUNANIM = false
local CRITCHANCENUMBER = 0
local IDLENUMBER = 0
local DONUMBER = 0
local HANDIDLE = false
local Rooted = false
local SINE = 0
local CHANGE = 2 / Animation_Speed
local WALKINGANIM = false
local WALK = 0
local DANCE = false
local DISABLEJUMPING = false
local ROBLOXIDLEANIMATION = IT("Animation")
ROBLOXIDLEANIMATION.Name = "Roblox Idle Animation"
ROBLOXIDLEANIMATION.AnimationId = "http://www.roblox.com/asset/?id=180435571"
--ROBLOXIDLEANIMATION.Parent = Humanoid
local WEAPONGUI = IT("ScreenGui", PlayerGui)
WEAPONGUI.Name = "Weapon GUI"
local Weapon = IT("Model")
Weapon.Name = Weapon_Name
local Effects = IT("Folder", Weapon)
Effects.Name = "Effects"
local Bombs = IT("Folder", Weapon)
Bombs.Name = "BombsHolder"
local ANIMATOR = Humanoid.Animator
local ANIMATE = Character.Animate
local HITPLAYERSOUNDS = {--[["199149137", "199149186", "199149221", "199149235", "199149269", "199149297"--]]"263032172", "263032182", "263032200", "263032221", "263032252", "263033191"}
local HITARMORSOUNDS = {"199149321", "199149338", "199149367", "199149409", "199149452"}
local HITWEAPONSOUNDS = {"199148971", "199149025", "199149072", "199149109", "199149119"}
local HITBLOCKSOUNDS = {"199148933", "199148947"}
local UNANCHOR = true
local MAGICPARTICLE = "655109389"

local SKILLTEXTCOLOR = C3(0,0,0)

--//=================================\\
--\\=================================//


--//=================================\\
--|| SAZERENOS' ARTIFICIAL HEARTBEAT
--\\=================================//

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

--//=================================\\
--\\=================================//





--//=================================\\
--|| 	      SOME FUNCTIONS
--\\=================================//

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

function QuaternionFromCFrame(cf)
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
	local trace = m00 + m11 + m22
	if trace > 0 then 
		local s = math.sqrt(1 + trace)
		local recip = 0.5 / s
		return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
	else
		local i = 0
		if m11 > m00 then
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
			local recip = 0.5 / s return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
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
 
	function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
		local fp=IT("Part")
		fp.formFactor=formfactor
		fp.Parent=parent
		fp.Reflectance=reflectance
		fp.Transparency=transparency
		fp.CanCollide=false
		fp.Locked=true
		fp.BrickColor=BrickColor.new(tostring(brickcolor))
		fp.Name=name
		fp.Size=size
		fp.Position=Character.Torso.Position
		NoOutlines(fp)
		fp.Material=material
		fp:BreakJoints()
		return fp
	end
	
	function mesh(Mesh,part,meshtype,meshid,offset,scale)
		local mesh=IT(Mesh)
		mesh.Parent=part
		if Mesh=="SpecialMesh" then
			mesh.MeshType=meshtype
			mesh.MeshId=meshid
		end
		mesh.Offset=offset
		mesh.Scale=scale
		return mesh
	end

function QuaternionSlerp(a, b, t)
	local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
	local startInterp, finishInterp;
	if cosTheta >= 0.0001 then
		if (1 - cosTheta) > 0.0001 then
			local theta = ACOS(cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((1 - t) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	else
		if (1 + cosTheta) > 0.0001 then
			local theta = ACOS(-cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((t - 1) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = t - 1
			finishInterp = t
		end
	end
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end

function Clerp(a, b, t)
	local qa = {QuaternionFromCFrame(a)}
	local qb = {QuaternionFromCFrame(b)}
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

function CreateSound(ID, PARENT, VOLUME, PITCH)
	local NEWSOUND = nil
	coroutine.resume(coroutine.create(function()
		NEWSOUND = IT("Sound", PARENT)
		NEWSOUND.Volume = VOLUME
		NEWSOUND.Pitch = PITCH
		NEWSOUND.SoundId = "http://www.roblox.com/asset/?id="..ID
		Swait()
		NEWSOUND:play()
		game:GetService("Debris"):AddItem(NEWSOUND, 10)
	end))
	return NEWSOUND
end

function CFrameFromTopBack(at, top, back)
	local right = top:Cross(back)
	return CF(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end

function CreateWave(inair,size,doesrotate,rotatedirection,waitt,cframe,color)
	local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC(color), "Effect", VT(0,0,0))
	local mesh = IT("SpecialMesh",wave)
	mesh.MeshType = "FileMesh"
	mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
	mesh.Scale = VT(size,size,size)
	mesh.Offset = VT(0,0,-size/8)
	wave.CFrame = cframe
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, waitt do
			Swait()
			mesh.Scale = mesh.Scale + VT(size/5,size/5,size/5)
			mesh.Offset = VT(0,0,-(mesh.Scale.X/8))
			if doesrotate == true then
				wave.CFrame = wave.CFrame * CFrame.fromEulerAnglesXYZ(0, rotatedirection, 0)
			end
			wave.Transparency = wave.Transparency + (0.5/waitt)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end

function CreateSwirl(inair,size,doesrotate,rotatedirection,waitt,cframe,color)
	local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC(color), "Effect", VT(0,0,0))
	local mesh = IT("SpecialMesh",wave)
	mesh.MeshType = "FileMesh"
	mesh.MeshId = "http://www.roblox.com/asset/?id=1051557"
	mesh.Scale = VT(size,size,size)
	wave.CFrame = cframe
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, waitt do
			Swait()
			mesh.Scale = mesh.Scale + VT(size/5,0,size/5)
			if doesrotate == true then
				wave.CFrame = wave.CFrame * CFrame.fromEulerAnglesXYZ(0, rotatedirection, 0)
			end
			wave.Transparency = wave.Transparency + (0.5/waitt)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end

function CreateTornado(inair,size,doesrotate,rotatedirection,waitt,cframe,color)
	local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC(color), "Effect", VT(0,0,0))
	local mesh = IT("SpecialMesh",wave)
	mesh.MeshType = "FileMesh"
	mesh.MeshId = "http://www.roblox.com/asset/?id=102638417"
	mesh.Scale = VT(size,size,size)
	wave.CFrame = cframe
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, waitt do
			Swait()
			mesh.Scale = mesh.Scale + VT(size/5,0,size/5)
			if doesrotate == true then
				wave.CFrame = wave.CFrame * CFrame.fromEulerAnglesXYZ(0, rotatedirection, 0)
			end
			wave.Transparency = wave.Transparency + (0.5/waitt)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end

function CreateRing(inair,size,doesrotate,rotatedirection,waitt,cframe,spin1,spin2,color)
	local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC(color), "Effect", VT(0,0,0))
	local mesh = IT("SpecialMesh",wave)
	mesh.MeshType = "FileMesh"
	mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
	mesh.Scale = VT(size,size,size)
	mesh.Offset = VT(0,0,0)
	wave.CFrame = cframe
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, waitt do
			Swait()
			mesh.Scale = mesh.Scale + VT(size/5,size/5,size/5)
			if doesrotate == true then
				wave.CFrame = wave.CFrame * CFrame.fromEulerAnglesXYZ(spin2, rotatedirection, spin1)
			end
			wave.Transparency = wave.Transparency + (0.5/waitt)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end

function MagicSphere(size,waitt,cframe,color)
	local wave = CreatePart(3, Effects, "Neon", 0, 0, BRICKC(color), "Effect", VT(1,1,1))
	local mesh = IT("SpecialMesh",wave)
	mesh.MeshType = "Sphere"
	mesh.Scale = VT(size,size,size)
	mesh.Offset = VT(0,0,0)
	wave.CFrame = cframe
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, waitt do
			Swait()
			mesh.Scale = mesh.Scale + VT(size/5,size/5,size/5)
			wave.Transparency = wave.Transparency + (1/waitt)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
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

function BreakEffect(brickcolor,cframe,x1,y1,z1,material)
	local prt=part("Custom",workspace,material,0,0,brickcolor,"Effect",VT(0.5,0.5,0.5))
	prt.Anchored=true
	prt.CFrame=cframe*EULER(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	local msh=mesh("SpecialMesh",prt,"Sphere","",VT(0,0,0),VT(x1,y1,z1))
	coroutine.resume(coroutine.create(function(Part,CF,Numbb,randnumb) 
		CF=Part.CFrame
		Numbb=0
		randnumb=math.random()-math.random()
		for i=0,1,0.05 do
			wait()
			CF=CF*CF(0,1,0)
			--Part.CFrame=Part.CFrame*euler(0.5,0,0)*cf(0,1,0)
			Part.CFrame=CF*EULER(Numbb,0,0)
			Part.Transparency=i
			Numbb=Numbb+randnumb
		end
		Part.Parent=nil
	end),prt)
end

function MagicBlock(size,waitt,cframe,color)
	local wave = CreatePart(3, Effects, "Neon", 0, 0, BRICKC(color), "Effect", VT(size,size,size))
	local mesh = IT("BlockMesh",wave)
	wave.CFrame = cframe
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, waitt do
			Swait()
			mesh.Scale = mesh.Scale + VT(size/5,size/5,size/5)
			wave.CFrame = cframe * ANGLES(RAD(math.random(-360,360)),RAD(math.random(-360,360)),RAD(math.random(-360,360)))
			wave.Transparency = wave.Transparency + (1/waitt)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end

local EyeSizes={
	NumberSequenceKeypoint.new(0,1,0),
	NumberSequenceKeypoint.new(1,0.2,0)
}
local EyeTrans={
	NumberSequenceKeypoint.new(0,0.8,0),
	NumberSequenceKeypoint.new(1,1,0)
}
local PE=Instance.new("ParticleEmitter")
PE.LightEmission=0
PE.Size=NumberSequence.new(EyeSizes)
PE.Transparency=NumberSequence.new(EyeTrans)
PE.Lifetime=NumberRange.new(0.35,0.35,0.35)
PE.Rotation=NumberRange.new(0,360)
PE.Rate=15
PE.Acceleration = Vector3.new(0,75,0)
PE.Drag = 5
PE.Enabled = false
PE.Speed = NumberRange.new(0,0,0)
PE.Texture="http://www.roblox.com/asset/?id=1179557490"
PE.ZOffset = 0
PE.Name = "Particles"

function CreateParticles(art,text,accel,drag,rate,type,isenabledbydefault)
	local particle = PE:Clone()
	particle.Parent = art
	particle.Acceleration = accel
	PE.Rate = rate
	if type == "Fire" then
		local EyeSizes={
			NumberSequenceKeypoint.new(0,1,0.3),
			NumberSequenceKeypoint.new(1,0.2,0.2)
		}
		PE.Size = NumberSequence.new(EyeSizes)
	elseif type == "Smoke" then
		local EyeSizes={
			NumberSequenceKeypoint.new(0,1,0),
			NumberSequenceKeypoint.new(1,5,0.5)
		}
		PE.Size = NumberSequence.new(EyeSizes)
	elseif type == "Solid" then
		local EyeSizes={
			NumberSequenceKeypoint.new(0,1,0),
			NumberSequenceKeypoint.new(1,1,0)
		}
		PE.Size = NumberSequence.new(EyeSizes)
	end
	PE.Drag = drag
	particle.Texture = "http://www.roblox.com/asset/?id="..text
	particle.Enabled = isenabledbydefault
return particle
end

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

--//=================================\\
--\\=================================//

function createaddongen(limb,position,size)
	local part = CreatePart(3, Weapon, "Glass", 0, 0, "Really black", limb.Name.." Gauntlet Part", VT(0.25*Player_Size, size*0.8*Player_Size,size*0.8*Player_Size),false)
	local weld = CreateWeldOrSnapOrMotor("Weld", part, limb, part, CF(0.45 * Player_Size, position * Player_Size, 0 * Player_Size) * ANGLES(RAD(45), RAD(0), RAD(0)), CF(0, 0, 0))
	local part = CreatePart(3, Weapon, "Neon", 0, 0, "Really red", limb.Name.." Neon Gauntlet Part", VT(0.25*Player_Size,size*Player_Size,size*Player_Size),false)
	local weld = CreateWeldOrSnapOrMotor("Weld", part, limb, part, CF(0.425 * Player_Size, position * Player_Size, 0 * Player_Size) * ANGLES(RAD(45), RAD(0), RAD(0)), CF(0, 0, 0))
end

function creategauntlet(limb)
	--main--
	local part = CreatePart(3, Weapon, "Glass", 0, 0, "Really black", limb.Name.." Gauntlet Part", VT(1.07*Player_Size,0.75+0.07*Player_Size,1.07*Player_Size),false)
	local weld = CreateWeldOrSnapOrMotor("Weld", part, limb, part, CF(0 * Player_Size, -0.65 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
	local part = CreatePart(3, Weapon, "Glass", 0, 0, "Really black", limb.Name.." Gauntlet Part", VT(1.07*Player_Size,0.25*Player_Size,1.07*Player_Size),false)
	local weld = CreateWeldOrSnapOrMotor("Weld", part, limb, part, CF(0 * Player_Size, -0.115 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)), CF(0, 0, 0))
	MakeForm(part,"Wedge")
	local part = CreatePart(3, Weapon, "Glass", 0, 0, "Really black", limb.Name.." Gauntlet Part", VT(1.07*Player_Size,0.25*Player_Size,1.07*Player_Size),false)
	local weld = CreateWeldOrSnapOrMotor("Weld", part, limb, part, CF(0 * Player_Size, 0.115 * Player_Size, 0 * Player_Size) * ANGLES(RAD(180), RAD(-90), RAD(0)), CF(0, 0, 0))
	MakeForm(part,"Wedge")
	local part = CreatePart(3, Weapon, "Glass", 0, 0, "Really black", limb.Name.." Gauntlet Part", VT(1.07*Player_Size,0.75+0.07*Player_Size,1.07*Player_Size),false)
	local weld = CreateWeldOrSnapOrMotor("Weld", part, limb, part, CF(0 * Player_Size, 0.65 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
	--neon addons
	local part = CreatePart(3, Weapon, "Neon", 0, 0, "Really red", limb.Name.." Neon Gauntlet Part", VT(1.05*Player_Size,2.05*Player_Size,1.05*Player_Size),false)
	local weld = CreateWeldOrSnapOrMotor("Weld", part, limb, part, CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
	--misc--
	createaddongen(limb,0.25,0.75)
	createaddongen(limb,-0.2,0.25)
	createaddongen(limb,-0.35,0.25)
	createaddongen(limb,-0.65,0.45)
end

--//=================================\\
--||	     WEAPON CREATION
--\\=================================//

creategauntlet(RightArm)
creategauntlet(LeftLeg)

if Player_Size ~= 1 then
	for _, v in pairs (Weapon:GetChildren()) do
		if v.ClassName == "Motor" or v.ClassName == "Weld" or v.ClassName == "Snap" then
			local p1 = v.Part1
			v.Part1 = nil
			local cf1, cf2, cf3, cf4, cf5, cf6, cf7, cf8, cf9, cf10, cf11, cf12 = v.C1:components()
			v.C1 = CF(cf1 * Player_Size, cf2 * Player_Size, cf3 * Player_Size, cf4, cf5, cf6, cf7, cf8, cf9, cf10, cf11, cf12)
			v.Part1 = p1
		elseif v.ClassName == "Part" then
			for _, b in pairs (v:GetChildren()) do
				if b.ClassName == "SpecialMesh" or b.ClassName == "BlockMesh" then
					b.Scale = VT(b.Scale.x * Player_Size, b.Scale.y * Player_Size, b.Scale.z * Player_Size)
				end
			end
		end
	end
end

for _, c in pairs(Weapon:GetChildren()) do
	if c.ClassName == "Part" then
		c.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
	end
end

Weapon.Parent = Character

Humanoid.Died:connect(function()
	sick:remove()
	sick2:remove()
	CreateSound("167285348", Head, 3, 1)
	ATTACK = true
end)

print(Class_Name.." loaded.")

--//=================================\\
--|| 			SPEECH
--\\=================================//

function chatfunc(text,waitt)
local chat = coroutine.wrap(function()
if Character:FindFirstChild("TalkingBillBoard")~= nil then
Character:FindFirstChild("TalkingBillBoard"):destroy()
end
local naeeym2 = Instance.new("BillboardGui",Character)
naeeym2.Size = UDim2.new(0,100,0,40)
naeeym2.StudsOffset = Vector3.new(0,5,0)
naeeym2.Adornee = Character.Head
naeeym2.Name = "TalkingBillBoard"
naeeym2.AlwaysOnTop = true
local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.BorderSizePixel = 0
tecks2.Text = ""
tecks2.Font = "SciFi"
tecks2.TextSize = 30
tecks2.TextStrokeTransparency = 1
tecks2.TextColor3 = SKILLTEXTCOLOR
tecks2.TextStrokeColor3 = Color3.new(0,0,0)
tecks2.Size = UDim2.new(1,0,0.5,0)
for i = 1,string.len(text),1 do
tecks2.Text = string.sub(text,1,i)
Swait()
end
wait(waitt)
coroutine.resume(coroutine.create(function()
	for i = 1, 10 do
		tecks2.TextTransparency = tecks2.TextTransparency + 0.1
		Swait()
	end
	naeeym2:Destroy()
end))
end)
chat()
end

--//=================================\\
--||	     DAMAGE FUNCTIONS
--\\=================================//

function StatLabel(LABELTYPE, CFRAME, TEXT, COLOR)
	local STATPART = CreatePart(3, Effects, "SmoothPlastic", 0, 1, "Really black", "Effect", VT())
	STATPART.CFrame = CF(CFRAME.p + VT(0, 1.5, 0))
	local BODYGYRO = IT("BodyGyro", STATPART)
	local BODYPOSITION = IT("BodyPosition", STATPART)
	BODYPOSITION.P = 2000
	BODYPOSITION.D = 100
	BODYPOSITION.maxForce = VT(math.huge, math.huge, math.huge)
	if LABELTYPE == "Normal" then
		BODYPOSITION.position = STATPART.Position + VT(MRANDOM(-2, 2), 6, MRANDOM(-2, 2))
	elseif LABELTYPE == "Debuff" then
		BODYPOSITION.position = STATPART.Position + VT(MRANDOM(-2, 2), 8, MRANDOM(-2, 2))
	elseif LABELTYPE == "Interruption" then
		BODYPOSITION.position = STATPART.Position + VT(MRANDOM(-2,2), 8, MRANDOM(-2, 2))
	end
	game:GetService("Debris"):AddItem(STATPART ,5)
	local BILLBOARDGUI = Instance.new("BillboardGui", STATPART)
	BILLBOARDGUI.Adornee = STATPART
	BILLBOARDGUI.Size = UD2(2.5, 0, 2.5 ,0)
	BILLBOARDGUI.StudsOffset = VT(-2, 2, 0)
	BILLBOARDGUI.AlwaysOnTop = false
	local TEXTLABEL = Instance.new("TextLabel", BILLBOARDGUI)
	TEXTLABEL.BackgroundTransparency = 1
	TEXTLABEL.Size = UD2(2.5, 0, 2.5, 0)
	TEXTLABEL.Text = TEXT
	TEXTLABEL.Font = "SciFi"
	TEXTLABEL.FontSize="Size42"
	TEXTLABEL.TextColor3 = COLOR
	TEXTLABEL.TextStrokeTransparency = 1
	TEXTLABEL.TextScaled = true
	TEXTLABEL.TextWrapped = true
	coroutine.resume(coroutine.create(function(THEPART, THEBODYPOSITION, THETEXTLABEL)
		wait(0.2)
		for i=1, 5 do
			wait()
			THEBODYPOSITION.Position = THEPART.Position - VT(0, 0.5 ,0)
		end
		wait(1.2)
		for i=1, 5 do
			wait()
			THETEXTLABEL.TextTransparency = THETEXTLABEL.TextTransparency + 0.2
			THETEXTLABEL.TextStrokeTransparency = THETEXTLABEL.TextStrokeTransparency + 0.2
			THEBODYPOSITION.position = THEPART.Position + VT(0, 0.5, 0)
		end
		THEPART.Parent = nil
	end),STATPART, BODYPOSITION, TEXTLABEL)
end


--//=================================\\
--||			DAMAGING
--\\=================================//

function dealdamage(hit,min,max,maxstrength,beserk,critrate,critmultiplier)
	if hit.Parent:FindFirstChildOfClass("Humanoid") and hit.Parent:FindFirstChild("HitBy"..Player.Name) == nil then
		local humanoid = hit.Parent:FindFirstChildOfClass("Humanoid")
		local dmg = math.random(min,max)
		if humanoid.Health > 0 then
			if beserk == true then
				humanoid.Health = 0
			else
				CreateSound("260430060", hit, 1.2, MRANDOM(7, 12) / 10)
				hit.Velocity = CFrame.new(Torso.Position,hit.Position).lookVector*5*maxstrength
				if math.random(1,100) < critrate+1 then
					humanoid.Health = humanoid.Health - dmg*critmultiplier
					StatLabel("Normal", hit.CFrame * CF(0, 0 + (hit.Size.z - 1), 0), "CRIT/"..dmg*critmultiplier, C3(255/255, 0, 0))
				else
					humanoid.Health = humanoid.Health - dmg
					StatLabel("Normal", hit.CFrame * CF(0, 0 + (hit.Size.z - 1), 0), dmg, C3(0, 0, 0))
				end
				local defence = Instance.new("BoolValue",hit.Parent)
				defence.Name = ("HitBy"..Player.Name)
				game:GetService("Debris"):AddItem(defence, 0.5)
			end
		end
	end
end

function AoEDamage(position,radius,min,max,maxstrength,beserk,critrate,critmultiplier,CanBeDodgedByJumping)
	local dmg = math.random(min,max)
	for i,v in ipairs(workspace:GetChildren()) do
	if v:FindFirstChild("HitBy"..Player.Name) == nil then
		local body = v:GetChildren()
			for part = 1, #body do
				if(v:FindFirstChild("HitBy"..Player.Name) == nil and (body[part].ClassName == "Part" or body[part].ClassName == "MeshPart") and v ~= Character) then
					if(body[part].Position - position).Magnitude < radius then
						if v.ClassName == "Model" then
							if v:FindFirstChild("Humanoid") then
								if v.Humanoid.Health ~= 0 then
									if CanBeDodgedByJumping == true then
										if body[part].Position.Y < position.Y+5 then
											if math.random(1,100) < critrate+1 then
												v.Humanoid.Health = v.Humanoid.Health - dmg*critmultiplier
												StatLabel("Normal", body[part].CFrame * CF(0, 0 + (body[part].Size.z - 1), 0), "CRIT/"..dmg*critmultiplier, C3(255/255, 0, 0))
											else
												v.Humanoid.Health = v.Humanoid.Health - dmg
												StatLabel("Normal", body[part].CFrame * CF(0, 0 + (body[part].Size.z - 1), 0), dmg, C3(0, 0, 0))
											end
											local defence = Instance.new("BoolValue",v)
											defence.Name = ("HitBy"..Player.Name)
											game:GetService("Debris"):AddItem(defence, 0.5)
										end
									else
										if beserk == true then
											v.Humanoid.Health = 0
										end
										if math.random(1,100) < critrate+1 then
											v.Humanoid.Health = v.Humanoid.Health - dmg*critmultiplier
											StatLabel("Normal", body[part].CFrame * CF(0, 0 + (body[part].Size.z - 1), 0), "CRIT/"..dmg*critmultiplier, C3(255/255, 0, 0))
										else
											v.Humanoid.Health = v.Humanoid.Health - dmg
											StatLabel("Normal", body[part].CFrame * CF(0, 0 + (body[part].Size.z - 1), 0), dmg, C3(0, 0, 0))
										end
										local defence = Instance.new("BoolValue",v)
										defence.Name = ("HitBy"..Player.Name)
										game:GetService("Debris"):AddItem(defence, 0.5)
									end
								end
							end
						end
						body[part].Velocity = CFrame.new(position,body[part].Position).lookVector*5*maxstrength
					end
				end
			end
			if v.ClassName == "Part" then
				if v.Anchored == false and (v.Position - position).Magnitude < radius then
					v.Velocity = CFrame.new(position,v.Position).lookVector*5*maxstrength
				end
			end
		end
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
					--table.insert(Effects2,{body[part],"Disappear",0.02,2,2,2,2})
					body[part].Velocity = CFrame.new(position,body[part].Position).lookVector*5*maxstrength
				end
			end
		end
		if v.ClassName == "Part" then
			if v.Anchored == false and (v.Position - position).Magnitude < range then
				--table.insert(Effects2,{v,"Disappear",0.02,2,2,2,2})
				v.Velocity = CFrame.new(position,v.Position).lookVector*5*maxstrength
			end
		end
	end
end

--//=================================\\
--||	ATTACK FUNCTIONS AND STUFF
--\\=================================//

function CheckTableForString(Table, String)
	for i, v in pairs(Table) do
		if string.find(string.lower(String), string.lower(v)) then
			return true
		end
	end
	return false
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

Debris = game:GetService("Debris")

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

function turnto(position)
	RootPart.CFrame=CFrame.new(RootPart.CFrame.p,VT(position.X,RootPart.Position.Y,position.Z)) * CFrame.new(0, 0, 0)
end

function ExplodeBomb(b)
	b.Parent = Effects
	b.Anchored = true
	CreateSound("215395285", b, 10, 1)
	MagicSphere(5,50,b.CFrame,"Really red")
	b.Transparency = 1
	MagicBlock(3,45,b.CFrame,"Really red")
	--BreakEffect("Really red",b.CFrame,2,2,2,"Neon")
	for i = 1, 10 do
		CreateSwirl(0,5,true,-0.2,25,b.CFrame * ANGLES(RAD(math.random(-360,360)),RAD(math.random(-360,360)),RAD(math.random(-360,360))),"Really black")
	end
	killnearest(b.Position,30,25)
	game:GetService("Debris"):AddItem(b, 5)
end

function Detonate()
	bomb = Bombs:GetChildren()
	for lol = 1, #bomb do
		if bomb[lol].ClassName == "Part" then
			local b = bomb[lol]
			ExplodeBomb(b)
		end
	end
end



function TyranyCannon()
	ATTACK = true
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0.05 * Player_Size, 0 * Player_Size, -0.1 * Player_Size) * ANGLES(RAD(10), RAD(0), RAD(40)), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed/5)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1 * Player_Size, 0.5 * Player_Size, -1 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(10 - 2.5 * COS(SINE / 16)), RAD(0), RAD(-25 + 2.5 * SIN(SINE / 24))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(0.95 * Player_Size, -0.75 * Player_Size, -0.5 * Player_Size) * ANGLES(RAD(0), RAD(50), RAD(0)) * ANGLES(RAD(-1.25), RAD(0), RAD(0)), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1.1 * Player_Size, 0.25 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-2.5), RAD(0), RAD(0)), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
	end
	local POS = Mouse.Hit.p
	for i = 1, 5 do
		MagicSphere(2,10,RightArm.CFrame * CF(0,-1,0),"Really red")
		Swait(5)
	end
	CreateSound("438666196", RightArm, 5, 1)
	MagicSphere(5,10,RightArm.CFrame * CF(0,-1,0),"Really red")
	local Projectile = CreatePart(3, Bombs, "Neon", 0, 0, "Really red", "Bomb-Projectile", VT(5,5,5),false)
	Projectile.CFrame = RightArm.CFrame * CF(0,-1,0)
	Projectile.CanCollide = false
	MakeForm(Projectile,"Ball")
	local grav = Instance.new("BodyPosition",Projectile)
	grav.P = 25000
	grav.maxForce = Vector3.new(math.huge,math.huge,math.huge)
	grav.position = POS
	grav.Name = "GravityForce"
	local harm = Projectile.Touched:Connect(function(hit)
		if hit.Parent ~= Character and hit.Parent:FindFirstChild("Humanoid") and Projectile.Parent ~= Effects then
			ExplodeBomb(Projectile)
		end
	end)
	ATTACK = false
end

function RayCast(Position, Direction, MaxDistance, IgnoreList)
	return game:GetService("Workspace"):FindPartOnRayWithIgnoreList(Ray.new(Position, Direction.unit * (MaxDistance or 999.999)), IgnoreList) 
end

function EarthShatter()
	local HITFLOOR = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4 * Player_Size, Character)
	if HITFLOOR ~= nil then
		ATTACK = true
		Rooted = true
		for i=0, 1, 0.1 / Animation_Speed/2 do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -1 * Player_Size) * ANGLES(RAD(45), RAD(0), RAD(0)), 0.2 / Animation_Speed/8)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 1 * Player_Size, 1 * Player_Size) * ANGLES(RAD(30), RAD(-690), RAD(2 - 2.5 * COS(SINE / 12) + 2.5 * SIN(SINE / 24))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed/8)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), RAD(25), RAD(45)) * LEFTSHOULDERC0, 0.15 / Animation_Speed/8)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.3 * Player_Size, -1 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-20)), 0.2 / Animation_Speed/8)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.3 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(5), RAD(0)) * ANGLES(RAD(45), RAD(0), RAD(10)), 0.2 / Animation_Speed/8)
		end
		for i=0, 1, 0.1 / Animation_Speed*5 do
			Swait()
	        RootPart.Anchored = true
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -1 * Player_Size) * ANGLES(RAD(45), RAD(0), RAD(0)), 0.2 / Animation_Speed*5)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed*5)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 1 * Player_Size, -1.4 * Player_Size) * ANGLES(RAD(30), RAD(-690), RAD(2 - 2.5 * COS(SINE / 12) + 2.5 * SIN(SINE / 24))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed*5)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), RAD(25), RAD(45)) * LEFTSHOULDERC0, 0.15 / Animation_Speed*5)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.3 * Player_Size, -1 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-20)), 0.2 / Animation_Speed*5)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.3 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(5), RAD(0)) * ANGLES(RAD(45), RAD(0), RAD(10)), 0.2 / Animation_Speed*5)
		end
		local POS = RightArm.CFrame * CF(0,-1,0).p
		for i = 1,10 do
		CreateWave(0,10,true,0.05,25,CF(POS),"Really black")
		CreateWave(0,6,true,-0.05,25,CF(POS),"Really black")
		CreateWave(0,2,true,0.05,25,CF(POS),"Really black")
		killnearest(POS,15,25)
		CreateSound("438666141", RightArm, 5, 1)
		for i = 1, 40 do
			local angle = math.random(-180,180)
			coroutine.resume(coroutine.create(function()
				local RayHit, RayPos = RayCast(Torso.Position, Vector3.new(0, -15, 0), 10000, {Character})
				local SpawnPosition = RayPos
				local floor = RayHit
				local needcframe = RootPart.CFrame*ANGLES(RAD(0),RAD(angle),RAD(0))
				local LastPosition = RayPos
				local Delay = 1
				if floor ~= nil then
					for i = 1, 5 do
						local RayHit, RayPos = RayCast(LastPosition, needcframe.lookVector, 10, {workspace})
						local End = RayPos
						LastPosition = End
						killnearest(End,15,25)
						local locatepart = Instance.new("Part",Effects)
						locatepart.Size = VT(0.5,0.5,0.5)
						locatepart.Position = End
						locatepart.CanCollide = false
						locatepart.Anchored = true
						locatepart.Name = "L0"
						locatepart.Transparency = 1
							if SpawnPosition then
								CreateSwirl(0,2,false,0.05,25,CF(End),"Really black")
								local spike = Instance.new("CornerWedgePart")
								spike.Size = Vector3.new(1,15,1)
								spike.Material = "Neon"
								spike.Color = "Really black"
								spike.Anchored = true
								spike.CanCollide = false
								spike.CFrame = CFrame.new(End.X,SpawnPosition.Y+2,End.Z)
								spike.Orientation = Vector3.new(math.random(-15,15),math.random(-180,180),math.random(-15,15))
								spike.Name = HITFLOOR.Name.."Spike"
								CreateSound("341300954", spike, 1, (math.random(8,12)/10))
								for i = 1, 3 do
									local overlay = spike:Clone()
									overlay.Size = overlay.Size + Vector3.new(0.2,0.2*2,0.2)
									overlay.CFrame = spike.CFrame
									overlay.Parent = nil
									overlay.Orientation = Vector3.new(math.random(-15,15),math.random(-180,180),math.random(-15,15))
									overlay.Parent = Effects
									table.insert(Effects2,{overlay,"Disappear",0.01,0,0,0,0})
								end
								spike.Size = Vector3.new(2,25,2)
								spike.Parent = Effects
								table.insert(Effects2,{spike,"Disappear",0.01,0,0,0,0})
							end
						Swait(5)
						game:GetService("Debris"):AddItem(locatepart, 5)
					end
				end
			end))
		end
		wait(0.05)
		end
		for i=0, 6, 0.1 / Animation_Speed*5 do
			Swait()
	        RootPart.Anchored = true
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -1 * Player_Size) * ANGLES(RAD(45), RAD(0), RAD(0)), 0.2 / Animation_Speed*5)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed*5)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 1 * Player_Size, -1.4 * Player_Size) * ANGLES(RAD(30), RAD(-690), RAD(2 - 2.5 * COS(SINE / 12) + 2.5 * SIN(SINE / 24))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed*5)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), RAD(25), RAD(45)) * LEFTSHOULDERC0, 0.15 / Animation_Speed*5)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.3 * Player_Size, -1 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-20)), 0.2 / Animation_Speed*5)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.3 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(5), RAD(0)) * ANGLES(RAD(45), RAD(0), RAD(10)), 0.2 / Animation_Speed*5)
		end
		ATTACK = false
		Rooted = false
	end
end

function RavagingOverthrower()
	ATTACK = true
	Rooted = true
	chatfunc("I will show you what is death!!!",4)
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size + 0.05 * COS(SINE / 12) * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(5 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(25)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -1 * Player_Size, -0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1 * Player_Size, -0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	end
	CreateSound("348663022", Torso, 5, 1)
	local StartPos = RootPart.CFrame * CF(0,0,-10).p
	for i = 1, 5 do
		MagicSphere2(25,25,CF(StartPos),"Really red")
		Swait(15)
	end
	local soundeffect = IT("Sound",Torso)
	soundeffect.SoundId = "rbxassetid://487186990"
	soundeffect.Looped = true
	soundeffect.Volume = 10
	soundeffect.Playing = true
	repeat
		turnto(Mouse.Hit.p)
		MagicSphere2(25,25,CF(StartPos),"Really red")
		MagicSphere(25/10,25,CF(StartPos),"Really red")
		for i = 1, 3 do
			CreateSwirl(0,25,true,-0.2,5,CF(StartPos) * ANGLES(RAD(math.random(-360,360)),RAD(math.random(-360,360)),RAD(math.random(-360,360))),"Really black")
		end
		local RayHit, RayPos, RayNormal = CastZapRay(StartPos, Mouse.Hit.p, 750, Character, false)
		local distance = (StartPos - RayPos).magnitude
		local RayBeam = IT("Part",Effects)
		RayBeam.Material = "Neon"
		RayBeam.Anchored = true
		RayBeam.BrickColor = BRICKC"Really red"
		local mesh = IT("SpecialMesh",RayBeam)
		mesh.MeshType = "Cylinder"
		RayBeam.Size = Vector3.new(distance+10, math.random(10,15), math.random(10,15))
		RayBeam.CFrame = CFrame.new(StartPos, RayPos) * CFrame.new(0, 0, -distance/2) * ANGLES(RAD(0),RAD(90),RAD(0))
		MagicSphere(15,5,CF(RayPos),"Really red")
		killnearest(RayPos,15,100)
		for i = 1, 3 do
			CreateSwirl(0,25,true,-0.2,5,CF(RayPos) * ANGLES(RAD(math.random(-360,360)),RAD(math.random(-360,360)),RAD(math.random(-360,360))),"Really black")
		end
		Swait()
		if KEYHOLD == false then
			coroutine.resume(coroutine.create(function()
				for i = 1, 30 do
					RayBeam.Transparency = i/30
					Swait()
				end
				RayBeam:remove()
			end))
		else
			RayBeam:remove()
		end
	until KEYHOLD == false
	soundeffect:remove()
	ATTACK = false
	Rooted = false
end

function dodadance()
	ATTACK = true
	Rooted = true
	DANCE = true
	sick:Stop()
	sick2:Play()
	local Animation_Speed2 = 1.5
	HName.Text = "Change!"
	repeat
		for i=0, 1.3, 0.1 / Animation_Speed2 do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(25), RAD(0), RAD(-15)), 0.15 / Animation_Speed2)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(25), RAD(0), RAD(0)), 0.15 / Animation_Speed2)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.75 * Player_Size, 0.5 * Player_Size, -1 * Player_Size) * ANGLES(RAD(70), RAD(0), RAD(-70)) * ANGLES(RAD(20), RAD(25), RAD(-15)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(-180)) * LEFTSHOULDERC0, 0.15 / Animation_Speed2)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.5 * Player_Size, -0.3 * Player_Size) * ANGLES(RAD(0), RAD(120), RAD(35)) * ANGLES(RAD(-35), RAD(0), RAD(0)), 0.15 / Animation_Speed2)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(-35)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 0.15 / Animation_Speed2)
		end
		MagicSphere(5,15,Torso.CFrame,"Really red")
		for i=0, 1.3, 0.1 / Animation_Speed2 do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(25), RAD(0), RAD(15)), 0.15 / Animation_Speed2)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(25), RAD(0), RAD(0)), 0.15 / Animation_Speed2)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.75 * Player_Size, 0.5 * Player_Size, -1 * Player_Size) * ANGLES(RAD(70), RAD(0), RAD(-70)) * ANGLES(RAD(20), RAD(25), RAD(-15)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(-120)) * LEFTSHOULDERC0, 0.15 / Animation_Speed2)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(35)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.5 * Player_Size, -0.3 * Player_Size) * ANGLES(RAD(0), RAD(-120), RAD(-35)) * ANGLES(RAD(-35), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		end
		MagicSphere(5,15,Torso.CFrame,"Really red")
	until DANCE == false
	HName.Text = "Satan's Killer"
	sick:Play()
	sick2:Stop()
	ATTACK = false
	Rooted = false
end

function Warp()
	MagicSphere2(10,5,Torso.CFrame,"Really red")
	RootPart.CFrame = CF(VT(Mouse.Hit.p.X,Mouse.Hit.p.Y+4,Mouse.Hit.p.Z))
	CreateSound("282061340", Torso, 2, 1)
	MagicSphere(5,5,Torso.CFrame,"Really red")
	for i = 1, 3 do
		CreateSwirl(0,5,true,-0.2,25,Torso.CFrame * ANGLES(RAD(math.random(-360,360)),RAD(math.random(-360,360)),RAD(math.random(-360,360))),"Really black")
	end
	killnearest(Torso.Position,12,25)
	Swait()
	turnto(Mouse.Hit.p)
end

--//=================================\\
--||	  ASSIGN THINGS TO KEYS
--\\=================================//

Humanoid.Changed:connect(function(Jump)
	if Jump == "Jump" and (Disable_Jump == true or DISABLEJUMPING == true) then
		Humanoid.Jump = false
	end
end)

function MouseDown(Mouse)
	if ATTACK == false then
	end
end

function MouseUp(Mouse)
HOLD = false
end

function KeyDown(Key)
	KEYHOLD = true
	if Key == "e" and ATTACK == false then
		TyranyCannon()
		wait(1)
		Detonate()
	end

	if Key == "e" and ATTACK == false then
		EarthShatter()
	end

	if Key == "r" and ATTACK == false then
		RavagingOverthrower()
	end

	if Key == "q" and ATTACK == false then
		Warp()
	end

	if Key == "t" and ATTACK == false then
		CreateSound("159882644", Head, 5, 0.8)
	end

	if Key == "t" and DANCE == true then
		CreateSound("887591869", Head, 5, 1)
	end

	if Key == "x" and (ATTACK == false or DANCE == true) then
		if DANCE == false then
			dodadance()
		elseif DANCE == true then
			DANCE = false
		end
	end
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

--//=================================\\
--\\=================================//


function unanchor()
	if UNANCHOR == true then
		g = Character:GetChildren()
		for i = 1, #g do
			if g[i].ClassName == "Part" then
				g[i].Anchored = false
			end
		end
	end
end


--//=================================\\
--||	WRAP THE WHOLE SCRIPT UP
--\\=================================//

Humanoid.Changed:connect(function(Jump)
	if Jump == "Jump" and (Disable_Jump == true or DISABLEJUMPING == true) then
		Humanoid.Jump = false
	end
end)

		ANIMATE.Parent = nil
		local IDLEANIMATION = Humanoid:LoadAnimation(ROBLOXIDLEANIMATION)
		IDLEANIMATION:Play()

while true do
	Swait()
	SINE = SINE + CHANGE
	local TORSOVELOCITY = (RootPart.Velocity * VT(1, 0, 1)).magnitude
	local TORSOVERTICALVELOCITY = RootPart.Velocity.y
	local LV = Torso.CFrame:pointToObjectSpace(Torso.Velocity - Torso.Position)
	local HITFLOOR = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4 * Player_Size, Character)
	local WALKSPEEDVALUE = 12 / (Humanoid.WalkSpeed / 16)
		if ANIM == "Walk" and TORSOVELOCITY > 1 then
			RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, -0.1 * COS(SINE / (WALKSPEEDVALUE / 2)) * Player_Size) * ANGLES(RAD(0), RAD(0) - RootPart.RotVelocity.Y / 75, RAD(0)), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
			Neck.C1 = Clerp(Neck.C1, CF(0 * Player_Size, -0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(2.5 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(0) - Head.RotVelocity.Y / 30), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
			RightHip.C1 = Clerp(RightHip.C1, CF(0.5 * Player_Size, 0.875 * Player_Size - 0.125 * SIN(SINE / WALKSPEEDVALUE) * Player_Size, -0.125 * COS(SINE / WALKSPEEDVALUE) * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0) - RightLeg.RotVelocity.Y / 75, RAD(0), RAD(60 * COS(SINE / WALKSPEEDVALUE))), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
			LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5 * Player_Size, 0.875 * Player_Size + 0.125 * SIN(SINE / WALKSPEEDVALUE) * Player_Size, 0.125 * COS(SINE / WALKSPEEDVALUE) * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0) + LeftLeg.RotVelocity.Y / 75, RAD(0), RAD(60 * COS(SINE / WALKSPEEDVALUE))), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		elseif (ANIM ~= "Walk") or (TORSOVELOCITY < 1) then
			RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			Neck.C1 = Clerp(Neck.C1, CF(0 * Player_Size, -0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			RightHip.C1 = Clerp(RightHip.C1, CF(0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		end
		if TORSOVERTICALVELOCITY > 1 and HITFLOOR == nil then
			ANIM = "Jump"
			if ATTACK == false then
				RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(-10), RAD(0), RAD(0)), 0.2 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-40), RAD(0), RAD(30)) * RIGHTSHOULDERC0, 0.2 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-40), RAD(0), RAD(-20)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -1 * Player_Size, -0.3 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(-20)), 0.2 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1 * Player_Size, -0.3 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(20)), 0.2 / Animation_Speed)
	        end
		elseif TORSOVERTICALVELOCITY < -1 and HITFLOOR == nil then
			ANIM = "Fall"
			if ATTACK == false then
				RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(20), RAD(0), RAD(0)), 0.2 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(70)) * RIGHTSHOULDERC0, 0.2 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(-60)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(20)), 0.2 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(10)), 0.2 / Animation_Speed)
			end
		elseif TORSOVELOCITY < 1 and HITFLOOR ~= nil then
			ANIM = "Idle"
			if ATTACK == false then
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size + 0.05 * COS(SINE / 12) * Player_Size) * ANGLES(RAD(10), RAD(0), RAD(-20)), 0.15 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(5 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(5)), 0.15 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(5), RAD(0), RAD(30)) * ANGLES(RAD(3), RAD(25), RAD(5)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(10 - 2.5 * COS(SINE / 16)), RAD(0), RAD(-25 + 2.5 * SIN(SINE / 24))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size - 0.05 * COS(SINE / 12) * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(-2.5)), 0.15 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size - 0.05 * COS(SINE / 12) * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(-65), RAD(0)) * ANGLES(RAD(-7.5), RAD(0), RAD(-15)), 0.15 / Animation_Speed)
			end
		elseif TORSOVELOCITY > 1 and HITFLOOR ~= nil then
			ANIM = "Walk"
			WALK = WALK + 1 / Animation_Speed
			if WALK >= 15 - (5 * (Humanoid.WalkSpeed / 16 / Player_Size)) then
				WALK = 0
				if WALKINGANIM == true then
					WALKINGANIM = false
				elseif WALKINGANIM == false then
					WALKINGANIM = true
				end
			end
			--RightHip.C1 = Clerp(RightHip.C1, CF(0.5 * Player_Size, 0.875 * Player_Size - 0.125 * SIN(SINE / WALKSPEEDVALUE) * Player_Size, -0.125 * COS(SINE / WALKSPEEDVALUE) * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0) - RightLeg.RotVelocity.Y / 75, RAD(0), RAD(60 * COS(SINE / WALKSPEEDVALUE))), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
			--LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5 * Player_Size, 0.875 * Player_Size + 0.125 * SIN(SINE / WALKSPEEDVALUE) * Player_Size, 0.125 * COS(SINE / WALKSPEEDVALUE) * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0) + LeftLeg.RotVelocity.Y / 75, RAD(0), RAD(60 * COS(SINE / WALKSPEEDVALUE))), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
			if ATTACK == false then
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size + 0.05 * COS(SINE / 12) * Player_Size) * ANGLES(RAD(10), RAD(0), RAD(-20)), 0.15 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(5 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(5)), 0.15 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(60 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-60 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -1 * Player_Size, -0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1 * Player_Size, -0 * Player_Size) * ANGLES(RAD(0), RAD(-65), RAD(0)) * ANGLES(RAD(-7.5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			end
		end
if #Effects2>0 then
for e=1,#Effects2 do
if Effects2[e]~=nil then
local Thing=Effects2[e]
if Thing~=nil then
local Part=Thing[1]
local Mode=Thing[2]
local Delay=Thing[3]
local IncX=Thing[4]
local IncY=Thing[5]
local IncZ=Thing[6]
local Part2=Thing[8]
if Thing[1].Transparency<=1 then
if Thing[2]=="Block1" then
Thing[1].CFrame=Thing[1].CFrame
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+VT(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Cylinder" then
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+VT(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Blood" then
Mesh=Thing[7]
Thing[1].CFrame=Thing[1].CFrame*CF(0,.5,0)
Mesh.Scale=Mesh.Scale+VT(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Elec" then
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+VT(Thing[7],Thing[8],Thing[9])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Disappear" then
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
end
else
Part.Parent=nil
table.remove(Effects2,e)
end
end
end
end
end
unanchor()
Humanoid.MaxHealth = "inf"
Humanoid.Health = "inf"
Humanoid.Name = "Ravage"
if Rooted == false then
	Disable_Jump = false
	Humanoid.WalkSpeed = Speed
elseif Rooted == true then
	Disable_Jump = true
	Humanoid.WalkSpeed = 0
end
q = Character:GetChildren()
for u = 1, #q do
	if q[u].ClassName == "Accessory" or q[u].ClassName == "Hat" then
		q[u]:remove()
	elseif q[u].ClassName == "Shirt" then
		q[u]:Destroy()
	elseif q[u].ClassName == "Pants" then
		q[u]:Destroy()
	elseif q[u].ClassName == "CharacterMesh" then
		q[u]:remove()
	elseif q[u].ClassName == "ShirtGraphic" then
		q[u]:remove()
	elseif q[u].ClassName == "Part" and q[u].Name ~= "HumanoidRootPart" then
		q[u].Color = Color3.new(0/255, 0/255, 0/255)
	end
end
if Head:FindFirstChild("face") then
	Head.face:remove()
end
if Head:FindFirstChild("Died") then
	Head.Died:remove()
end
bomb = Bombs:GetChildren()
	for lol = 1, #bomb do
		if bomb[lol].ClassName == "Part" then
			MagicSphere2(2,5,bomb[lol].CFrame,"Really black")
		end
	end
end

--//=================================\\
--\\=================================//