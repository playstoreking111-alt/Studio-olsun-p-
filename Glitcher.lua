--Edit by DGLN
local plr = game.Players.LocalPlayer if plr.Character then plr.Character.Name = "FDless" end repeat wait() until game.Workspace:FindFirstChild("FDless")

script=game:GetObjects("rbxassetid://5000769890")[1].SGSR
script.GUI.IgnoreGuiInset=true
FDless.keepGui(script.GUI)
plr = game.Players.LocalPlayer
mouse = plr:GetMouse()
char = FDless.character
hum = char.Humanoid
local cam = workspace.CurrentCamera
Camera = cam
radian = math.rad(-1)
local CamInterrupt = false
local TwoD = false
local TargetInfo = {nil, nil}
cam.CameraType = "Custom"
t = char.Torso
h = char.Head
ra = char["Right Arm"]
la = char["Left Arm"]
rl = char["Right Leg"]
ll = char["Left Leg"]
tors = char.Torso
lleg = char["Left Leg"]
root = char.HumanoidRootPart
hed = char.Head
rleg = char["Right Leg"]
rarm = char["Right Arm"]
larm = char["Left Arm"]
radian = math.rad
random = math.random
Vec3 = Vector3.new
Inst = Instance.new
cFrame = CFrame.new
Euler = CFrame.fromEulerAnglesXYZ
vt = Vector3.new
bc = BrickColor.new
br = BrickColor.random
it = Instance.new

local lastMachineBreathe = tick()
local MachineBreathePhase = 0
cf = CFrame.new
local WanderersBlade = script:WaitForChild("WanderingBlade")
local RightTransitionFrame = script.GUI.RightTransition
local LeftTransitionFrame = script.GUI.LeftTransition
local TheDark = script:WaitForChild('TheDark')
local GasCan = script:WaitForChild('Gas')
local Hue = 0

NewInstance = function(instance,parent,properties)
	local inst = Instance.new(instance)
	inst.Parent = parent
	if(properties)then
		for i,v in next, properties do
			pcall(function() inst[i] = v end)
		end
	end
	return inst;
end

function CamShake(who,data)
	coroutine.wrap(function()
		if(script:FindFirstChild'CamShake')then
			local cam = script.CamShake:Clone()
			cam:WaitForChild'intensity'.Value = data.Intensity or 5
			cam:WaitForChild'duration'.Value = data.Duration or 5
			cam:WaitForChild'speed'.Value = data.Speed or 10;
	 		if(data.Origin)then NewInstance((typeof(data.Origin) == 'Instance' and "ObjectValue" or typeof(data.Origin) == 'Vector3' and 'Vector3Value' or typeof(data.Origin)=='CFrame' and 'CFrameValue'),cam,{Name='origin',Value=data.Origin}) end
			cam:WaitForChild'rot'.Value = data.Rotation or Vector3.new(1,1,5)
			cam:WaitForChild'pos'.Value = data.Position or Vector3.new(.5,.5,.5)
			cam:WaitForChild'startdist'.Value = data.DropDist or 25;
			cam:WaitForChild'enddist'.Value = data.IneffectiveDist or 150;
			
			cam.Parent = who
			wait()
			cam.Disabled = false
			game:service'Debris':AddItem(cam,(data.Duration or 5)+5)
		end
	end)()
end

function CamShakeAll(data)

end

function shakes(power,length)

end

--[[function shakes(power,length)
	for i,v in pairs(game:GetService("Players"):GetChildren()) do
	local var = script.Shaker:Clone()
	var.Parent = v.PlayerGui
	local pw = var.Shakeval
	local lgth = var.MultLength
	pw.Value = power
	lgth.Value = length
	var.Disabled = false
	end
end]]

local Booleans = {
  CamFollow = true,
  GyroUse = true
}

function lerp(object, newCFrame, alpha)
  return object:lerp(newCFrame, alpha)
end

local Directer = Inst("BodyGyro", root)
Directer.MaxTorque = Vec3(0, 0, 0)
Directer.P = 600000
local CPart = Inst("Part")
CPart.Anchored = true
CPart.CanCollide = false
CPart.Locked = true
CPart.Transparency = 1

local rainbowmode = false
local chaosmode = false

local kan = Instance.new("Sound",root)
kan.Volume = 1.25
kan.TimePosition = 0
kan.PlaybackSpeed = 1
kan.Pitch = 1
kan.SoundId = "rbxassetid://495971354"
kan.Name = "wrecked"
kan.Looped = true
kan:Play()

local currentThemePlaying = kan.SoundId
local currentPitch = kan.Pitch
local currentVol = kan.Volume
function newTheme(ID,timepos,pitch,vol)
local kanz = kan
--kanz:Stop()
kanz.Volume = vol+2
--kanz.TimePosition = timepos
kanz.PlaybackSpeed = pitch
kanz.Pitch = pitch
kanz.SoundId = ID
kanz.Name = "wrecked"
kanz.Looped = true
currentThemePlaying = kanz.SoundId
currentVol = kanz.Volume
currentPitch = kanz.Pitch
--kanz:Play()
--coroutine.resume(coroutine.create(function()
--wait(0.05)
--end))
end


function newThemeCust(ID,timepos,pitch,vol)
local kanz = kan
kanz:Stop()
kanz.Volume = vol
kanz.TimePosition = timepos
kanz.PlaybackSpeed = pitch
kanz.Pitch = pitch
kanz.SoundId = ID
kanz.Name = "wrecked"
kanz.Looped = true
currentThemePlaying = kanz.SoundId
currentVol = kanz.Volume
currentPitch = kanz.Pitch
kanz:Play()
coroutine.resume(coroutine.create(function()
wait(0.05)
end))
end

local mutedtog = false

function CameraEnshaking(Length,Intensity)

end

local toggleTag = true
local bilguit = Instance.new("BillboardGui", hed)
bilguit.Adornee = nil
bilguit.Name = "ModeName"
bilguit.Size = UDim2.new(4, 0, 1.2, 0)
bilguit.StudsOffset = Vector3.new(-8, 8/1.5, 0)
local modet = Instance.new("TextLabel", bilguit)
modet.Size = UDim2.new(10/2, 0, 7/2, 0)
modet.FontSize = "Size8"
modet.TextScaled = true
modet.TextTransparency = 0
modet.BackgroundTransparency = 1 
modet.TextTransparency = 0
modet.TextStrokeTransparency = 0
modet.Font = "Antique"
modet.TextStrokeColor3 = Color3.new(1,0,0)
modet.TextColor3 = Color3.new(0.25,0,0)
modet.Text = "POWER"


function chatfunc(text,color,typet,font,timeex)
local chat = coroutine.wrap(function()
if Character:FindFirstChild("TalkingBillBoard")~= nil then
Character:FindFirstChild("TalkingBillBoard"):destroy()
end
local naeeym2 = Instance.new("BillboardGui",Character)
naeeym2.Size = UDim2.new(0,100,0,40)
naeeym2.StudsOffset = Vector3.new(0,3,0)
naeeym2.Adornee = Character.Head
naeeym2.Name = "TalkingBillBoard"
local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.BorderSizePixel = 0
tecks2.Text = ""
tecks2.Font = font
tecks2.TextSize = 30
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = color
tecks2.TextStrokeColor3 = Color3.new(0,0,0)
tecks2.Size = UDim2.new(1,0,0.5,0)
local tecks3 = Instance.new("TextLabel",naeeym2)
tecks3.BackgroundTransparency = 1
tecks3.BorderSizePixel = 0
tecks3.Text = ""
tecks3.Font = font
tecks3.TextSize = 30
tecks3.TextStrokeTransparency = 0
if typet == "Inverted" then
tecks3.TextColor3 = Color3.new(0,0,0)
tecks3.TextStrokeColor3 = color
elseif typet == "Normal" then
tecks3.TextColor3 = color
tecks3.TextStrokeColor3 = Color3.new(0,0,0)
end
tecks3.Size = UDim2.new(1,0,0.5,0)
coroutine.resume(coroutine.create(function()
while true do
swait(1)
if chaosmode == true then
tecks2.TextColor3 = BrickColor.random().Color
tecks3.TextStrokeColor3 = BrickColor.random().Color
end
end
end))
modet.TextTransparency = modet.TextTransparency  + 1
modet.TextStrokeTransparency = modet.TextStrokeTransparency + 1
for i = 0, 74*timeex do
swait()
modet.TextTransparency = 1
modet.TextStrokeTransparency = 1
tecks2.Text = text
tecks3.Text = text
end
local randomrot = math.random(1,2)
if randomrot == 1 then
for i = 1, 50 do
swait()
tecks2.Text = text
tecks3.Text = text
modet.TextTransparency = modet.TextTransparency - .02
modet.TextStrokeTransparency = modet.TextStrokeTransparency - .02
tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks2.TextTransparency = tecks2.TextTransparency + .04
tecks3.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks3.TextTransparency = tecks2.TextTransparency + .04
end
elseif randomrot == 2 then
	for i = 1, 50 do
swait()
tecks2.Text = text
tecks3.Text = text
modet.TextTransparency = modet.TextTransparency - .02
modet.TextStrokeTransparency = modet.TextStrokeTransparency - .02
tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks2.TextTransparency = tecks2.TextTransparency + .04
tecks3.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks3.TextTransparency = tecks2.TextTransparency + .04
end
end
modet.TextTransparency = 0
modet.TextStrokeTransparency = 0
if toggleTag == false then
modet.TextTransparency = 1
modet.TextStrokeTransparency = 1
end
naeeym2:Destroy()
end)
chat()
end

function bosschatfunc(text,color,watval)
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
coroutine.resume(coroutine.create(function()
if v.PlayerGui:FindFirstChild("Dialog")~= nil then
v.PlayerGui:FindFirstChild("Dialog"):destroy()
end
local scrg = Instance.new("ScreenGui",v.PlayerGui)
CFuncs["EchoSound"].Create("rbxassetid://525200869", scrg, 0.5, 1,0,10,0.1,0.25,1)
scrg.Name = "Dialog"
local txtlb = Instance.new("TextLabel",scrg)
txtlb.Text = ""
txtlb.Font = "Bodoni"
txtlb.TextColor3 = Color3.new(0,0,0)
txtlb.TextStrokeTransparency = 0
txtlb.BackgroundTransparency = 0.75
txtlb.BackgroundColor3 = Color3.new(0,0,0)
txtlb.TextStrokeColor3 = color
txtlb.TextScaled = true
txtlb.Size = UDim2.new(1,0,0.25,0)
txtlb.TextXAlignment = "Left"
txtlb.Position = UDim2.new(0,0,0.75 + 1,0)
local txtlb2 = Instance.new("TextLabel",scrg)
txtlb2.Text = "???:"
txtlb2.Font = "Arcade"
txtlb2.TextColor3 = Color3.new(0,0,0)
txtlb2.TextStrokeTransparency = 0
txtlb2.BackgroundTransparency = 1
txtlb2.TextStrokeColor3 = color
txtlb2.TextSize = 40
txtlb2.Size = UDim2.new(1,0,0.25,0)
txtlb2.TextXAlignment = "Left"
txtlb2.Position = UDim2.new(0,0,1,0)
local fvalen = 0.55
local fval = -0.49
coroutine.resume(coroutine.create(function()
while true do
swait()
if chaosmode == true then
txtlb.Rotation = math.random(-1,1)
txtlb2.Rotation = math.random(-1,1)
txtlb.Position = txtlb.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
txtlb2.Position = txtlb2.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
txtlb.TextStrokeColor3 = BrickColor.random().Color
txtlb2.TextStrokeColor3 = BrickColor.random().Color
end
end
end))
coroutine.resume(coroutine.create(function()
while true do
swait()
if scrg.Parent ~= nil then
	fvalen = fvalen - 0.0001
elseif scrg.Parent == nil then
break
end
end
end))
local flol = 1.75
local flil = 1.6
coroutine.resume(coroutine.create(function()
	for i = 0, 9 do
		swait()
		fval = fval + 0.05
		flol = flol - 0.1
		flil = flil - 0.1
		txtlb.Text = ""
		txtlb.Position = UDim2.new(0,0,flol,0)
		txtlb2.Position = UDim2.new(0,0,flil,0)
	end
	txtlb.Text = text
wait(watval)
local valinc = 0
for i = 0, 99 do
swait()
valinc = valinc + 0.0001
flol = flol + valinc
flil = flil + valinc
txtlb.Rotation = txtlb.Rotation + valinc*20
txtlb2.Rotation = txtlb2.Rotation - valinc*50
txtlb.Position = UDim2.new(0,0,flol,0)
txtlb2.Position = UDim2.new(0,0,flil,0)
txtlb.TextStrokeTransparency = txtlb.TextStrokeTransparency + 0.01
txtlb.TextTransparency = txtlb.TextTransparency + 0.01
txtlb2.TextStrokeTransparency = txtlb2.TextStrokeTransparency + 0.01
txtlb2.TextTransparency = txtlb2.TextTransparency + 0.01
txtlb.BackgroundTransparency = txtlb.BackgroundTransparency + 0.0025
end
scrg:Destroy()
end))
end))
end
end


local Create = function(ty)
	local obj = Instance.new(ty)
	return function(dtable)
		for p, v in pairs(dtable) do
			pcall(function() 
				ty[p] = v;
			end)
		end
		return obj;
	end
end

local baseSound = Instance.new("Sound")
function Sound(parent,id,pitch,volume,looped,effect,autoPlay)
	local Sound = baseSound:Clone()
	Sound.SoundId = tostring(id or 0)
	Sound.Pitch = pitch or 1
	Sound.Volume = volume or 1
	Sound.Looped = looped or false
	if(not looped and effect)then
		Sound.Stopped:connect(function()
			Sound.Volume = 0
			Sound:destroy()
		end)
	elseif(effect)then
		warn("Sound can't be looped and a sound effect!")
	end
	Sound.Parent =parent or Torso
	Sound.Playing = autoPlay or false
	return Sound
end

CFuncs = {	
	["Part"] = {
		Create = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
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
		end;
	};
	
	["Mesh"] = {
		Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
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
		end;
	};
	
	["Mesh"] = {
		Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
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
		end;
	};
	
	["Weld"] = {
		Create = function(Parent, Part0, Part1, C0, C1)
			local Weld = Create("Weld"){
				Parent = Parent,
				Part0 = Part0,
				Part1 = Part1,
				C0 = C0,
				C1 = C1,
			}
			return Weld
		end;
	};

	["Sound"] = {
		Create = function(id, par, vol, pit) 
			return Sound(par or workspace,id,pit,vol,false,true,true)
		end;
	};
	["LoopedSound"] = {
		Create = function(id, par, vol, pit) 
			return Sound(par or workspace,id,pit,vol,true,false,true)
		end;
	};
	["TimeSound"] = {
		Create = function(id, par, vol, pit, timepos) 
			coroutine.resume(coroutine.create(function()
				local S = Create("Sound"){
					Volume = vol,
                                        Name = "EffectSoundo",
					Pitch = pit or 1,
					SoundId = id,
                                        TimePosition = timepos,
					Parent = par or workspace,
				}
				wait() 
				S:play() 
				game:GetService("Debris"):AddItem(S, 10)
			end))
		end;
	};
		["EchoSound"] = {
		Create = function(id, par, vol, pit, timepos,delays,echodelay,fedb,dryl) 
			coroutine.resume(coroutine.create(function()
				local Sas = Create("Sound"){
					Volume = vol,
                    Name = "EffectSoundo",
					Pitch = pit or 1,
					SoundId = id,
                    TimePosition = timepos,
					Parent = par or workspace,
				}
				local E = Create("EchoSoundEffect"){
					Delay = echodelay,
                    Name = "Echo",
					Feedback = fedb,
                    DryLevel = dryl,
					Parent = Sas,
				}
				wait() 
				Sas:play() 
				game:GetService("Debris"):AddItem(Sas, delays)
			end))
		end;
	};

["LongSound"] = {
		Create = function(id, par, vol, pit) 
			coroutine.resume(coroutine.create(function()
				local S = Create("Sound"){
					Volume = vol,
					Pitch = pit or 1,
					SoundId = id,
					Parent = par or workspace,
				}
				wait() 
				S:play() 
				game:GetService("Debris"):AddItem(S, 60)
			end))
		end;
	};
	
	["ParticleEmitter"] = {
		Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
			local fp = Create("ParticleEmitter"){
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
				VelocitySpread = VelocitySpread,
			}
			return fp
		end;
	};

	CreateTemplate = {
	
	};
}



New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end
local halocolor = BrickColor.new("Pastel light blue")
local halocolor2 = BrickColor.new("Cool yellow")
local starcolor = BrickColor.new("Bright yellow")
local lunacolor = BrickColor.new("Navy blue")
local lunacolor2 = BrickColor.new("Bright blue")
local wepcolor = BrickColor.new("Really black")
local maincolor = BrickColor.new("Really black")

gui = function(GuiType, parent, text, backtrans, backcol, pos, size)
  local gui = it(GuiType)
  gui.Parent = parent
  gui.Text = text
  gui.BackgroundTransparency = backtrans
  gui.BackgroundColor3 = backcol
  gui.SizeConstraint = "RelativeXY"
  gui.TextXAlignment = "Center"
  gui.TextYAlignment = "Center"
  gui.Position = pos
  gui.Size = size
  gui.Font = "SourceSans"
  gui.FontSize = "Size14"
  gui.TextWrapped = false
  gui.TextStrokeTransparency = 0
  gui.TextColor = BrickColor.new("White")
  return gui
end
--------------------------- GUI STUFF
--[[local basgui = it("GuiMain")
basgui.Parent = plr.PlayerGui
basgui.Name = "VISgui"
local fullscreenz = it("Frame")
fullscreenz.Parent = basgui
fullscreenz.BackgroundColor3 = Color3.new(255, 255, 255)
fullscreenz.BackgroundTransparency = 1
fullscreenz.BorderColor3 = Color3.new(17, 17, 17)
fullscreenz.Size = UDim2.new(1, 0, 1, 0)
fullscreenz.Position = UDim2.new(0, 0, 0, 0)
local imgl2 = Instance.new("ImageLabel",fullscreenz)
imgl2.BackgroundTransparency = 1
imgl2.BorderSizePixel = 0
imgl2.ImageTransparency = 0.5
imgl2.ImageColor3 = Color3.new(1,0,0)
imgl2.Position = UDim2.new(0.75,-200,0.55,-200)
imgl2.Size = UDim2.new(0,1000,0,1000)
imgl2.Image = "rbxassetid://2325939897"
local techc = imgl2:Clone()
techc.Parent = fullscreenz
techc.ImageTransparency = 0
techc.Size = UDim2.new(0,900,0,900)
techc.Position = UDim2.new(0.75,-150,0.55,-150)
techc.ImageColor3 = Color3.new(1,0,0)
techc.Image = "rbxassetid://2273224484"
local circl = imgl2:Clone()
circl.Parent = fullscreenz
circl.ImageTransparency = 0
circl.Size = UDim2.new(0,550,0,550)
circl.Position = UDim2.new(0.75,25,0.55,25)
circl.ImageColor3 = Color3.new(0,0,0)
circl.Image = "rbxassetid://2312119891"
local circl2 = imgl2:Clone()
circl2.Parent = fullscreenz
circl2.ImageTransparency = 0
circl2.Size = UDim2.new(0,700,0,700)
circl2.Position = UDim2.new(0.75,-50,0.55,-50)
circl2.ImageColor3 = Color3.new(1,0,0)
circl2.Image = "rbxassetid://2312119891"
local imgl2b = imgl2:Clone()
imgl2b.Parent = fullscreenz
imgl2b.ImageTransparency = 0
imgl2b.Size = UDim2.new(0,800,0,800)
imgl2b.Position = UDim2.new(0.75,-100,0.55,-100)
imgl2b.ImageColor3 = Color3.new(0,0,0)
local ned = Instance.new("TextLabel",fullscreenz)
ned.ZIndex = 2
ned.Font = "Arcade"
ned.BackgroundTransparency = 1
ned.BorderSizePixel = 0.65
ned.Size = UDim2.new(0.3,0,0.2,0)
ned.Position = UDim2.new(0.7,0,0.8,0)
ned.TextColor3 = BrickColor.new("Really red").Color
ned.TextStrokeColor3 = BrickColor.new("Really black").Color
ned.TextScaled = true
ned.TextStrokeTransparency = 0
ned.Text = "POWER"
ned.TextSize = 24
ned.Rotation = 1
ned.TextXAlignment = "Right"
ned.TextYAlignment = "Bottom"]]

local gui = script.GUI;
gui.Parent = plr.PlayerGui 
local ned = gui.Right.Mode
local scr = gui.Left.Script
local circl = gui.Right.Circle1
local circl2 = gui.Right.Circle2
local vis={r={},l={}}
for _,v in next, gui.Right:children() do if(v.Name=='VisBar')then table.insert(vis.r,v) end end
for _,v in next, gui.Left:children() do if(v.Name=='VisBar')then table.insert(vis.l,v) end end
local right = gui.Right
local left = gui.Left

local extrawingmod1 = Instance.new("Model",char)
local extrawingmod2 = Instance.new("Model",char)
local m = Instance.new("Model",char)
local mw1 = Instance.new("Model",char)
local mw2 = Instance.new("Model",char)
function CreateParta(parent,transparency,reflectance,material,brickcolor)
local p = Instance.new("Part")
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = parent
p.Size = Vector3.new(0.1,0.1,0.1)
p.Transparency = transparency
p.Reflectance = reflectance
p.CanCollide = false
p.Locked = true
p.BrickColor = brickcolor
p.Material = material
return p
end

function CreateMesh(parent,meshtype,x1,y1,z1)
local mesh = Instance.new("SpecialMesh",parent)
mesh.MeshType = meshtype
mesh.Scale = Vector3.new(x1*10,y1*10,z1*10)
return mesh
end

function CreateSpecialMesh(parent,meshid,x1,y1,z1)
local mesh = Instance.new("SpecialMesh",parent)
mesh.MeshType = "FileMesh"
mesh.MeshId = meshid
mesh.Scale = Vector3.new(x1,y1,z1)
return mesh
end


function CreateSpecialGlowMesh(parent,meshid,x1,y1,z1)
local mesh = Instance.new("SpecialMesh",parent)
mesh.MeshType = "FileMesh"
mesh.MeshId = meshid
mesh.TextureId = "http://www.roblox.com/asset/?id=269748808"
mesh.Scale = Vector3.new(x1,y1,z1)
mesh.VertexColor = Vector3.new(parent.BrickColor.r, parent.BrickColor.g, parent.BrickColor.b)
return mesh
end

function CreateWeld(parent,part0,part1,C1X,C1Y,C1Z,C1Xa,C1Ya,C1Za,C0X,C0Y,C0Z,C0Xa,C0Ya,C0Za)
local weld = Instance.new("Weld")
weld.Parent = parent
weld.Part0 = part0
weld.Part1 = part1
weld.C1 = CFrame.new(C1X,C1Y,C1Z)*CFrame.Angles(C1Xa,C1Ya,C1Za)
weld.C0 = CFrame.new(C0X,C0Y,C0Z)*CFrame.Angles(C0Xa,C0Ya,C0Za)
return weld
end


--------------
-------------- ground effect
local cen = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
CreateWeld(cen,root,cen,0,3,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local effar = Instance.new("ParticleEmitter",cen)
effar.Texture = "rbxassetid://2344870656"
effar.LightEmission = 1
effar.Color = ColorSequence.new(Color3.new(1,0,0))
effar.Rate = 50
effar.Enabled = false
effar.EmissionDirection = "Front"
effar.Lifetime = NumberRange.new(1)
effar.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,15,0),NumberSequenceKeypoint.new(0.1,5,0),NumberSequenceKeypoint.new(0.8,15,0),NumberSequenceKeypoint.new(1,40,0)})
effar.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.8,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
effar.Speed = NumberRange.new(80,90)
effar.Acceleration = Vector3.new(0,10,0)
effar.Drag = 5
effar.Rotation = NumberRange.new(-500,500)
effar.SpreadAngle = Vector2.new(0,900)
effar.RotSpeed = NumberRange.new(-500,500)

----
local sorb = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
CreateWeld(sorb,rarm,sorb,0,1,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local sorb2 = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
CreateWeld(sorb2,larm,sorb2,0,1,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

local handlex = CreateParta(mw2,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0,0,0)
local handlexweld = CreateWeld(handlex,tors,handlex,0,-1.5,-1.05,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

handlex = CreateParta(mw2,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0,0,0)
CreateWeld(handlex,tors,handlex,0,-1.5,-2.1,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

local handle = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local handleweld = CreateWeld(handle,tors,handle,0,-1.5,-1.05,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

Wing=script.Wing
Wing.Parent=nil
Ring=script.Ring
Halo=script.Halo
SHalo=script.SHalo

Halo.Parent=nil
SHalo.Parent=nil
Halo1=Halo:Clone()
Halo2=SHalo:Clone()
Halo1.Parent=mw2
Halo2.Parent=mw2

Halo1.Anchored=false
Halo2.Anchored=false

local h1weld = CreateWeld(hed,hed,Halo1,0,0,0,0,0,0,0,1.5,0,math.rad(90),0,0)
local h2weld = CreateWeld(hed,hed,Halo2,0,0,0,0,0,0,0,2,0,math.rad(90),0,0)

for _,v in next, Wing:children() do v.Anchored=false end
for _,v in next, Ring:children() do v.Anchored=false end

Ring.Parent = m
Ring.Union.Part.Part0=Ring.Union
Ring.Union.Part.Part1=Ring.Part
CreateWeld(Ring.Part,handlex,Ring.Part,0,0,1,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
for _,v in next, Ring:children() do v.Parent=mw2 end

local wingo1 = Wing:Clone();
local wingo2 = Wing:Clone();
local wingo3 = Wing:Clone();
local wingo4 = Wing:Clone();
local wingo5 = Wing:Clone();
local wingo6 = Wing:Clone();

local lwing1 = wingo1.WingToWeld
local lwing2 = wingo2.WingToWeld
local lwing3 = wingo3.WingToWeld
local lwing4 = wingo4.WingToWeld
local lwing5 = wingo5.WingToWeld
local lwing6 = wingo6.WingToWeld

lwing1.Parent = m
lwing2.Parent = m
lwing3.Parent = m
lwing4.Parent = m
lwing5.Parent = m
lwing6.Parent = m

wingo1.Wing.WingToWeld.Part0 = wingo1.Wing
wingo1.Wing.WingToWeld.Part1 = lwing1
wingo2.Wing.WingToWeld.Part0 = wingo2.Wing
wingo2.Wing.WingToWeld.Part1 = lwing2
wingo3.Wing.WingToWeld.Part0 = wingo3.Wing
wingo3.Wing.WingToWeld.Part1 = lwing3
wingo4.Wing.WingToWeld.Part0 = wingo4.Wing
wingo4.Wing.WingToWeld.Part1 = lwing4
wingo5.Wing.WingToWeld.Part0 = wingo5.Wing
wingo5.Wing.WingToWeld.Part1 = lwing5
wingo6.Wing.WingToWeld.Part0 = wingo6.Wing
wingo6.Wing.WingToWeld.Part1 = lwing6

local tl1 = wingo1.Wing.Trail
local tl2 = wingo2.Wing.Trail
local tl3 = wingo3.Wing.Trail
local tl4 = wingo4.Wing.Trail
local tl5 = wingo5.Wing.Trail
local tl6 = wingo6.Wing.Trail

local lwing1weld = CreateWeld(lwing1,handle,lwing1,3,0,0,math.rad(5),math.rad(0),math.rad(12.5),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local lwing2weld = CreateWeld(lwing2,handle,lwing2,4,1,0,math.rad(10),math.rad(0),math.rad(25),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local lwing3weld = CreateWeld(lwing3,handle,lwing3,4.75,2,0,math.rad(15),math.rad(0),math.rad(37.5),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local lwing4weld = CreateWeld(lwing4,handle,lwing4,5.75,3,0,math.rad(20),math.rad(0),math.rad(50),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local lwing5weld = CreateWeld(lwing5,handle,lwing5,6.75,4,0,math.rad(25),math.rad(0),math.rad(62.5),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local lwing6weld = CreateWeld(lwing6,handle,lwing6,7.75,5,0,math.rad(30),math.rad(0),math.rad(75),0,0,0,math.rad(0),math.rad(0),math.rad(0))

for _,v in next, wingo1:children() do v.Transparency = 1 v.Parent=mw1 end
for _,v in next, wingo2:children() do v.Transparency = 1 v.Parent=mw1 end
for _,v in next, wingo3:children() do v.Transparency = 1 v.Parent=mw1 end
for _,v in next, wingo4:children() do v.Transparency = 1 v.Parent=extrawingmod1 end
for _,v in next, wingo5:children() do v.Transparency = 1 v.Parent=extrawingmod1 end
for _,v in next, wingo6:children() do v.Transparency = 1 v.Parent=extrawingmod1 end
tl1.Enabled=false
tl2.Enabled=false
tl3.Enabled=false
tl4.Enabled=false
tl5.Enabled=false
tl6.Enabled=false

local wingo1 = Wing:Clone();
local wingo2 = Wing:Clone();
local wingo3 = Wing:Clone();
local wingo4 = Wing:Clone();
local wingo5 = Wing:Clone();
local wingo6 = Wing:Clone();

local rwing1 = wingo1.WingToWeld
local rwing2 = wingo2.WingToWeld
local rwing3 = wingo3.WingToWeld
local rwing4 = wingo4.WingToWeld
local rwing5 = wingo5.WingToWeld
local rwing6 = wingo6.WingToWeld

rwing1.Parent = m
rwing2.Parent = m
rwing3.Parent = m
rwing4.Parent = m
rwing5.Parent = m
rwing6.Parent = m

wingo1.Wing.WingToWeld.Part0 = wingo1.Wing
wingo1.Wing.WingToWeld.Part1 = rwing1
wingo2.Wing.WingToWeld.Part0 = wingo2.Wing
wingo2.Wing.WingToWeld.Part1 = rwing2
wingo3.Wing.WingToWeld.Part0 = wingo3.Wing
wingo3.Wing.WingToWeld.Part1 = rwing3
wingo4.Wing.WingToWeld.Part0 = wingo4.Wing
wingo4.Wing.WingToWeld.Part1 = rwing4
wingo5.Wing.WingToWeld.Part0 = wingo5.Wing
wingo5.Wing.WingToWeld.Part1 = rwing5
wingo6.Wing.WingToWeld.Part0 = wingo6.Wing
wingo6.Wing.WingToWeld.Part1 = rwing6

local rwing1weld = CreateWeld(rwing1,handle,rwing1,-3,0,0,math.rad(5),math.rad(0),math.rad(12.5),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local rwing2weld = CreateWeld(rwing2,handle,rwing2,-4,1,0,math.rad(10),math.rad(0),math.rad(25),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local rwing3weld = CreateWeld(rwing3,handle,rwing3,-4.75,2,0,math.rad(15),math.rad(0),math.rad(37.5),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local rwing4weld = CreateWeld(rwing4,handle,rwing4,-5.75,3,0,math.rad(20),math.rad(0),math.rad(50),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local rwing5weld = CreateWeld(rwing5,handle,rwing5,-6.75,4,0,math.rad(25),math.rad(0),math.rad(62.5),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local rwing6weld = CreateWeld(rwing6,handle,rwing6,-7.75,5,0,math.rad(30),math.rad(0),math.rad(75),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local tr1 = wingo1.Wing.Trail
local tr2 = wingo2.Wing.Trail
local tr3 = wingo3.Wing.Trail
local tr4 = wingo4.Wing.Trail
local tr5 = wingo5.Wing.Trail
local tr6 = wingo6.Wing.Trail
tr4.Enabled=false
tr5.Enabled=false
tr6.Enabled=false
for _,v in next, wingo1:children() do v.Parent=mw2 end
for _,v in next, wingo2:children() do v.Parent=mw2 end
for _,v in next, wingo3:children() do v.Parent=mw2 end
for _,v in next, wingo4:children() do v.Transparency = 1 v.Parent=extrawingmod2 end
for _,v in next, wingo5:children() do v.Transparency = 1 v.Parent=extrawingmod2 end
for _,v in next, wingo6:children() do v.Transparency = 1 v.Parent=extrawingmod2 end

for i,v in pairs(WanderersBlade:GetChildren())do v.Anchored = false v.Transparency = 1 end
WanderersBlade.Blade.Trail.Enabled=false
local BladesWeld = CreateWeld(WanderersBlade.Blade.Weld,ra,WanderersBlade.Blade.Weld,0,0,0,math.rad(180),math.rad(90),math.rad(0),0,-1,0,math.rad(90),math.rad(0),math.rad(0))

-- Right wing.
--[[
local rwing1 = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local rwing1weld = CreateWeld(rwing1,handle,rwing1,-3,0,0,math.rad(5),math.rad(0),math.rad(-12.5),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing1,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A0 = Instance.new('Attachment',wed)
A0.Position = vt(0,0.25,0.25)
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing1,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,3)
CreateWeld(wed,rwing1,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,3,0.5)
CreateWeld(wed,rwing1,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A1 = Instance.new('Attachment',wed)
A1.Position = vt(0,2,0.25)

tr1 = Instance.new('Trail',wed)
tr1.Attachment0 = A1
tr1.Attachment1 = A0
tr1.Texture = "rbxassetid://2108945559"
tr1.LightEmission = 1
tr1.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tr1.Color = ColorSequence.new(BrickColor.new('Really red').Color)
tr1.Lifetime = 0.6

local rwing2 = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local rwing2weld = CreateWeld(rwing2,handle,rwing2,-4,1,0,math.rad(10),math.rad(0),math.rad(-25),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing2,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A0 = Instance.new('Attachment',wed)
A0.Position = vt(0,0.25,0.25)
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing2,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,3)
CreateWeld(wed,rwing2,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,3,0.5)
CreateWeld(wed,rwing2,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A1 = Instance.new('Attachment',wed)
A1.Position = vt(0,2,0.25)

tr2 = Instance.new('Trail',wed)
tr2.Attachment0 = A1
tr2.Attachment1 = A0
tr2.Texture = "rbxassetid://2108945559"
tr2.LightEmission = 1
tr2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tr2.Color = ColorSequence.new(BrickColor.new('Really red').Color)
tr2.Lifetime = 0.6

local rwing3 = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local rwing3weld = CreateWeld(rwing3,handle,rwing3,-4.75,2,0,math.rad(15),math.rad(0),math.rad(-37.5),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing3,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A0 = Instance.new('Attachment',wed)
A0.Position = vt(0,0.25,0.25)
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing3,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,3)
CreateWeld(wed,rwing3,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,3,0.5)
CreateWeld(wed,rwing3,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A1 = Instance.new('Attachment',wed)
A1.Position = vt(0,2,0.25)

tr3 = Instance.new('Trail',wed)
tr3.Attachment0 = A1
tr3.Attachment1 = A0
tr3.Texture = "rbxassetid://2108945559"
tr3.LightEmission = 1
tr3.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tr3.Color = ColorSequence.new(BrickColor.new('Really red').Color)
tr3.Lifetime = 0.6


local rwing4 = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local rwing4weld = CreateWeld(rwing4,handle,rwing4,-5.75,3,0,math.rad(20),math.rad(0),math.rad(-50),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(extrawingmod2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05*2,0.5*2,0.5*2)
CreateWeld(wed,rwing4,wed,0,0,0.25*2,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A0 = Instance.new('Attachment',wed)
A0.Position = vt(0,0.25*2,0.25*2)
wed = CreateParta(extrawingmod2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05*2,0.5*2,0.5*2)
CreateWeld(wed,rwing4,wed,0,0,0.25*2,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05*2,0.5*2,3*2)
CreateWeld(wed,rwing4,wed,0,-0.25*2,1.75*2,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05*2,3*2,0.5*2)
CreateWeld(wed,rwing4,wed,0,-1.75*2,0.25*2,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A1 = Instance.new('Attachment',wed)
A1.Position = vt(0,2,0.25)

tr4 = Instance.new('Trail',wed)
tr4.Attachment0 = A1
tr4.Attachment1 = A0
tr4.Texture = "rbxassetid://2108945559"
tr4.LightEmission = 1
tr4.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tr4.Color = ColorSequence.new(BrickColor.new('Really red').Color)
tr4.Lifetime = 0.6

local rwing5 = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local rwing5weld = CreateWeld(rwing5,handle,rwing5,-6.75,4,0,math.rad(25),math.rad(0),math.rad(-62.5),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(extrawingmod2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05*2,0.5*2,0.5*2)
CreateWeld(wed,rwing5,wed,0,0,0.25*2,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A0 = Instance.new('Attachment',wed)
A0.Position = vt(0,0.25*2,0.25*2)
wed = CreateParta(extrawingmod2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05*2,0.5*2,0.5*2)
CreateWeld(wed,rwing5,wed,0,0,0.25*2,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05*2,0.5*2,3*2)
CreateWeld(wed,rwing5,wed,0,-0.25*2,1.75*2,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05*2,3*2,0.5*2)
CreateWeld(wed,rwing5,wed,0,-1.75*2,0.25*2,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A1 = Instance.new('Attachment',wed)
A1.Position = vt(0,2,0.25)

tr5 = Instance.new('Trail',wed)
tr5.Attachment0 = A1
tr5.Attachment1 = A0
tr5.Texture = "rbxassetid://2108945559"
tr5.LightEmission = 1
tr5.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tr5.Color = ColorSequence.new(BrickColor.new('Really red').Color)
tr5.Lifetime = 0.6

local rwing6 = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local rwing6weld = CreateWeld(rwing6,handle,rwing6,-7.75,3,0,math.rad(30),math.rad(0),math.rad(-75),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(extrawingmod2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05*2,0.5*2,0.5*2)
CreateWeld(wed,rwing6,wed,0,0,0.25*2,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A0 = Instance.new('Attachment',wed)
A0.Position = vt(0,0.25*2,0.25*2)
wed = CreateParta(extrawingmod2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05*2,0.5*2,0.5*2)
CreateWeld(wed,rwing6,wed,0,0,0.25*2,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05*2,0.5*2,3*2)
CreateWeld(wed,rwing6,wed,0,-0.25*2,1.75*2,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05*2,3*2,0.5*2)
CreateWeld(wed,rwing6,wed,0,-1.75*2,0.25*2,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A1 = Instance.new('Attachment',wed)
A1.Position = vt(0,2,0.25)

tr6 = Instance.new('Trail',wed)
tr6.Attachment0 = A1
tr6.Attachment1 = A0
tr6.Texture = "rbxassetid://2108945559"
tr6.LightEmission = 1
tr6.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tr6.Color = ColorSequence.new(BrickColor.new('Really red').Color)
tr6.Lifetime = 0.6

tr4.Enabled = false
tr5.Enabled = false
tr6.Enabled = false]]
---- HERES THE RING


--[[ran = CreateParta(m2,0,0,"SmoothPlastic",wepcolor)
CreateMesh(ran,"Wedge",1.02,1.02,1.02)
CreateWeld(ran,larm,ran,0,0.15,0,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
ran = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(ran,"Wedge",0.9,0.9,1.025)
CreateWeld(ran,larm,ran,0,0.155,0,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
ran = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(ran,"Wedge",1.025,0.9,0.9)
CreateWeld(ran,larm,ran,0,0.155,-0.025,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))


gan = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(gan,"Brick",1.075,0.1,1.075)
CreateWeld(gan,larm,gan,0,0.5,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

gan = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(gan,"Brick",1.075,0.1,1.075)
CreateWeld(gan,larm,gan,0,0.75,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))



gan = CreateParta(m2,0,0,"Neon",halocolor2)
CreateMesh(gan,"Brick",1.095,0.035,1.095)
CreateWeld(gan,larm,gan,0,0.5,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

gan = CreateParta(m2,0,0,"Neon",halocolor2)
CreateMesh(gan,"Brick",1.095,0.035,1.095)
CreateWeld(gan,larm,gan,0,0.75,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

gane = CreateParta(m3,0,0,"SmoothPlastic",lunacolor2)
CreateMesh(gane,"Brick",1.0625,0.2,1.0625)
CreateWeld(gane,larm,gane,0,0.6,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

star = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateSpecialMesh(star,"http://www.roblox.com/asset/?id=45428961",2.5,2.5,2.5)
CreateWeld(star,larm,star,0,0.475,0.6,math.rad(90),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
starl = CreateParta(m3,0,0,"SmoothPlastic",starcolor)
CreateSpecialMesh(starl,"http://www.roblox.com/asset/?id=45428961",1.95,2.55,1.95)
CreateWeld(starl,larm,starl,0,0.475,0.6,math.rad(90),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

--- second ring

ran = CreateParta(m2,0,0,"SmoothPlastic",wepcolor)
CreateMesh(ran,"Wedge",1.02,1.02,1.02)
CreateWeld(ran,rarm,ran,0,0.15,0,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
ran = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(ran,"Wedge",0.9,0.9,1.025)
CreateWeld(ran,rarm,ran,0,0.155,0,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
ran = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(ran,"Wedge",1.025,0.9,0.9)
CreateWeld(ran,rarm,ran,0,0.155,-0.025,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

gan = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(gan,"Brick",1.075,0.1,1.075)
CreateWeld(gan,rarm,gan,0,0.5,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

gan = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(gan,"Brick",1.075,0.1,1.075)
CreateWeld(gan,rarm,gan,0,0.75,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))



gan = CreateParta(m2,0,0,"Neon",halocolor2)
CreateMesh(gan,"Brick",1.095,0.035,1.095)
CreateWeld(gan,rarm,gan,0,0.5,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

gan = CreateParta(m2,0,0,"Neon",halocolor2)
CreateMesh(gan,"Brick",1.095,0.035,1.095)
CreateWeld(gan,rarm,gan,0,0.75,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

gane = CreateParta(m3,0,0,"SmoothPlastic",lunacolor2)
CreateMesh(gane,"Brick",1.0625,0.2,1.0625)
CreateWeld(gane,rarm,gane,0,0.6,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

star = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateSpecialMesh(star,"http://www.roblox.com/asset/?id=45428961",2.5,2.5,2.5)
CreateWeld(star,rarm,star,0,-0.475,0.6,math.rad(90),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
starl = CreateParta(m3,0,0,"SmoothPlastic",starcolor)
CreateSpecialMesh(starl,"http://www.roblox.com/asset/?id=45428961",1.95,2.55,1.95)
CreateWeld(starl,rarm,starl,0,-0.475,0.6,math.rad(90),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))]]--


local m2 = Instance.new("Model")
local m3 = Instance.new("Model")
for i, v in pairs(m:GetChildren()) do
if v:IsA("BasePart") then
v.BrickColor = BrickColor.new("Really black")
v.Material = "Glass"
end
end
for i, v in pairs(m2:GetChildren()) do
if v:IsA("BasePart") then
v.BrickColor = BrickColor.new("Crimson")
v.Material = "Granite"
end
end
for i, v in pairs(m3:GetChildren()) do
if v:IsA("BasePart") then
v.BrickColor = BrickColor.new("Really red")
v.Material = "Neon"
end
end
for i, v in pairs(mw2:GetChildren()) do
if v:IsA("BasePart") then
v.BrickColor = BrickColor.new("Really red")
v.Material = "Neon"
end
end
for i, v in pairs(mw1:GetChildren()) do
if v:IsA("BasePart") then
v.Transparency = 1
v.BrickColor = BrickColor.new("Really red")
v.Material = "Neon"
end
end
for i, v in pairs(extrawingmod1:GetChildren()) do
if v:IsA("BasePart") then
v.Transparency = 1
v.BrickColor = BrickColor.new("White")
v.Material = "Neon"
end
end
for i, v in pairs(extrawingmod2:GetChildren()) do
if v:IsA("BasePart") then
v.Transparency = 1
v.BrickColor = BrickColor.new("White")
v.Material = "Neon"
end
end
local MAINRUINCOLOR = BrickColor.new("Really red")
------


function RemoveOutlines(part)
  part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
function CreatePart(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
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
  Part.CustomPhysicalProperties = PhysicalProperties.new(0.001, 0.001, 0.001, 0.001, 0.001)
  RemoveOutlines(Part)
  return Part
end
function CreateMesha(Mesh, Part, MeshType, MeshId, OffSet, Scale)
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

Character=FDless.character
PlayerGui=plr.PlayerGui 
Backpack=plr.Backpack 
Torso=Character.Torso 
Head=Character.Head 
Humanoid=Character.Humanoid
m=Instance.new('Model',Character)
LeftArm=Character["Left Arm"] 
LeftLeg=Character["Left Leg"] 
RightArm=Character["Right Arm"] 
RightLeg=Character["Right Leg"] 
LS=Torso["Left Shoulder"] 
LH=Torso["Left Hip"] 
RS=Torso["Right Shoulder"] 
RH=Torso["Right Hip"] 
Face = Head.face
Neck=Torso.Neck
it=Instance.new
attacktype=1
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
cloaked=false
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
attack = false 
attackdebounce = false 
deb=false
equipped=true
hand=false
MMouse=nil
combo=0
mana=0
trispeed=.2
attackmode='none'
local idle=0
local Anim="Idle"
local Effects={}
local gun=false
local shoot=false
local sine = 0
local change = 1

function Weld(part0,part1,c0,c1)
	local weld = Instance.new("Weld")
	weld.Parent = part0
	weld.Part0 = part0
	weld.Part1 = part1
	weld.C0 = c0 or cf()
	weld.C1 = c1 or cf()
	return weld
end
GasCan.Parent=char
GasCan.Anchored=false
GasCan.Transparency=1
local gasW = Weld(RightArm,GasCan,cf(0,-1.35,0)*angles(0,math.rad(180),0))
TheDark.Parent=char
for _,v in next, TheDark:GetDescendants() do
	if(v:IsA'Decal' or v:IsA'Texture')then v.Transparency = 1 elseif(v:IsA'ParticleEmitter' or v:IsA'Beam')then v.Enabled = false end
	if(v:IsA'BasePart')then
		v.CanCollide = false
		v.Anchored = false
		v.Locked = true
		v.Massless = true
		v.Transparency=1
		Weld(TheDark.PrimaryPart,v,TheDark.PrimaryPart.CFrame:inverse()*v.CFrame)
	end
end
local hitbox = TheDark:WaitForChild'Hitbox'
local AeshW = Instance.new("Motor")
AeshW.Parent = TheDark.PrimaryPart
AeshW.Part0 = RightArm
AeshW.Part1 = TheDark.PrimaryPart
AeshW.C0 = cf(0,-.9,.4)*angles(math.rad(180),math.rad(90),math.rad(0))

function RecolorTextAndRename(name,col1,col2,font)
modet.TextStrokeColor3 = col2
modet.TextColor3 = col1
modet.Font = font
modet.Text = name
scr.TextColor3 = col2
scr.TextStrokeColor3 = col1
circl.ImageColor3=col1
circl2.ImageColor3=col2
ned.Font = font
ned.Text = name
ned.TextColor3 = col1
ned.TextStrokeColor3 = col2
end

local disably = true

function warnedpeople(text,represfont,color,color2)
	if disably ~= true then
CFuncs["Sound"].Create("rbxassetid://534859368", char, 2.5,1)
CFuncs["Sound"].Create("rbxassetid://963718869", char, 1,1)
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
coroutine.resume(coroutine.create(function()
if v.PlayerGui:FindFirstChild("Spinny")~= nil then
v.PlayerGui:FindFirstChild("Spinny"):destroy()
end
local scrg = Instance.new("ScreenGui",v.PlayerGui)
scrg.Name = "Spinny"
local frm = Instance.new("Frame",scrg)
frm.BackgroundTransparency = 0.25
frm.BackgroundColor3 = color
frm.BorderSizePixel = 0
frm.Rotation = 45
frm.Size = UDim2.new(3,0,0,100)
frm.Position = UDim2.new(-4,0,0,0)
local frm2 = frm:Clone()
frm2.Parent = scrg
frm2.BackgroundColor3 = color2
frm2.Position = UDim2.new(-4.05,0,0,0)
local imlb = Instance.new("ImageLabel",scrg)
imlb.BackgroundTransparency = 1
imlb.BackgroundColor3 = Color3.new(0,0,0)
imlb.Image = "rbxassetid://2344851144"
imlb.Size = UDim2.new(0,750,0,750)
imlb.ImageColor3 = color2
imlb.ImageTransparency = 0.25
imlb.Position = UDim2.new(-2.5,0,-2.5,0)
local imlb2 = imlb:Clone()
imlb2.Image = "rbxassetid://2325939897"
imlb2.Size = UDim2.new(1,0,1,0)
imlb2.ImageColor3 = color
imlb2.ImageTransparency = 0
imlb2.Position = UDim2.new(0,0,0,0)
local imlb3 = imlb:Clone()
imlb3.Image = "rbxassetid://2344830904"
imlb3.Size = UDim2.new(1,0,1,0)
imlb3.ImageColor3 = color2
imlb3.ImageTransparency = 0
imlb3.Position = UDim2.new(0,0,0,0)
local imlb4 = imlb:Clone()
imlb4.Image = "rbxassetid://2344870656"
imlb4.Size = UDim2.new(3,0,3,0)
imlb4.ImageColor3 = Color3.new(1,1,1)
imlb4.ImageTransparency = 0
imlb4.Position = UDim2.new(-1,0,-1,0)
local imlb5 = imlb:Clone()
imlb5.Image = "rbxassetid://2344870656"
imlb5.Size = UDim2.new(10,0,10,0)
imlb5.ImageColor3 = color2
imlb5.ImageTransparency = 0
imlb5.Position = UDim2.new(-4.5,0,-4.5,0)
imlb2.Parent = imlb
imlb3.Parent = imlb
imlb4.Parent = imlb
imlb5.Parent = imlb
local txtlb2 = Instance.new("TextLabel",imlb)
txtlb2.Text = text
txtlb2.Font = represfont
txtlb2.TextColor3 = color
txtlb2.TextStrokeTransparency = 0
txtlb2.BackgroundTransparency = 1
txtlb2.TextStrokeColor3 = color2
txtlb2.TextScaled = true
txtlb2.Size = UDim2.new(1,0,1,0)
txtlb2.Position = UDim2.new(0,0,0,0)
local fvalen = 0.55
local fval = -0.49
coroutine.resume(coroutine.create(function()
while true do
swait()
if chaosmode == true then
txtlb2.Rotation = math.random(-1,1)
imlb.Position = imlb.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
txtlb2.Position = txtlb2.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
imlb.ImageColor3 = BrickColor.random().Color
txtlb2.TextStrokeColor3 = BrickColor.random().Color
end
end
end))
coroutine.resume(coroutine.create(function()
while true do
swait()
if scrg.Parent ~= nil then
	fvalen = fvalen - 0.0001
elseif scrg.Parent == nil then
break
end
end
end))
local flol = -5
local flil = 1.6
coroutine.resume(coroutine.create(function()
	for i = 0, 49 do
		swait()
		flol = flol + 0.125
		flil = flil - 0.1
		frm.Size = frm.Size + UDim2.new(0.1,0,0,0)
		frm.Rotation = frm.Rotation - 0.25
		frm2.Size = frm2.Size + UDim2.new(0.1,0,0,0)
		frm2.Rotation = frm.Rotation + 0.325
		imlb3.Rotation = imlb3.Rotation - 10
		imlb2.Rotation = imlb.Rotation + 7.5
		imlb.Rotation = imlb.Rotation + 5
		txtlb2.Rotation = txtlb2.Rotation - 5.125
		imlb.Position = imlb.Position + UDim2.new(0.05125,0,0.04775,0)
	end
	for i = 0, 99 do
		swait()
		fval = fval + 0.05
		flol = flol + 0.005
		frm.Size = frm.Size + UDim2.new(0.005,0,0,0)
		frm.Rotation = frm.Rotation - 0.075
		frm2.Size = frm2.Size + UDim2.new(0.005,0,0,0)
		frm2.Rotation = frm2.Rotation + 0.125
		imlb3.Rotation = imlb3.Rotation - 2
		imlb2.Rotation = imlb.Rotation + 1.5
		imlb.Rotation = imlb.Rotation + 1
		txtlb2.Rotation = txtlb2.Rotation - 1.125
		imlb.Position = imlb.Position + UDim2.new(0.0015,0,0.00075,0)
	end
local valinc = 0
local vinc2 = 1
for i = 0, 99 do
swait()
vinc2 = vinc2 + 0.25
valinc = valinc + 0.0001
flol = flol + valinc
flil = flil + valinc
txtlb2.Rotation = txtlb2.Rotation - 1.125*vinc2
imlb3.Rotation = imlb3.Rotation - 2*vinc2
imlb.Rotation = imlb.Rotation + 1*vinc2
imlb.Position = imlb.Position + UDim2.new(0.0015*vinc2,0,0.0005*vinc2,0)
frm.Size = frm.Size + UDim2.new(0.005*vinc2,0,0,0)
frm.Rotation = frm.Rotation + 0.1*vinc2
frm2.Size = frm2.Size + UDim2.new(0.005*vinc2,0,0,0)
frm2.Rotation = frm2.Rotation + 0.225*vinc2
frm2.BackgroundTransparency = frm2.BackgroundTransparency + 0.0075
frm.BackgroundTransparency = frm.BackgroundTransparency + 0.0075
imlb.ImageTransparency = imlb.ImageTransparency + 0.005
imlb2.ImageTransparency = imlb2.ImageTransparency + 0.01
imlb3.ImageTransparency = imlb3.ImageTransparency + 0.01
imlb4.ImageTransparency = imlb4.ImageTransparency + 0.01
imlb5.ImageTransparency = imlb4.ImageTransparency + 0.01
txtlb2.TextStrokeTransparency = txtlb2.TextStrokeTransparency + 0.01
txtlb2.TextTransparency = txtlb2.TextTransparency + 0.01
end
scrg:Destroy()
end))
end))
end
end
end


--save shoulders 
RSH, LSH=nil, nil 
--welds 
RW, LW=Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
TorsoColor=Torso.BrickColor
function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
ch=Character
RSH=ch.Torso["Right Shoulder"] 
LSH=ch.Torso["Left Shoulder"] 
-- 
RSH.Parent=nil 
LSH.Parent=nil 
-- 
RW.Name="Right Shoulder"
RW.Part0=ch.Torso 
RW.C0=cf(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1=cf(0, 0.5, 0) 
RW.Part1=ch["Right Arm"] 
RW.Parent=ch.Torso 
-- 
LW.Name="Left Shoulder"
LW.Part0=ch.Torso 
LW.C0=cf(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1=cf(0, 0.5, 0) 
LW.Part1=ch["Left Arm"] 
LW.Parent=ch.Torso 

local Stats=Instance.new("BoolValue")
Stats.Name="Stats"
Stats.Parent=Character
local Atk=Instance.new("NumberValue")
Atk.Name="Damage"
Atk.Parent=Stats
Atk.Value=1
local Def=Instance.new("NumberValue")
Def.Name="Defense"
Def.Parent=Stats
Def.Value=1
local Speed=Instance.new("NumberValue")
Speed.Name="Speed"
Speed.Parent=Stats
Speed.Value=1
local Mvmt=Instance.new("NumberValue")
Mvmt.Name="Movement"
Mvmt.Parent=Stats
Mvmt.Value=1

local donum=0
 

function part(formfactor,parent,reflectance,transparency,brickcolor,name,size)
local fp=it("Part")
fp.formFactor=formfactor 
fp.Parent=parent
fp.Reflectance=reflectance
fp.Transparency=transparency
fp.CanCollide=false 
fp.Locked=true
fp.BrickColor=brickcolor
fp.Name=name
fp.Size=size
fp.Position=Torso.Position 
NoOutline(fp)
fp.Material="SmoothPlastic"
fp:BreakJoints()
return fp 
end 
 
function mesh(Mesh,part,meshtype,meshid,offset,scale)
local mesh=it(Mesh) 
mesh.Parent=part
if Mesh=="SpecialMesh" then
mesh.MeshType=meshtype
if meshid~="nil" then
mesh.MeshId="http://www.roblox.com/asset/?id="..meshid
end
end
mesh.Offset=offset
mesh.Scale=scale
return mesh
end
 
function weld(parent,part0,part1,c0)
local weld=it("Weld") 
weld.Parent=parent
weld.Part0=part0 
weld.Part1=part1 
weld.C0=c0
return weld
end
 
local Color1=Torso.BrickColor

local bodvel=Instance.new("BodyVelocity")
local bg=Instance.new("BodyGyro")

--------- SazEreno's Artificial HB --------------
ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "ArtificialHB"

script:WaitForChild("ArtificialHB")
Frame_Speed = 1 / 60
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

------------------
function swait(num)
if num == 0 or num == nil then
		ArtificialHB.Event:wait()
	else
		for i = 1, num do
			ArtificialHB.Event:wait()
		end
	end
end
-------- RAINBOW LEAVE IT TO ME
local r = 255
local g = 0
local b = 0
coroutine.resume(coroutine.create(function()
while wait() do
	for i = 0, 254/5 do
		swait()
		g = g + 5
	end
	for i = 0, 254/5 do
		swait()
		r = r - 5
	end
	for i = 0, 254/5 do
		swait()
		b = b + 5
	end
	for i = 0, 254/5 do
		swait()
		g = g - 5
	end
	for i = 0, 254/5 do
		swait()
		r = r + 5
	end
	for i = 0, 254/5 do
		swait()
		b = b - 5
	end
end
end))
 
 
so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
swait() 
sou:play() 
game:GetService("Debris"):AddItem(sou,6)
end))
end
 
function clerp(a,b,t) 
local qa = {QuaternionFromCFrame(a)}
local qb = {QuaternionFromCFrame(b)} 
local ax, ay, az = a.x, a.y, a.z 
local bx, by, bz = b.x, b.y, b.z
local _t = 1-t
return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end 
 
function QuaternionFromCFrame(cf) 
local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
local trace = m00 + m11 + m22 
if trace > 0 then 
local s = math.sqrt(1 + trace) 
local recip = 0.5/s 
return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
else 
local i = 0 
if m11 > m00 then
i = 1
end
if m22 > (i == 0 and m00 or m11) then 
i = 2 
end 
if i == 0 then 
local s = math.sqrt(m00-m11-m22+1) 
local recip = 0.5/s 
return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
elseif i == 1 then 
local s = math.sqrt(m11-m22-m00+1) 
local recip = 0.5/s 
return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
elseif i == 2 then 
local s = math.sqrt(m22-m00-m11+1) 
local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
end 
end 
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w) 
local xs, ys, zs = x + x, y + y, z + z 
local wx, wy, wz = w*xs, w*ys, w*zs 
local xx = x*xs 
local xy = x*ys 
local xz = x*zs 
local yy = y*ys 
local yz = y*zs 
local zz = z*zs 
return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end
 
function QuaternionSlerp(a, b, t) 
local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
local startInterp, finishInterp; 
if cosTheta >= 0.0001 then 
if (1 - cosTheta) > 0.0001 then 
local theta = math.acos(cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((1-t)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta  
else 
startInterp = 1-t 
finishInterp = t 
end 
else 
if (1+cosTheta) > 0.0001 then 
local theta = math.acos(-cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((t-1)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta 
else 
startInterp = t-1 
finishInterp = t 
end 
end 
return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
end

local function CFrameFromTopBack(at, top, back)
local right = top:Cross(back)
return CFrame.new(at.x, at.y, at.z,
right.x, top.x, back.x,
right.y, top.y, back.y,
right.z, top.z, back.z)
end

function Triangle(a, b, c)
local edg1 = (c-a):Dot((b-a).unit)
local edg2 = (a-b):Dot((c-b).unit)
local edg3 = (b-c):Dot((a-c).unit)
if edg1 <= (b-a).magnitude and edg1 >= 0 then
a, b, c = a, b, c
elseif edg2 <= (c-b).magnitude and edg2 >= 0 then
a, b, c = b, c, a
elseif edg3 <= (a-c).magnitude and edg3 >= 0 then
a, b, c = c, a, b
else
assert(false, "unreachable")
end
 
local len1 = (c-a):Dot((b-a).unit)
local len2 = (b-a).magnitude - len1
local width = (a + (b-a).unit*len1 - c).magnitude
 
local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)
 
local list = {}
 
if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new("Really red")
w1.Transparency = 0
w1.Reflectance = 0
w1.Material = "SmoothPlastic"
w1.CanCollide = false
local l1 = Instance.new("PointLight",w1)
l1.Color = Color3.new(170,0,0)
NoOutline(w1)
local sz = Vector3.new(0.2, width, len1)
w1.Size = sz
local sp = Instance.new("SpecialMesh",w1)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w1.Size
w1:BreakJoints()
w1.Anchored = true
w1.Parent = workspace
w1.Transparency = 0.7
table.insert(Effects,{w1,"Disappear",.01})
w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
table.insert(list,w1)
end
 
if len2 > 0.01 then
local w2 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w2,5)
w2.Material = "SmoothPlastic"
w2.FormFactor = 'Custom'
w2.BrickColor = BrickColor.new("Really red")
w2.Transparency = 0
w2.Reflectance = 0
w2.Material = "SmoothPlastic"
w2.CanCollide = false
local l2 = Instance.new("PointLight",w2)
l2.Color = Color3.new(170,0,0)
NoOutline(w2)
local sz = Vector3.new(0.2, width, len2)
w2.Size = sz
local sp = Instance.new("SpecialMesh",w2)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w2.Size
w2:BreakJoints()
w2.Anchored = true
w2.Parent = workspace
w2.Transparency = 0.7
table.insert(Effects,{w2,"Disappear",.01})
w2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
table.insert(list,w2)
end
return unpack(list)
end
 

function Damagefunc(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
FDless.fling(hit.Parent)
end
function MagniDamage(Part, magni, mindam, maxdam, knock, Type)
  for _, c in pairs(workspace:children()) do
    local hum = c:findFirstChildOfClass("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Head")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if magni >= mag and c.Name ~= plr.Name then
          Damagefunc(head, head, mindam, maxdam, knock, Type, RootPart, 0.1, "rbxassetid://231917784", 1)
        end
      end
    end
  end
end

function MagniDamageWithEffect(Part, magni, mindam, maxdam, knock, Type)
  for _, c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if magni >= mag and c.Name ~= plr.Name then
	MagicBlock(MAINRUINCOLOR,head.CFrame,5,5,5,1,1,1,0.05)
          Damagefunc(head, head, mindam, maxdam, knock, Type, RootPart, 0.1, "rbxassetid://231917784", 1)
        end
      end
    end
  end
end

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

function SkullEffect(brickcolor,cframe,x1,y1,z1,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=4770583",vt(0,0,0),vt(x1,y1,z1))
--http://www.roblox.com/asset/?id=4770560
game:GetService("Debris"):AddItem(prt,2)
CF=prt.CFrame
coroutine.resume(coroutine.create(function(Part,Mesh,TehCF) 
for i=0,1,0.2 do
wait()
Part.CFrame=CF*cf(0,0,-0.4)
end
for i=0,1,delay do
wait()
--Part.CFrame=CF*cf((math.random(-1,0)+math.random())/5,(math.random(-1,0)+math.random())/5,(math.random(-1,0)+math.random())/5)
Mesh.Scale=Mesh.Scale
end
for i=0,1,0.1 do
wait()
Part.Transparency=i
end
Part.Parent=nil
end),prt,msh,CF)
end
 
function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,char,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
prt.CFrame=prt.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
swait()
Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end

function MagicBlockSteady(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay,rottype)
local prt=part(3,char,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
	local rtype = rottype
for i=0,1,delay do
swait()
if rtype == 1 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,0.1)
elseif rtype == 2 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,-0.1)
end
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end

function MagicSphere(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,char,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
prt.CFrame=prt.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end

function MagicBlockSteady(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay,rottype)
local prt=part(3,char,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
	local rtype = rottype
for i=0,1,delay do
swait()
if rtype == 1 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,0.1)
elseif rtype == 2 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,-0.1)
end
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end

function MagicShock(brickcolor,cframe,x1,y1,x3,y3,delay,rottype)
local prt=part(3,char,1,1,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
local dec = decal(prt.Color,"http://www.roblox.com/asset/?id=874580939","Front",prt)
local dec2 = decal(prt.Color,"http://www.roblox.com/asset/?id=874580939","Front",prt)
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,0.01))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
	local rtype = rottype
for i=0,1,delay do
swait()
if rtype == 1 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,0.1)
elseif rtype == 2 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,-0.1)
end
dec.Transparency=i
dec2.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,0)
end
Part.Parent=nil
end),prt,msh)
end

function MagicShockAlt(brickcolor,cframe,x1,y1,x3,y3,delay,rottype)
local prt=part(3,char,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,0.01))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
	local rtype = rottype
for i=0,1,delay do
swait()
if rtype == 1 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,0.1)
elseif rtype == 2 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,-0.1)
end
prt.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,0)
end
Part.Parent=nil
end),prt,msh)
end

function MagicShockAltCircle(brickcolor,cframe,x1,z1,x3,z3,delay,rottype)
local prt=part(3,char,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
	local rtype = rottype
for i=0,1,delay do
swait()
if rtype == 1 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0.1,0)
elseif rtype == 2 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,-0.1,0)
end
prt.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,0,z3)
end
Part.Parent=nil
end),prt,msh)
end

function MagicShockTrailAlt(brickcolor,cframe,x1,y1,z1,x3,y3,delay,rottype)
local prt=part(3,char,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
	local rtype = rottype
for i=0,1,delay do
swait()
if rtype == 1 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,0.1)
elseif rtype == 2 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,-0.1)
end
prt.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,0)
end
Part.Parent=nil
end),prt,msh)
end

function MagicShockTrailAlt2(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay,rottype)
local prt=part(3,char,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
	local rtype = rottype
for i=0,1,delay do
swait()
if rtype == 1 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,0.1)
elseif rtype == 2 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,-0.1)
end
prt.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function MagicBlock2(brickcolor,cframe,Parent,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,char,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=false
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
local wld=weld(prt,prt,Parent,cframe)
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh,Weld) 
for i=0,1,delay do
wait()
Weld.C0=euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))*cframe
--Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,wld)
end
 
function MagicBlock3(brickcolor,cframe,Parent,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=false
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
local wld=weld(prt,prt,Parent,euler(0,0,0)*cf(0,0,0))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh,Weld) 
for i=0,1,delay do
wait()
Weld.C0=euler(i*20,0,0)
--Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,wld)
end
 
function MagicCircle2(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("CylinderMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
local prt2=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt2.Anchored=true
prt2.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh2=mesh("SpecialMesh",prt2,"Sphere","",vt(0,0,0),vt(0.5,0.5,0.5))
game:GetService("Debris"):AddItem(prt2,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.1 do
wait()
Part.CFrame=Part.CFrame*cf(0,0.5,0)
end
Part.Parent=nil
end),prt2,msh2)
end
for i=0,1,delay*2 do
wait()
Part.CFrame=Part.CFrame
Mesh.Scale=vt((x1+x3)-(x1+x3)*i,(y1+y3)-(y1+y3)*i,(z1+z3)-(z1+z3)*i)
end
Part.Parent=nil
end),prt,msh)
end
 
function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function BreakEffect(brickcolor,cframe,x1,y1,z1)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,CF,Numbb,randnumb) 
CF=Part.CFrame
Numbb=0
randnumb=math.random()/10
rand1=math.random()/10
for i=0,1,rand1 do
wait()
CF=CF*cf(0,math.random()/2,0)
--Part.CFrame=Part.CFrame*euler(0.5,0,0)*cf(0,1,0)
Part.CFrame=CF*euler(Numbb,0,0)
Part.Transparency=i
Numbb=Numbb+randnumb
end
Part.Parent=nil
end),prt,CF,Numbb,randnumb)
end
 
function MagicWaveThing(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=1051557",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame*euler(0,0.7,0)
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function WaveEffect(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=20329976",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame*cf(0,y3/2,0)
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function StravEffect(brickcolor,cframe,x,y,z,x1,y1,z1,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*cf(x,y,z)
msh=mesh("SpecialMesh",prt,"FileMesh","rbxassetid://168892363",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh,ex,why,zee) 
local num=math.random()
local num2=math.random(-3,2)+math.random()
local numm=0
for i=0,1,delay*2 do
swait()
Part.CFrame=cframe*euler(0,numm*num*10,0)*cf(ex,why,zee)*cf(-i*10,num2,0)
Part.Transparency=i
numm=numm+0.01
end
Part.Parent=nil
Mesh.Parent=nil
end),prt,msh,x,y,z)
end

function dmgstart(dmg,what)
	hitcon = what.Touched:connect(function(hit)
		local hum = hit.Parent:FindFirstChild("Humanoid")
		if hum and not hum:IsDescendantOf(Character) then
			hum:TakeDamage(dmg)
		end
	end)
end

function dmgstop()
	hitcon:disconnect()
end

function Cloak()
Face.Parent=nil
cloaked=true
        for _,v in pairs(Torso.Parent:children()) do
                if v.className=="Part" and v.Name~="HumanoidRootPart" then
                coroutine.resume(coroutine.create(function() 
                for i=0,1,0.2 do
                wait()
                v.Transparency=i
                end
                v.Transparency=1
                end))
                end
                if v.className=="Hat" then
                hatp=v.Handle
                coroutine.resume(coroutine.create(function(derp) 
                for i=0,1,0.2 do
                wait()
                derp.Transparency=i
                end
                derp.Transparency=1
                end),hatp)
                end
        end
        for _,v in pairs(m:children()) do
                if v.className=="Part" then
                coroutine.resume(coroutine.create(function() 
                for i=0,1,0.2 do
                wait()
                v.Transparency=i
                end
                v.Transparency=1
                end))
                end
        end
end
 
function UnCloak()
so("http://roblox.com/asset/?id=2767090",Torso,1,1.1) 
Face.Parent=Head 
cloaked=false
        for _,v in pairs(Torso.Parent:children()) do
                if v.className=="Part" and v.Name~="HumanoidRootPart" then
                coroutine.resume(coroutine.create(function() 
                for i=0,1,0.1 do
                wait()
                v.Transparency=v.Transparency-0.1
                end
                v.Transparency=0
                end))
                end
                if v.className=="Hat" then
                hatp=v.Handle
                coroutine.resume(coroutine.create(function(derp) 
                for i=0,1,0.1 do
                wait()
                derp.Transparency=derp.Transparency-0.1
                end
                derp.Transparency=0
                end),hatp)
                end
        end
        for _,v in pairs(m:children()) do
                if v.className=="Part" and v.Name~="hitbox" and v.Name~='tip' then
                coroutine.resume(coroutine.create(function() 
                for i=0,1,0.1 do
                wait()
                v.Transparency=v.Transparency-0.1
                end
                v.Transparency=0
                end))
                v.Transparency=0
                end
        end
end

local origcolor = BrickColor.new("Pastel light blue")
---- This section of explosions.

----


function ring(type,pos,scale,value)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = origcolor
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
rngm.Scale = scale
local scaler2 = 1
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value
end
rng.Transparency = rng.Transparency + 0.01
rngm.Scale = rngm.Scale + Vector3.new(scaler2, scaler2, 0)
end
rng:Destroy()
end))
end


function wave(type,pos,scale,value)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = origcolor
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshId = "http://www.roblox.com/asset/?id=20329976"
rngm.Scale = scale
local scaler2 = 1
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value
end
rng.Transparency = rng.Transparency + 0.01
rngm.Scale = rngm.Scale + Vector3.new(scaler2, scaler2, scaler2)
end
rng:Destroy()
end))
end

function wind(type,pos,scale,value,speed)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = origcolor
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshId = "http://www.roblox.com/asset/?id=1051557"
rngm.Scale = scale
local scaler2 = 1
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value
end
rng.CFrame = rng.CFrame*CFrame.Angles(0,0.025*speed,0)
rng.Transparency = rng.Transparency + 0.01
rngm.Scale = rngm.Scale + Vector3.new(scaler2, scaler2, scaler2)
end
rng:Destroy()
end))
end

function groundwind(type,pos,scale,value,speed)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = origcolor
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshId = "http://www.roblox.com/asset/?id=1051557"
rngm.Scale = scale
local scaler2 = 1
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value
end
rng.CFrame = rng.CFrame*CFrame.Angles(0,0.025*speed,0)
rng.Transparency = rng.Transparency + 0.01
rngm.Scale = rngm.Scale + Vector3.new(scaler2, scaler2/5, scaler2)
end
rng:Destroy()
end))
end

function CameraManager()
  if TwoD and not CamInterrupt then
    if Humanoid.Health > 0 then
      Camera.CameraSubject = Humanoid
      Camera.CameraType = "Scriptable"
      Humanoid.AutoRotate = false
      if Booleans.GyroUse then
        Directer.MaxTorque = Vec3(0, 2, 0)
      else
        Directer.MaxTorque = Vec3(0, 0, 0)
      end
      if TargetInfo[1] ~= nil and TargetInfo[2] ~= nil then
        if Booleans.CamFollow then
          CPart.CFrame = cFrame(RootPart.Position, Vec3(TargetInfo[1].Position.X, RootPart.Position.Y, TargetInfo[1].Position.Z))
          Directer.CFrame = cFrame((RootPart.CFrame * cFrame(0, 0, 10)).p, TargetInfo[1].Position)
        else
          CPart.Position = RootPart.Position
        end
      else
        local ahead = (RootPart.CFrame * cFrame(0, 0, -3)).p
        CPart.CFrame = cFrame(RootPart.Position, Vec3(ahead.X, RootPart.Position.Y, ahead.Z))
      end
      Camera.CFrame = lerp(Camera.CFrame, CPart.CFrame * cFrame(25, 3, 0) * Euler(0, math.radian(90), 0), 0.2)
    else
      Camera.CameraSubject = Humanoid
      Camera.CameraType = "Custom"

    end
  end
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

function ring(type,pos,scale,value)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = origcolor
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
rngm.Scale = scale
local scaler2 = 1
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value
end
rng.Transparency = rng.Transparency + 0.01
rngm.Scale = rngm.Scale + Vector3.new(scaler2, scaler2, 0)
end
rng:Destroy()
end))
end


function wave(type,pos,scale,value)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = origcolor
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshId = "http://www.roblox.com/asset/?id=20329976"
rngm.Scale = scale
local scaler2 = 1
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value
end
rng.Transparency = rng.Transparency + 0.01
rngm.Scale = rngm.Scale + Vector3.new(scaler2, scaler2, scaler2)
end
rng:Destroy()
end))
end

function CastRay(startPos,endPos,range,ignoreList)
	local ray = Ray.new(startPos,(endPos-startPos).unit*range)
	local part,pos,norm = workspace:FindPartOnRayWithIgnoreList(ray,ignoreList or {char},false,true)
	return part,pos,norm,(pos and (startPos-pos).magnitude)
end

function Part(parent,color,material,size,cframe,anchored,cancollide)
	local part = Instance.new("Part")
	part.Parent = parent or char
	part[typeof(color) == 'BrickColor' and 'BrickColor' or 'Color'] = color or Color3.new(0,0,0)
	part.Material = material or Enum.Material.SmoothPlastic
	part.TopSurface,part.BottomSurface=10,10
	part.Size = size or Vector3.new(1,1,1)
	part.CFrame = cframe or cf(0,0,0)
	part.CanCollide = cancollide or false
	part.Anchored = anchored or false
	return part
end

function Mesh(parent,meshtype,meshid,textid,scale,offset)
	local part = Instance.new("SpecialMesh")
	part.MeshId = meshid or ""
	part.TextureId = textid or ""
	part.Scale = scale or Vector3.new(1,1,1)
	part.Offset = offset or Vector3.new(0,0,0)
	part.MeshType = meshtype or Enum.MeshType.Sphere
	part.Parent = parent
	return part
end

local fromaxisangle = function(x, y, z) -- credit to phantom forces devs
	if not y then
		x, y, z = x.x, x.y, x.z
	end
	local m = (x * x + y * y + z * z) ^ 0.5
	if m > 1.0E-5 then
		local si = math.sin(m / 2) / m
		return CFrame.new(0, 0, 0, si * x, si * y, si * z, math.cos(m / 2))
	else
		return CFrame.new()
	end
end

function fakePhysics(elapsed,cframe,velocity,rotation,acceleration)
	local pos = cframe.p
	local matrix = cframe-pos
	return fromaxisangle(elapsed*rotation)*matrix+pos+elapsed*velocity+elapsed*elapsed*acceleration
end

function Projectile(data)
	local Size = data.Size or 1;
	local Origin = data.Origin or Torso.CFrame;
	local Velocity = data.Velocity or Vector3.new(0,100,0);
	local Gravity = data.Gravity or workspace.Gravity;
	local Color = data.Color or Color3.new(.7,0,0);
	local Lifetime = data.Lifetime or 1;
	local Material = data.Material or Enum.Material.Glass;
	local Ignore = data.Ignorelist or {char};
    local MeshData = data.Mesh or {};
	local HitFunc = data.Hit;
	local ShouldCollide = data.CheckCollision;
    local Update = data.Update;
    local Initialize = data.Initialize;

	local drop = Part(char,Color,Material,typeof(Size)=='number' and Vector3.new(Size,Size,Size) or typeof(Size)=='Vector3' and Size or Vector3.new(1,1,1),Origin,true,false)
    local dropM = Mesh(drop,MeshData.MeshType,MeshData.MeshId,MeshData.TextureId,MeshData.Scale,MeshData.Offset)
    if(Initialize)then
        Initialize(drop,dropM)
    end
	local startTick = tick();
	coroutine.wrap(function()
		while true do
			local elapsed = tick()-startTick
			if(elapsed>Lifetime)then
				drop:destroy();
				break
			end
			local newCF = fakePhysics(elapsed,Origin,Velocity,Vector3.new(),Vector3.new(0,-Gravity,0))
			local dist = (drop.Position-newCF.p).magnitude
			local hit,pos,norm = CastRay(drop.Position,newCF.p,dist,Ignore)
			if(hit and (not ShouldCollide or ShouldCollide(hit)))then
				drop:destroy()
				if(HitFunc)then HitFunc(hit,pos,norm,data) end
				break
			else
				if(hit)then table.insert(Ignore,hit) end
				drop.CFrame = newCF
			end
            if(Update)then
                Update(drop)
            end
			swait()
		end
	end)()
end

function sphere(bonuspeed,type,pos,scale,value,color)
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
        rngm.MeshType = "Sphere"
rngm.Scale = scale
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
local scaler2 = 1
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
end
if chaosmode == true then
rng.BrickColor = BrickColor.random()
end
rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, scaler2*bonuspeed)
end
rng:Destroy()
end))
end

function sphere2(bonuspeed,type,pos,scale,value,value2,value3,color,mat)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = color
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = (typeof(mat)=='EnumItem' or typeof(mat)=='string') and mat or "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Sphere"
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
rngm.Scale = scale
local scaler2 = 1
local scaler2b = 1
local scaler2c = 1
if type == "Add" then
scaler2 = 1*value
scaler2b = 1*value2
scaler2c = 1*value3
elseif type == "Divide" then
scaler2 = 1/value
scaler2b = 1/value2
scaler2c = 1/value3
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if chaosmode == true then
rng.BrickColor = BrickColor.random()
end
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
scaler2b = scaler2b - 0.01*value/bonuspeed
scaler2c = scaler2c - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
scaler2b = scaler2b - 0.01/value*bonuspeed
scaler2c = scaler2c - 0.01/value*bonuspeed
end
rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2b*bonuspeed, scaler2c*bonuspeed)
end
rng:Destroy()
end))
end

function slash(bonuspeed,rotspeed,rotatingop,typeofshape,type,typeoftrans,pos,scale,value,color)
local type = type
local rotenable = rotatingop
local rng = Instance.new("Part", char)
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
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if typeofshape == "Normal" then
rngm.MeshId = "rbxassetid://662586858"
elseif typeofshape == "Round" then
rngm.MeshId = "rbxassetid://662585058"
end
rngm.Scale = scale
local scaler2 = 1/10
if type == "Add" then
scaler2 = 1*value/10
elseif type == "Divide" then
scaler2 = 1/value/10
end
local randomrot = math.random(1,2)
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed/10
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed/10
end
if rotenable == true then
if randomrot == 1 then
rng.CFrame = rng.CFrame*CFrame.Angles(0,math.rad(rotspeed*bonuspeed/2),0)
elseif randomrot == 2 then
rng.CFrame = rng.CFrame*CFrame.Angles(0,math.rad(-rotspeed*bonuspeed/2),0)
end
end
if typeoftrans == "Out" then
rng.Transparency = rng.Transparency + 0.01*bonuspeed
elseif typeoftrans == "In" then
rng.Transparency = rng.Transparency - 0.01*bonuspeed
end
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed/10, 0, scaler2*bonuspeed/10)
end
rng:Destroy()
end))
end
 


function PixelBlock(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos,mat)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = color
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = mat or "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Brick"
rngm.Scale = vt(x1,y1,z1)
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
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
end
if chaosmode == true then
rng.BrickColor = BrickColor.random()
end
speeder = speeder - 0.01*FastSpeed*bonuspeed/10
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
--rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale - Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, scaler2*bonuspeed)
end
rng:Destroy()
end))
end

function SelectionBlock(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos,pulse)
local type = type
local rng = script.SelectionEffect:Clone()
local outline = rng.SelectionBox 
		rng.Parent = char
        rng.Anchored = true
        outline.Color3 = color
		outline.Transparency = 0
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Size = Vector3.new(1, 1, 1)
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Brick"
rngm.Scale = vt(x1,y1,z1)
if rainbowmode == true then
outline.Color3  = Color3.new(r/255,g/255,b/255)
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
if rainbowmode == true then
outline.Color3  = Color3.new(r/255,g/255,b/255)
end
if type == "Pulse" then
scaler2 = 1*value + pulse * math.cos(sine/5)
elseif type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
end
if chaosmode == true then
outline.Color3  = BrickColor.random().Color
end
speeder = speeder - 0.01*FastSpeed*bonuspeed/10
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
--rng.Transparency = rng.Transparency + 0.01*bonuspeed
outline.Transparency = outline.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale - Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, scaler2*bonuspeed)
end
rng:Destroy()
end))
end

function SphereX(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos)
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
        rngm.MeshType = "Sphere"
rngm.Scale = vt(x1,y1,z1)
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
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
end
if chaosmode == true then
rng.BrickColor = BrickColor.random()
end
speeder = speeder - 0.01*FastSpeed*bonuspeed/10
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale - Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, scaler2*bonuspeed)
end
rng:Destroy()
end))
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
rngm.Scale = vt(x1,y1,z1)
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
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
end
if chaosmode == true then
rng.BrickColor = BrickColor.random()
end
speeder = speeder - 0.01*FastSpeed*bonuspeed/10
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale - Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, scaler2*bonuspeed)
end
rng:Destroy()
end))
end

function PixelBlockNeg(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos)
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
rngm.Scale = vt(x1,y1,z1)
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
local scaler2 = 0
local speeder = FastSpeed/10
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
end
if chaosmode == true then
rng.BrickColor = BrickColor.random()
end
speeder = speeder + 0.01*FastSpeed*bonuspeed/10
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
--rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale - Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, scaler2*bonuspeed)
end
rng:Destroy()
end))
end

function block(bonuspeed,type,pos,scale,value,value2,value3,color,color3)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = color
        rng.Color = color3
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
        rngm.MeshType = "Brick"
rngm.Scale = scale
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
local scaler2 = 1
local scaler2b = 1
local scaler2c = 1
if type == "Add" then
scaler2 = 1*value
scaler2b = 1*value2
scaler2c = 1*value3
elseif type == "Divide" then
scaler2 = 1/value
scaler2b = 1/value2
scaler2c = 1/value3
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
scaler2b = scaler2b - 0.01*value/bonuspeed
scaler2c = scaler2c - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
scaler2b = scaler2b - 0.01/value*bonuspeed
scaler2c = scaler2c - 0.01/value*bonuspeed
end
rng.CFrame = rng.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2b*bonuspeed, scaler2c*bonuspeed)
end
rng:Destroy()
end))
end

function sphereMK(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos)
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
        rngm.MeshType = "Sphere"
rngm.Scale = vt(x1,y1,z1)
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
local scaler2 = 1
local speeder = FastSpeed
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
end
if chaosmode == true then
rng.BrickColor = BrickColor.random()
end
speeder = speeder - 0.01*FastSpeed*bonuspeed
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, 0)
end
rng:Destroy()
end))
end


function sphereMKCharge(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos)
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
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Sphere"
rngm.Scale = vt(x1,y1,z1)
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
local scaler2 = 1
local speeder = FastSpeed
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
end
if chaosmode == true then
rng.BrickColor = BrickColor.random()
end
speeder = speeder - 0.01*FastSpeed*bonuspeed
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
rng.Transparency = rng.Transparency - 0.01*bonuspeed
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, 0)
end
rng:Destroy()
end))
end

function dmg(dude)
	FDless.fling(dude)
end


function FindNearestHead(Position, Distance, SinglePlayer)
	if SinglePlayer then
		return (SinglePlayer.Torso.CFrame.p - Position).magnitude < Distance
	end
	local List = {}
	for i, v in pairs(workspace:GetChildren()) do
		if v:IsA("Model") then
			if v:findFirstChild("Head") then
				if v ~= Character then
					if (v.Head.Position - Position).magnitude <= Distance then
						table.insert(List, v)
					end 
				end 
			end 
		end 
	end
	return List
end

function FaceMouse()
  Cam = workspace.CurrentCamera
  return {
    CFrame.new(char.Torso.Position, Vector3.new(mouse.Hit.p.x, char.Torso.Position.y, mouse.Hit.p.z)),
    Vector3.new(mouse.Hit.p.x, mouse.Hit.p.y, mouse.Hit.p.z)
  }
end

function FaceMouse2()
  Cam = workspace.CurrentCamera
  return {
    CFrame.new(char.Torso.Position, Vector3.new(mouse.Hit.p.x, mouse.Hit.p.y, mouse.Hit.p.z)),
    Vector3.new(mouse.Hit.p.x, mouse.Hit.p.y, mouse.Hit.p.z)
  }
end

local ModeOfGlitch = 1
-- Functions are ready.
local storehumanoidWS = 16

function createBGCircle(size,parent,color)
local bgui = Instance.new("BillboardGui",parent)
bgui.Size = UDim2.new(size, 0, size, 0)
local imgc = Instance.new("ImageLabel",bgui)
imgc.BackgroundTransparency = 1
imgc.ImageTransparency = 0
imgc.Size = UDim2.new(1,0,1,0)
imgc.Image = "rbxassetid://997291547" --997291547,521073910
imgc.ImageColor3 = color
return bgui,imgc
end

function symbolizeBlink(guipar,size,img,color,bonussize,vol,pit,soundid,spar,rotationenabled,rotsp,delay)
local bgui,imgc = createBGCircle(size,guipar,color)
bgui.AlwaysOnTop = true
imgc.Image = "rbxassetid://" ..img
local rrot = math.random(1,2)
CFuncs["Sound"].Create("rbxassetid://" ..soundid, spar, vol,pit)
coroutine.resume(coroutine.create(function()
for i = 0, 24*delay do
swait()
if rotationenabled == true then
if rrot == 1 then
imgc.Rotation = imgc.Rotation + rotsp
elseif rrot == 2 then
imgc.Rotation = imgc.Rotation - rotsp
end
end
bgui.Size = bgui.Size + UDim2.new(1*bonussize/delay,0,1*bonussize/delay,0)
imgc.ImageTransparency = imgc.ImageTransparency + 0.04/delay
end
bgui:Destroy()
end))
end

function tbeam(col1,col2)
	local lookavec = 0 
	local mult = 1
local elocacenter = CreateParta(char,1,1,"SmoothPlastic",BrickColor.random())
elocacenter.Anchored = true
elocacenter.CFrame = root.CFrame
local eloca1 = CreateParta(elocacenter,1,1,"SmoothPlastic",BrickColor.random())
eloca1.Anchored = true
eloca1.CFrame = elocacenter.CFrame
local at1 = Instance.new("Attachment",eloca1)
at1.Position = vt(0,10,0)
local at2 = Instance.new("Attachment",eloca1)
at2.Position = vt(0,-10,0)
local trl = Instance.new('Trail',eloca1)
trl.Attachment0 = at1
trl.Attachment1 = at2
trl.Texture = "rbxassetid://1049219073"
trl.LightEmission = 1
trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
trl.Color = ColorSequence.new(col1.Color)
trl.Lifetime = 4
local eff = Instance.new("ParticleEmitter",eloca1)
eff.Texture = "rbxassetid://2273224484"
eff.LightEmission = 1
eff.Color = ColorSequence.new(col1.Color)
eff.Rate = 500000
eff.Lifetime = NumberRange.new(0.5,1)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,20,0),NumberSequenceKeypoint.new(0.2,2,0),NumberSequenceKeypoint.new(0.8,2,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.1,0,0),NumberSequenceKeypoint.new(0.8,0,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(20,250)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-50,50)
local eloca2 = eloca1:Clone()
eloca2.Parent = elocacenter
local eloca3 = CreateParta(elocacenter,1,1,"SmoothPlastic",BrickColor.random())
eloca3.Anchored = true
eloca3.CFrame = elocacenter.CFrame
local at1 = Instance.new("Attachment",eloca3)
at1.Position = vt(0,10,0)
local at2 = Instance.new("Attachment",eloca3)
at2.Position = vt(0,-10,0)
local trl = Instance.new('Trail',eloca3)
trl.Attachment0 = at1
trl.Attachment1 = at2
trl.Texture = "rbxassetid://1049219073"
trl.LightEmission = 1
trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
trl.Color = ColorSequence.new(col2.Color)
trl.Lifetime = 4
local eff = Instance.new("ParticleEmitter",eloca3)
eff.Texture = "rbxassetid://2273224484"
eff.LightEmission = 1
eff.Color = ColorSequence.new(col2.Color)
eff.Rate = 500000
eff.Lifetime = NumberRange.new(0.5,1)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,20,0),NumberSequenceKeypoint.new(0.2,2,0),NumberSequenceKeypoint.new(0.8,2,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.1,0,0),NumberSequenceKeypoint.new(0.8,0,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(20,250)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-50,50)
local eloca4 = eloca3:Clone()
eloca4.Parent = elocacenter
elocacenter.CFrame = root.CFrame
sphere2(6,"Add",root.CFrame*CFrame.Angles(0,0,0),vt(1,10000,1),0.9,7,0.9,col2)
sphere2(5,"Add",root.CFrame*CFrame.Angles(0,0,0),vt(1,10000,1),0.8,7,0.8,col1)
sphere2(4,"Add",root.CFrame*CFrame.Angles(0,0,0),vt(1,10000,1),0.6,7,0.6,col2)
sphere2(3,"Add",root.CFrame*CFrame.Angles(0,0,0),vt(1,10000,1),0.5,7,0.5,col1)
local effx = Instance.new("ParticleEmitter",root)
effx.Texture = "rbxassetid://144580273" -- 144580273 74564879
effx.LightEmission = 1
effx.Color = ColorSequence.new(col1.Color)
effx.Rate = 500000
effx.Lifetime = NumberRange.new(0.25,0.75)
effx.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,200,0)})
effx.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.1,0.5,0),NumberSequenceKeypoint.new(0.8,0,0),NumberSequenceKeypoint.new(1,1,0)})
effx.Speed = NumberRange.new(0,10)
effx.Drag = 5
effx.Rotation = NumberRange.new(-500,500)
effx.VelocitySpread = 9000
effx.RotSpeed = NumberRange.new(-50,50)
local effx2 = Instance.new("ParticleEmitter",root)
effx2.Texture = "rbxassetid://2273224484"
effx2.LightEmission = 1
effx2.Color = ColorSequence.new(col1.Color)
effx2.Rate = 500000
effx2.Lifetime = NumberRange.new(1,2)
effx2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,200,0),NumberSequenceKeypoint.new(0.1,50,0),NumberSequenceKeypoint.new(0.8,25,0),NumberSequenceKeypoint.new(1,0,0)})
effx2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.1,0,0),NumberSequenceKeypoint.new(0.8,0,0),NumberSequenceKeypoint.new(1,1,0)})
effx2.Speed = NumberRange.new(50,1200)
effx2.Drag = 5
effx2.Rotation = NumberRange.new(-500,500)
effx2.VelocitySpread = 9000
effx2.RotSpeed = NumberRange.new(-50,50)
local effx3 = effx2:Clone()
effx3.Parent = root
effx3.Color = ColorSequence.new(col2.Color)
symbolizeBlink(root,0,144580273,col1.Color,20,0,0,0,root,true,-5,2)
symbolizeBlink(root,0,144580273,col2.Color,25,0,0,0,root,true,-5,1)
for i = 0, 1 do
CFuncs["Sound"].Create("rbxassetid://763717897", root, 5, 1.25)
CFuncs["Sound"].Create("rbxassetid://1192402877", root, 5,0.75)
CFuncs["Sound"].Create("rbxassetid://1664711478", root, 2.5,1)
CFuncs["Sound"].Create("rbxassetid://763718160", root, 5, 0.75)
end
coroutine.resume(coroutine.create(function()
	wait(0.05)
	effx.Enabled = false
	wait(0.1)
	effx2.Enabled = false
	effx3.Enabled = false
end))
coroutine.resume(coroutine.create(function()
for i = 0, 9, 0.1 do
	swait()
	mult = mult + 0.5
lookavec = lookavec + 0.1*mult
elocacenter.CFrame = elocacenter.CFrame*CFrame.Angles(0,math.rad(5*mult/10),0)
eloca1.CFrame = elocacenter.CFrame*CFrame.new(40+lookavec/5,-15+lookavec*2,0)
eloca2.CFrame = elocacenter.CFrame*CFrame.new(-40-lookavec/5,-15+lookavec*2,0)
eloca3.CFrame = elocacenter.CFrame*CFrame.new(0,-15+lookavec*2,40+lookavec/5)
eloca4.CFrame = elocacenter.CFrame*CFrame.new(0,-15+lookavec*2,-40-lookavec/5)
end
for i,v in pairs(elocacenter:GetDescendants()) do
	if v:IsA("ParticleEmitter") then
		v.Enabled = false
	end
end
wait(6)
effx:Destroy()
effx2:Destroy()
effx3:Destroy()
elocacenter:Destroy()
end))
end


function RecolorThing(one,two,three,four,five,exonetran,exone,extwotran,extwo,secondaryenabled,sectrailenabled,bladeenabled,dark,arso)
if(plr.UserId==156755588)then
TcGauntlet = char.TcGauntlet
for i,v in pairs(TcGauntlet:GetChildren())do
if v.Name == "1" then
v.BrickColor = one
elseif v.Name == "2" then
v.BrickColor = two
end
end
end
if(plr.UserId==5719877)then
for i,v in pairs(NebBand:GetChildren())do
if v.Name == "1" then
v.BrickColor = one
elseif v.Name == "2" then
v.BrickColor = two
end
end
end
RightTransitionFrame.BackgroundColor3 =  one.Color
LeftTransitionFrame.BackgroundColor3 =  two.Color
RightTransitionFrame.Position = UDim2.new(0.85,0,1.7,0)
LeftTransitionFrame.Position = UDim2.new(0.25,0,-0.7,0)
	RightTransitionFrame:TweenPosition(UDim2.new(0.85,0,-.7,0),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,.3,true)
LeftTransitionFrame:TweenPosition(UDim2.new(0.25,0,1.7,0),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,.3,true)
for i, v in pairs(mw2:GetChildren()) do
if v:IsA("BasePart") then
v.BrickColor = one
v.Material = "Neon"
end
end
GasCan.Transparency=(arso and 0 or 1)
for _,v in next, TheDark:GetDescendants() do
	if(v:IsA'Decal' or v:IsA'Texture')then v.Transparency = (dark and 0 or 1) elseif(v:IsA'ParticleEmitter' or v:IsA'Beam')then v.Enabled = dark end
	if(v:IsA'BasePart' and v ~= hitbox)then
		v.Transparency=(dark and 0 or 1)
	end
end
tbeam(one,two)
CFuncs["EchoSound"].Create("rbxassetid://847061203", root, 1, 1,0,10,0.25,0.25,1)
symbolizeBlink(root,0,2092248396,one.Color,5,0,0,847061203,root,true,10,1)
symbolizeBlink(root,0,2092248396,one.Color,4,0,0,0,root,true,-5,1)
tr1.Color = ColorSequence.new(one.Color)
tr2.Color = ColorSequence.new(one.Color)
tr3.Color = ColorSequence.new(one.Color)
for i, v in pairs(mw1:GetChildren()) do
if v:IsA("BasePart") then
if secondaryenabled == false then
v.Transparency = 1
elseif secondaryenabled == true then
v.Transparency = 0
end
v.BrickColor = two
v.Material = "Neon"
end
end
if secondaryenabled == false then
tl1.Enabled = false
tl2.Enabled = false
tl3.Enabled = false
elseif secondaryenabled == true then
tl1.Enabled = true
tl2.Enabled = true
tl3.Enabled = true
end
tl1.Color = ColorSequence.new(two.Color)
tl2.Color = ColorSequence.new(two.Color)
tl3.Color = ColorSequence.new(two.Color)
for i, v in pairs(m:GetChildren()) do
if v:IsA("BasePart") then
v.BrickColor = three
v.Material = "Ice"
end
end
for i, v in pairs(m2:GetChildren()) do
if v:IsA("BasePart") then
v.BrickColor = four
v.Material = "Ice"
end
end
for i, v in pairs(m3:GetChildren()) do
if v:IsA("BasePart") then
v.BrickColor = five
v.Material = "Neon"
end
end
for i, v in pairs(extrawingmod1:GetChildren()) do
if v:IsA("BasePart") then
v.Transparency = exonetran
v.BrickColor = exone
v.Material = "Neon"
end
end

for i = 1,#vis.r do
	local right = vis.r[i]
	right.BackgroundColor3=one.Color
	right.BorderColor3=two.Color
end
for i = 1,#vis.l do
	local left = vis.l[i]
	left.BackgroundColor3=one.Color
	left.BorderColor3=two.Color
end
right.BackgroundColor3=one.Color
left.BackgroundColor3=two.Color


coroutine.resume(coroutine.create(function()
if secondaryenabled == true then
left:TweenPosition(UDim2.new(0, 125,0.5, 0),"Out","Sine",0.7,true)	
else
left:TweenPosition(UDim2.new(-0.1, 0,0.5, 0),"Out","Sine",0.7,true)	
end
end))

if sectrailenabled == true then
tl4.Enabled = true
tl5.Enabled = true
tl6.Enabled = true
tr4.Enabled = true
tr5.Enabled = true
tr6.Enabled = true
tl4.Color = ColorSequence.new(exone.Color)
tl5.Color = ColorSequence.new(exone.Color)
tl6.Color = ColorSequence.new(exone.Color)
tr4.Color = ColorSequence.new(extwo.Color)
tr5.Color = ColorSequence.new(extwo.Color)
tr6.Color = ColorSequence.new(extwo.Color)
elseif sectrailenabled == false then
tl4.Enabled = false
tl5.Enabled = false
tl6.Enabled = false
tr4.Enabled = false
tr5.Enabled = false
tr6.Enabled = false
end
for i, v in pairs(extrawingmod2:GetChildren()) do
if v:IsA("BasePart") then
v.Transparency = extwotran
v.BrickColor = extwo
v.Material = "Neon"
end
end
WanderersBlade.Blade.Trail.Enabled=not not bladeenabled
if not bladeenabled then
for i,v in pairs(WanderersBlade:GetChildren())do v.Transparency = 1 end
elseif bladeenabled == true then
for i,v in pairs(WanderersBlade:GetChildren())do v.Transparency = 0 end	
end


 
end

RecolorTextAndRename("POWER",Color3.new(0.25,0,0),Color3.new(1,0,0),"Antique")

function normalmog()
attack = true
hum.WalkSpeed = 0
CFuncs["Sound"].Create("rbxassetid://136007472", root, 5, 1.25)
for i = 0,6,0.1 do
swait()
sphereMK(2.5,-1.5,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3.5,3.5,45,-0.035,MAINRUINCOLOR,100)
slash(math.random(30,60)/10,5,true,"Round","Add","In",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.5,0.01,0.5),-0.5,MAINRUINCOLOR)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(30)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-30)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.3,-0.15)*angles(math.rad(30),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(30),math.rad(0),math.rad(0 - 5 * math.cos(sine / 0.2))),.2)
RW.C0=clerp(RW.C0,cf(1.05,0.4,-0.5)*angles(math.rad(140),math.rad(0),math.rad(-50)),.2)
LW.C0=clerp(LW.C0,cf(-1.05,0.4,-0.5)*angles(math.rad(140),math.rad(0),math.rad(50)),.2)
end
CFuncs["Sound"].Create("rbxassetid://206082327", root, 7.5,1)
CFuncs["Sound"].Create("rbxassetid://847061203", root, 10,1)
CFuncs["Sound"].Create("rbxassetid://239000203", root, 7.5,1)
CFuncs["Sound"].Create("rbxassetid://579687077", root, 7.5,0.75)
CFuncs["Sound"].Create("rbxassetid://1368637781", root, 10,1)
CFuncs["Sound"].Create("rbxassetid://763718160", root, 7.5, 1.1)
CFuncs["Sound"].Create("rbxassetid://782353443", root, 7.5, 1)
rainbowmode = false
chaosmode = false
ModeOfGlitch = 1
storehumanoidWS = 16
newTheme("rbxassetid://495971354",48.6,1,1.25)
RecolorTextAndRename("POWER",Color3.new(0.25,0,0),Color3.new(1,0,0),"Antique")
CameraEnshaking(5,2.5)
MAINRUINCOLOR = BrickColor.new("Really red")
sphere(2.5,"Add",root.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
for i = 0, 49 do
PixelBlock(1,math.random(1,20),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2,2,2,0.04,MAINRUINCOLOR,0)
end
for i = 0, 24 do
sphere2(2,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,7,-0.01,MAINRUINCOLOR)
slash(math.random(10,30)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(150,350)/250,BrickColor.new("White"))
end
for i = 0,3,0.1 do
sphereMK(2.5,-1,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2.5,2.5,25,-0.025,MAINRUINCOLOR,0)
end
RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,false,false)
for i = 0,2,0.1 do
swait()
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-30)),.5)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(30)),.5)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.3,-0.15)*angles(math.rad(-30),math.rad(0),math.rad(0)),.5)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-30),math.rad(0),math.rad(0 - 2.5 * math.cos(sine / 0.2))),.5)
RW.C0=clerp(RW.C0,cf(1.45,0.4,0)*angles(math.rad(-20),math.rad(0 - 2 * math.cos(sine / 0.2)),math.rad(80 + 2 * math.cos(sine / 0.2))),.5)
LW.C0=clerp(LW.C0,cf(-1.45,0.4,0)*angles(math.rad(-20),math.rad(0 + 2 * math.cos(sine / 0.2)),math.rad(-80 - 2 * math.cos(sine / 0.2))),.5)
end
hum.WalkSpeed = storehumanoidWS
attack = false
end

function attackone()
	attack = true
local keptcolor = MAINRUINCOLOR
	for i = 0,1,0.1 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(-10),math.rad(-20)),0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(20),math.rad(10),math.rad(20)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-15),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(2.5),math.rad(0),math.rad(0)),.3)
	end
local distlook = 5
coroutine.resume(coroutine.create(function()
for i = 0, 4 do
swait(2)
CameraEnshaking(2,3)
local hite = Instance.new("Part", char)
        hite.Anchored = true
        hite.CanCollide = false
        hite.FormFactor = 3
        hite.Name = "Ring"
        hite.Material = "Neon"
        hite.Size = Vector3.new(1, 1, 1)
        hite.Transparency = 1
        hite.TopSurface = 0
        hite.BottomSurface = 0
hite.CFrame = root.CFrame*CFrame.new(0,-3,-distlook)
sphere2(4,"Add",hite.CFrame*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),vt(0,1,0),0.2,0.001,0.2,keptcolor)
sphere2(4,"Add",hite.CFrame*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0)),vt(8,1,8),-0.045,0.15,-0.045,keptcolor)
sphere2(4,"Add",hite.CFrame*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0)),vt(4,1,4),-0.025,0.25,-0.025,keptcolor)
sphere2(4,"Add",hite.CFrame*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0)),vt(2,1,2),-0.015,0.35,-0.015,keptcolor)
MagniDamage(hite, 9, 10,25, 0, "Normal")
for i = 0, 14 do
local rsiz = math.random(5,20)
sphereMK(math.random(1,3),0.25,"Add",hite.CFrame*CFrame.new(math.random(-20,20)/50,math.random(-20,20)/50,math.random(-20,20)/50)*CFrame.Angles(math.rad(90 + math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiz/10,rsiz/10,rsiz/10,0,keptcolor,0)
end
CFuncs["Sound"].Create("rbxassetid://178452221", hite, 1, 1)
CFuncs["Sound"].Create("rbxassetid://1042722746", hite, 0.5, 1)
game:GetService("Debris"):AddItem(hite, 5)
distlook = distlook + 10
end
end))
	for i = 0,1,0.1 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(5),math.rad(90)),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-90)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(120)), 0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-20)), 0.5)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-0.5),math.rad(0),math.rad(-10)),.5)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-10)),.5)
	end
	attack = false
end

function attacktwo()
attack = true
hum.WalkSpeed = 2
	local orb = Instance.new("Part", char)
	orb.Anchored = true
	orb.BrickColor = MAINRUINCOLOR
	orb.CanCollide = false
	orb.FormFactor = 3
	orb.Name = "Ring"
	orb.Material = "Neon"
	orb.Size = Vector3.new(1, 1, 1)
	orb.Transparency = 0
	orb.TopSurface = 0
	orb.BottomSurface = 0
	local orbm = Instance.new("SpecialMesh", orb)
	orbm.MeshType = "Sphere"
	orbm.Name = "SizeMesh"
	orbm.Scale = vt(0, 0, 0)
	local scaled = 0.1
	local posid = 0
	CFuncs.Sound.Create("rbxassetid://136007472", orb, 1, 1)
	for i = 0, 2, 0.1 do
		swait()
		scaled = scaled + 0.003
		posid = posid - scaled
		orb.CFrame = larm.CFrame * CFrame.new(0,posid/1.5,0)
		orbm.Scale = orbm.Scale + vt(scaled, scaled, scaled)
		sphereMKCharge(5, -0.25, "Add", orb.CFrame * CFrame.Angles(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360))), 0.5, 0.5, 5, -0.005, MAINRUINCOLOR, 10)
		RH.C0 = clerp(RH.C0, cf(1, -1 - 0.1 * math.cos(sine / 32), 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(-2 - 1 * math.cos(sine / 32))), 0.1)
		LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.1 * math.cos(sine / 32), 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-3 + 1 * math.cos(sine / 32)), math.rad(0), math.rad(-10)), 0.1)
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 + 0.1 * math.cos(sine / 32)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.1)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(0)), 0.1)
		LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * angles(math.rad(180), math.rad(20), math.rad(0)), 0.1)
		RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * angles(math.rad(0), math.rad(30 - 5 * math.cos(sine / 30)), math.rad(20)), 0.1)
	end
	print(orbm.Scale)
	
local keptcolor = MAINRUINCOLOR
CFuncs["Sound"].Create("rbxassetid://847061203", root, 2, 1)
CFuncs["EchoSound"].Create("rbxassetid://1625448638", root, 4, 1,0,10,0.15,0.5,1)
sphere2(5,"Add",larm.CFrame*CFrame.new(0,-2,0)*CFrame.Angles(math.rad(90),0,0),vt(1,1,1),0.1,0.1,0.1,keptcolor,keptcolor.Color)
sphere2(5,"Add",larm.CFrame*CFrame.new(0,-2,0)*CFrame.Angles(math.rad(90),0,0),vt(1,1,1),0.2,0.2,0.2,keptcolor,keptcolor.Color)
for i = 0, 14 do
PixelBlock(1,math.random(1,3),"Add",larm.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,0.02,keptcolor,0)
end
CFuncs["Sound"].Create("rbxassetid://763755889", root, 2.5,1.1)
for i = 0,1.5,0.1 do
swait()
orb.CFrame = larm.CFrame * CFrame.new(0,posid/1.5,0)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-5)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(30),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-60)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(30)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(10)),.3)
LW.C0=clerp(LW.C0,cf(-1.15,0.5,-0.5)*angles(math.rad(90),math.rad(0),math.rad(60)),.3)
end
for i = 0,1,0.6 do
swait()
		orb.CFrame = larm.CFrame * CFrame.new(0,posid/1.5,0)
slash(math.random(15,30)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),vt(0.05,0.01,0.05),math.random(25,75)/250,BrickColor.new("White"))
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-5)),.6)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(30),math.rad(0)),.6)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.6)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(30)),.6)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(10)),.6)
LW.C0=clerp(LW.C0,cf(-1.15,0.5,-0.5)*angles(math.rad(90),math.rad(0),math.rad(60)),.6)
end
for i = 0,1,0.6 do
swait()
		orb.CFrame = larm.CFrame * CFrame.new(0,posid/1.5,0)
slash(math.random(15,30)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),vt(0.05,0.01,0.05),math.random(25,75)/250,BrickColor.new("White"))
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-5)),.6)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(30),math.rad(0)),.6)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.6)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(30)),.6)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(10)),.6)
LW.C0=clerp(LW.C0,cf(-1.15,0.5,-0.5)*angles(math.rad(90),math.rad(0),math.rad(60)),.6)
end
for i = 0,1,0.6 do
swait()
		orb.CFrame = larm.CFrame * CFrame.new(0,posid/1.5,0)
slash(math.random(15,30)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),vt(0.05,0.01,0.05),math.random(25,75)/250,BrickColor.new("White"))
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-5)),.6)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(30),math.rad(0)),.6)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(180)),.6)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(30)),.6)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(10)),.6)
LW.C0=clerp(LW.C0,cf(-1.15,0.5,-0.5)*angles(math.rad(90),math.rad(0),math.rad(60)),.6)
end
for i = 0,1,0.6 do
swait()
		orb.CFrame = larm.CFrame * CFrame.new(0,posid/1.5,0)
slash(math.random(15,30)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),vt(0.05,0.01,0.05),math.random(25,75)/250,BrickColor.new("White"))
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-5)),.6)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(30),math.rad(0)),.6)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(270)),.6)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(30)),.6)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(10)),.6)
LW.C0=clerp(LW.C0,cf(-1.15,0.5,-0.5)*angles(math.rad(90),math.rad(0),math.rad(60)),.6)
end
orb:destroy()
local rot = 0
local cfr = root.CFrame*CFrame.new(0,2,-3)
CFuncs["EchoSound"].Create("rbxassetid://763718160",root, 3, 1.1,0,10,0.15,0.5,1)
	local ray = Ray.new(
		cfr.p,                           -- origin
	    (mouse.Hit.p - cfr.p).unit * 500 -- direction
	) 
	local hit, position, normal = workspace:FindPartOnRay(ray, char)
Projectile{
    Size=orbm.Scale;
    Mesh={MeshType=Enum.MeshType.Sphere};
    Lifetime=5;
    Velocity=(CFrame.new(cfr.p,position)*CFrame.Angles(0,math.rad(rot),0)).lookVector*250;
	Origin=cfr;
    Material=Enum.Material.Neon;
    Color=keptcolor;
    Gravity=0;
Hit = (function(hit,pos,norm,data) 
    local hitted = false
	if hitted == false and hit.Parent ~= char then
    local dis = CreateParta(char,1,1,"Neon",keptcolor)
    dis.CFrame = CFrame.new(pos)
	hitted = true
	shakes(0.15,0.25)
	CFuncs["EchoSound"].Create("rbxassetid://782200047", dis, 7, 1.1,0,10,0.15,0.5,1)
	MagniDamage(dis, 30, 25,65, 0, "Normal")
	sphere2(8,"Add",dis.CFrame,vt(10,1,10),1,0.1,1,keptcolor,keptcolor.Color)
	sphere2(4,"Add",dis.CFrame,vt(1,1,1),0.5,0.5,0.5,keptcolor,keptcolor.Color)
	sphere2(3,"Add",dis.CFrame,vt(1,1,1),0.5,0.5,0.5,BrickColor.new("White"),Color3.new(1,1,1))
	coroutine.resume(coroutine.create(function()
local eff = Instance.new("ParticleEmitter",dis)
eff.Texture = "rbxassetid://2344870656"
eff.LightEmission = 1
eff.Color = ColorSequence.new(dis.Color)
eff.Rate = 10000000
eff.Enabled = true
eff.EmissionDirection = "Front"
eff.Lifetime = NumberRange.new(1)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,75,0),NumberSequenceKeypoint.new(0.1,20,0),NumberSequenceKeypoint.new(0.8,40,0),NumberSequenceKeypoint.new(1,60,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.8,0),NumberSequenceKeypoint.new(0.5,0,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(150)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.SpreadAngle = Vector2.new(0,900)
eff.RotSpeed = NumberRange.new(-500,500)
wait(0.2)
eff.Enabled = false
	end))
	coroutine.resume(coroutine.create(function()
		for i = 0, 9 do
local disr = CreateParta(char,1,1,"Neon",keptcolor)
disr.CFrame = dis.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local at1 = Instance.new("Attachment",disr)
at1.Position = vt(-2,0,0)
local at2 = Instance.new("Attachment",disr)
at2.Position = vt(2,0,0)
local trl = Instance.new('Trail',disr)
trl.Attachment0 = at1
trl.FaceCamera = true
trl.Attachment1 = at2
trl.Texture = "rbxassetid://2342682798"
trl.LightEmission = 1
trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
trl.Color = ColorSequence.new(keptcolor.Color)
trl.Lifetime = 0.5
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = disr.CFrame.lookVector*math.random(50,200)
bv.Parent = disr
local val = 0
coroutine.resume(coroutine.create(function()
	swait(30)
	for i = 0, 9 do
		swait()
		val = val + 0.1
		trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, val),NumberSequenceKeypoint.new(1, 1)})
	end
game:GetService("Debris"):AddItem(disr, 3)
end))
end
local eff = Instance.new("ParticleEmitter",dis)
eff.Texture = "rbxassetid://2273224484"
eff.LightEmission = 1
eff.Color = ColorSequence.new(keptcolor.Color)
eff.Rate = 500000
eff.Lifetime = NumberRange.new(0.5,2)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,20,0),NumberSequenceKeypoint.new(0.2,2,0),NumberSequenceKeypoint.new(0.8,2,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.1,0,0),NumberSequenceKeypoint.new(0.8,0,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(20,250)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-50,50)
wait(0.25)
eff.Enabled = false
end))
	for i = 0, 9 do
		slash(math.random(10,20)/10,5,true,"Round","Add","Out",dis.CFrame*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),vt(0.01,0.01,0.01),math.random(100,200)/250,BrickColor.new("White"))
	end
for i = 0, 19 do
PixelBlock(1,math.random(5,20),"Add",dis.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),4,4,4,0.08,keptcolor,0)
end
coroutine.resume(coroutine.create(function()
for i = 0, 19 do
swait()
hum.CameraOffset = vt(math.random(-10,10)/70,math.random(-10,10)/70,math.random(-10,10)/70)
end
hum.CameraOffset = vt(0,0,0)
end))
dis.Anchored = true
dis.Transparency = 1
wait(8)
dis:Destroy()
end
end)}

for i = 0,2,0.1 do
swait()
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(-30),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(5)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(60)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(-50)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(10)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(90),math.rad(0),math.rad(-60)),.3)
end
attack = false
hum.WalkSpeed = storehumanoidWS
end

function attackthree()
attack = true
local keptcolor = MAINRUINCOLOR
CFuncs["Sound"].Create("rbxassetid://136007472", root, 2, 1.5)
	for i = 0,2,0.1 do
		swait()
		sphere2(5,"Add",larm.CFrame*CFrame.new(0,-1.5,0),vt(1,1,1),0.025,0.025,0.025,MAINRUINCOLOR,MAINRUINCOLOR.Color)
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(50)),0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(80), math.rad(10), math.rad(60)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(140), math.rad(0), math.rad(-70)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1.5),math.rad(-50),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(40)),.3)
	end
CFuncs["Sound"].Create("rbxassetid://763716870", root, 3,1)
CFuncs["Sound"].Create("rbxassetid://782353443", root, 5,0.9)
CFuncs["Sound"].Create("rbxassetid://782225570", root, 4,0.5)
CFuncs["Sound"].Create("rbxassetid://763717569", root, 3,1)
sphere2(5,"Add",root.CFrame,vt(1,1,1),1,1,1,MAINRUINCOLOR)
sphere2(5,"Add",root.CFrame,vt(1,1,1),0.5,0.5,0.5,MAINRUINCOLOR)
for i = 0, 24 do
		slash(math.random(10,50)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.Angles(math.rad(90),math.rad(math.random(-360,360)),math.rad(0)),vt(0.01,0.01,0.01),math.random(50,200)/250,BrickColor.new("White"))
end
for i = 0,4,0.1 do
		swait()
		root.CFrame = root.CFrame + root.CFrame.lookVector*5
		local dis = CreateParta(char,0.25,1,"Neon",MAINRUINCOLOR)
CreateMesh(dis,"Sphere",1,1,1)
dis.Anchored = true
dis.CFrame = larm.CFrame*CFrame.new(0,-3,0)
sphere2(5,"Add",dis.CFrame,vt(1,1,1),0.1,0.1,0.1,dis.BrickColor,dis.Color)
coroutine.resume(coroutine.create(function()
	swait(30)
	dis.Transparency = 1
coroutine.resume(coroutine.create(function()
for i = 0, 19 do
swait()
hum.CameraOffset = vt(math.random(-10,10)/40,math.random(-10,10)/40,math.random(-10,10)/40)
end
hum.CameraOffset = vt(0,0,0)
end))
coroutine.resume(coroutine.create(function()
local eff = Instance.new("ParticleEmitter",dis)
eff.Texture = "rbxassetid://2273224484"
eff.LightEmission = 1
eff.Color = ColorSequence.new(dis.Color)
eff.Rate = 500000
eff.Lifetime = NumberRange.new(0.5,2)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,20,0),NumberSequenceKeypoint.new(0.2,2,0),NumberSequenceKeypoint.new(0.8,2,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.1,0,0),NumberSequenceKeypoint.new(0.8,0,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(50,450)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-50,50)
wait(0.125)
eff.Enabled = false
end))
MagniDamage(dis, 30, 45,50, 0, "Normal")
    for i = 0, 2 do
		slash(math.random(10,80)/10,5,true,"Round","Add","Out",dis.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(50,150)/250,dis.BrickColor)
	end
	CFuncs["Sound"].Create("rbxassetid://782353117", dis, 1,1)
	CFuncs["Sound"].Create("rbxassetid://1666361078", dis, 1,1.5)
	CFuncs["Sound"].Create("rbxassetid://782353443", dis, 2,1.65)
	sphere2(3,"Add",dis.CFrame,vt(1,1,1),0.4,0.4,0.4,dis.BrickColor,dis.Color)
end))
game:GetService("Debris"):AddItem(dis, 5)
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(89),math.rad(-8),math.rad(-5)),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-30),math.rad(0),math.rad(8)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-14), math.rad(1), math.rad(17)), 0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.85, 0) * angles(math.rad(180), math.rad(0), math.rad(-8)), 0.5)
RH.C0=clerp(RH.C0,cf(1,-0.5,-0.6)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-8),math.rad(0),math.rad(-20)),.5)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(9),math.rad(0),math.rad(20)),.5)
	end
attack = false
end
----------------------------------- Abilities

function ExtinctiveHeartbreak()
local targetted = nil
if mouse.Target.Parent ~= Character and mouse.Target.Parent.Parent ~= Character and mouse.Target.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
targetted = mouse.Target.Parent
end
if targetted ~= nil then
attack = true
CFuncs["Sound"].Create("rbxassetid://847061203", root, 2.5,1)
for i = 0, 9 do
sphereMK(3,0.25,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,10,-0.01,BrickColor.new("Really red"),0)
end
for i = 0, 24 do
PixelBlock(1,math.random(4,8),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3,3,3,0.06,BrickColor.new("Really red"),0)
end
sphere(3,"Add",root.CFrame,vt(0,0,0),0.25,BrickColor.new("Really red"))
local originalpos = root.CFrame
RootPart.CFrame = targetted.Head.CFrame * CFrame.new(0,-2,2)
for i = 0, 9 do
sphereMK(3,0.25,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,10,-0.01,BrickColor.new("Really red"),0)
end
for i = 0, 24 do
PixelBlock(1,math.random(4,8),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3,3,3,0.06,BrickColor.new("Really red"),0)
end
hum.WalkSpeed = 0
sphere(3,"Add",root.CFrame,vt(0,0,0),0.25,BrickColor.new("Really red"))
local radm = math.random(1,3)
if radm == 1 then
bosschatfunc("YOU WONT BE NECCESSARY.",MAINRUINCOLOR.Color,2)
elseif radm == 2 then
bosschatfunc("YOUR EXISTANCE WILL BE GONE.",MAINRUINCOLOR.Color,2)
elseif radm == 3 then
bosschatfunc("DIE!",MAINRUINCOLOR.Color,2)
end
for i = 0,2,0.1 do
swait()
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(-10),math.rad(0)),.4)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 28))*angles(math.rad(0),math.rad(0),math.rad(80)),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(10)),.8)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.1 * math.cos(sine / 28),0)*angles(math.rad(20),math.rad(0),math.rad(10)),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.1 * math.cos(sine / 28),0)*angles(math.rad(90),math.rad(0),math.rad(60)),.4)
end
CFuncs["Sound"].Create("rbxassetid://153092227", root, 5,1)
CFuncs["EchoSound"].Create("rbxassetid://153092227", root, 10, 1,0,10,0.25,0.5,1)
for i = 0,2,0.1 do
swait()
coroutine.resume(coroutine.create(function()
targetted.Head.CFrame = larm.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(-90),0,0)
for i,v in pairs(targetted:GetChildren()) do
if v:IsA("BasePart") or v:IsA("MeshPart") then
v.Velocity = vt(0,0,0)
end
end
end))
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.8)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(10),math.rad(0)),.8)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.25,0 + 0.05 * math.cos(sine / 28))*angles(math.rad(0),math.rad(0),math.rad(-80)),.8)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(80)),.8)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.1 * math.cos(sine / 28),0)*angles(math.rad(20),math.rad(0),math.rad(10)),.8)
LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.1 * math.cos(sine / 28),0)*angles(math.rad(90),math.rad(0),math.rad(-80)),.8)
end
shakes(1.25,1.5)
CFuncs["EchoSound"].Create("rbxassetid://824687369", char, 1.5, 1,0,10,0.25,0.5,1)
CFuncs["EchoSound"].Create("rbxassetid://153092227", char, 1.5, 0.9,0,10,0.25,0.5,1)
for i = 0, 1 do
CFuncs["EchoSound"].Create("rbxassetid://1690476035", char, 1.5, 1,0.1,10,0.15,0.5,1)
end
CFuncs["EchoSound"].Create("rbxassetid://1690476035", root, 10, 1,0.1,10,0.15,0.5,1)
--chatfunc("RRRRROOAGHH!",Color3.new(1,0,0),"Inverted","Antique",0.75)
for i = 0,4,0.1 do
swait()
coroutine.resume(coroutine.create(function()
local dis = CreateParta(char,1,1,"Neon",MAINRUINCOLOR)
dis.CFrame = targetted.Head.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local at1 = Instance.new("Attachment",dis)
at1.Position = vt(-25000,0,0)
local at2 = Instance.new("Attachment",dis)
at2.Position = vt(25000,0,0)
local trl = Instance.new('Trail',dis)
trl.Attachment0 = at1
trl.FaceCamera = true
trl.Attachment1 = at2
trl.Texture = "rbxassetid://1049219073"
trl.LightEmission = 1
trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
trl.Color = ColorSequence.new(Color3.new(1,0,0))
trl.Lifetime = 5
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = dis.CFrame.lookVector*math.random(500,2500)
bv.Parent = dis
game:GetService("Debris"):AddItem(dis, 5)
targetted.Head.CFrame = larm.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(-90),0,0)
CFuncs["Sound"].Create("rbxassetid://782353443", targetted.Head, 4,1)
CFuncs["Sound"].Create("rbxassetid://824687369", targetted.Head, 6, 1)
CFuncs["Sound"].Create("rbxassetid://153092227", targetted.Head,6,math.random(75,150)/150)
CFuncs["Sound"].Create("rbxassetid://163680447", targetted.Head, 3,math.random(75,150)/150)
CFuncs["Sound"].Create("rbxassetid://782354021", targetted.Head, 2.5,0.75)
sphere2(5,"Add",targetted.Head.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(3,3,3),-0.03,15,-0.03,MAINRUINCOLOR)
targetted:FindFirstChildOfClass("Humanoid").CameraOffset = vt(math.random(-10,10)/5,math.random(-10,10)/5,math.random(-10,10)/5)
for i = 0, 2 do
slash(5,5,true,"Round","Add","Out",targetted.Head.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(50,350)/250,BrickColor.new("Crimson"))
end
symbolizeBlink(targetted.Head,0,2092248396,Color3.new(1,0,0),math.random(3,35),0,0,0,targetted.Head,true,math.random(3,9),0.25)
for i,v in pairs(targetted:GetChildren()) do
if v:IsA("BasePart") or v:IsA("MeshPart") then
v.Velocity = vt(0,0,0)
end
end
end))
hum.CameraOffset = vt(math.random(-10,10)/25,math.random(-10,10)/25,math.random(-10,10)/25)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.8)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(10),math.rad(0)),.8)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.25,0 + 0.05 * math.cos(sine / 28))*angles(math.rad(0),math.rad(0),math.rad(-80)),.8)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(80)),.8)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.1 * math.cos(sine / 28),0)*angles(math.rad(20),math.rad(0),math.rad(40)),.8)
LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.1 * math.cos(sine / 28),0)*angles(math.rad(170),math.rad(0),math.rad(-30)),.8)
end
hum.CameraOffset = vt(0,0,0)
for i = 0, 49 do
local dis = CreateParta(char,1,1,"Neon",MAINRUINCOLOR)
dis.CFrame = targetted.Head.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local at1 = Instance.new("Attachment",dis)
at1.Position = vt(-50000,0,0)
local at2 = Instance.new("Attachment",dis)
at2.Position = vt(50000,0,0)
local trl = Instance.new('Trail',dis)
trl.Attachment0 = at1
trl.FaceCamera = true
trl.Attachment1 = at2
trl.Texture = "rbxassetid://1049219073"
trl.LightEmission = 1
trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
trl.Color = ColorSequence.new(Color3.new(1,0.1,0.1))
trl.Lifetime = 5
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = dis.CFrame.lookVector*math.random(500,2500)
bv.Parent = dis
game:GetService("Debris"):AddItem(dis, 5)
end
for i = 0, 49 do
sphere2(math.random(10,75)/10,"Add",targetted.Head.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(5,5,5),-0.05,50,-0.05,MAINRUINCOLOR)
slash(math.random(10,30)/15,5,true,"Round","Add","Out",targetted.Head.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(40,500)/250,BrickColor.new("Really red"))
end
CFuncs["EchoSound"].Create("rbxassetid://824687369", char, 2, 0.9,0,10,0.25,0.5,1)
for i = 0, 1 do
CFuncs["Sound"].Create("rbxassetid://221920821", targetted.Head, 5,0.9)
CFuncs["Sound"].Create("rbxassetid://221920821", targetted.Head, 7.5,0.75)
end
for i = 0, 4 do
CFuncs["Sound"].Create("rbxassetid://824687369", targetted.Head, 10, 1)
end
symbolizeBlink(targetted.Head,0,2109052855,Color3.new(1,0,0),30,0,0,0,root,false,0,1)
symbolizeBlink(targetted.Head,0,2109052855,Color3.new(1,0,0),30,0,0,0,root,false,0,2)
symbolizeBlink(targetted.Head,0,2109052855,Color3.new(1,0,0),30,0,0,0,root,false,0,4)
dmg(targetted)
CFuncs["Sound"].Create("rbxassetid://847061203", root, 2.5,1)
for i = 0, 9 do
sphereMK(3,0.25,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,10,-0.01,BrickColor.new("Really red"),0)
end
for i = 0, 24 do
PixelBlock(1,math.random(4,8),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3,3,3,0.06,BrickColor.new("Really red"),0)
end
sphere(3,"Add",root.CFrame,vt(0,0,0),0.25,BrickColor.new("Really red"))
root.CFrame = originalpos
for i = 0, 9 do
sphereMK(3,0.25,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,10,-0.01,BrickColor.new("Really red"),0)
end
for i = 0, 24 do
PixelBlock(1,math.random(4,8),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3,3,3,0.06,BrickColor.new("Really red"),0)
end
sphere(3,"Add",root.CFrame,vt(0,0,0),0.25,BrickColor.new("Really red"))
attack = false
hum.WalkSpeed = storehumanoidWS
end
end

function orb_spawn_norm(positted, timer, color, MagniBoost, min, max, volEx, ShakePower, volSummon)
	local orb = Instance.new("Part", char)
	orb.Anchored = true
	orb.BrickColor = color
	orb.CanCollide = false
	orb.FormFactor = 3
	orb.Name = "Ring"
	orb.Material = "Neon"
	orb.Size = Vector3.new(1, 1, 1)
	orb.Transparency = 0
	orb.TopSurface = 0
	orb.BottomSurface = 0
	local orbm = Instance.new("SpecialMesh", orb)
	orbm.MeshType = "Sphere"
	orb.CFrame = positted
	orbm.Name = "SizeMesh"
	orbm.Scale = vt(1, 1, 1)
	CFuncs.Sound.Create("rbxassetid://183763506", orb, volSummon, 1)
	sphere(2.5, "Add", orb.CFrame, vt(1, 1, 1), 0.05, orb.BrickColor)
	coroutine.resume(coroutine.create(function()
		wait(timer)
		CameraEnshaking(3, ShakePower)
		orb.Transparency = 1
		MagniDamage(orb, 3.5 * MagniBoost, min, max, 0, "Normal")
		sphere(5, "Add", orb.CFrame, vt(1, 1, 1), 0.1 * MagniBoost, orb.BrickColor)
		CFuncs.Sound.Create("rbxassetid://192410089", orb, volEx, 0.7)
		wait(3)
		orb:Destroy()
	end))
end

function CorruptionEvent()
attack = true
hum.WalkSpeed = 0
CFuncs["Sound"].Create("rbxassetid://838392947", root, 10, 1)
CFuncs["Sound"].Create("rbxassetid://1368598393", root, 10, 1)
local keptcolor = MAINRUINCOLOR
for i = 0,4,0.1 do
swait()
hum.CameraOffset = vt(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)
block(10,"Add",rleg.CFrame*CFrame.new(0,-1,0),vt(1,1,1),0.01,0.01,0.01,MAINRUINCOLOR,MAINRUINCOLOR.Color)
RH.C0=clerp(RH.C0,cf(1,-0.15,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(-5),math.rad(-20)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(1),math.rad(20)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.25,-0.05)*angles(math.rad(-20),math.rad(0),math.rad(10)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(-10)),.1)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(-5),math.rad(-10),math.rad(20)),.1)
LW.C0=clerp(LW.C0,cf(-1.4,0.5,0.1)*angles(math.rad(-5),math.rad(10),math.rad(-20)),.1)
end
shakes(0.5,1)
symbolizeBlink(root,0,2109052855,MAINRUINCOLOR.Color,25,0,0,0,root,false,0,1)
symbolizeBlink(root,0,2109052855,MAINRUINCOLOR.Color,25,0,0,0,root,false,0,1.5)
symbolizeBlink(root,0,2109052855,MAINRUINCOLOR.Color,25,0,0,0,root,false,0,3)
CFuncs["Sound"].Create("rbxassetid://1368637781", root, 3,1)
CFuncs["Sound"].Create("rbxassetid://763718160", root, 4, 1.1)
CFuncs["Sound"].Create("rbxassetid://782353443", root, 6, 1)
CFuncs["EchoSound"].Create("rbxassetid://824687369", root, 10, 1.1,0,10,0.25,0.5,1)
CFuncs["EchoSound"].Create("rbxassetid://824687369", char, 1.5, 1.1,0,10,0.25,0.5,1)
coroutine.resume(coroutine.create(function()
local eff = Instance.new("ParticleEmitter",cen)
eff.Texture = "rbxassetid://2344870656"
eff.LightEmission = 1
eff.Color = ColorSequence.new(keptcolor.Color)
eff.Rate = 10000000
eff.Enabled = true
eff.EmissionDirection = "Front"
eff.Lifetime = NumberRange.new(2)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,120,0),NumberSequenceKeypoint.new(0.1,40,0),NumberSequenceKeypoint.new(0.8,80,0),NumberSequenceKeypoint.new(1,140,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.8,0),NumberSequenceKeypoint.new(0.5,0,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(500)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.SpreadAngle = Vector2.new(0,900)
eff.RotSpeed = NumberRange.new(-500,500)
wait(0.2)
eff.Enabled = false
wait(5)
eff:Destroy()
	end))
hum.CameraOffset = vt(0,0,0)
sphere2(5,"Add",root.CFrame*CFrame.new(0,-3,0),vt(10,1,10),1,0.01,1,MAINRUINCOLOR,MAINRUINCOLOR.Color)
sphere2(5,"Add",root.CFrame*CFrame.new(0,-3,0),vt(10,1,10),2,0.01,2,MAINRUINCOLOR,MAINRUINCOLOR.Color)
for i = 0, 24 do
slash(math.random(15,50)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),vt(0.01,0.01,0.01),math.random(200,500)/250,BrickColor.new("Really black"))
end
local rrot = 0
coroutine.resume(coroutine.create(function()
	local rot = 0
	local randomrotations = math.random(1, 2)
	local lookv = 2.5
	local power = 5
	sphere(1, "Add", root.CFrame, vt(1, 100000, 1), 0.5, BrickColor.new("Royal purple"))
	sphere(1, "Add", root.CFrame, vt(1, 1, 1), 0.75, BrickColor.new("Royal purple"))
	for i = 0, 9 do
		sphereMK(1, 1.5, "Add", root.CFrame * CFrame.Angles(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360))), 10, 10, 45, -0.1, BrickColor.new("Royal purple"), 0)
	end
	CFuncs.Sound.Create("rbxassetid://180204650", char, 2.5, 0.6)
	CFuncs.Sound.Create("rbxassetid://233856079", char, 1, 0.5)
	CFuncs.Sound.Create("rbxassetid://1208650519", char, 2.5, 1)
	CFuncs.Sound.Create("rbxassetid://239000203", char, 0.5, 0.75)
	CFuncs.Sound.Create("rbxassetid://579687077", char, 0.5, 0.5)
	local out = 5
	coroutine.wrap(function()
		for rad = 0, 180,5 do
			if(rad>90)then
				out=out-5
			else
				out=out+5
			end
			local start=root.CFrame
			orb_spawn_norm(start*angles(0,math.rad(rad),0)*cf(0,-2,out), 3, BrickColor.new("Royal purple"), power, 25, 75, 10, power / 5, 7.5)
			orb_spawn_norm(start*angles(0,math.rad(rad),0)*cf(0,-2,-out), 3, BrickColor.new("Royal purple"), power, 25, 75, 10, power / 5, 7.5)
			orb_spawn_norm(start*angles(0,math.rad(rad),0)*cf(out,-2,0), 3, BrickColor.new("Royal purple"), power, 25, 75, 10, power / 5, 7.5)
			orb_spawn_norm(root.CFrame*angles(0,math.rad(rad),0)*cf(-out,-2,0), 3, BrickColor.new("Royal purple"), power, 25, 75, 10, power / 5, 7.5)
			swait()
		end
	end)()
end))
for i = 0,2,0.1 do
swait()
RH.C0=clerp(RH.C0,cf(1,-1,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(10)),.8)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(1),math.rad(10)),.8)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.25,-0.05)*angles(math.rad(10),math.rad(0),math.rad(0)),.8)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(40),math.rad(0),math.rad(0)),.8)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(-35),math.rad(-10),math.rad(60)),.8)
LW.C0=clerp(LW.C0,cf(-1.4,0.5,0.1)*angles(math.rad(-35),math.rad(10),math.rad(-50)),.8)
end
attack = false
hum.WalkSpeed = storehumanoidWS
end

function EndGROUND()
	attack = true
hum.WalkSpeed = 0
bosschatfunc("THIS IS IT!",MAINRUINCOLOR.Color,1)
--CFuncs["Sound"].Create("rbxassetid://838392947", root, 10, 1)
CFuncs["Sound"].Create("rbxassetid://1368598393", root, 10, 1)
CFuncs["EchoSound"].Create("rbxassetid://1690475123", char, 1.5, 1,0,10,0.15,0.5,1)
CFuncs["EchoSound"].Create("rbxassetid://1690475123", root, 10, 1,0,10,0.15,0.5,1)
local keptcolor = MAINRUINCOLOR
for i = 0,4,0.1 do
swait()
hum.CameraOffset = vt(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)
block(10,"Add",rarm.CFrame*CFrame.new(0,-6,0),vt(4,4,4),0.05,0.05,0.05,MAINRUINCOLOR,MAINRUINCOLOR.Color)
slash(math.random(25,50)/10,5,true,"Round","Add","Out",rarm.CFrame*CFrame.new(0,-6,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.1,0.01,0.1),-0.1,BrickColor.new("Really black"))
RH.C0=clerp(RH.C0,cf(1,-0.15,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(-15),math.rad(-20)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(1),math.rad(20)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.25,-0.05)*angles(math.rad(-20),math.rad(0),math.rad(30)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(-30)),.1)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(170),math.rad(-5),math.rad(10)),.1)
LW.C0=clerp(LW.C0,cf(-1.4,0.5,0.1)*angles(math.rad(-5),math.rad(10),math.rad(-20)),.1)
end
shakes(0.5,1)
symbolizeBlink(root,0,2109052855,MAINRUINCOLOR.Color,25,0,0,0,root,false,0,1)
CFuncs["Sound"].Create("rbxassetid://1368637781", root, 3,1)
CFuncs["Sound"].Create("rbxassetid://763718160", root, 4, 1.1)
CFuncs["Sound"].Create("rbxassetid://782353443", root, 6, 1)
CFuncs["EchoSound"].Create("rbxassetid://824687369", root, 10, 1,0,10,0.25,0.5,1)
CFuncs["EchoSound"].Create("rbxassetid://824687369", char, 2, 1,0,10,0.25,0.5,1)
coroutine.resume(coroutine.create(function()
local eff = Instance.new("ParticleEmitter",cen)
eff.Texture = "rbxassetid://2344870656"
eff.LightEmission = 1
eff.Color = ColorSequence.new(keptcolor.Color)
eff.Rate = 10000000
eff.Enabled = true
eff.EmissionDirection = "Front"
eff.Lifetime = NumberRange.new(2)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,120,0),NumberSequenceKeypoint.new(0.1,40,0),NumberSequenceKeypoint.new(0.8,80,0),NumberSequenceKeypoint.new(1,140,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.8,0),NumberSequenceKeypoint.new(0.5,0,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(500)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.SpreadAngle = Vector2.new(0,900)
eff.RotSpeed = NumberRange.new(-500,500)
wait(0.2)
eff.Enabled = false
wait(5)
eff:Destroy()
end))
coroutine.resume(coroutine.create(function()
	local shval = 10
	for i = 0, 99 do
		swait()
		shval = shval - 0.1
		hum.CameraOffset = vt(math.random(-shval,shval)/15,math.random(-shval,shval)/15,math.random(-shval,shval)/15)
	end
	hum.CameraOffset = vt(0,0,0)
end))
sphere2(5,"Add",root.CFrame*CFrame.new(0,-3,0),vt(10,1,10),1,0.01,1,MAINRUINCOLOR,MAINRUINCOLOR.Color)
sphere2(5,"Add",root.CFrame*CFrame.new(0,-3,0),vt(10,1,10),2,0.01,2,MAINRUINCOLOR,MAINRUINCOLOR.Color)
for i = 0, 24 do
slash(math.random(15,50)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),vt(0.01,0.01,0.01),math.random(200,500)/250,BrickColor.new("Really black"))
end
local rrot = 0
local xam = 1
coroutine.resume(coroutine.create(function()
for i = 0, 14 do
--swait()
rrot = rrot + 40*xam
xam = xam + 0.25
local bonus = xam
local xa = CreateParta(char,0.5,1,"Neon",BrickColor.random())
xa.Anchored = true
xa.Color = Color3.new(0,0,0)
xa.CFrame = root.CFrame*CFrame.new(0,-3,-rrot/1.75)
CreateMesh(xa,"Sphere",30*bonus,1,30*bonus)
local xc = 0
coroutine.resume(coroutine.create(function()
for i = 0, 99 do
	swait()
	xc = xc + 0.01
	xa.Color = Color3.new(xc,0,0)
end
shakes(0.35,0.5)
xa.Transparency = 1
CFuncs["Sound"].Create("rbxassetid://331666100", xa, 5,0.75)
MagniDamage(xa, 30*bonus, 78*bonus,99*bonus, 0, "Normal")
for i = 0, 9 do
slash(math.random(15,50)/10,5,true,"Round","Add","Out",xa.CFrame*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),vt(0.01*bonus,0.01,0.01*bonus),math.random(50,125)/250*bonus,BrickColor.new("Really black"))
end
block(1.5,"Add",xa.CFrame*CFrame.new(0,-10,0),vt(30*bonus,30*bonus,30*bonus),0.3,0.3,0.3,keptcolor,keptcolor.Color)
sphere2(2,"Add",xa.CFrame*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),vt(25*bonus,1,25*bonus),0.05*bonus,1.5*bonus,0.05*bonus,keptcolor,keptcolor.Color)
sphere2(4,"Add",xa.CFrame*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),vt(30*bonus,1,30*bonus),0.05*bonus,1.5*bonus,0.05*bonus,BrickColor.new("Really black"),Color3.new(0,0,0))
game:GetService("Debris"):AddItem(xa, 5)
coroutine.resume(coroutine.create(function()
for i = 0, 19 do
swait()
hum.CameraOffset = vt(math.random(-10,10)/50,math.random(-10,10)/50,math.random(-10,10)/50)
end
hum.CameraOffset = vt(0,0,0)
end))
end))
end
end))
for i = 0,2,0.1 do
swait()
RH.C0=clerp(RH.C0,cf(1,-0.5,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(-25),math.rad(30)),.8)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(1),math.rad(20)),.8)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.25,-0.5)*angles(math.rad(30),math.rad(0),math.rad(50)),.8)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(-50)),.8)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(35),math.rad(-10),math.rad(30)),.8)
LW.C0=clerp(LW.C0,cf(-1.4,0.5,0.1)*angles(math.rad(-35),math.rad(10),math.rad(-50)),.8)
end
attack = false
hum.WalkSpeed = storehumanoidWS
end

function HeavenlyDisk()
attack = true
hum.WalkSpeed = 2
	local orb = Instance.new("Part", char)
	orb.Anchored = true
	orb.BrickColor = MAINRUINCOLOR
	orb.CanCollide = false
	orb.FormFactor = 3
	orb.Name = "Ring"
	orb.Material = "Neon"
	orb.Size = Vector3.new(1, 1, 1)
	orb.Transparency = 0
	orb.TopSurface = 0
	orb.BottomSurface = 0
	local orbm = Instance.new("SpecialMesh", orb)
	orbm.MeshType = "Sphere"
	orbm.Name = "SizeMesh"
	orbm.Scale = vt(0, 0, 0)
	local scaled = 0.1
	local posid = 0
	CFuncs.Sound.Create("rbxassetid://136007472", orb, 1, 1)
	for i = 0, 5, 0.1 do
		swait()
		scaled = scaled + 0.005
		posid = posid - scaled
		orb.CFrame = larm.CFrame * CFrame.new(0,posid/1.5,0)
		orbm.Scale = orbm.Scale + vt(scaled, scaled, scaled)
		sphereMKCharge(5, -0.25, "Add", orb.CFrame * CFrame.Angles(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360))), 0.5, 0.5, 5, -0.005, MAINRUINCOLOR, 10)
		RH.C0 = clerp(RH.C0, cf(1, -1 - 0.1 * math.cos(sine / 32), 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(-2 - 1 * math.cos(sine / 32))), 0.1)
		LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.1 * math.cos(sine / 32), 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-3 + 1 * math.cos(sine / 32)), math.rad(0), math.rad(-10)), 0.1)
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 + 0.1 * math.cos(sine / 32)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.1)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(0)), 0.1)
		LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * angles(math.rad(180), math.rad(20), math.rad(0)), 0.1)
		RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * angles(math.rad(0), math.rad(30 - 5 * math.cos(sine / 30)), math.rad(20)), 0.1)
	end
	
local keptcolor = MAINRUINCOLOR
local radm = math.random(1,3)
if radm == 1 then
bosschatfunc("Dont make this too easy for you.",MAINRUINCOLOR.Color,1)
elseif radm == 2 then
bosschatfunc("Heavenly Bombs!",MAINRUINCOLOR.Color,1)
elseif radm == 3 then
bosschatfunc("Take it!",MAINRUINCOLOR.Color,1)
end
CFuncs["Sound"].Create("rbxassetid://847061203", root, 2, 1)
CFuncs["EchoSound"].Create("rbxassetid://1625448638", root, 4, 1,0,10,0.15,0.5,1)
sphere2(5,"Add",larm.CFrame*CFrame.new(0,-2,0)*CFrame.Angles(math.rad(90),0,0),vt(1,1,1),0.1,0.1,0.1,keptcolor,keptcolor.Color)
sphere2(5,"Add",larm.CFrame*CFrame.new(0,-2,0)*CFrame.Angles(math.rad(90),0,0),vt(1,1,1),0.2,0.2,0.2,keptcolor,keptcolor.Color)
for i = 0, 14 do
PixelBlock(1,math.random(1,3),"Add",larm.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,0.02,BrickColor.new("Toothpaste"),0)
end
CFuncs["Sound"].Create("rbxassetid://763755889", root, 2.5,1.1)
for i = 0,2,0.1 do
swait()
orb.CFrame = larm.CFrame * CFrame.new(0,posid/1.5,0)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-5)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(30),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-60)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(30)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(10)),.3)
LW.C0=clerp(LW.C0,cf(-1.15,0.5,-0.5)*angles(math.rad(90),math.rad(0),math.rad(60)),.3)
end
for i = 0,1,0.6 do
swait()
		orb.CFrame = larm.CFrame * CFrame.new(0,posid/1.5,0)
slash(math.random(15,30)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),vt(0.05,0.01,0.05),math.random(25,75)/250,BrickColor.new("White"))
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-5)),.6)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(30),math.rad(0)),.6)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.6)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(30)),.6)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(10)),.6)
LW.C0=clerp(LW.C0,cf(-1.15,0.5,-0.5)*angles(math.rad(90),math.rad(0),math.rad(60)),.6)
end
for i = 0,1,0.6 do
swait()
		orb.CFrame = larm.CFrame * CFrame.new(0,posid/1.5,0)
slash(math.random(15,30)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),vt(0.05,0.01,0.05),math.random(25,75)/250,BrickColor.new("White"))
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-5)),.6)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(30),math.rad(0)),.6)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.6)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(30)),.6)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(10)),.6)
LW.C0=clerp(LW.C0,cf(-1.15,0.5,-0.5)*angles(math.rad(90),math.rad(0),math.rad(60)),.6)
end
for i = 0,1,0.6 do
swait()
		orb.CFrame = larm.CFrame * CFrame.new(0,posid/1.5,0)
slash(math.random(15,30)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),vt(0.05,0.01,0.05),math.random(25,75)/250,BrickColor.new("White"))
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-5)),.6)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(30),math.rad(0)),.6)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(180)),.6)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(30)),.6)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(10)),.6)
LW.C0=clerp(LW.C0,cf(-1.15,0.5,-0.5)*angles(math.rad(90),math.rad(0),math.rad(60)),.6)
end
for i = 0,1,0.6 do
swait()
		orb.CFrame = larm.CFrame * CFrame.new(0,posid/1.5,0)
slash(math.random(15,30)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),vt(0.05,0.01,0.05),math.random(25,75)/250,BrickColor.new("White"))
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-5)),.6)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(30),math.rad(0)),.6)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(270)),.6)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(30)),.6)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(10)),.6)
LW.C0=clerp(LW.C0,cf(-1.15,0.5,-0.5)*angles(math.rad(90),math.rad(0),math.rad(60)),.6)
end
orb:destroy()
local rot = 15
for i = 0, 2 do
local cfr = root.CFrame*CFrame.new(0,2,-3)
CFuncs["EchoSound"].Create("rbxassetid://763718160",root, 3, 1.1,0,10,0.15,0.5,1)
	local ray = Ray.new(
		cfr.p,                           -- origin
	    (mouse.Hit.p - cfr.p).unit * 500 -- direction
	) 
	local hit, position, normal = workspace:FindPartOnRay(ray, char)
Projectile{
    Size=3.9100001666667;
    Mesh={MeshType=Enum.MeshType.Sphere};
    Lifetime=5;
    Velocity=(CFrame.new(cfr.p,position)*CFrame.Angles(0,math.rad(rot),0)).lookVector*250;
	Origin=cfr;
    Material=Enum.Material.Neon;
    Color=BrickColor.new'Toothpaste';
    Gravity=0;
Hit = (function(hit,pos,norm,data) 
    local hitted = false
	if hitted == false and hit.Parent ~= char then
    local dis = CreateParta(char,1,1,"Neon",keptcolor)
    dis.CFrame = CFrame.new(pos)
	hitted = true
	shakes(0.15,0.25)
	CFuncs["EchoSound"].Create("rbxassetid://782200047", dis, 7, 1.1,0,10,0.15,0.5,1)
	MagniDamage(dis, 30, 82,34575, 0, "Normal")
	sphere2(8,"Add",dis.CFrame,vt(10,1,10),1,0.1,1,keptcolor,keptcolor.Color)
	sphere2(4,"Add",dis.CFrame,vt(1,1,1),0.5,0.5,0.5,keptcolor,keptcolor.Color)
	sphere2(3,"Add",dis.CFrame,vt(1,1,1),0.5,0.5,0.5,BrickColor.new("White"),Color3.new(1,1,1))
	coroutine.resume(coroutine.create(function()
local eff = Instance.new("ParticleEmitter",dis)
eff.Texture = "rbxassetid://2344870656"
eff.LightEmission = 1
eff.Color = ColorSequence.new(dis.Color)
eff.Rate = 10000000
eff.Enabled = true
eff.EmissionDirection = "Front"
eff.Lifetime = NumberRange.new(1)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,75,0),NumberSequenceKeypoint.new(0.1,20,0),NumberSequenceKeypoint.new(0.8,40,0),NumberSequenceKeypoint.new(1,60,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.8,0),NumberSequenceKeypoint.new(0.5,0,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(150)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.SpreadAngle = Vector2.new(0,900)
eff.RotSpeed = NumberRange.new(-500,500)
wait(0.2)
eff.Enabled = false
	end))
	coroutine.resume(coroutine.create(function()
		for i = 0, 9 do
local disr = CreateParta(char,1,1,"Neon",keptcolor)
disr.CFrame = dis.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local at1 = Instance.new("Attachment",disr)
at1.Position = vt(-2,0,0)
local at2 = Instance.new("Attachment",disr)
at2.Position = vt(2,0,0)
local trl = Instance.new('Trail',disr)
trl.Attachment0 = at1
trl.FaceCamera = true
trl.Attachment1 = at2
trl.Texture = "rbxassetid://2342682798"
trl.LightEmission = 1
trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
trl.Color = ColorSequence.new(Color3.new(0.3,1,1))
trl.Lifetime = 0.5
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = disr.CFrame.lookVector*math.random(50,200)
bv.Parent = disr
local val = 0
coroutine.resume(coroutine.create(function()
	swait(30)
	for i = 0, 9 do
		swait()
		val = val + 0.1
		trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, val),NumberSequenceKeypoint.new(1, 1)})
	end
game:GetService("Debris"):AddItem(disr, 3)
end))
end
local eff = Instance.new("ParticleEmitter",dis)
eff.Texture = "rbxassetid://2273224484"
eff.LightEmission = 1
eff.Color = ColorSequence.new(Color3.new(0.3,1,1))
eff.Rate = 500000
eff.Lifetime = NumberRange.new(0.5,2)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,20,0),NumberSequenceKeypoint.new(0.2,2,0),NumberSequenceKeypoint.new(0.8,2,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.1,0,0),NumberSequenceKeypoint.new(0.8,0,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(20,250)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-50,50)
wait(0.25)
eff.Enabled = false
end))
	for i = 0, 9 do
		slash(math.random(10,20)/10,5,true,"Round","Add","Out",dis.CFrame*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),vt(0.01,0.01,0.01),math.random(100,200)/250,BrickColor.new("White"))
	end
for i = 0, 19 do
PixelBlock(1,math.random(5,20),"Add",dis.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),4,4,4,0.08,BrickColor.new("Toothpaste"),0)
end
coroutine.resume(coroutine.create(function()
for i = 0, 19 do
swait()
hum.CameraOffset = vt(math.random(-10,10)/70,math.random(-10,10)/70,math.random(-10,10)/70)
end
hum.CameraOffset = vt(0,0,0)
end))
dis.Anchored = true
dis.Transparency = 1
wait(8)
dis:Destroy()
end
end)}
rot = rot - 15
end
for i = 0,2,0.1 do
swait()
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(-30),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(5)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(60)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(-50)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(10)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(90),math.rad(0),math.rad(-60)),.3)
end
attack = false
hum.WalkSpeed = storehumanoidWS
end

function EternalChaosOrb()
attack = true
hum.WalkSpeed = 1
local keptcolor = MAINRUINCOLOR
CFuncs["Sound"].Create("rbxassetid://1042700914", root, 5, 0.25)
for i = 0,14,0.1 do
		swait()
slash(math.random(25,50)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.new(0,6,1)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.2,0.01,0.2),-0.2,BrickColor.random())
sphere2(3,"Add",root.CFrame*CFrame.new(0,6,0) + root.CFrame.lookVector*1,vt(3,3,3),0.06,0.06,0.06,MAINRUINCOLOR)
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),0.1)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-35),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(1.25, 1, -0.5) * angles(math.rad(170), math.rad(0), math.rad(-20)), 0.1)
LW.C0 = clerp(LW.C0, CFrame.new(-1.25, 1, -0.5) * angles(math.rad(170), math.rad(0), math.rad(20)), 0.1)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1.5),math.rad(0),math.rad(0)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.1)
end
local dis = CreateParta(char,0,1,"Neon",BrickColor.new("Black"))
for i = 0, 4 do
CFuncs["Sound"].Create("rbxassetid://335657174", dis, 10, 0.5)
end
dis.CFrame = root.CFrame*CFrame.new(0,2,-3)
CreateMesh(dis,"Sphere",10,10,10)
local at1 = Instance.new("Attachment",dis)
at1.Position = vt(-5,0,0)
local at2 = Instance.new("Attachment",dis)
at2.Position = vt(5,0,0)
local trl = Instance.new('Trail',dis)
trl.Attachment0 = at1
trl.Attachment1 = at2
trl.Texture = "rbxassetid://1049219073"
trl.LightEmission = 1
trl.FaceCamera = true
trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
trl.Color = ColorSequence.new(dis.Color)
trl.Lifetime = 3
local efec = Instance.new("ParticleEmitter",dis)
efec.Texture = "rbxassetid://2109052855"
efec.LightEmission = 1
efec.Color = ColorSequence.new(Color3.new(0.5,0,1))
efec.Rate = 5
efec.Lifetime = NumberRange.new(3)
efec.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,25,0),NumberSequenceKeypoint.new(0.2,50,0),NumberSequenceKeypoint.new(0.6,35,0),NumberSequenceKeypoint.new(0.8,50,0),NumberSequenceKeypoint.new(1,75,0)})
efec.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.1,0.25,0),NumberSequenceKeypoint.new(0.6,0.25,0),NumberSequenceKeypoint.new(1,1,0)})
efec.Drag = 5
efec.LockedToPart = true
efec.Rotation = NumberRange.new(-500,500)
efec.VelocitySpread = 9000
efec.RotSpeed = NumberRange.new(-500,500)
local a = Instance.new("Part",workspace)
	a.Name = "Direction"	
	a.Anchored = true
	a.BrickColor = bc("Bright red")
a.Material = "Neon"
a.Transparency = 1
	a.CanCollide = false
	local ray = Ray.new(
	    dis.CFrame.p,                           -- origin
	    (mouse.Hit.p - dis.CFrame.p).unit * 500 -- direction
	) 
	local ignore = dis
	local hit, position, normal = workspace:FindPartOnRay(ray, ignore)
	a.BottomSurface = 10
	a.TopSurface = 10
	local distance = (dis.CFrame.p - position).magnitude
	a.Size = Vector3.new(0.1, 0.1, 0.1)
	a.CFrame = CFrame.new(dis.CFrame.p, position) * CFrame.new(0, 0, 0)
dis.CFrame = a.CFrame
a:Destroy()
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = dis.CFrame.lookVector*100
bv.Parent = dis
game:GetService("Debris"):AddItem(dis, 15)
local hitted = false
coroutine.resume(coroutine.create(function()
	while true do
		swait()
		if hitted == false and dis.Parent ~= nil then
			PixelBlock(3,math.random(0,2),"Add",dis.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),5,5,5,0.05,BrickColor.random(),0)
			trl.Color = ColorSequence.new(BrickColor.random().Color)
			efec.Color = ColorSequence.new(BrickColor.random().Color)
coroutine.resume(coroutine.create(function()
for i, v in pairs(FindNearestHead(dis.CFrame.p, 50)) do
if v:FindFirstChild('Head') then
dmg(v)
end
end
end))
		elseif hitted == true and dis.Parent == nil then
			break
		end
	end
end))
coroutine.resume(coroutine.create(function()
dis.Touched:connect(function(hit) 
	if hitted == false and hit.Parent ~= char then
	hitted = true
	shakes(1,1)
	efec.Enabled = false
	for i = 0, 3 do
	CFuncs["Sound"].Create("rbxassetid://1368637781", dis, 7.5,1)
CFuncs["Sound"].Create("rbxassetid://763718160", dis, 10, 1.1)
CFuncs["Sound"].Create("rbxassetid://782353443", dis, 10, 1)
CFuncs["Sound"].Create("rbxassetid://335657174", dis, 10, 1)
end
MagniDamage(dis, 125, 82000,345700005, 0, "Normal")
coroutine.resume(coroutine.create(function()
for i, v in pairs(FindNearestHead(dis.CFrame.p, 100)) do
if v:FindFirstChild('Head') then
dmg(v)
end
end
end))
	sphere2(2,"Add",dis.CFrame,vt(1,1,1),3,3,3,keptcolor,keptcolor.Color)
	sphere2(3,"Add",dis.CFrame,vt(1,1,1),3,3,3,BrickColor.random(),keptcolor.Color)
	sphere2(4,"Add",dis.CFrame,vt(1,1,1),4,4,4,BrickColor.random(),keptcolor.Color)
	sphere2(5,"Add",dis.CFrame,vt(1,1,1),4,4,4,BrickColor.random(),keptcolor.Color)
	coroutine.resume(coroutine.create(function()
local eff = Instance.new("ParticleEmitter",dis)
eff.Texture = "rbxassetid://2344870656"
eff.LightEmission = 1
eff.Color = ColorSequence.new(dis.Color)
eff.Rate = 10000000
eff.Enabled = true
eff.EmissionDirection = "Front"
eff.Lifetime = NumberRange.new(3)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,75,0),NumberSequenceKeypoint.new(0.1,20,0),NumberSequenceKeypoint.new(0.8,40,0),NumberSequenceKeypoint.new(1,60,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.8,0),NumberSequenceKeypoint.new(0.5,0,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(350)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.SpreadAngle = Vector2.new(0,900)
eff.RotSpeed = NumberRange.new(-500,500)
wait(0.2)
eff.Enabled = false
	end))
	coroutine.resume(coroutine.create(function()
		for i = 0, 9 do
local disr = CreateParta(char,1,1,"Neon",keptcolor)
disr.CFrame = dis.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local at1 = Instance.new("Attachment",disr)
at1.Position = vt(-30,0,0)
local at2 = Instance.new("Attachment",disr)
at2.Position = vt(30,0,0)
local trl = Instance.new('Trail',disr)
trl.Attachment0 = at1
trl.FaceCamera = true
trl.Attachment1 = at2
trl.Texture = "rbxassetid://2342682798"
trl.LightEmission = 1
trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
trl.Color = ColorSequence.new(BrickColor.random().Color)
trl.Lifetime = 0.5
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = disr.CFrame.lookVector*math.random(150,350)
bv.Parent = disr
local val = 0
coroutine.resume(coroutine.create(function()
	swait(30)
	for i = 0, 9 do
		swait()
		val = val + 0.1
		trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, val),NumberSequenceKeypoint.new(1, 1)})
	end
game:GetService("Debris"):AddItem(disr, 3)
end))
end
local eff = Instance.new("ParticleEmitter",dis)
eff.Texture = "rbxassetid://2273224484"
eff.LightEmission = 1
eff.Color = ColorSequence.new(BrickColor.random().Color)
eff.Rate = 500000
eff.Lifetime = NumberRange.new(0.5,2)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,20,0),NumberSequenceKeypoint.new(0.2,5,0),NumberSequenceKeypoint.new(0.8,4,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.1,0,0),NumberSequenceKeypoint.new(0.8,0,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(100,400)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-50,50)
wait(0.25)
eff.Enabled = false
end))
	for i = 0, 19 do
		slash(math.random(10,20)/10,5,true,"Round","Add","Out",dis.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(200,800)/250,BrickColor.new("White"))
	end
for i = 0, 49 do
PixelBlock(1,math.random(5,40),"Add",dis.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),10,10,10,0.2,BrickColor.random(),0)
end
coroutine.resume(coroutine.create(function()
for i = 0, 19 do
swait()
hum.CameraOffset = vt(math.random(-10,10)/70,math.random(-10,10)/70,math.random(-10,10)/70)
end
hum.CameraOffset = vt(0,0,0)
end))
dis.Anchored = true
dis.Transparency = 1
wait(8)
dis:Destroy()
end
end)
end))
for i = 0,2,0.1 do
		swait()
              RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,-0.3,-0.5)* angles(math.rad(30),math.rad(0),math.rad(0)),0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.25, 0.5, -0.5) * angles(math.rad(40), math.rad(0), math.rad(-10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.25, 0.5, -0.5) * angles(math.rad(40), math.rad(0), math.rad(10)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-0.75 - 0.05 * math.cos(sine / 25),-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1.5),math.rad(0),math.rad(30)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(10)),.3)
	end
attack = false
hum.WalkSpeed = storehumanoidWS
end

function RapidBurst()
attack = true
hum.WalkSpeed = 0
CFuncs["Sound"].Create("rbxassetid://1368598393", char, 2.5, 0.5)
CFuncs["Sound"].Create("rbxassetid://1368598393", root, 10, 0.5)
CFuncs["EchoSound"].Create("rbxassetid://1718412034", char, 4, 1,0,10,0.15,0.5,1)
bosschatfunc("SHATTER!",MAINRUINCOLOR.Color,2)
local keptcolor = MAINRUINCOLOR
for i = 0,8,0.1 do
swait()
hum.CameraOffset = vt(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)
slash(math.random(25,50)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.new(0,25,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(2,0.01,2),-2,BrickColor.random())
block(10,"Add",root.CFrame*CFrame.new(0,25,0),vt(0,0,0),0.5,0.5,0.5,BrickColor.random(),BrickColor.random().Color)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-15 - 2 * math.cos(sine / 32))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(15 + 2 * math.cos(sine / 32))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.15 + 0.02 * math.cos(sine / 32),-0.1 + 0.05 * math.cos(sine / 32))*angles(math.rad(-15 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-25 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(0 + 2 * math.cos(sine / 53))),.1)
RW.C0=clerp(RW.C0,cf(1.35,1 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(165 + 5 * math.cos(sine / 74)),math.rad(1 - 3 * math.cos(sine / 53)),math.rad(-10 + 3 * math.cos(sine / 45))),.1)
LW.C0=clerp(LW.C0,cf(-1.35,1 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(165 - 3 * math.cos(sine / 73)),math.rad(2 - 1 * math.cos(sine / 55)),math.rad(13 - 3 * math.cos(sine / 45))),.1)
end
shakes(1,3)
for i = 0, 99 do
local dis = CreateParta(char,1,1,"Neon",MAINRUINCOLOR)
dis.CFrame = root.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local at1 = Instance.new("Attachment",dis)
at1.Position = vt(-25000,0,0)
local at2 = Instance.new("Attachment",dis)
at2.Position = vt(25000,0,0)
local trl = Instance.new('Trail',dis)
trl.Attachment0 = at1
trl.FaceCamera = true
trl.Attachment1 = at2
trl.Texture = "rbxassetid://1049219073"
trl.LightEmission = 1
trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
trl.Color = ColorSequence.new(BrickColor.random().Color)
trl.Lifetime = 5
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = dis.CFrame.lookVector*math.random(500,2500)
bv.Parent = dis
game:GetService("Debris"):AddItem(dis, 5)
end
symbolizeBlink(root,0,2109052855,MAINRUINCOLOR.Color,125,0,0,0,root,false,0,1)
symbolizeBlink(root,0,2109052855,MAINRUINCOLOR.Color,125,0,0,0,root,false,0,1.5)
symbolizeBlink(root,0,2109052855,MAINRUINCOLOR.Color,125,0,0,0,root,false,0,3)
sphere2(2,"Add",root.CFrame,vt(1,1,1),1,1,1,BrickColor.random(),BrickColor.random().Color)
sphere2(2,"Add",root.CFrame,vt(1,1,1),2,2,2,BrickColor.random(),BrickColor.random().Color)
sphere2(2,"Add",root.CFrame,vt(1,1,1),4,4,4,BrickColor.random(),BrickColor.random().Color)
sphere2(2,"Add",root.CFrame,vt(1,1,1),8,8,8,BrickColor.random(),BrickColor.random().Color)
CFuncs["Sound"].Create("rbxassetid://1841058541", root, 10,1)
CFuncs["Sound"].Create("rbxassetid://2095993595", char, 5,0.8)
CFuncs["Sound"].Create("rbxassetid://1841058541", char, 5,1)
hum.CameraOffset = vt(0,0,0)
for i = 0, 24 do
slash(math.random(10,30)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(500,1500)/250,BrickColor.random())
end
local distam = 0
coroutine.resume(coroutine.create(function()
for i = 0, 99 do
	wait()
distam = distam + 1
local xa = CreateParta(char,1,1,"SmoothPlastic",BrickColor.random())
xa.Anchored = true
xa.CFrame = root.CFrame*CFrame.new(math.random(-distam,distam),math.random(-distam,distam),math.random(-distam,distam))*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
game:GetService("Debris"):AddItem(xa, 5)
for i = 0, 4 do
slash(math.random(25,50)/10,5,true,"Round","Add","Out",xa.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(200,500)/250,BrickColor.random())
end
coroutine.resume(coroutine.create(function()
local eff = Instance.new("ParticleEmitter",xa)
eff.Texture = "rbxassetid://2344870656"
eff.LightEmission = 1
eff.Color = ColorSequence.new(xa.Color)
eff.Rate = 10000000
eff.Enabled = true
eff.Lifetime = NumberRange.new(2.5)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,75,0),NumberSequenceKeypoint.new(0.1,20,0),NumberSequenceKeypoint.new(0.8,40,0),NumberSequenceKeypoint.new(1,60,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.8,0),NumberSequenceKeypoint.new(0.5,0,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(200)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.SpreadAngle = Vector2.new(0,900)
eff.RotSpeed = NumberRange.new(-500,500)
wait(0.2)
eff.Enabled = false
	end))
coroutine.resume(coroutine.create(function()
local eff = Instance.new("ParticleEmitter",xa)
eff.Texture = "rbxassetid://2273224484"
eff.LightEmission = 1
eff.Color = ColorSequence.new(BrickColor.random().Color)
eff.Rate = 500000
eff.Lifetime = NumberRange.new(1,3)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,30,0),NumberSequenceKeypoint.new(0.2,5,0),NumberSequenceKeypoint.new(0.8,5,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.1,0,0),NumberSequenceKeypoint.new(0.8,0,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(50,500)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-50,50)
wait(0.25)
eff.Enabled = false
end))
coroutine.resume(coroutine.create(function()
for i = 0, 19 do
swait()
hum.CameraOffset = vt(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10)
end
hum.CameraOffset = vt(0,0,0)
end))
CFuncs["Sound"].Create("rbxassetid://675172759", xa, 7,math.random(100,200)/200)
sphere2(5,"Add",xa.CFrame,vt(1,1,1),1,1,1,BrickColor.random(),BrickColor.random().Color)
sphere2(5,"Add",xa.CFrame,vt(1,1,1),2,2,2,BrickColor.random(),BrickColor.random().Color)
MagniDamage(xa, 60, 9999,99999, 0, "Normal")
end
end))
attack = false
hum.WalkSpeed = storehumanoidWS
end


function FallenOrbs()
attack = true
hum.WalkSpeed = 2
local keptcolor = MAINRUINCOLOR
CFuncs["EchoSound"].Create("rbxassetid://1448033299", char, 1.5, 1,0,10,0.15,0.5,1)
CFuncs["EchoSound"].Create("rbxassetid://1448033299", root, 10, 1,0,10,0.15,0.5,1)
local radm = math.random(1,3)
if radm == 1 then
bosschatfunc("This wont be easy to you.",MAINRUINCOLOR.Color,1)
elseif radm == 2 then
bosschatfunc("How about this?",MAINRUINCOLOR.Color,1)
elseif radm == 3 then
bosschatfunc("Swarm!",MAINRUINCOLOR.Color,1)
end
local obj1 = script.chring:Clone()
obj1.Parent = char
obj1.Transparency = 1
obj1.Color = BrickColor.new("Toothpaste").Color
local obj2 = script.spball:Clone()
obj2.Parent = char
obj2.Transparency = 1
obj2.Color = MAINRUINCOLOR.Color
local cfor = CreateParta(char,1,1,"Neon",MAINRUINCOLOR)
cfor.Anchored = true
cfor.CFrame = obj2.CFrame
local cef = Instance.new("ParticleEmitter",cfor)
cef.Texture = "rbxassetid://2344870656"
cef.LightEmission = 1
cef.Color = ColorSequence.new(obj2.Color)
cef.Rate = 150
cef.Lifetime = NumberRange.new(0.25)
cef.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.5,1,0),NumberSequenceKeypoint.new(1,0,0)})
cef.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.5,0.25,0),NumberSequenceKeypoint.new(1,1,0)})
cef.Speed = NumberRange.new(0)
local rval = 0
local eval = 1
CFuncs["Sound"].Create("rbxassetid://136007472", root, 10,0.7)
for i = 0,10,0.1 do
swait()
rval = rval + math.random(30,40)
eval = eval + 1.5
obj1.Transparency = obj1.Transparency - 0.003
obj1.Size = obj1.Size + vt(0,1,1)
obj1.CFrame = root.CFrame*CFrame.new(0,16,0)*CFrame.Angles(math.rad(0),math.rad(rval),math.rad(-90))
obj2.Transparency = obj2.Transparency - 0.005
obj2.Size = obj2.Size + vt(0.5,0.5,0.5)
cef.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.5,eval,0),NumberSequenceKeypoint.new(1,0,0)})
obj2.CFrame = root.CFrame*CFrame.new(0,36,0)*CFrame.Angles(math.rad(rval),math.rad(rval),math.rad(-rval))
cfor.CFrame = obj2.CFrame
slash(math.random(50,90)/10,5,true,"Round","Add","In",obj2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,0.01,1),math.random(-400,-200)/250,BrickColor.new("Deep orange"))
slash(math.random(50,90)/10,5,true,"Round","Add","In",obj2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,0.01,1),math.random(-400,-200)/250,BrickColor.new("Toothpaste"))
sphere2(8,"Add",rarm.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,0.05,-0.01,MAINRUINCOLOR,MAINRUINCOLOR.Color)
RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 2 * math.cos(sine / 32))),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(10 + 2 * math.cos(sine / 32))),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),6 + 0.15 * math.cos(sine / 32))*angles(math.rad(-20 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(70)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-5 - 2 * math.cos(sine / 37)),math.rad(5 + 1 * math.cos(sine / 58)),math.rad(-70 + 2 * math.cos(sine / 53))),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(170 + 6 * math.cos(sine / 72)),math.rad(3 - 2 * math.cos(sine / 58)),math.rad(10 + 2 * math.cos(sine / 45))),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(8 - 7 * math.cos(sine / 66)),math.rad(4 - 3 * math.cos(sine / 59)),math.rad(-9 - 4 * math.cos(sine / 45))),.3)
end
shakes(0.75,0.5)
cef.Enabled = false
coroutine.resume(coroutine.create(function()
	for i = 0,49 do
		swait()
		rval = rval + 100
		obj2.CFrame = obj2.CFrame*CFrame.Angles(math.rad(rval),math.rad(rval),math.rad(-rval))
		obj2.Transparency = obj2.Transparency + 0.02
		obj2.Size = obj2.Size + vt(5,5,5)
		obj1.Transparency = obj1.Transparency + 0.02
		obj1.Size = obj1.Size + vt(0,-0.5,-0.5)
	end
	obj1:Destroy()
	obj2:Destroy()
	cfor:Destroy()
end))
for i = 0, 9 do
slash(math.random(10,40)/10,5,true,"Round","Add","Out",obj2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(100,450)/250,BrickColor.new("Deep orange"))
slash(math.random(10,40)/10,5,true,"Round","Add","Out",obj2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(100,450)/250,BrickColor.new("Toothpaste"))
end
sphere2(3,"Add",obj2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),1,1,1,MAINRUINCOLOR,MAINRUINCOLOR.Color)
sphere2(3,"Add",obj2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),2,2,2,MAINRUINCOLOR,MAINRUINCOLOR.Color)
CFuncs["EchoSound"].Create("rbxassetid://675172759", root, 10, 0.8,0,10,0.15,0.5,1)
CFuncs["EchoSound"].Create("rbxassetid://763717897", root, 7.5, 1.1,0,10,0.15,0.5,1)
CFuncs["EchoSound"].Create("rbxassetid://675172759", root, 5, 0.7,0,10,0.15,0.5,1)
coroutine.resume(coroutine.create(function()
for i = 0, 19 do
	swait()
	local custcol = math.random(1,3)
local dis = CreateParta(char,0.5,1,"Neon",MAINRUINCOLOR)
if custcol == 1 then
dis.BrickColor = MAINRUINCOLOR
elseif custcol == 2 then
dis.BrickColor = BrickColor.new("Toothpaste")
elseif custcol == 3 then
dis.BrickColor = BrickColor.new("Deep orange")
end
dis.Anchored = true
--CFuncs["Sound"].Create("rbxassetid://137463716", dis, 2.5,1.5)
dis.CFrame = root.CFrame*CFrame.new(math.random(-30,30),math.random(11,51),math.random(-30,30))
CreateMesh(dis,"Sphere",2,2,2)
sphere2(5,"Add",dis.CFrame,vt(1,1,1),0.1,0.1,0.1,dis.BrickColor,dis.Color)
slash(math.random(10,20)/10,5,true,"Round","Add","Out",dis.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(10,50)/250,BrickColor.new("White"))
coroutine.resume(coroutine.create(function()
wait(0.5)
dis.Anchored = false
CFuncs["EchoSound"].Create("rbxassetid://1602800656", dis, 5, 1,0,2,0.15,0.1,1)
local at1 = Instance.new("Attachment",dis)
at1.Position = vt(-1,0,0)
local at2 = Instance.new("Attachment",dis)
at2.Position = vt(1,0,0)
local trl = Instance.new('Trail',dis)
trl.Attachment0 = at1
trl.FaceCamera = true
trl.Attachment1 = at2
trl.Texture = "rbxassetid://1049219073"
trl.LightEmission = 1
trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
trl.Color = ColorSequence.new(dis.Color)
trl.Lifetime = 0.6
local a = Instance.new("Part",workspace)
	a.Name = "Direction"	
	a.Anchored = true
	a.BrickColor = bc("Bright red")
a.Material = "Neon"
a.Transparency = 1
	a.CanCollide = false
	local ray = Ray.new(
	    dis.CFrame.p,                           -- origin
	    (mouse.Hit.p - dis.CFrame.p).unit * 500 -- direction
	) 
	local ignore = dis
	local hit, position, normal = workspace:FindPartOnRay(ray, ignore)
	a.BottomSurface = 10
	a.TopSurface = 10
	local distance = (dis.CFrame.p - position).magnitude
	a.Size = Vector3.new(0.1, 0.1, 0.1)
	a.CFrame = CFrame.new(dis.CFrame.p, position) * CFrame.new(0, 0, 0)
dis.CFrame = a.CFrame
a:Destroy()
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = dis.CFrame.lookVector*500
bv.Parent = dis
game:GetService("Debris"):AddItem(dis, 5)
local hitted = false
coroutine.resume(coroutine.create(function()
dis.Touched:connect(function(hit) 
	if hitted == false and hit.Parent ~= char then
	hitted = true
	shakes(0.2,0.3)
	CFuncs["EchoSound"].Create("rbxassetid://675172759", dis, 2.5, 0.8,0,10,0.15,0.5,1)
	MagniDamage(dis, 60, 25456,124672, 0, "Normal")
	sphere2(1,"Add",dis.CFrame,vt(1,1,1),1,1,1,dis.BrickColor,dis.Color)
	sphere2(8,"Add",dis.CFrame,vt(1,1,1),1.25,1.25,1.25,BrickColor.new("White"),Color3.new(1,1,1))
	coroutine.resume(coroutine.create(function()
local eff = Instance.new("ParticleEmitter",dis)
eff.Texture = "rbxassetid://2344870656"
eff.LightEmission = 1
eff.Color = ColorSequence.new(dis.Color)
eff.Rate = 10000000
eff.Enabled = true
--eff.EmissionDirection = "Front"
eff.Lifetime = NumberRange.new(3)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,75,0),NumberSequenceKeypoint.new(0.1,20,0),NumberSequenceKeypoint.new(0.8,40,0),NumberSequenceKeypoint.new(1,60,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.8,0),NumberSequenceKeypoint.new(0.5,0,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(250)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.SpreadAngle = Vector2.new(0,900)
eff.RotSpeed = NumberRange.new(-500,500)
wait(0.2)
eff.Enabled = false
	end))
	coroutine.resume(coroutine.create(function()
for i = 0, 4 do
local disr = CreateParta(char,1,1,"Neon",dis.BrickColor)
disr.CFrame = dis.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local at1 = Instance.new("Attachment",disr)
at1.Position = vt(-10,0,0)
local at2 = Instance.new("Attachment",disr)
at2.Position = vt(10,0,0)
local trl = Instance.new('Trail',disr)
trl.Attachment0 = at1
trl.FaceCamera = true
trl.Attachment1 = at2
trl.Texture = "rbxassetid://2342682798"
trl.LightEmission = 1
trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
trl.Color = ColorSequence.new(disr.Color)
trl.Lifetime = 0.5
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = disr.CFrame.lookVector*math.random(125,250)
bv.Parent = disr
local val = 0
coroutine.resume(coroutine.create(function()
	swait(30)
	for i = 0, 9 do
		swait()
		val = val + 0.1
		trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, val),NumberSequenceKeypoint.new(1, 1)})
	end
game:GetService("Debris"):AddItem(disr, 3)
end))
end
local eff = Instance.new("ParticleEmitter",dis)
eff.Texture = "rbxassetid://2273224484"
eff.LightEmission = 1
eff.Color = ColorSequence.new(dis.Color)
eff.Rate = 500000
eff.Lifetime = NumberRange.new(0.5,2)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,20,0),NumberSequenceKeypoint.new(0.2,2,0),NumberSequenceKeypoint.new(0.8,2,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.1,0,0),NumberSequenceKeypoint.new(0.8,0,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(20,250)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-50,50)
wait(0.5)
eff.Enabled = false
end))
	for i = 0, 4 do
		slash(math.random(20,50)/10,5,true,"Round","Add","Out",dis.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(100,200)/250,BrickColor.new("White"))
	end
coroutine.resume(coroutine.create(function()
for i = 0, 19 do
swait()
hum.CameraOffset = vt(math.random(-10,10)/70,math.random(-10,10)/70,math.random(-10,10)/70)
end
hum.CameraOffset = vt(0,0,0)
end))
dis.Anchored = true
dis.Transparency = 1
wait(8)
dis:Destroy()
end
end)
end))
end))
end
end))
for i = 0,9,0.1 do
swait()
RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 2 * math.cos(sine / 32))),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(10 + 2 * math.cos(sine / 32))),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),6 + 0.15 * math.cos(sine / 32))*angles(math.rad(0 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(90)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(15 - 2 * math.cos(sine / 37)),math.rad(-15 + 1 * math.cos(sine / 58)),math.rad(-90 + 2 * math.cos(sine / 53))),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(90 + 6 * math.cos(sine / 72)),math.rad(3 - 2 * math.cos(sine / 58)),math.rad(90 + 2 * math.cos(sine / 45))),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(8 - 7 * math.cos(sine / 66)),math.rad(4 - 3 * math.cos(sine / 59)),math.rad(-9 - 4 * math.cos(sine / 45))),.3)
end
attack = false
hum.WalkSpeed = storehumanoidWS
end

function EquinoxOrbs()
hum.WalkSpeed = 0
attack = true
for i = 0,1,0.1 do
swait()
	RH.C0=clerp(RH.C0,cf(1,-0.5,-0.6)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(1.5),math.rad(0),math.rad(-20)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(1),math.rad(0),math.rad(20)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.5,0.5)*angles(math.rad(90),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-17),math.rad(0),math.rad(0)),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(5),math.rad(40)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(-5),math.rad(-40)),.3)
end
shakes(0.4,0.5)
sphere2(5,"Add",root.CFrame,vt(1,1,1),1.5,1.5,1.5,MAINRUINCOLOR)
sphere2(5,"Add",root.CFrame,vt(1,1,1),1,1,1,MAINRUINCOLOR)
for i = 0, 24 do
		slash(math.random(10,50)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.Angles(math.rad(90),math.rad(math.random(-360,360)),math.rad(0)),vt(0.01,0.01,0.01),math.random(100,400)/250,BrickColor.new("White"))
end
CFuncs["Sound"].Create("rbxassetid://763716870", root, 8,1)
CFuncs["Sound"].Create("rbxassetid://782353443", root, 10,0.8)
CFuncs["Sound"].Create("rbxassetid://782225570", root, 9,0.5)
CFuncs["Sound"].Create("rbxassetid://763717569", root, 8,0.9)
for i = 0,4,0.1 do
swait()
root.CFrame = root.CFrame + root.CFrame.lookVector*7.5
local dis = CreateParta(char,0.25,1,"Neon",MAINRUINCOLOR)
CreateMesh(dis,"Sphere",1,1,1)
dis.Anchored = true
dis.CFrame = larm.CFrame*CFrame.new(0,-3,0)
local dis2 = CreateParta(char,0.25,1,"Neon",BrickColor.new("Really black"))
CreateMesh(dis2,"Sphere",1,1,1)
dis2.Anchored = true
dis2.CFrame = rarm.CFrame*CFrame.new(0,-3,0)
sphere2(5,"Add",dis.CFrame,vt(1,1,1),0.1,0.1,0.1,dis.BrickColor,dis.Color)
sphere2(5,"Add",dis2.CFrame,vt(1,1,1),0.1,0.1,0.1,dis2.BrickColor,dis2.Color)
coroutine.resume(coroutine.create(function()
	swait(60)
	dis.Transparency = 1
	dis2.Transparency = 1
coroutine.resume(coroutine.create(function()
for i = 0, 19 do
swait()
hum.CameraOffset = vt(math.random(-10,10)/40,math.random(-10,10)/40,math.random(-10,10)/40)
end
hum.CameraOffset = vt(0,0,0)
end))
coroutine.resume(coroutine.create(function()
local eff = Instance.new("ParticleEmitter",dis)
eff.Texture = "rbxassetid://2273224484"
eff.LightEmission = 1
eff.Color = ColorSequence.new(dis.Color)
eff.Rate = 500000
eff.Lifetime = NumberRange.new(0.5,2)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,20,0),NumberSequenceKeypoint.new(0.2,2,0),NumberSequenceKeypoint.new(0.8,2,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.1,0,0),NumberSequenceKeypoint.new(0.8,0,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(50,450)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-50,50)
local eff2 = eff:Clone()
eff2.Parent = dis2
eff2.LightEmission = 0
eff2.Color = ColorSequence.new(dis2.Color)
wait(0.25)
eff.Enabled = false
eff2.Enabled = false
end))
MagniDamage(dis, 55, 89,219788936, 0, "Normal")
MagniDamage(dis2, 55, 89,219788936, 0, "Normal")
    for i = 0, 2 do
		slash(math.random(10,80)/10,5,true,"Round","Add","Out",dis.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(100,300)/250,dis.BrickColor)
		slash(math.random(10,80)/10,5,true,"Round","Add","Out",dis2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(100,300)/250,dis2.BrickColor)
	end
	CFuncs["Sound"].Create("rbxassetid://782353117", dis, 1,0.75)
	CFuncs["Sound"].Create("rbxassetid://782353117", dis2, 1,0.75)
	CFuncs["Sound"].Create("rbxassetid://1666361078", dis, 1,1.25)
	CFuncs["Sound"].Create("rbxassetid://1666361078", dis2, 1,1.25)
	CFuncs["Sound"].Create("rbxassetid://782353443", dis, 2,1.15)
	CFuncs["Sound"].Create("rbxassetid://782353443", dis2, 2,1.15)
	sphere2(3,"Add",dis.CFrame,vt(1,1,1),0.8,0.8,0.8,dis.BrickColor,dis.Color)
	sphere2(3,"Add",dis2.CFrame,vt(1,1,1),0.8,0.8,0.8,dis2.BrickColor,dis2.Color)
end))
game:GetService("Debris"):AddItem(dis, 5)
game:GetService("Debris"):AddItem(dis2, 5)
RH.C0=clerp(RH.C0,cf(1,-0.5,-0.6)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(1.5),math.rad(0),math.rad(-20)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(1),math.rad(0),math.rad(20)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.5,0.5)*angles(math.rad(90),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-17),math.rad(0),math.rad(0)),.2)
RW.C0=clerp(RW.C0,cf(1.4,1.5,0)*angles(math.rad(0),math.rad(5),math.rad(210)),.1)
LW.C0=clerp(LW.C0,cf(-1.4,1.5,0)*angles(math.rad(0),math.rad(-5),math.rad(-210)),.1)
end
attack = false
hum.WalkSpeed = storehumanoidWS
end
function FallenDEMISE()
attack = true
hum.WalkSpeed = 0
local keptcolor = MAINRUINCOLOR
bosschatfunc("ALL OF YOUR EXISTANCE WILL BE GONE.",MAINRUINCOLOR.Color,3)
CFuncs["Sound"].Create("rbxassetid://289315275", char, 2.5,0.75)
CFuncs["Sound"].Create("rbxassetid://136007472", char, 2,0.5)
for i = 0, 15, 0.1 do
swait()
local dis = CreateParta(char,1,1,"Neon",MAINRUINCOLOR)
dis.CFrame = root.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local at1 = Instance.new("Attachment",dis)
at1.Position = vt(-25000,0,0)
local at2 = Instance.new("Attachment",dis)
at2.Position = vt(25000,0,0)
local trl = Instance.new('Trail',dis)
trl.Attachment0 = at1
trl.FaceCamera = true
trl.Attachment1 = at2
trl.Texture = "rbxassetid://1049219073"
trl.LightEmission = 1
trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
trl.Color = ColorSequence.new(dis.Color)
trl.Lifetime = 5
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = dis.CFrame.lookVector*math.random(500,2500)
bv.Parent = dis
game:GetService("Debris"):AddItem(dis, 1)
sphere2(15,"Add",root.CFrame,vt(8,8,8),2,2,2,MAINRUINCOLOR)
slash(math.random(30,150)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-360,360)),math.rad(math.random(-5,5))),vt(1,0.01,1),math.random(100,500)/250,BrickColor.new("Toothpaste"))
slash(math.random(30,150)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-360,360)),math.rad(math.random(-5,5))),vt(1,0.01,1),math.random(100,500)/250,BrickColor.new("Deep orange"))
RH.C0=clerp(RH.C0,cf(1,-0.35,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(-35)),.1)
LH.C0=clerp(LH.C0,cf(-1,-0.45,-0.5)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(35)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(5),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(55),math.rad(0),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1.15,0.5,-0.5)*angles(math.rad(92),math.rad(0),math.rad(-67)),.1)
LW.C0=clerp(LW.C0,cf(-1.15,0.5,-0.5)*angles(math.rad(90),math.rad(0),math.rad(68)),.1)
end
CFuncs["Sound"].Create("rbxassetid://294188875", char, 10,1)
shakes(5,3)
for i = 0, 30, 0.1 do
swait()
coroutine.resume(coroutine.create(function()
for i, v in pairs(FindNearestHead(root.CFrame.p, 10000000)) do
if v:FindFirstChild('Head') then
dmg(v)
end
end
end))
local dis = CreateParta(char,1,1,"Neon",MAINRUINCOLOR)
dis.CFrame = root.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local at1 = Instance.new("Attachment",dis)
at1.Position = vt(-50000,0,0)
local at2 = Instance.new("Attachment",dis)
at2.Position = vt(50000,0,0)
local trl = Instance.new('Trail',dis)
trl.Attachment0 = at1
trl.FaceCamera = true
trl.Attachment1 = at2
trl.Texture = "rbxassetid://1049219073"
trl.LightEmission = 1
trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
trl.Color = ColorSequence.new(dis.Color)
trl.Lifetime = 10
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = dis.CFrame.lookVector*math.random(1500,10000)
bv.Parent = dis
game:GetService("Debris"):AddItem(dis, math.random(1,4))
sphere2(15,"Add",root.CFrame,vt(8,80000,8),5,1,5,MAINRUINCOLOR)
sphere2(15,"Add",root.CFrame,vt(8,8,8),8,8,8,MAINRUINCOLOR)
sphere2(2,"Add",root.CFrame*CFrame.new(math.random(-2000,2000),math.random(-2000,2000),math.random(-2000,2000)),vt(0,0,0),5,5,5,BrickColor.new("Deep orange"))
sphere2(2,"Add",root.CFrame*CFrame.new(math.random(-2000,2000),math.random(-2000,2000),math.random(-2000,2000)),vt(0,0,0),5,5,5,BrickColor.new("Toothpaste"))
slash(math.random(50,100)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(5,0.01,5),math.random(500,5000)/250,BrickColor.new("Deep orange"))
slash(math.random(50,100)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(5,0.01,5),math.random(500,5000)/250,BrickColor.new("Toothpaste"))
for i = 0, 2 do
slash(math.random(50,100)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.new(0,math.random(-3,1000),0)*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-360,360)),math.rad(math.random(-5,5))),vt(2,0.01,2),math.random(250,750)/250,MAINRUINCOLOR)
end
RH.C0=clerp(RH.C0,cf(1,-0.35,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(-35)),.1)
LH.C0=clerp(LH.C0,cf(-1,-0.45,-0.5)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(35)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(5),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(55),math.rad(0),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1.15,0.5,-0.5)*angles(math.rad(92),math.rad(0),math.rad(-67)),.1)
LW.C0=clerp(LW.C0,cf(-1.15,0.5,-0.5)*angles(math.rad(90),math.rad(0),math.rad(68)),.1)
end
attack = false
hum.WalkSpeed = storehumanoidWS
end

function SHDTwist()
	attack = true
hum.WalkSpeed = 2
CFuncs["Sound"].Create("rbxassetid://136007472", rarm, 1.5,1.25)
local obj1 = script.chring2:Clone()
obj1.Parent = char
obj1.Transparency = 1
obj1.Size = vt(1,1,1)
obj1.Color = BrickColor.new("Pink").Color
local obj2 = script.spball:Clone()
obj2.Parent = char
obj2.Transparency = 1
obj2.Size = vt(1,1,1)
obj2.Color = MAINRUINCOLOR.Color
local cfor = CreateParta(char,1,1,"Neon",MAINRUINCOLOR)
cfor.Anchored = true
cfor.CFrame = obj2.CFrame
local cef = Instance.new("ParticleEmitter",cfor)
cef.Texture = "rbxassetid://2344870656"
cef.LightEmission = 1
cef.Color = ColorSequence.new(obj2.Color)
cef.Rate = 150
cef.Lifetime = NumberRange.new(0.25)
cef.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.5,1,0),NumberSequenceKeypoint.new(1,0,0)})
cef.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.5,0.25,0),NumberSequenceKeypoint.new(1,1,0)})
cef.Speed = NumberRange.new(0)
local rval = 0
local eval = 1
	for i = 0,7,0.1 do
swait()
rval = rval + math.random(30,40)
eval = eval + 0.45
obj1.Transparency = obj1.Transparency - 0.005
obj1.Size = obj1.Size + vt(0.3,0.3,0.1)
obj1.CFrame = root.CFrame*CFrame.new(0,1,-5)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(rval))
obj2.Transparency = obj2.Transparency - 0.007
obj2.Size = obj2.Size + vt(0.15,0.15,0.15)
cef.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.5,eval,0),NumberSequenceKeypoint.new(1,0,0)})
obj2.CFrame = root.CFrame*CFrame.new(0,1,-7)*CFrame.Angles(math.rad(rval),math.rad(rval),math.rad(-rval))
cfor.CFrame = obj2.CFrame
sphere2(8,"Add",larm.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,0.05,-0.01,BrickColor.new("Pastel light blue"),BrickColor.new("Pastel light blue").Color)
sphere2(10,"Add",larm.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,0.15,-0.01,BrickColor.new("Pink"),BrickColor.new("Pink").Color)
RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 2 * math.cos(sine / 32))),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(10 + 2 * math.cos(sine / 32))),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),1 + 0.15 * math.cos(sine / 32))*angles(math.rad(0 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(-50)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 2 * math.cos(sine / 37)),math.rad(10 + 1 * math.cos(sine / 58)),math.rad(50 + 2 * math.cos(sine / 53))),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(10 + 6 * math.cos(sine / 72)),math.rad(3 - 2 * math.cos(sine / 58)),math.rad(5 + 2 * math.cos(sine / 45))),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(90 - 7 * math.cos(sine / 66)),math.rad(4 - 3 * math.cos(sine / 59)),math.rad(-50 - 4 * math.cos(sine / 45))),.3)
	end
	shakes(0.25,0.25)
	cef.Enabled = false
	coroutine.resume(coroutine.create(function()
	for i = 0,49 do
		swait()
		rval = rval + 100
		obj2.CFrame = obj2.CFrame*CFrame.Angles(math.rad(rval),math.rad(rval),math.rad(-rval))
		obj2.Transparency = obj2.Transparency + 0.02
		obj2.Size = obj2.Size + vt(5,5,5)
		obj1.Transparency = obj1.Transparency + 0.02
		obj1.Size = obj1.Size + vt(0,-0.5,-0.5)
	end
	obj1:Destroy()
	obj2:Destroy()
	cfor:Destroy()
end))
	local lva = 1
	local ica = 0
local cent = CreateParta(char,1,1,"Neon",MAINRUINCOLOR)
CFuncs["Sound"].Create("rbxassetid://1177785010", cent, 10, 1)
cent.CFrame = root.CFrame*CFrame.Angles(0,0,0) + root.CFrame.lookVector*5
cent.Anchored=true
sphere2(2,"Add",cent.CFrame,vt(1,1,1),0.5,0.5,0.5,BrickColor.new("Black"),BrickColor.new("Black").Color)
sphere2(3,"Add",cent.CFrame,vt(1,1,1),0.5,0.5,0.5,BrickColor.new("Crimson"),BrickColor.new("Crimson").Color)

local a = Instance.new("Part",workspace)
	a.Name = "Direction"	
	a.Anchored = true
	a.BrickColor = bc("Bright red")
a.Material = "Neon"
a.Transparency = 1
	a.CanCollide = false
	local ray = Ray.new(
	    cent.CFrame.p,                           -- origin
	    (mouse.Hit.p - cent.CFrame.p).unit * 500 -- direction
	) 
	local ignore = cent
	local hit, position, normal = workspace:FindPartOnRay(ray, ignore)
Projectile{
    Size=Vector3.new(.05,.05,.05);
    Mesh={MeshType=Enum.MeshType.Sphere,Scale=Vector3.new(0,0,0)};
    Lifetime=5;
    Velocity=CFrame.new(cent.CFrame.p,position).lookVector*100;
	Origin=cent.CFrame;
    Material=Enum.Material.Neon;
    Color=BrickColor.new'Black';
    Gravity=0;
Update = function(cent)
	ica = ica + 5
	sphere2(3,"Add",cent.CFrame,vt(5,5,5),-0.05,-0.05,-0.05,BrickColor.new("Black"))
	sphere2(5,"Add",cent.CFrame*CFrame.Angles(0,0,math.rad(ica))*CFrame.new(0,-5,0),vt(4,4,4),-0.04,-0.04,-0.04,BrickColor.new("Crimson"))
	sphere2(5,"Add",cent.CFrame*CFrame.Angles(0,0,math.rad(ica))*CFrame.new(0,5,0),vt(4,4,4),-0.04,-0.04,-0.04,BrickColor.new("Black"))

end;
Hit = (function(hit,pos,norm,data) 
		if hit.Parent ~= char then
	cent.Anchored = true
	cent.CFrame=cf(pos)
	shakes(0.5,0.5)
	CFuncs["Sound"].Create("rbxassetid://782353443", cent, 10, 1)
	CFuncs["Sound"].Create("rbxassetid://1368637781", cent, 8, 1)
	CFuncs["Sound"].Create("rbxassetid://763717897", cent, 5, 1)
	CFuncs["EchoSound"].Create("rbxassetid://1177785010", cent, 8, 1.1,0,10,0.15,0.5,1)
	MagniDamage(cent, 50, 50,99999, 0, "Normal")
	sphere2(2,"Add",cent.CFrame,vt(1,1,1),1,1,1,BrickColor.new("Black"),BrickColor.new("Black").Color)
	sphere2(3,"Add",cent.CFrame,vt(1,1,1),1.2,1.2,1.2,BrickColor.new("Crimson"),BrickColor.new("Crimson").Color)
	for i = 0, 19 do
		slash(math.random(10,50)/10,5,true,"Round","Add","Out",cent.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(200,400)/250,BrickColor.new("Pink"))
		slash(math.random(10,50)/10,5,true,"Round","Add","Out",cent.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(150,300)/250,BrickColor.new("Black"))
	end
	coroutine.resume(coroutine.create(function()
local eff = Instance.new("ParticleEmitter",cent)
eff.Texture = "rbxassetid://2344870656"
eff.LightEmission = 1
eff.Color = ColorSequence.new(BrickColor.new("Black").Color)
eff.Rate = 10000000
eff.Enabled = true
--eff.EmissionDirection = "Front"
eff.Lifetime = NumberRange.new(5)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,75,0),NumberSequenceKeypoint.new(0.1,40,0),NumberSequenceKeypoint.new(0.8,60,0),NumberSequenceKeypoint.new(1,80,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.8,0),NumberSequenceKeypoint.new(0.5,0,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(350)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.SpreadAngle = Vector2.new(0,900)
eff.RotSpeed = NumberRange.new(-500,500)
local eff2 = eff:Clone()
eff2.Parent = cent
eff2.Speed = NumberRange.new(250) 
eff2.Color = ColorSequence.new(BrickColor.new("Crimson").Color)
wait(0.2)
eff.Enabled = false
eff2.Enabled = false
	end))
end
end)}

game:GetService("Debris"):AddItem(cent, 20)
attack = false
hum.WalkSpeed = storehumanoidWS
end

function roldbeam()
attack = true
hum.WalkSpeed = 0
local rngb = Instance.new("Part", char)
        rngb.Anchored = true
        rngb.BrickColor = origcolor
        rngb.CanCollide = false
        rngb.FormFactor = 3
        rngb.Name = "Ring"
        rngb.Material = "Neon"
        rngb.Size = Vector3.new(1, 0.05, 1)
        rngb.Transparency = 1
        rngb.TopSurface = 0
        rngb.BottomSurface = 0
        local rngmb = Instance.new("SpecialMesh", rngb)
        rngmb.MeshType = "Brick"
rngmb.Name = "SizeMesh"
rngmb.Scale = vt(0,1,0)

local orb = rngb:Clone()
orb.Parent = char
orb.Transparency = 0
orb.BrickColor = BrickColor.new("White")
orb.Size = vt(1,1,1)
local orbmish = orb.SizeMesh
orbmish.Scale = vt(0,0,0)
orbmish.MeshType = "Sphere"

local orbe = rngb:Clone()
orbe.Parent = char
orbe.Transparency = 0.5
orbe.BrickColor = BrickColor.new("New Yeller")
orbe.Size = vt(1,1,1)
local orbmish2 = orbe.SizeMesh
orbmish2.Scale = vt(0,0,0)
orbmish2.MeshType = "Sphere"
orbe.Color = Color3.new(r/255,g/255,b/255)

local obj1 = script.chring2:Clone()
obj1.Parent = char
obj1.Transparency = 1
obj1.Size = vt(1,1,1)
obj1.Color = BrickColor.new("White").Color

rngb:Destroy()
--[[CFuncs["Sound"].Create("rbxassetid://136007472", orb, 1.5, 1)
local scaled = 1
for i = 0,5,0.1 do
swait()
scaled = scaled - 0.02
if rainbowmode == true then
orbe.Color = Color3.new(r/255,g/255,b/255)
end
orbmish.Scale = orbmish.Scale + vt(scaled/1.5,scaled/1.5,scaled/1.5)
orbmish2.Scale = orbmish2.Scale + vt(scaled*1.1/1.5,scaled*1.1/1.5,scaled*1.1/1.5)
orb.CFrame = root.CFrame*CFrame.new(0,0.5,0) + root.CFrame.lookVector*11.5
orbe.CFrame = root.CFrame*CFrame.new(0,0.5,0) + root.CFrame.lookVector*11.5
sphereMKCharge(2.5,-0.5,"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2.5,2.5,15,-0.025,MAINRUINCOLOR,25)
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(90)),0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-0.5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(10),math.rad(0)),.3)
RootPart.CFrame = FaceMouse()[1]
end]]--
CFuncs["Sound"].Create("rbxassetid://136007472", root, 2, 2)
local rval = 0
local effx = Instance.new("ParticleEmitter",obj1)
effx.Texture = "rbxassetid://2344870656"
effx.LightEmission = 1
effx.Color = ColorSequence.new(Color3.new(1,1,1))
effx.Rate = 10000000
effx.Enabled = true
effx.EmissionDirection = "Front"
effx.Lifetime = NumberRange.new(0.5)
effx.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,10,0),NumberSequenceKeypoint.new(0.1,10,0),NumberSequenceKeypoint.new(0.8,25,0),NumberSequenceKeypoint.new(1,0,0)})
effx.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.8,0),NumberSequenceKeypoint.new(0.5,0,0),NumberSequenceKeypoint.new(1,1,0)})
effx.Speed = NumberRange.new(50)
effx.Drag = 5
effx.Rotation = NumberRange.new(-500,500)
effx.SpreadAngle = Vector2.new(900,900)
effx.RotSpeed = NumberRange.new(-500,500)
for i = 0,2,0.1 do
swait()
if rainbowmode == true then
obj1.Color = Color3.new(r/255,g/255,b/255)
orbe.Color = Color3.new(r/255,g/255,b/255)
effx.Color = ColorSequence.new(Color3.new(r/255,g/255,b/255))
end
rval = rval + math.random(30,40)
obj1.Transparency = obj1.Transparency - 0.05
obj1.Size = obj1.Size + vt(1.5,1.5,0.3)
obj1.CFrame = root.CFrame*CFrame.new(0,1,-5)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(rval))
orb.CFrame = root.CFrame*CFrame.new(0,0.5,0) + root.CFrame.lookVector*11.5
orbe.CFrame = root.CFrame*CFrame.new(0,0.5,0) + root.CFrame.lookVector*11.5
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(90)),0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-0.5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(10),math.rad(0)),.3)
end
orbe.Transparency = 1
orb.Transparency = 1
orb.CFrame = root.CFrame*CFrame.new(0,0.5,0) + root.CFrame.lookVector*5
CFuncs["Sound"].Create("rbxassetid://294188875", char, 1, 1.5)
local a = Instance.new("Part",Character)
	a.Name = "Direction"	
	a.Anchored = true
	a.BrickColor = bc("White")
a.Material = "Neon"
a.Transparency = 0
a.Shape = "Cylinder"
	a.CanCollide = false
local a2 = Instance.new("Part",Character)
	a2.Name = "Direction"	
	a2.Anchored = true
	a2.BrickColor = bc("New Yeller")
a2.Color = Color3.new(r/255,g/255,b/255)
a2.Material = "Neon"
a2.Transparency = 0.5
a2.Shape = "Cylinder"
	a2.CanCollide = false
local ba = Instance.new("Part",Character)
	ba.Name = "HitDirect"	
	ba.Anchored = true
	ba.BrickColor = bc("Cool yellow")
ba.Material = "Neon"
ba.Transparency = 1
	ba.CanCollide = false
	local ray = Ray.new(
	    orb.CFrame.p,                           -- origin
	    (mouse.Hit.p - orb.CFrame.p).unit * 1000 -- direction
	) 
	local ignore = Character
	local hit, position, normal = workspace:FindPartOnRay(ray, ignore)
	a.BottomSurface = 10
	a.TopSurface = 10
	a2.BottomSurface = 10
	a2.TopSurface = 10
	local distance = (orb.CFrame.p - position).magnitude
	a.Size = Vector3.new(distance, 1, 1)
	a.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance/2)
	a2.Size = Vector3.new(distance, 1, 1)
	a2.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance/2)
ba.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance)
a.CFrame = a.CFrame*CFrame.Angles(0,math.rad(90),0)
a2.CFrame = a2.CFrame*CFrame.Angles(0,math.rad(90),0)
game:GetService("Debris"):AddItem(a, 20)
game:GetService("Debris"):AddItem(a2, 20)
game:GetService("Debris"):AddItem(ba, 20)
local msh = Instance.new("SpecialMesh",a)
msh.MeshType = "Cylinder"
msh.Scale = vt(1,5*5,5*5)
local msh2 = Instance.new("SpecialMesh",a2)
msh2.MeshType = "Cylinder"
msh2.Scale = vt(1,6*5,6*5)
local eff = Instance.new("ParticleEmitter",ba)
eff.Texture = "rbxassetid://2344870656"
eff.LightEmission = 1
eff.Color = ColorSequence.new(Color3.new(1,1,1))
eff.Rate = 10000000
eff.Enabled = true
eff.EmissionDirection = "Front"
eff.Lifetime = NumberRange.new(1)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.1,50,0),NumberSequenceKeypoint.new(0.8,100,0),NumberSequenceKeypoint.new(1,120,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.8,0),NumberSequenceKeypoint.new(0.5,0,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(50)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.SpreadAngle = Vector2.new(900,900)
eff.RotSpeed = NumberRange.new(-500,500)
local eff2 = eff:Clone()
eff2.Parent = ba
eff2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,20,0),NumberSequenceKeypoint.new(0.1,3,0),NumberSequenceKeypoint.new(0.8,5,0),NumberSequenceKeypoint.new(1,0,0)})
eff2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.5,0,0),NumberSequenceKeypoint.new(1,1,0)})
eff2.Speed = NumberRange.new(350)
shakes(0.6,1.25)
for i = 0,10,0.1 do
swait()
rval = rval + math.random(30,40)
obj1.Color = Color3.new(r/255,g/255,b/255)
effx.Color = ColorSequence.new(Color3.new(r/255,g/255,b/255))
eff.Color = ColorSequence.new(Color3.new(r/255,g/255,b/255))
eff2.Color = ColorSequence.new(Color3.new(r/255,g/255,b/255))
obj1.CFrame = root.CFrame*CFrame.new(0,1,-5)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(rval))
a2.Color = Color3.new(r/255,g/255,b/255)
orb.CFrame = root.CFrame*CFrame.new(0,0.5,0) + root.CFrame.lookVector*4
orbe.CFrame = root.CFrame*CFrame.new(0,0.5,0) + root.CFrame.lookVector*4
ray = Ray.new(
	    orb.CFrame.p,                           -- origin
	    (mouse.Hit.p - orb.CFrame.p).unit * 1000 -- direction
	) 
hit, position, normal = workspace:FindPartOnRay(ray, ignore)
distance = (orb.CFrame.p - position).magnitude
a.Size = Vector3.new(distance, 1, 1)
a.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance/2)
a2.Size = Vector3.new(distance, 1, 1)
a2.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance/2)
ba.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance)
a.CFrame = a.CFrame*CFrame.Angles(0,math.rad(90),0)
a2.CFrame = a2.CFrame*CFrame.Angles(0,math.rad(90),0)
msh.Scale = msh.Scale - vt(0,0.05*5,0.05*5)
msh2.Scale = msh2.Scale - vt(0,0.06*5,0.06*5)
slash(math.random(50,80)/10,5,true,"Round","Add","Out",ba.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(100,250)/250,ba.BrickColor)
sphereMK(5,1.5,"Add",ba.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),15,15,25,-0.15,MAINRUINCOLOR,0)
sphereMK(5,1.5,"Add",ba.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),15,15,25,-0.15,MAINRUINCOLOR,0)
sphereMK(5,2.5,"Add",ba.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3,3,100,-0.03,MAINRUINCOLOR,0)
MagniDamage(ba, 30, 500,60000, 0, "Normal")
end
a:Destroy()
a2:Destroy()
orb:Destroy()
orbe:Destroy()
eff.Enabled = false
eff2.Enabled = false
effx.Enabled = false
coroutine.resume(coroutine.create(function()
	for i = 0,24 do
		swait()
		obj1.Transparency = obj1.Transparency + 0.04
		obj1.Size = obj1.Size + vt(-1,-1,0)
	end
	wait(1)
	obj1:Destroy()
end))
coroutine.resume(coroutine.create(function()
wait(5)
ba:Destroy()
end))
attack = false
hum.WalkSpeed = storehumanoidWS
end


function lovesqueal()
attack = true
hum.WalkSpeed = 0
CFuncs["Sound"].Create("rbxassetid://2500548008", root, 1, 1)
local blush = Instance.new("Decal",hed)
blush.Texture = "rbxassetid://898404027"
blush.Face = "Front"
for i = 0, 11, 0.1 do
	swait()
	RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(3),math.rad(0),math.rad(20 - 2 * math.cos(sine / 32))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(6),math.rad(0),math.rad(-20 + 2 * math.cos(sine / 32))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.2 + 0.02 * math.cos(sine / 32),0 + 0.05 * math.cos(sine / 32))*angles(math.rad(20 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-20 - 5 * math.cos(sine / 37)),math.rad(0 + 14 * math.cos(sine / 58)),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(33 + 5 * math.cos(sine / 74)),math.rad(1 - 3 * math.cos(sine / 53)),math.rad(3 + 3 * math.cos(sine / 45))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(23 - 3 * math.cos(sine / 73)),math.rad(2 - 1 * math.cos(sine / 55)),math.rad(-3 - 3 * math.cos(sine / 45))),.1)
end
for x = 0, 1 do
for i = 0, 1, 0.2 do
	swait()
	RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(3),math.rad(0),math.rad(-5 - 2 * math.cos(sine / 32))),.3)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(6),math.rad(0),math.rad(5 + 2 * math.cos(sine / 32))),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.05 + 0.02 * math.cos(sine / 32),0 + 0.05 * math.cos(sine / 32))*angles(math.rad(-5 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-5 - 5 * math.cos(sine / 37)),math.rad(0 + 14 * math.cos(sine / 58)),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(33 + 5 * math.cos(sine / 74)),math.rad(1 - 3 * math.cos(sine / 53)),math.rad(3 + 3 * math.cos(sine / 45))),.1)
LW.C0=clerp(LW.C0,cf(-1,0.75 + 0.025 * math.cos(sine / 45),-0.6)*angles(math.rad(140 - 3 * math.cos(sine / 73)),math.rad(5 - 1 * math.cos(sine / 55)),math.rad(80 - 3 * math.cos(sine / 45))),.3)
end
for i = 0, 1, 0.2 do
	swait()
	RH.C0=clerp(RH.C0,cf(1,-1.025 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(3),math.rad(0),math.rad(-5 - 2 * math.cos(sine / 32))),.3)
LH.C0=clerp(LH.C0,cf(-1,-1.025 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(6),math.rad(0),math.rad(5 + 2 * math.cos(sine / 32))),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.05 + 0.02 * math.cos(sine / 32),0.025 + 0.05 * math.cos(sine / 32))*angles(math.rad(-5 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-5 - 5 * math.cos(sine / 37)),math.rad(0 + 14 * math.cos(sine / 58)),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(33 + 5 * math.cos(sine / 74)),math.rad(1 - 3 * math.cos(sine / 53)),math.rad(3 + 3 * math.cos(sine / 45))),.1)
LW.C0=clerp(LW.C0,cf(-1,0.8 + 0.025 * math.cos(sine / 45),-0.6)*angles(math.rad(140 - 3 * math.cos(sine / 73)),math.rad(5 - 1 * math.cos(sine / 55)),math.rad(80 - 3 * math.cos(sine / 45))),.3)
end
end
coroutine.resume(coroutine.create(function()
for i = 0, 49 do
swait()
blush.Transparency = blush.Transparency + 0.02
end
blush:Destroy()
end))
attack = false
hum.WalkSpeed = storehumanoidWS	
end
function CalMets()
attack = true
hum.WalkSpeed = 0
	local lookavec = 0 
	local mult = 1
	local keptcolor = MAINRUINCOLOR
CFuncs["Sound"].Create("rbxassetid://136007472", root, 7, 1.25)
for i = 0,4,0.1 do
		swait()
slash(math.random(25,50)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.new(0,10,1)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.2,0.01,0.2),-0.2,keptcolor)
sphere2(3,"Add",root.CFrame*CFrame.new(0,10,0) + root.CFrame.lookVector*1,vt(3,3,3),0.06,0.06,0.06,MAINRUINCOLOR)
            RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 5 * math.cos(sine / 51))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(10 + 3 * math.cos(sine / 44))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),1 + 0.15 * math.cos(sine / 32))*angles(math.rad(0 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-35),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(1.25, 1, -0.5) * angles(math.rad(170), math.rad(0), math.rad(-20)), 0.1)
LW.C0 = clerp(LW.C0, CFrame.new(-1.25, 1, -0.5) * angles(math.rad(170), math.rad(0), math.rad(20)), 0.1)
end
sphere2(2,"Add",root.CFrame*CFrame.new(0,10,0) + root.CFrame.lookVector*1,vt(3,3,3),0.6,0.6,0.6,keptcolor)
sphere2(4,"Add",root.CFrame*CFrame.new(0,10,0) + root.CFrame.lookVector*1,vt(3,3,3),0.6,0.6,0.6,keptcolor)
sphere2(3,"Add",root.CFrame*CFrame.new(0,10,0) + root.CFrame.lookVector*1,vt(1,10000,1),0.06,0.06,0.06,keptcolor)
local elocacenter = CreateParta(char,1,1,"SmoothPlastic",BrickColor.random())
elocacenter.Anchored = true
elocacenter.CFrame = root.CFrame*CFrame.new(0,150,0)
local eloca1 = CreateParta(elocacenter,1,1,"SmoothPlastic",BrickColor.random())
eloca1.Anchored = true
eloca1.CFrame = elocacenter.CFrame
local at1 = Instance.new("Attachment",eloca1)
at1.Position = vt(0,30,0)
local at2 = Instance.new("Attachment",eloca1)
at2.Position = vt(0,-30,0)
local at1b = Instance.new("Attachment",eloca1)
at1b.Position = vt(0,0,180)
local at2b = Instance.new("Attachment",eloca1)
at2b.Position = vt(0,0,-180)
local trl = Instance.new('Trail',eloca1)
trl.Attachment0 = at1
trl.Attachment1 = at2
trl.Texture = "rbxassetid://1049219073"
trl.LightEmission = 1
trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
trl.Color = ColorSequence.new(keptcolor.Color)
trl.Lifetime = 4
local trl2 = trl:Clone()
trl2.Parent = eloca1
trl2.Attachment0 = at1b
trl2.Attachment1 = at2b
trl2.Texture = "rbxassetid://2108945559"
trl2.Lifetime = 2
local eff = Instance.new("ParticleEmitter",eloca1)
eff.Texture = "rbxassetid://2273224484"
eff.LightEmission = 1
eff.Color = ColorSequence.new(keptcolor.Color)
eff.Rate = 500000
eff.Lifetime = NumberRange.new(0.5,3)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,50,0),NumberSequenceKeypoint.new(0.2,5,0),NumberSequenceKeypoint.new(0.8,5,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.1,0,0),NumberSequenceKeypoint.new(0.8,0,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(20,250)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-50,50)
local eloca2 = eloca1:Clone()
eloca2.Parent = elocacenter
local eloca3 = eloca1:Clone()
eloca3.Parent = elocacenter
local eloca4 = eloca1:Clone()
eloca4.Parent = elocacenter
shakes(0.5,0.5)
sphere2(2,"Add",elocacenter.CFrame,vt(1,1,1),2,2,2,keptcolor)
sphere2(3,"Add",elocacenter.CFrame,vt(1,1,1),4,4,4,keptcolor)
sphere2(4,"Add",elocacenter.CFrame,vt(1,1,1),5,5,5,keptcolor)
sphere2(5,"Add",elocacenter.CFrame,vt(1,1,1),6,6,6,keptcolor)
sphere2(3,"Add",elocacenter.CFrame,vt(1,1,1),25,0.1,25,keptcolor)
sphere2(4,"Add",elocacenter.CFrame,vt(1,1,1),25,0.1,25,keptcolor)
CFuncs["Sound"].Create("rbxassetid://419447292", char, 4, 1)
local effx = Instance.new("ParticleEmitter",elocacenter)
effx.Texture = "rbxassetid://144580273" -- 144580273 74564879
effx.LightEmission = 1
effx.Color = ColorSequence.new(keptcolor.Color)
effx.Rate = 500000
effx.Lifetime = NumberRange.new(0.25,0.75)
effx.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,200,0)})
effx.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.1,0.5,0),NumberSequenceKeypoint.new(0.8,0,0),NumberSequenceKeypoint.new(1,1,0)})
effx.Speed = NumberRange.new(0,10)
effx.Drag = 5
effx.Rotation = NumberRange.new(-500,500)
effx.VelocitySpread = 9000
effx.RotSpeed = NumberRange.new(-50,50)
coroutine.resume(coroutine.create(function()
	wait(0.05)
	effx.Enabled = false
end))
coroutine.resume(coroutine.create(function()
for i = 0, 9, 0.1 do
	swait()
	mult = mult + 0.5
lookavec = lookavec + 0.1*mult
sphere2(5,"Add",elocacenter.CFrame,vt(1,1,1),0.05*lookavec/2,0.001,0.05*lookavec/2,keptcolor)
elocacenter.CFrame = elocacenter.CFrame*CFrame.Angles(0,math.rad(5*mult/20),0)
eloca1.CFrame = elocacenter.CFrame*CFrame.new(-lookavec,0,0)
eloca2.CFrame = elocacenter.CFrame*CFrame.Angles(0,math.rad(90),0)*CFrame.new(-lookavec,0,0)
eloca3.CFrame = elocacenter.CFrame*CFrame.Angles(0,math.rad(180),0)*CFrame.new(-lookavec,0,0)
eloca4.CFrame = elocacenter.CFrame*CFrame.Angles(0,math.rad(270),0)*CFrame.new(-lookavec,0,0)
end
for i = 0, 19 do
for i = 0, 1, 0.1 do
	swait()
sphere2(5,"Add",elocacenter.CFrame,vt(1,1,1),0.05*lookavec/2,0.001,0.05*lookavec/2,keptcolor)
elocacenter.CFrame = elocacenter.CFrame*CFrame.Angles(0,math.rad(5*mult/20),0)
eloca1.CFrame = elocacenter.CFrame*CFrame.new(-lookavec,0,0)
eloca2.CFrame = elocacenter.CFrame*CFrame.Angles(0,math.rad(90),0)*CFrame.new(-lookavec,0,0)
eloca3.CFrame = elocacenter.CFrame*CFrame.Angles(0,math.rad(180),0)*CFrame.new(-lookavec,0,0)
eloca4.CFrame = elocacenter.CFrame*CFrame.Angles(0,math.rad(270),0)*CFrame.new(-lookavec,0,0)
end
local lb = Instance.new("Part")
lb.Color = keptcolor.Color
lb.CanCollide = false
lb.Material = "Neon"
lb.Anchored = true
lb.TopSurface = 0
lb.BottomSurface = 0
lb.Transparency = 0
lb.Size = vt(1,1,1)
lb.CFrame = elocacenter.CFrame*CFrame.new(math.random(-150,150),0,math.random(-150,150))*CFrame.Angles(math.rad(-90 + math.random(-15,15)),0,math.rad(math.random(-15,15)))
lb.Anchored = false
 lb.Parent = char
local thingery = Instance.new("SpecialMesh",lb)
     thingery.MeshType = "Sphere"
thingery.Scale = vt(20,20,20)
game:GetService("Debris"):AddItem(lb, 10)
  local bv = Instance.new("BodyVelocity")
  bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
  bv.velocity = lb.CFrame.lookVector*math.random(125,350)
  bv.Parent = lb
sphere(2.5,"Add",lb.CFrame,vt(50,50,0),0.25,keptcolor)
sphere(5,"Add",lb.CFrame,vt(50,50,0),0.5,keptcolor)
CFuncs["Sound"].Create("rbxassetid://633627961",lb, 10, 1)
CFuncs["Sound"].Create("rbxassetid://1002081188", lb, 10, 1)
CFuncs["Sound"].Create("rbxassetid://741272936", lb, 10, 1)
CFuncs["Sound"].Create("rbxassetid://1192402877", lb, 10, 1)
local hitted = false
local tril = Instance.new("ParticleEmitter",lb)
tril.Texture = "rbxassetid://144580273" -- 144580273 74564879
tril.LightEmission = 1
tril.Color = ColorSequence.new(keptcolor.Color)
tril.Rate = 500000
tril.Lifetime = NumberRange.new(0.5,1)
tril.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,20,0),NumberSequenceKeypoint.new(1,0,0)})
tril.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.1,0.5,0),NumberSequenceKeypoint.new(0.8,0,0),NumberSequenceKeypoint.new(1,1,0)})
tril.Speed = NumberRange.new(0,10)
tril.Drag = 5
tril.Rotation = NumberRange.new(-500,500)
tril.VelocitySpread = 9000
tril.RotSpeed = NumberRange.new(-50,50)
game:GetService("Debris"):AddItem(a, 0.1)

coroutine.resume(coroutine.create(function()
lb.Touched:connect(function(hit)
if hitted == false and hit.Parent ~= char then
hitted = true
lb.Transparency = 1
lb.Anchored = true
tril.Enabled = false
CFuncs["EchoSound"].Create("rbxassetid://675172759", lb, 8, 0.8,0,10,0.15,0.5,1)
CFuncs["EchoSound"].Create("rbxassetid://782200047", lb, 10, 1.1,0,10,0.15,0.5,1)
MagniDamage(lb, 60, 4500,85000, 0, "Normal")
coroutine.resume(coroutine.create(function()
for i, v in pairs(FindNearestHead(lb.CFrame.p, 50)) do
if v:FindFirstChild('Head') then
dmg(v)
end
end
end))
local effx = Instance.new("ParticleEmitter",lb)
effx.Texture = "rbxassetid://144580273" -- 144580273 74564879
effx.LightEmission = 1
effx.Color = ColorSequence.new(keptcolor.Color)
effx.Rate = 500000
effx.Lifetime = NumberRange.new(0.25,0.75)
effx.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,200,0)})
effx.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.1,0.5,0),NumberSequenceKeypoint.new(0.8,0,0),NumberSequenceKeypoint.new(1,1,0)})
effx.Speed = NumberRange.new(0,10)
effx.Drag = 5
effx.Rotation = NumberRange.new(-500,500)
effx.VelocitySpread = 9000
effx.RotSpeed = NumberRange.new(-50,50)
sphere(5,"Add",lb.CFrame,vt(20,20,20),1,keptcolor)
sphere(6,"Add",lb.CFrame,vt(20,20,20),2,keptcolor)
wait(0.05)
effx.Enabled = false
end
end)
end))
end
for i = 0, 9, 0.1 do
	swait()
	mult = mult - 0.5
lookavec = lookavec - 0.1*mult
sphere2(5,"Add",elocacenter.CFrame,vt(1,1,1),0.05*lookavec/2,0.001,0.05*lookavec/2,keptcolor)
elocacenter.CFrame = elocacenter.CFrame*CFrame.Angles(0,math.rad(5*mult/20),0)
eloca1.CFrame = elocacenter.CFrame*CFrame.new(-lookavec,0,0)
eloca2.CFrame = elocacenter.CFrame*CFrame.Angles(0,math.rad(90),0)*CFrame.new(-lookavec,0,0)
eloca3.CFrame = elocacenter.CFrame*CFrame.Angles(0,math.rad(180),0)*CFrame.new(-lookavec,0,0)
eloca4.CFrame = elocacenter.CFrame*CFrame.Angles(0,math.rad(270),0)*CFrame.new(-lookavec,0,0)
end
for i,v in pairs(elocacenter:GetDescendants()) do
	if v:IsA("ParticleEmitter") then
		v.Enabled = false
	end
end
wait(6)
elocacenter:Destroy()
end))
attack = false
hum.WalkSpeed = storehumanoidWS	
end

function ExtCalbeam()
	local lookavec = 0 
	local mult = 1
	local keptcolor = MAINRUINCOLOR
local dis = CreateParta(char,0,1,"Neon",keptcolor)
for i = 0, 2 do
CFuncs["Sound"].Create("rbxassetid://335657174", dis, 10, 0.5)
end
dis.CFrame = root.CFrame*CFrame.new(0,2,-3)
CreateMesh(dis,"Sphere",4,4,4)
local at1 = Instance.new("Attachment",dis)
at1.Position = vt(-2,0,0)
local at2 = Instance.new("Attachment",dis)
at2.Position = vt(2,0,0)
local trl = Instance.new('Trail',dis)
trl.Attachment0 = at1
trl.Attachment1 = at2
trl.Texture = "rbxassetid://1049219073"
trl.LightEmission = 1
trl.FaceCamera = true
trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
trl.Color = ColorSequence.new(dis.Color)
trl.Lifetime = 3
local efec = Instance.new("ParticleEmitter",dis)
efec.Texture = "rbxassetid://144580273"
efec.LightEmission = 1
efec.Color = ColorSequence.new(keptcolor.Color)
efec.Rate = 500000
efec.Lifetime = NumberRange.new(1)
efec.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,2,0),NumberSequenceKeypoint.new(1,0,0)})
efec.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,1,0)})
efec.Drag = 5
efec.Rotation = NumberRange.new(-500,500)
efec.VelocitySpread = 9000
efec.RotSpeed = NumberRange.new(-500,500)
local a = Instance.new("Part",workspace)
	a.Name = "Direction"	
	a.Anchored = true
	a.BrickColor = bc("Bright red")
a.Material = "Neon"
a.Transparency = 1
	a.CanCollide = false
	local ray = Ray.new(
	    dis.CFrame.p,                           -- origin
	    (mouse.Hit.p - dis.CFrame.p).unit * 500 -- direction
	) 
	local ignore = dis
	local hit, position, normal = workspace:FindPartOnRay(ray, ignore)
	a.BottomSurface = 10
	a.TopSurface = 10
	local distance = (dis.CFrame.p - position).magnitude
	a.Size = Vector3.new(0.1, 0.1, 0.1)
	a.CFrame = CFrame.new(dis.CFrame.p, position) * CFrame.new(0, 0, 0)
dis.CFrame = a.CFrame
a:Destroy()
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = dis.CFrame.lookVector*250
bv.Parent = dis
game:GetService("Debris"):AddItem(dis, 15)
local hitted = false
coroutine.resume(coroutine.create(function()
dis.Touched:connect(function(hit) 
	if hitted == false and hit.Parent ~= char then
	hitted = true
	shakes(1,1)
	efec.Enabled = false
	dis.Anchored = true
	dis.Transparency = 1
	local elocacenter = CreateParta(char,1,1,"SmoothPlastic",BrickColor.random())
elocacenter.Anchored = true
elocacenter.CFrame = dis.CFrame*CFrame.new(0,1,0)
elocacenter.Orientation = Vector3.new(0,0,0)
local eloca1 = CreateParta(elocacenter,1,1,"SmoothPlastic",BrickColor.random())
eloca1.Anchored = true
eloca1.CFrame = elocacenter.CFrame
local at1 = Instance.new("Attachment",eloca1)
at1.Position = vt(0,20,0)
local at2 = Instance.new("Attachment",eloca1)
at2.Position = vt(0,-20,0)
local at1b = Instance.new("Attachment",eloca1)
at1b.Position = vt(0,0,100)
local at2b = Instance.new("Attachment",eloca1)
at2b.Position = vt(0,0,-100)
local trl = Instance.new('Trail',eloca1)
trl.Attachment0 = at1
trl.Attachment1 = at2
trl.Texture = "rbxassetid://1049219073"
trl.LightEmission = 1
trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
trl.Color = ColorSequence.new(keptcolor.Color)
trl.Lifetime = 4
local trl2 = trl:Clone()
trl2.Parent = eloca1
trl2.Attachment0 = at1b
trl2.Attachment1 = at2b
trl2.Texture = "rbxassetid://2108945559"
trl2.Lifetime = 2
local eff = Instance.new("ParticleEmitter",eloca1)
eff.Texture = "rbxassetid://2273224484"
eff.LightEmission = 1
eff.Color = ColorSequence.new(keptcolor.Color)
eff.Rate = 500000
eff.Lifetime = NumberRange.new(0.5,3)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,50,0),NumberSequenceKeypoint.new(0.2,5,0),NumberSequenceKeypoint.new(0.8,5,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.1,0,0),NumberSequenceKeypoint.new(0.8,0,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(20,250)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-50,50)
local eloca2 = eloca1:Clone()
eloca2.Parent = elocacenter
local eloca3 = eloca1:Clone()
eloca3.Parent = elocacenter
local eloca4 = eloca1:Clone()
eloca4.Parent = elocacenter
sphere2(2,"Add",elocacenter.CFrame,vt(1,1,1),2,2,2,keptcolor)
sphere2(3,"Add",elocacenter.CFrame,vt(1,1,1),4,4,4,keptcolor)
sphere2(4,"Add",elocacenter.CFrame,vt(1,1,1),5,5,5,keptcolor)
sphere2(5,"Add",elocacenter.CFrame,vt(1,1,1),6,6,6,keptcolor)
for i = 0, 2 do
CFuncs["Sound"].Create("rbxassetid://419447292", elocacenter, 8, 1)
CFuncs["Sound"].Create("rbxassetid://1192402877", elocacenter, 10, 0.5)
end
local effx = Instance.new("ParticleEmitter",elocacenter)
effx.Texture = "rbxassetid://144580273" -- 144580273 74564879
effx.LightEmission = 1
effx.Color = ColorSequence.new(keptcolor.Color)
effx.Rate = 500000
effx.Lifetime = NumberRange.new(0.25,0.75)
effx.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,200,0)})
effx.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.1,0.5,0),NumberSequenceKeypoint.new(0.8,0,0),NumberSequenceKeypoint.new(1,1,0)})
effx.Speed = NumberRange.new(0,10)
effx.Drag = 5
effx.Rotation = NumberRange.new(-500,500)
effx.VelocitySpread = 9000
effx.RotSpeed = NumberRange.new(-50,50)
coroutine.resume(coroutine.create(function()
	wait(0.05)
	effx.Enabled = false
end))
coroutine.resume(coroutine.create(function()
for i = 0, 9, 0.1 do
	swait()
	mult = mult + 0.5
lookavec = lookavec + 0.06*mult
sphere2(5,"Add",elocacenter.CFrame,vt(1,1,1),0.05*lookavec/2,0.001,0.05*lookavec/2,keptcolor)
elocacenter.CFrame = elocacenter.CFrame*CFrame.Angles(0,math.rad(5*mult/20),0)
eloca1.CFrame = elocacenter.CFrame*CFrame.new(-lookavec,0,0)
eloca2.CFrame = elocacenter.CFrame*CFrame.Angles(0,math.rad(90),0)*CFrame.new(-lookavec,0,0)
eloca3.CFrame = elocacenter.CFrame*CFrame.Angles(0,math.rad(180),0)*CFrame.new(-lookavec,0,0)
eloca4.CFrame = elocacenter.CFrame*CFrame.Angles(0,math.rad(270),0)*CFrame.new(-lookavec,0,0)
end
for i = 0, 19, 0.1 do
	swait()
sphere2(5,"Add",elocacenter.CFrame,vt(1,1,1),0.05*lookavec/2,0.001,0.05*lookavec/2,keptcolor)
elocacenter.CFrame = elocacenter.CFrame*CFrame.Angles(0,math.rad(5*mult/20),0)
eloca1.CFrame = elocacenter.CFrame*CFrame.new(-lookavec,0,0)
eloca2.CFrame = elocacenter.CFrame*CFrame.Angles(0,math.rad(90),0)*CFrame.new(-lookavec,0,0)
eloca3.CFrame = elocacenter.CFrame*CFrame.Angles(0,math.rad(180),0)*CFrame.new(-lookavec,0,0)
eloca4.CFrame = elocacenter.CFrame*CFrame.Angles(0,math.rad(270),0)*CFrame.new(-lookavec,0,0)
end
shakes(1.5,1.5)
MagniDamage(elocacenter, 200, 50,99, 0, "Normal")
coroutine.resume(coroutine.create(function()
for i, v in pairs(FindNearestHead(elocacenter.CFrame.p, 150)) do
if v:FindFirstChild('Head') then
dmg(v)
end
end
end))
local effe = Instance.new("ParticleEmitter",elocacenter)
effe.Texture = "rbxassetid://2273224484"
effe.LightEmission = 1
effe.Color = ColorSequence.new(keptcolor.Color)
effe.Rate = 500000
effe.Lifetime = NumberRange.new(3,5)
effe.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,150,0),NumberSequenceKeypoint.new(0.2,15,0),NumberSequenceKeypoint.new(0.8,15,0),NumberSequenceKeypoint.new(1,0,0)})
effe.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.1,0,0),NumberSequenceKeypoint.new(0.8,0,0),NumberSequenceKeypoint.new(1,1,0)})
effe.Speed = NumberRange.new(250,1200)
effe.Drag = 5
effe.Rotation = NumberRange.new(-500,500)
effe.VelocitySpread = 9000
effe.RotSpeed = NumberRange.new(-50,50)
coroutine.resume(coroutine.create(function()
	effx.Enabled = true
	wait(0.15)
	effx.Enabled = false
	wait(0.25)
	effe.Enabled = false
end))
coroutine.resume(coroutine.create(function()
	local elocor = elocacenter
local lookavec = 0 
	local mult = 1
local elocacenter = CreateParta(elocor,1,1,"SmoothPlastic",BrickColor.random())
elocacenter.Anchored = true
elocacenter.CFrame = elocor.CFrame
local eloca1 = CreateParta(elocacenter,1,1,"SmoothPlastic",BrickColor.random())
eloca1.Anchored = true
eloca1.CFrame = elocacenter.CFrame
local at1 = Instance.new("Attachment",eloca1)
at1.Position = vt(0,10,0)
local at2 = Instance.new("Attachment",eloca1)
at2.Position = vt(0,-10,0)
local trl = Instance.new('Trail',eloca1)
trl.Attachment0 = at1
trl.Attachment1 = at2
trl.Texture = "rbxassetid://1049219073"
trl.LightEmission = 1
trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
trl.Color = ColorSequence.new(keptcolor.Color)
trl.Lifetime = 8
local eff = Instance.new("ParticleEmitter",eloca1)
eff.Texture = "rbxassetid://2273224484"
eff.LightEmission = 1
eff.Color = ColorSequence.new(keptcolor.Color)
eff.Rate = 500000
eff.Lifetime = NumberRange.new(0.5,1)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,20,0),NumberSequenceKeypoint.new(0.2,2,0),NumberSequenceKeypoint.new(0.8,2,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.1,0,0),NumberSequenceKeypoint.new(0.8,0,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(20,250)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-50,50)
local eloca2 = eloca1:Clone()
eloca2.Parent = elocacenter
local eloca3 = eloca1:Clone()
eloca3.Parent = elocacenter
local eloca4 = eloca1:Clone()
eloca4.Parent = elocacenter
coroutine.resume(coroutine.create(function()
for i = 0, 19, 0.1 do
	swait()
	mult = mult + 0.25
lookavec = lookavec + 0.05*mult
elocacenter.CFrame = elocacenter.CFrame*CFrame.Angles(0,math.rad(5*mult/10),0)
eloca1.CFrame = elocacenter.CFrame*CFrame.new(40+lookavec/5,-15+lookavec*2,0)
eloca2.CFrame = elocacenter.CFrame*CFrame.new(-40-lookavec/5,-15+lookavec*2,0)
eloca3.CFrame = elocacenter.CFrame*CFrame.new(0,-15+lookavec*2,40+lookavec/5)
eloca4.CFrame = elocacenter.CFrame*CFrame.new(0,-15+lookavec*2,-40-lookavec/5)
end
for i,v in pairs(elocacenter:GetDescendants()) do
	if v:IsA("ParticleEmitter") then
		v.Enabled = false
	end
end
wait(6)
elocacenter:Destroy()
end))
end))
CFuncs["Sound"].Create("rbxassetid://763717897", char, 3, 1)
CFuncs["Sound"].Create("rbxassetid://763717897", char, 3, 0.75)
CFuncs["Sound"].Create("rbxassetid://763717897", char, 4, 0.5)
CFuncs["Sound"].Create("rbxassetid://1192402877", char, 6,0.5)
CFuncs["Sound"].Create("rbxassetid://1664711478", char, 2.5,1)
CFuncs["Sound"].Create("rbxassetid://763718160", char, 3, 0.75)
symbolizeBlink(elocacenter,0,144580273,keptcolor.Color,20,0,0,0,root,true,-5,3)
symbolizeBlink(elocacenter,0,144580273,keptcolor.Color,40,0,0,0,root,true,-5,3)
symbolizeBlink(elocacenter,0,144580273,keptcolor.Color,60,0,0,0,root,true,-5,3)
symbolizeBlink(elocacenter,0,144580273,keptcolor.Color,80,0,0,0,root,true,-5,3)
sphere2(2,"Add",elocacenter.CFrame,vt(10,10000,10),2,2,2,keptcolor)
sphere2(1,"Add",elocacenter.CFrame,vt(10,10000,10),2,2,2,keptcolor)
sphere2(2,"Add",elocacenter.CFrame,vt(10,10,10),5,5,5,keptcolor)
sphere2(2,"Add",elocacenter.CFrame,vt(10,10,10),7.5,7.5,7.5,keptcolor)
sphere2(2,"Add",elocacenter.CFrame,vt(10,10,10),10,10,10,keptcolor)
sphere2(2,"Add",elocacenter.CFrame,vt(10,10,10),2.5,2.5,2.5,keptcolor)
for i = 0, 29 do
		slash(math.random(10,30)/10,5,true,"Round","Add","Out",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.01,0.01),math.random(500,1000)/250,BrickColor.new("White"))
	end
for i = 0, 9, 0.1 do
	swait()
	mult = mult - 0.5
lookavec = lookavec - 0.06*mult
sphere2(5,"Add",elocacenter.CFrame,vt(1,1,1),0.05*lookavec/2,0.001,0.05*lookavec/2,keptcolor)
elocacenter.CFrame = elocacenter.CFrame*CFrame.Angles(0,math.rad(5*mult/20),0)
eloca1.CFrame = elocacenter.CFrame*CFrame.new(-lookavec,0,0)
eloca2.CFrame = elocacenter.CFrame*CFrame.Angles(0,math.rad(90),0)*CFrame.new(-lookavec,0,0)
eloca3.CFrame = elocacenter.CFrame*CFrame.Angles(0,math.rad(180),0)*CFrame.new(-lookavec,0,0)
eloca4.CFrame = elocacenter.CFrame*CFrame.Angles(0,math.rad(270),0)*CFrame.new(-lookavec,0,0)
end
for i,v in pairs(elocacenter:GetDescendants()) do
	if v:IsA("ParticleEmitter") then
		v.Enabled = false
	end
end
wait(6)
elocacenter:Destroy()
end))
end
end)
end))	
end
--[[
function ArcaneTaunt()
	attack=true
	Humanoid.WalkSpeed=0
	local snd = NewInstance("Sound",Head,{
		SoundId="rbxassetid://1535994137";
		Volume=10;
		Pitch=1;
	})
	snd:Play()
	repeat swait() until GetClientProperty(snd,"IsPlaying");
	for i = 0, 8, .1 do
		swait()
		RH.C0=clerp(RH.C0,cf(1,-.6,-.2)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-6 - 3 * math.sin(sine / 16)),math.rad(0),math.rad(-3 - 3 * math.sin(sine / 16))),.1)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-6 - 3 * math.sin(sine / 16)),math.rad(0),math.rad(3 - 3 * math.sin(sine / 16))),.1)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,.3 + .3 * math.cos(sine / 16))*angles(math.rad(1 - 1 * math.cos(sine / 16)),math.rad(0),math.rad(0 - 6 * math.cos(sine / 56))),.1)
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-3 - 5 * math.sin(sine / 16)),math.rad(-25),math.rad(0)),.1)
		RW.C0=clerp(RW.C0,cf(1.2,0.5 + 0.2 * math.sin(sine / 16),0)*angles(math.rad(-5 - 5 * math.cos(sine / 74)),math.rad(0),math.rad(143 + 3 * math.cos(sine / 45))),.1)
		LW.C0=clerp(LW.C0,cf(-1.2,0.5 + 0.2 * math.sin(sine / 16),0)*angles(math.rad(-5 + 3 * math.cos(sine / 73)),math.rad(0),math.rad(-143 - 3 * math.cos(sine / 45))),.1)
	end
	Humanoid.WalkSpeed=storehumanoidWS
	attack=false
end
function WanderTaunt()
	attack=true
	Humanoid.WalkSpeed=0
	local snd = NewInstance("Sound",Head,{
		SoundId="rbxassetid://1535994669";
		Volume=10;
		Pitch=1;
	})
	snd:Play()
	for i = 0, 8, .1 do
		swait()
		local Alpha = .1
	  	RootJoint.C0 = RootJoint.C0:lerp(cf(0,0+0.1*math.cos(sine/14),0)*angles(math.rad(0),math.rad(-49.4),math.rad(0))*RootCF,Alpha)
	  	LH.C0 = LH.C0:lerp(cf(-0.9,-1-0.1*math.cos(sine/14),0.2)*angles(math.rad(1.5),math.rad(20.9),math.rad(-4.1))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
	  	RH.C0 = RH.C0:lerp(cf(1,-1-0.1*math.cos(sine/14),0.1)*angles(math.rad(0.1),math.rad(-6.2),math.rad(2.6))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
	  	LW.C0 = LW.C0:lerp(cf(-1.4,0.5+0.1*math.sin(sine/14),-0.2)*angles(math.rad(90-1.5*math.sin(sine/14)),math.rad(0),math.rad(-49.4)),Alpha)
	  	RW.C0 = RW.C0:lerp(cf(1.5,0.4+0.1*math.sin(sine/14),0.1)*angles(math.rad(56.9+1.5*math.sin(sine/14)),math.rad(0),math.rad(0)),Alpha)
	  	Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0.1,0,0)*angles(math.rad(-8+3*math.sin(sine/14)),math.rad(49.2),math.rad(9.6))*necko,Alpha)
	  	BladesWeld.C0 = BladesWeld.C0:lerp(cf(0.1,-0.8,-0.3)*angles(math.rad(167.2),math.rad(87.1),math.rad(-2.5)),Alpha)
	end
	Humanoid.WalkSpeed=storehumanoidWS
	attack=false
end
]]
function gassmack()
	attack=true
	Humanoid.WalkSpeed=3
	  for i = 0, 1, 0.1 do
  	swait()
  	local Alpha = .3
  	RootJoint.C0 = RootJoint.C0:lerp(cf(0,0,0)*angles(math.rad(0),math.rad(-19.8),math.rad(0))*RootCF,Alpha)
  	LH.C0 = LH.C0:lerp(cf(-1,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
  	RH.C0 = RH.C0:lerp(cf(1,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
  	LW.C0 = LW.C0:lerp(cf(-1.4,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-10.7)),Alpha)
  	RW.C0 = RW.C0:lerp(cf(1.3,0.5,0.3)*angles(math.rad(88.8),math.rad(0),math.rad(129.1)),Alpha)
  	Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0,0,0)*angles(math.rad(0),math.rad(19.8),math.rad(0))*necko,Alpha)
  	gasW.C0 = gasW.C0:lerp(cf(0.9,-1.4,-0.1)*angles(math.rad(-93),math.rad(-47.3),math.rad(-180)),Alpha)
  end
  for i = 0, 2, 0.1 do
  	swait()
  	local Alpha = .3
  	RootJoint.C0 = RootJoint.C0:lerp(cf(0,0,0)*angles(math.rad(0),math.rad(52.8),math.rad(0))*RootCF,Alpha)
  	LH.C0 = LH.C0:lerp(cf(-1,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
  	RH.C0 = RH.C0:lerp(cf(0.8,-1,0.4)*angles(math.rad(0),math.rad(-52.8),math.rad(0))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
  	LW.C0 = LW.C0:lerp(cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-5.2)),Alpha)
  	RW.C0 = RW.C0:lerp(cf(1,0.3,-0.6)*angles(math.rad(107.7),math.rad(-33.1),math.rad(-33.2)),Alpha)
  	Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0,0,0)*angles(math.rad(0),math.rad(23.6),math.rad(0))*necko,Alpha)
  	gasW.C0 = gasW.C0:lerp(cf(-0.9,-1.4,-0.2)*angles(math.rad(-84.6),math.rad(63.2),math.rad(180)),Alpha)
coroutine.resume(coroutine.create(function()MagniDamage(GasCan, 2, 15, 25, .5, "Normal")end))
  end	
	Humanoid.WalkSpeed=storehumanoidWS
	attack=false
end

function balsplode()
		attack=true
	Humanoid.WalkSpeed=1
		local orb = Instance.new("Part", char)
	orb.Anchored = true
	orb.BrickColor = MAINRUINCOLOR
	orb.CanCollide = false
	orb.FormFactor = 3
	orb.Name = "Ring"
	orb.Material = "Neon"
	orb.Size = Vector3.new(1, 1, 1)
	orb.Transparency = 0
	orb.TopSurface = 0
	orb.BottomSurface = 0
	local orbm = Instance.new("SpecialMesh", orb)
	orbm.MeshType = "Sphere"
	orbm.Name = "SizeMesh"
	orbm.Scale = vt(0, 0, 0)
	local scaled = 0.1
	local posid = 0
	CFuncs.Sound.Create("rbxassetid://136007472", orb, 1.2, .8)
	  for i = 0, 6, 0.1 do
  	swait()
		scaled = scaled + 0.0001
		posid = posid - scaled
		orb.CFrame = larm.CFrame * CFrame.new(0,posid/1.5,0)
		orbm.Scale = orbm.Scale + vt(scaled, scaled, scaled)
		sphereMKCharge(5, -0.25, "Add", orb.CFrame * CFrame.Angles(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360))), 0.5, 0.5, 5, -0.005, MAINRUINCOLOR, 10)
  	local Alpha = .3
  	RootJoint.C0 = RootJoint.C0:lerp(cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*RootCF,Alpha)
  	LH.C0 = LH.C0:lerp(cf(-1,-0.9,0)*angles(math.rad(0),math.rad(0),math.rad(-5.5))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
  	RH.C0 = RH.C0:lerp(cf(1,-0.9,0)*angles(math.rad(0),math.rad(0),math.rad(5.5))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
  	LW.C0 = LW.C0:lerp(cf(-1.4,0.6,0)*angles(math.rad(0),math.rad(0),math.rad(-56.5)),Alpha)
  	RW.C0 = RW.C0:lerp(cf(1.4,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(28.1)),Alpha)
  	Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*necko,Alpha)
  	gasW.C0 = gasW.C0:lerp(cf(-0.3,-1.5,0.3)*angles(math.rad(-90),math.rad(28.1),math.rad(-180)),Alpha)
	  end
		attack=true
	Humanoid.WalkSpeed=0
  for i = 0, 1.25, 0.1 do
  	swait()
  	local Alpha = .4
orb.CFrame = larm.CFrame * CFrame.new(0,posid/1.5,0)
  	RootJoint.C0 = RootJoint.C0:lerp(cf(0,0,0)*angles(math.rad(0),math.rad(43.3),math.rad(0))*RootCF,Alpha)
  	LH.C0 = LH.C0:lerp(cf(-1,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
  	RH.C0 = RH.C0:lerp(cf(0.9,-1,0.4)*angles(math.rad(0),math.rad(-43.3),math.rad(0))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
  	LW.C0 = LW.C0:lerp(cf(-1.4,0.3,-0.3)*angles(math.rad(42.2),math.rad(-69.1),math.rad(-45.8)),Alpha)
  	RW.C0 = RW.C0:lerp(cf(1.5,0.5,0)*angles(math.rad(0),math.rad(-42.9),math.rad(0)),Alpha)
  	Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0,0,0)*angles(math.rad(0),math.rad(-43.3),math.rad(0))*necko,Alpha)
  	gasW.C0 = gasW.C0:lerp(cf(0.1,-1.7,-0.1)*angles(math.rad(-67.1),math.rad(-0.1),math.rad(179.8)),Alpha)
  end
	
  for i = 0, .5, 0.1 do
  	swait()
  	local Alpha = .4
orb.CFrame = larm.CFrame * CFrame.new(0,posid/1.5,0)
  	RootJoint.C0 = RootJoint.C0:lerp(cf(0,0,0)*angles(math.rad(0),math.rad(-72.21),math.rad(0))*RootCF,Alpha)
  	LH.C0 = LH.C0:lerp(cf(-0.9,-0.9,0)*angles(math.rad(0),math.rad(21.3),math.rad(-9.1))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
  	RH.C0 = RH.C0:lerp(cf(0.9,-0.9,0)*angles(math.rad(0),math.rad(0),math.rad(9.6))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
  	LW.C0 = LW.C0:lerp(cf(-1.7,0.5,-0.1)*angles(math.rad(90),math.rad(0),math.rad(-72.2)),Alpha)
  	RW.C0 = RW.C0:lerp(cf(1.4,0.7,0.2)*angles(math.rad(-10.5),math.rad(-11.7),math.rad(49.5)),Alpha)
  	Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0,0,0)*angles(math.rad(0),math.rad(72.2),math.rad(0))*necko,Alpha)
  	gasW.C0 = gasW.C0:lerp(cf(0.2,-1.6,-0.1)*angles(math.rad(-85.6),math.rad(10.5),math.rad(-101.9)),Alpha)
  end
orb.Transparency=1
	shakes(0.4,0.4)
	CFuncs["EchoSound"].Create("rbxassetid://2011915907", orb, 7, .9,0,10,0.15,0.5,1)
	MagniDamage(orb, 15, 65,125, 0, "Burn")
	sphere2(8,"Add",orb.CFrame,vt(10,1,10),1,0.1,1,MAINRUINCOLOR,MAINRUINCOLOR.Color)
	sphere2(4,"Add",orb.CFrame,vt(1,1,1),0.5,0.5,0.5,MAINRUINCOLOR,MAINRUINCOLOR.Color)
	sphere2(3,"Add",orb.CFrame,vt(1,1,1),0.5,0.5,0.5,MAINRUINCOLOR,MAINRUINCOLOR.Color)
	local explode = script.Explosion:Clone();
explode.Parent=orb;
explode:WaitForChild'Effects';explode.Effects:WaitForChild'Explosion';explode.Effects:WaitForChild'Smoke1';explode.Effects:WaitForChild'Smoke2'
explode.CFrame=orb.CFrame;
explode.Effects.Explosion:Emit(1500) 
explode.Effects.Smoke1:Emit(1500)
explode.Effects.Smoke2:Emit(1500)
	  for i = 0, 3, 0.1 do
  	swait()
  	local Alpha = .3
  	RootJoint.C0 = RootJoint.C0:lerp(cf(0,0,0)*angles(math.rad(0),math.rad(-72.21),math.rad(0))*RootCF,Alpha)
  	LH.C0 = LH.C0:lerp(cf(-0.9,-0.9,0)*angles(math.rad(0),math.rad(21.3),math.rad(-9.1))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
  	RH.C0 = RH.C0:lerp(cf(0.9,-0.9,0)*angles(math.rad(0),math.rad(0),math.rad(9.6))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
  	LW.C0 = LW.C0:lerp(cf(-1.7,0.5,-0.1)*angles(math.rad(90),math.rad(0),math.rad(-72.2)),Alpha)
  	RW.C0 = RW.C0:lerp(cf(1.4,0.7,0.2)*angles(math.rad(-10.5),math.rad(-11.7),math.rad(49.5)),Alpha)
  	Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0,0,0)*angles(math.rad(0),math.rad(72.2),math.rad(0))*necko,Alpha)
  	gasW.C0 = gasW.C0:lerp(cf(0.2,-1.6,-0.1)*angles(math.rad(-85.6),math.rad(10.5),math.rad(-101.9)),Alpha)
	  end
	game:service'Debris':AddItem(orb,5)
	Humanoid.WalkSpeed=storehumanoidWS
	attack=false
end
function nebshamone()
	attack=true
	Humanoid.WalkSpeed=0
	  for i = 0, 4, 0.1 do
  	swait()
  	local Alpha = .1
  	RootJoint.C0 = RootJoint.C0:lerp(cf(0,0,0)*angles(math.rad(0),math.rad(47.2),math.rad(0))*RootCF,Alpha)
  	LH.C0 = LH.C0:lerp(cf(-1,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
  	RH.C0 = RH.C0:lerp(cf(1,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
  	LW.C0 = LW.C0:lerp(cf(-1.4,0.9,-0.5)*angles(math.rad(122.3),math.rad(-5.3),math.rad(-31.8)),Alpha)
  	RW.C0 = RW.C0:lerp(cf(1,0.5,-0.1)*angles(math.rad(71.8),math.rad(60.3),math.rad(22.6)),Alpha)
  	Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0,0,0)*angles(math.rad(0),math.rad(21.6),math.rad(0))*necko,Alpha)
  	AeshW.C0 = AeshW.C0:lerp(cf(-0.4,-0.8,-2)*angles(math.rad(-178.9),math.rad(80.8),math.rad(5.7)),Alpha)
	  end
	CFuncs.Sound.Create("rbxassetid://596439421", ra, 2, .5)
  for i = 0, 4, 0.1 do
  	swait()
  	local Alpha = .2
  	RootJoint.C0 = RootJoint.C0:lerp(cf(0,0,0)*angles(math.rad(0),math.rad(-61),math.rad(0))*RootCF,Alpha)
  	LH.C0 = LH.C0:lerp(cf(-1,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
  	RH.C0 = RH.C0:lerp(cf(1,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
  	LW.C0 = LW.C0:lerp(cf(-1.3,0.4,-0.3)*angles(math.rad(21.5),math.rad(-23.8),math.rad(30.9)),Alpha)
  	RW.C0 = RW.C0:lerp(cf(1,0.5,-0.2)*angles(math.rad(14.9),math.rad(14.3),math.rad(61.9)),Alpha)
  	Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0,0,0)*angles(math.rad(0),math.rad(-25.4),math.rad(0))*necko,Alpha)
  	AeshW.C0 = AeshW.C0:lerp(cf(-0.3,-1.5,-1.5)*angles(math.rad(-178.9),math.rad(80.8),math.rad(-25.9)),Alpha)
  end
	Humanoid.WalkSpeed=storehumanoidWS
	attack=false
end

function hamone()
attack = true
hum.WalkSpeed = 3
  for i = 0, 1.5, .1 do
  	swait()
  	local Alpha = .3
	RootJoint.C0 = RootJoint.C0:lerp(cf(0.1,-0.3,0.1)*angles(math.rad(19.6),math.rad(43.3),math.rad(-13.7))*RootCF,Alpha)
  	LH.C0 = LH.C0:lerp(cf(-1,-0.9,0.2)*angles(math.rad(-25),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
  	RH.C0 = RH.C0:lerp(cf(1,-1.1,0.1)*angles(math.rad(-20),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
  	LW.C0 = LW.C0:lerp(cf(-1.4,0.9,-0.5)*angles(math.rad(122.3),math.rad(-5.3),math.rad(-31.8)),Alpha)
  	RW.C0 = RW.C0:lerp(cf(1,0.5,-0.1)*angles(math.rad(71.8),math.rad(60.3),math.rad(22.6)),Alpha)
  	Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0.1,0,0.3)*angles(math.rad(-7.1),math.rad(-45.7),math.rad(5))*necko,Alpha)
  		AeshW.C0 = AeshW.C0:lerp(cf(-0.4,-0.8,-2)*angles(math.rad(-178.9),math.rad(80.8),math.rad(5.7)),Alpha)
  end
	CFuncs.Sound.Create("rbxassetid://596439421", ra, 2, .5)
  for i = 0, .8, .1 do
  	swait()
  	local Alpha = .5
  	RootJoint.C0 = RootJoint.C0:lerp(cf(0.1,0,-0.3)*angles(math.rad(-64),math.rad(-50.3),math.rad(-57.6))*RootCF,Alpha)
  	LH.C0 = LH.C0:lerp(cf(-1,-1,-0.4)*angles(math.rad(40),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
  	RH.C0 = RH.C0:lerp(cf(1,-1,0.2)*angles(math.rad(20),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
  	LW.C0 = LW.C0:lerp(cf(-1.6,0.4,-0.2)*angles(math.rad(90),math.rad(0),math.rad(-25)),Alpha)
  	RW.C0 = RW.C0:lerp(cf(1.5,0.4,-0.1)*angles(math.rad(75),math.rad(0),math.rad(30)),Alpha)
  	Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0,0.3,-0.6)*angles(math.rad(25.4),math.rad(64.8),math.rad(5.9))*necko,Alpha)
  	AeshW.C0 = AeshW.C0:lerp(cf(-2.8,0.6,-0.4)*angles(math.rad(-142.9),math.rad(18.9),math.rad(13.5)),Alpha)
	coroutine.resume(coroutine.create(function()MagniDamage(hitbox, 4, 5, 10, 0.3, "Knockdown")end))
  end
hum.WalkSpeed = storehumanoidWS
attack = false
end

function slashone()
attack = true
hum.WalkSpeed = 3

  for i = 0, 10 do
  	swait()
  	local Alpha = .3
  	RootJoint.C0 = RootJoint.C0:lerp(cf(0,-0.1,0.1)*angles(math.rad(5),math.rad(-25),math.rad(0))*RootCF,Alpha)
  	LH.C0 = LH.C0:lerp(cf(-1,-0.9,-0.4)*angles(math.rad(15),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
  	RH.C0 = RH.C0:lerp(cf(1,-0.9,-0.1)*angles(math.rad(-5),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
  	LW.C0 = LW.C0:lerp(cf(-1.5,0.5,0.1)*angles(math.rad(-14.6),math.rad(8.2),math.rad(-5.8)),Alpha)
  	RW.C0 = RW.C0:lerp(cf(1.2,0.7,0.2)*angles(math.rad(-151.5),math.rad(29.5),math.rad(5.7)),Alpha)
  	Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0,0,0)*angles(math.rad(0),math.rad(25),math.rad(0))*necko,Alpha)
  	BladesWeld.C0 = BladesWeld.C0:lerp(cf(0,-1,0.1)*angles(math.rad(-90),math.rad(0),math.rad(130)),Alpha)
  end
	CFuncs.Sound.Create("rbxassetid://596439421", ra, 2, 1.2)
  for i = 0, 10 do
  	swait()
  	local Alpha = .5
  	RootJoint.C0 = RootJoint.C0:lerp(cf(0,0,-0.1)*angles(math.rad(-15),math.rad(0),math.rad(0))*RootCF,Alpha)
  	LH.C0 = LH.C0:lerp(cf(-1,-1.1,-0.5)*angles(math.rad(-45),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
  	RH.C0 = RH.C0:lerp(cf(1,-0.8,-0.2)*angles(math.rad(20),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
  	LW.C0 = LW.C0:lerp(cf(-1.5,0.4,0.5)*angles(math.rad(-55),math.rad(0),math.rad(0)),Alpha)
  	RW.C0 = RW.C0:lerp(cf(1.5,0.3,-0.2)*angles(math.rad(55),math.rad(0),math.rad(0)),Alpha)
  	Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0,0.1,0.1)*angles(math.rad(-10),math.rad(0),math.rad(0))*necko,Alpha)
  	BladesWeld.C0 = BladesWeld.C0:lerp(cf(0.1,-1,0.2)*angles(math.rad(-115),math.rad(0),math.rad(-180)),Alpha)
	coroutine.resume(coroutine.create(function()MagniDamage(WanderersBlade.Blade, 3, 20, 40, 5, "Normal")end))
  end


hum.WalkSpeed = 16
attack = false
end

function slashtwo()
attack = true
hum.WalkSpeed = 3
for i = 0,3 do
swait()
	CFuncs.Sound.Create("rbxassetid://596439421", ra, 2, 1)

  for i = 0, 1 do
  	swait()
  	local Alpha = .7
  	RootJoint.C0 = RootJoint.C0:lerp(cf(0,0,0)*angles(math.rad(-5),math.rad(0),math.rad(0))*RootCF,Alpha)
  	LH.C0 = LH.C0:lerp(cf(-1.2,-1.1,-0.2)*angles(math.rad(15),math.rad(0),math.rad(5))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
  	RH.C0 = RH.C0:lerp(cf(1.2,-1.1,-0.2)*angles(math.rad(15),math.rad(0),math.rad(-5))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
  	LW.C0 = LW.C0:lerp(cf(-1.1,0.3,-0.6)*angles(math.rad(65),math.rad(0),math.rad(40)),Alpha)
  	RW.C0 = RW.C0:lerp(cf(1,0.3,-0.6)*angles(math.rad(65),math.rad(0),math.rad(-40)),Alpha)
  	Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0,0.1,0.1)*angles(math.rad(-10),math.rad(0),math.rad(0))*necko,Alpha)
  	BladesWeld.C0 = BladesWeld.C0:lerp(cf(-0.1,-1,-0.1)*angles(math.rad(90),math.rad(-50),math.rad(60)),Alpha)
	coroutine.resume(coroutine.create(function()MagniDamage(WanderersBlade.Blade, 4, 5, 10, 0.3, "Knockdown")end))
  end
  for i = 0, 1 do
  	swait()
  	local Alpha = .7
  	RootJoint.C0 = RootJoint.C0:lerp(cf(0,0,0)*angles(math.rad(-5),math.rad(45),math.rad(0))*RootCF,Alpha)
  	LH.C0 = LH.C0:lerp(cf(-1.2,-1.1,-0.2)*angles(math.rad(15),math.rad(0),math.rad(5))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
  	RH.C0 = RH.C0:lerp(cf(1.2,-1.1,-0.2)*angles(math.rad(15),math.rad(0),math.rad(-5))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
  	LW.C0 = LW.C0:lerp(cf(-1.1,0.3,-0.6)*angles(math.rad(65),math.rad(0),math.rad(40)),Alpha)
  	RW.C0 = RW.C0:lerp(cf(1,0.3,-0.6)*angles(math.rad(65),math.rad(0),math.rad(-40)),Alpha)
  	Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0,0.1,0.1)*angles(math.rad(-10),math.rad(0),math.rad(0))*necko,Alpha)
  	BladesWeld.C0 = BladesWeld.C0:lerp(cf(-0.1,-1,-0.1)*angles(math.rad(90),math.rad(-50),math.rad(60)),Alpha)
	coroutine.resume(coroutine.create(function()MagniDamage(WanderersBlade.Blade, 4, 5, 10, 0.3, "Knockdown")end))
  end
  for i = 0, 1 do
  	swait()
  	local Alpha = .7
  	RootJoint.C0 = RootJoint.C0:lerp(cf(0,0,0)*angles(math.rad(-5),math.rad(90),math.rad(0))*RootCF,Alpha)
  	LH.C0 = LH.C0:lerp(cf(-1.2,-1.1,-0.2)*angles(math.rad(15),math.rad(0),math.rad(5))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
  	RH.C0 = RH.C0:lerp(cf(1.2,-1.1,-0.2)*angles(math.rad(15),math.rad(0),math.rad(-5))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
  	LW.C0 = LW.C0:lerp(cf(-1.1,0.3,-0.6)*angles(math.rad(65),math.rad(0),math.rad(40)),Alpha)
  	RW.C0 = RW.C0:lerp(cf(1,0.3,-0.6)*angles(math.rad(65),math.rad(0),math.rad(-40)),Alpha)
  	Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0,0.1,0.1)*angles(math.rad(-10),math.rad(0),math.rad(0))*necko,Alpha)
  	BladesWeld.C0 = BladesWeld.C0:lerp(cf(-0.1,-1,-0.1)*angles(math.rad(90),math.rad(-50),math.rad(60)),Alpha)
	coroutine.resume(coroutine.create(function()MagniDamage(WanderersBlade.Blade, 4, 5, 10, 0.3, "Knockdown")end))
  end
  for i = 0, 1 do
  	swait()
  	local Alpha = .7
  	RootJoint.C0 = RootJoint.C0:lerp(cf(0,0,0)*angles(math.rad(-5),math.rad(135),math.rad(0))*RootCF,Alpha)
  	LH.C0 = LH.C0:lerp(cf(-1.2,-1.1,-0.2)*angles(math.rad(15),math.rad(0),math.rad(5))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
  	RH.C0 = RH.C0:lerp(cf(1.2,-1.1,-0.2)*angles(math.rad(15),math.rad(0),math.rad(-5))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
  	LW.C0 = LW.C0:lerp(cf(-1.1,0.3,-0.6)*angles(math.rad(65),math.rad(0),math.rad(40)),Alpha)
  	RW.C0 = RW.C0:lerp(cf(1,0.3,-0.6)*angles(math.rad(65),math.rad(0),math.rad(-40)),Alpha)
  	Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0,0.1,0.1)*angles(math.rad(-10),math.rad(0),math.rad(0))*necko,Alpha)
  	BladesWeld.C0 = BladesWeld.C0:lerp(cf(-0.1,-1,-0.1)*angles(math.rad(90),math.rad(-50),math.rad(60)),Alpha)
	coroutine.resume(coroutine.create(function()MagniDamage(WanderersBlade.Blade, 4, 5, 10, 0.3, "Knockdown")end))
  end
  for i = 0, 1 do
  	swait()
  	local Alpha = .7
  	RootJoint.C0 = RootJoint.C0:lerp(cf(0,0,0)*angles(math.rad(-5),math.rad(180),math.rad(0))*RootCF,Alpha)
  	LH.C0 = LH.C0:lerp(cf(-1.2,-1.1,-0.2)*angles(math.rad(15),math.rad(0),math.rad(5))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
  	RH.C0 = RH.C0:lerp(cf(1.2,-1.1,-0.2)*angles(math.rad(15),math.rad(0),math.rad(-5))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
  	LW.C0 = LW.C0:lerp(cf(-1.1,0.3,-0.6)*angles(math.rad(65),math.rad(0),math.rad(40)),Alpha)
  	RW.C0 = RW.C0:lerp(cf(1,0.3,-0.6)*angles(math.rad(65),math.rad(0),math.rad(-40)),Alpha)
  	Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0,0.1,0.1)*angles(math.rad(-10),math.rad(0),math.rad(0))*necko,Alpha)
  	BladesWeld.C0 = BladesWeld.C0:lerp(cf(-0.1,-1,-0.1)*angles(math.rad(90),math.rad(-50),math.rad(60)),Alpha)
	coroutine.resume(coroutine.create(function()MagniDamage(WanderersBlade.Blade, 4, 5, 10, 0.3, "Knockdown")end))
  end
  for i = 0, 1 do
  	swait()
  	local Alpha = .7
  	RootJoint.C0 = RootJoint.C0:lerp(cf(0,0,0)*angles(math.rad(-5),math.rad(225),math.rad(0))*RootCF,Alpha)
  	LH.C0 = LH.C0:lerp(cf(-1.2,-1.1,-0.2)*angles(math.rad(15),math.rad(0),math.rad(5))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
  	RH.C0 = RH.C0:lerp(cf(1.2,-1.1,-0.2)*angles(math.rad(15),math.rad(0),math.rad(-5))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
  	LW.C0 = LW.C0:lerp(cf(-1.1,0.3,-0.6)*angles(math.rad(65),math.rad(0),math.rad(40)),Alpha)
  	RW.C0 = RW.C0:lerp(cf(1,0.3,-0.6)*angles(math.rad(65),math.rad(0),math.rad(-40)),Alpha)
  	Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0,0.1,0.1)*angles(math.rad(-10),math.rad(0),math.rad(0))*necko,Alpha)
  	BladesWeld.C0 = BladesWeld.C0:lerp(cf(-0.1,-1,-0.1)*angles(math.rad(90),math.rad(-50),math.rad(60)),Alpha)
	coroutine.resume(coroutine.create(function()MagniDamage(WanderersBlade.Blade, 4, 5, 10, 0.3, "Knockdown")end))
  end
  for i = 0, 1 do
  	swait()
  	local Alpha = .7
  	RootJoint.C0 = RootJoint.C0:lerp(cf(0,0,0)*angles(math.rad(-5),math.rad(270),math.rad(0))*RootCF,Alpha)
  	LH.C0 = LH.C0:lerp(cf(-1.2,-1.1,-0.2)*angles(math.rad(15),math.rad(0),math.rad(5))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
  	RH.C0 = RH.C0:lerp(cf(1.2,-1.1,-0.2)*angles(math.rad(15),math.rad(0),math.rad(-5))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
  	LW.C0 = LW.C0:lerp(cf(-1.1,0.3,-0.6)*angles(math.rad(65),math.rad(0),math.rad(40)),Alpha)
  	RW.C0 = RW.C0:lerp(cf(1,0.3,-0.6)*angles(math.rad(65),math.rad(0),math.rad(-40)),Alpha)
  	Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0,0.1,0.1)*angles(math.rad(-10),math.rad(0),math.rad(0))*necko,Alpha)
  	BladesWeld.C0 = BladesWeld.C0:lerp(cf(-0.1,-1,-0.1)*angles(math.rad(90),math.rad(-50),math.rad(60)),Alpha)
	coroutine.resume(coroutine.create(function()MagniDamage(WanderersBlade.Blade, 4, 5, 10, 0.3, "Knockdown")end))
  end
  for i = 0, 1 do
  	swait()
  	local Alpha = .7
  	RootJoint.C0 = RootJoint.C0:lerp(cf(0,0,0)*angles(math.rad(-5),math.rad(315),math.rad(0))*RootCF,Alpha)
  	LH.C0 = LH.C0:lerp(cf(-1.2,-1.1,-0.2)*angles(math.rad(15),math.rad(0),math.rad(5))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
  	RH.C0 = RH.C0:lerp(cf(1.2,-1.1,-0.2)*angles(math.rad(15),math.rad(0),math.rad(-5))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
  	LW.C0 = LW.C0:lerp(cf(-1.1,0.3,-0.6)*angles(math.rad(65),math.rad(0),math.rad(40)),Alpha)
  	RW.C0 = RW.C0:lerp(cf(1,0.3,-0.6)*angles(math.rad(65),math.rad(0),math.rad(-40)),Alpha)
  	Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0,0.1,0.1)*angles(math.rad(-10),math.rad(0),math.rad(0))*necko,Alpha)
  	BladesWeld.C0 = BladesWeld.C0:lerp(cf(-0.1,-1,-0.1)*angles(math.rad(90),math.rad(-50),math.rad(60)),Alpha)
	coroutine.resume(coroutine.create(function()MagniDamage(WanderersBlade.Blade, 4, 5, 10, 0.3, "Knockdown")end))
  end
end
hum.WalkSpeed = 16
attack = false
end
function slashthree()
attack = true
hum.WalkSpeed = 3
 for i = 0, 15 do
  	swait()
  	local Alpha = .3
  	RootJoint.C0 = RootJoint.C0:lerp(cf(0,1.1,0.1)*angles(math.rad(10),math.rad(0),math.rad(0))*RootCF,Alpha)
  	LH.C0 = LH.C0:lerp(cf(-1,-1,-0.3)*angles(math.rad(-15),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
  	RH.C0 = RH.C0:lerp(cf(1,-0.8,-0.8)*angles(math.rad(-25),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
  	LW.C0 = LW.C0:lerp(cf(-1.5,0.4,-0.4)*angles(math.rad(25),math.rad(0),math.rad(0)),Alpha)
  	RW.C0 = RW.C0:lerp(cf(1.5,0.5,0.8)*angles(math.rad(-70),math.rad(0),math.rad(0)),Alpha)
  	Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*necko,Alpha)
  	BladesWeld.C0 = BladesWeld.C0:lerp(cf(0.1,-1.1,-0.3)*angles(math.rad(145),math.rad(0),math.rad(-180)),Alpha)
  end
  for i = 0, 3 do
  	swait()
  	local Alpha = .7
  	RootJoint.C0 = RootJoint.C0:lerp(cf(0,0,-0.1)*angles(math.rad(-15),math.rad(0),math.rad(0))*RootCF,Alpha)
  	LH.C0 = LH.C0:lerp(cf(-1,-0.7,-0.2)*angles(math.rad(-5),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
  	RH.C0 = RH.C0:lerp(cf(1,-0.3,-0.9)*angles(math.rad(-40),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
  	LW.C0 = LW.C0:lerp(cf(-1.5,0.3,0.1)*angles(math.rad(20),math.rad(0),math.rad(0)),Alpha)
  	RW.C0 = RW.C0:lerp(cf(1.5,0.7,-0.3)*angles(math.rad(155),math.rad(0),math.rad(0)),Alpha)
  	Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*necko,Alpha)
  	BladesWeld.C0 = BladesWeld.C0:lerp(cf(0.1,-1,0.4)*angles(math.rad(-125),math.rad(0),math.rad(-180)),Alpha)
  end
	coroutine.resume(coroutine.create(function()
	swait(5)
		CamShakeAll{
		Intensity=1;
		Duration=0.2;
		Speed=10;
		Rotation=Vector3.new(1,1,10);
		Position=Vector3.new(.5,.5,.5);
		DropDist=1000;
		IneffectiveDist=2000;
		}
		CFuncs.Sound.Create("rbxassetid://567932471", ra, 2, 1)
		MagniDamageWithEffect(WanderersBlade.Blade, 10, 5, 10, 1, "Up")
	for i = 0,12 do
		PixelBlock(7,1,"Add",WanderersBlade.Blade.CFrame*CFrame.new(0,math.random(-1,1),0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,.01,BrickColor.new("Deep blue"),0)
	end
	end))
  for i = 0,20 do
  	swait()
  	local Alpha = .7
  	RootJoint.C0 = RootJoint.C0:lerp(cf(0,-1.6,-0.4)*angles(math.rad(-30),math.rad(0),math.rad(0))*RootCF,Alpha)
  	LH.C0 = LH.C0:lerp(cf(-1.1,0.5,-0.9)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
  	RH.C0 = RH.C0:lerp(cf(1.1,-0.2,-1.2)*angles(math.rad(-45),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
  	LW.C0 = LW.C0:lerp(cf(-1.5,0.2,-0.2)*angles(math.rad(40),math.rad(0),math.rad(0)),Alpha)
  	RW.C0 = RW.C0:lerp(cf(1.5,0.3,-0.6)*angles(math.rad(105),math.rad(0),math.rad(0)),Alpha)
  	Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*necko,Alpha)
  	BladesWeld.C0 = BladesWeld.C0:lerp(cf(0.1,-0.7,0.6)*angles(math.rad(-165),math.rad(0),math.rad(-180)),Alpha)
  end
hum.WalkSpeed = 16
attack = false
end

function CrystalSlam()
attack = true
hum.WalkSpeed = 0
local DamageVal = 0
local KeyHolden = true
local nig;
nig=mouse.KeyUp:Connect(function(key)
if key == "z" then
KeyHolden = false
nig:disconnect()
end	
end)

local Pillars=0;
repeat
local Alpha = .3
swait()
DamageVal = DamageVal + 1
RootJoint.C0 = RootJoint.C0:lerp(cf(0,-0.9,-0.2)*angles(math.rad(-20),math.rad(-65),math.rad(0))*RootCF,Alpha)
LH.C0 = LH.C0:lerp(cf(-1.2,-0.2,0.3)*angles(math.rad(27.1),math.rad(67.8),math.rad(-23.6))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
RH.C0 = RH.C0:lerp(cf(0.6,-0.7,0.1)*angles(math.rad(-2),math.rad(-29.7),math.rad(24.1))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
LW.C0 = LW.C0:lerp(cf(-1.1,0.5+.1*math.cos(sine/20 -DamageVal),-0.6)*angles(math.rad(100),math.rad(-0.9),math.rad(-4.9)),Alpha)
RW.C0 = RW.C0:lerp(cf(1.1,0.4+.1*math.cos(sine/20 -DamageVal),-0.2)*angles(math.rad(115),math.rad(0),math.rad(30)),Alpha)
Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0,0,0)*angles(math.rad(0),math.rad(65),math.rad(0))*necko,Alpha)
AeshW.C0 = AeshW.C0:lerp(cf(-0.3,-0.4+.1*math.cos(sine/20 -DamageVal),0)*angles(math.rad(66.5),math.rad(-7.5),math.rad(168.8)),Alpha)
slash(3,3,true,"Round","Add","Out",hitbox.CFrame*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),Vector3.new(.001,.001,.001),0.1,BrickColor.new("Royal purple"))
until KeyHolden == false or DamageVal > 200
for i = 0, 5 do
 swait()
 local Alpha = .5
 RootJoint.C0 = RootJoint.C0:lerp(cf(0,0.5,-0.6)*angles(math.rad(-65),math.rad(0),math.rad(0))*RootCF,Alpha)
 LH.C0 = LH.C0:lerp(cf(-1,-0.9,0)*angles(math.rad(-15),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
 RH.C0 = RH.C0:lerp(cf(1,-1.3,-0.3)*angles(math.rad(-80),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
 LW.C0 = LW.C0:lerp(cf(-1.1,0.7,-1.1)*angles(math.rad(120),math.rad(0),math.rad(25)),Alpha)
 RW.C0 = RW.C0:lerp(cf(0.9,0.7,-1.1)*angles(math.rad(120),math.rad(0),math.rad(-25)),Alpha)
 Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*necko,Alpha)
 AeshW.C0 = AeshW.C0:lerp(cf(0.4,-2.9,-1.4)*angles(math.rad(-90),math.rad(65),math.rad(-153.9)),Alpha)
end
	coroutine.resume(coroutine.create(function()
		CamShakeAll{
		Intensity=DamageVal/10;
		Duration=0.2;
		Speed=10;
		Rotation=Vector3.new(1,1,10);
		Position=Vector3.new(.5,.5,.5);
		DropDist=1000;
		IneffectiveDist=2000;
		}
		CFuncs.Sound.Create("rbxassetid://567932471", ra, 2, 1)
		MagniDamageWithEffect(hitbox.CFrame, 2,1, 10, DamageVal/5, "Freeze")
		 for i = 0,12 do
			PixelBlock(7,1,"Add",hitbox.CFrame*CFrame.new(0,math.random(-1,1),0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3,3,3,.028,BrickColor.new("Dark indigo"),0,'Glass')
		end
		local points,parts = {},{}
		local hit,pos,norm=CastRay(RootPart.Position,RootPart.Position-Vector3.new(0,1,0),6)
		for i = 1, DamageVal/10 do
			local lastPoint = points[i-1] or cf(pos,pos+RootPart.CFrame.lookVector)*cf(0,0,-1)
			local thisPoint=lastPoint*cf(math.random(-200,200)/100,0,-math.random(200,500)/100)
			local dist = (lastPoint.p-thisPoint.p).magnitude
			local line = CreatePart(char, Enum.Material.Neon, 0, 0, BrickColor.new'Dark indigo', "CursedPillarPoint", Vector3.new(.2,.2,dist))
			line.Anchored=true
			line.CanCollide=false
			
			line.CFrame=cf(lastPoint.p,thisPoint.p)*CFrame.new(0,0,-dist/2) 
			points[#points+1]=thisPoint
			parts[#points]=line
			swait()
		end
		swait(120)
		for i = 1,#points do
			parts[i]:destroy()
			local cf = points[i]
			sphere2(3,"Add",cf,vt(1,1,1),.1,.1,.1,BrickColor.new("Dark indigo"),BrickColor.new("Dark indigo").Color)
			sphere2(3,"Add",cf,vt(5.5,.5,5.5),-0.02,2,-0.02,BrickColor.new("Dark indigo"))
			MagniDamageWithEffect(cf, 4,1, 10, DamageVal/15, "Freeze")
			for i = 0,12 do
				PixelBlock(3,3,"Add",cf*CFrame.new(0,math.random(-1,1),0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3,3,3,.028,BrickColor.new("Dark indigo"),0,'Glass')
			end
			swait(5)
		end

	end))
for i = 0, 15 do
 swait()
 local Alpha = .5
 RootJoint.C0 = RootJoint.C0:lerp(cf(0,0.5,-0.6)*angles(math.rad(-65),math.rad(0),math.rad(0))*RootCF,Alpha)
 LH.C0 = LH.C0:lerp(cf(-1,-0.9,0)*angles(math.rad(-15),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
 RH.C0 = RH.C0:lerp(cf(1,-1.3,-0.3)*angles(math.rad(-80),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
 LW.C0 = LW.C0:lerp(cf(-1.1,0.7,-1.1)*angles(math.rad(120),math.rad(0),math.rad(25)),Alpha)
 RW.C0 = RW.C0:lerp(cf(0.9,0.7,-1.1)*angles(math.rad(120),math.rad(0),math.rad(-25)),Alpha)
 Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*necko,Alpha)
 AeshW.C0 = AeshW.C0:lerp(cf(0.4,-2.9,-1.4)*angles(math.rad(-90),math.rad(65),math.rad(-153.9)),Alpha)
end
hum.WalkSpeed = storehumanoidWS
attack = false
end

function YourLastPurpleSight()
attack = true
hum.WalkSpeed = 0
  for i = 0, 20 do
  	swait()
  	local Alpha = .3
  	RootJoint.C0 = RootJoint.C0:lerp(cf(0,0,0)*angles(math.rad(0),math.rad(-15),math.rad(0))*RootCF,Alpha)
  	LH.C0 = LH.C0:lerp(cf(-1.3,-1,-0.2)*angles(math.rad(0),math.rad(20),math.rad(0))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
  	RH.C0 = RH.C0:lerp(cf(1,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
  	LW.C0 = LW.C0:lerp(cf(-1.6,0.5,-0.4)*angles(math.rad(138.4),math.rad(-17.2),math.rad(-10.3)),Alpha)
  	RW.C0 = RW.C0:lerp(cf(1.6,0.4,0.4)*angles(math.rad(-25.3),math.rad(9.1),math.rad(4.3)),Alpha)
  	Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(-0.2,0.1,-0.5)*angles(math.rad(21.2),math.rad(18.7),math.rad(-7.1))*necko,Alpha)
  	AeshW.C0 = AeshW.C0:lerp(cf(0.4,-1.2,0.8)*angles(math.rad(25),math.rad(-85),math.rad(168.9)),Alpha)
	SelectionBlock(12,0,"Add",la.CFrame*CFrame.new(0,-1.6,0)*CFrame.Angles(math.rad(sine*2),math.rad(sine*2),math.rad(sine*2)),10,10,10,1,Color3.fromRGB(0, 0, 0),0,0)
	PixelBlock(12,0,"Add",la.CFrame*CFrame.new(0,-1.6,0)*CFrame.Angles(math.rad(sine*2),math.rad(sine*2),math.rad(sine*2)),0.9,0.9,0.9,0.001,BrickColor.new("Dark indigo"),0)	
  end
	CFuncs.Sound.Create("rbxassetid://743499393", ra, 0.9, 2)
	local CrystalHammie = script.GlassHammer:Clone()
	CrystalHammie.Parent = char
	local CrystalHammieBase = CrystalHammie.HammerPoint
	CrystalHammieBase.CFrame = root.CFrame * CFrame.new(0,100,50) * CFrame.Angles(math.rad(-90),0,0)
	local CrystalBase = CrystalHammie.Union
  for i = 0, 270 do
  	swait()
  	local Alpha = .3
  	RootJoint.C0 = RootJoint.C0:lerp(cf(0,0,0)*angles(math.rad(0),math.rad(-15),math.rad(0))*RootCF,Alpha)
  	LH.C0 = LH.C0:lerp(cf(-1.3,-1,-0.2)*angles(math.rad(0),math.rad(20),math.rad(0))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
  	RH.C0 = RH.C0:lerp(cf(1,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
  	LW.C0 = LW.C0:lerp(cf(-1.6,0.5,-0.4)*angles(math.rad(138.4),math.rad(-17.2),math.rad(-10.3)),Alpha)
  	RW.C0 = RW.C0:lerp(cf(1.6,0.4,0.4)*angles(math.rad(-25.3),math.rad(9.1),math.rad(4.3)),Alpha)
  	Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(-0.2,0.1,-0.5)*angles(math.rad(21.2),math.rad(18.7),math.rad(-7.1))*necko,Alpha)
  	AeshW.C0 = AeshW.C0:lerp(cf(0.4,-1.2,0.8)*angles(math.rad(25),math.rad(-85),math.rad(168.9)),Alpha)
	SelectionBlock(12,0,"Add",la.CFrame*CFrame.new(0,-1.6,0)*CFrame.Angles(math.rad(sine*2),math.rad(sine*2),math.rad(sine*2)),10,10,10,1,Color3.fromRGB(0, 0, 0),0,0)
	PixelBlock(12,0,"Add",la.CFrame*CFrame.new(0,-1.6,0)*CFrame.Angles(math.rad(sine*2),math.rad(sine*2),math.rad(sine*2)),0.9,0.9,0.9,0.001,BrickColor.new("Dark indigo"),0)	
	slash(3,3,true,"Round","Add","Out",la.CFrame*CFrame.new(0,-1.6,0)*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),Vector3.new(.001,.001,.001),0.1,BrickColor.new("Royal purple"))
	CrystalBase.Transparency = 1.4 - (i/100)
  end
  for i = 0, 100 do
  	swait()
  	local Alpha = .2
	CrystalHammieBase.CFrame = clerp(CrystalHammieBase.CFrame,root.CFrame * CFrame.new(0,120,70)* CFrame.Angles(math.rad(10),0,0),0.1)
  	RootJoint.C0 = RootJoint.C0:lerp(cf(-0.3,0,0.1)*angles(math.rad(0),math.rad(20),math.rad(0))*RootCF,Alpha)
  	LH.C0 = LH.C0:lerp(cf(-1.3,-1,-0.2)*angles(math.rad(0),math.rad(20),math.rad(0))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
  	RH.C0 = RH.C0:lerp(cf(1,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
  	LW.C0 = LW.C0:lerp(cf(-1,1.1,1.2)*angles(math.rad(-138.3),math.rad(-12.7),math.rad(35.6)),Alpha)
  	RW.C0 = RW.C0:lerp(cf(1.6,0.4,0.4)*angles(math.rad(-25.3),math.rad(9.1),math.rad(4.3)),Alpha)
  	Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0,0,-0.2)*angles(math.rad(7.4),math.rad(-22.6),math.rad(1))*necko,Alpha)
  	AeshW.C0 = AeshW.C0:lerp(cf(-0.8,-1.5,1.5)*angles(math.rad(-155),math.rad(-60),math.rad(-11.1)),Alpha)
  end
	coroutine.resume(coroutine.create(function()
	swait(5)
		CamShakeAll{
		Intensity=10;
		Duration=0.2;
		Speed=10;
		Rotation=Vector3.new(1,1,10);
		Position=Vector3.new(.5,.5,.5);
		DropDist=1000;
		IneffectiveDist=2000;
		}
		CFuncs.Sound.Create("rbxassetid://567932471", ra, 2, 1)
	--[[ for i = 0,12 do
		PixelBlock(7,1,"Add",WanderersBlade.Blade.CFrame*CFrame.new(0,math.random(-1,1),0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,.01,BrickColor.new("Deep blue"),0)
	end --]]
	end))
  for i = 0, 50 do
  	swait()
  	local Alpha = .2
	CrystalHammieBase.CFrame = clerp(CrystalHammieBase.CFrame,root.CFrame * CFrame.new(0,10,0)* CFrame.Angles(math.rad(170),0,0),0.1)
  	RootJoint.C0 = RootJoint.C0:lerp(cf(0,0,0)*angles(math.rad(0),math.rad(-15),math.rad(0))*RootCF,Alpha)
  	LH.C0 = LH.C0:lerp(cf(-1.3,-1,-0.2)*angles(math.rad(0),math.rad(20),math.rad(0))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
  	RH.C0 = RH.C0:lerp(cf(1,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
  	LW.C0 = LW.C0:lerp(cf(-1.5,0.4,-0.1)*angles(math.rad(51.5),math.rad(9.8),math.rad(-17.5)),Alpha)
  	RW.C0 = RW.C0:lerp(cf(1.6,0.4,0.4)*angles(math.rad(-25.3),math.rad(9.1),math.rad(4.3)),Alpha)
  	Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0.1,0,0.2)*angles(math.rad(-10.6),math.rad(19.7),math.rad(3.6))*necko,Alpha)
  	AeshW.C0 = AeshW.C0:lerp(cf(0.4,-1.2,0.8)*angles(math.rad(25),math.rad(-85),math.rad(168.9)),Alpha)
	coroutine.resume(coroutine.create(function()MagniDamageWithEffect(CrystalHammie.Union.Damage.CFrame, 10,1, 10, 1, "Freeze")end))  
	end
CrystalHammie:Destroy()
hum.WalkSpeed = storehumanoidWS
attack = false
end


function SuckySuckyImGonnaGiveYouAFuckiFucki()
hum.WalkSpeed = 0
attack = true
  local Sharpie = script.SharpieOWO:Clone()
  Sharpie.Parent = char
  Sharpie:WaitForChild("MeshPart").Transparency = 1
  Sharpie.Torso.Anchored = false
  local KnifeWld = Instance.new("Weld",char)
  KnifeWld.Part1 = tors
  KnifeWld.Part0 = Sharpie:WaitForChild("Torso")
  CFuncs.Sound.Create("rbxassetid://376107250", tors, 3, 0.8)
  KnifeWld.C1 = CFrame.new(0,0,0.5)*CFrame.Angles(math.rad(75),math.rad(0),math.rad(0))
  for i = 0, 100  do
  	swait()
  	local Alpha = .05
  	RootJoint.C0 = RootJoint.C0:lerp(cf(0,-0.3,0)*angles(math.rad(-55),math.rad(0),math.rad(0))*RootCF,Alpha)
  	LH.C0 = LH.C0:lerp(cf(-1,-1.4,-0.4)*angles(math.rad(100),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
  	RH.C0 = RH.C0:lerp(cf(1,-1.5,-0.4)*angles(math.rad(100),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
  	LW.C0 = LW.C0:lerp(cf(-1.5,0.8,-0.6)*angles(math.rad(135),math.rad(0),math.rad(0)),Alpha)
  	RW.C0 = RW.C0:lerp(cf(1.5,0.8,-0.6)*angles(math.rad(135),math.rad(0),math.rad(0)),Alpha)
  	Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0,0.6,0.9)*angles(math.rad(-50),math.rad(0),math.rad(0))*necko,Alpha)
	slash(3,3,true,"Round","Add","Out",root.CFrame*CFrame.new(0,-1.3,-.5)*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),Vector3.new(.001,.001,.001),0.1,BrickColor.new("Pink"))
 	sphere2(12,"Add",root.CFrame*CFrame.new(0,-1.3,-.5),Vector3.new(1,1,1),0,0,0,BrickColor.new("Pink"))
  end
  Sharpie.MeshPart.Transparency = 0
  CFuncs.Sound.Create("rbxassetid://179285891", tors, 3, 1.1)
  for i = 0, 20 do
  	swait()
  	local Alpha = .3
  	RootJoint.C0 = RootJoint.C0:lerp(cf(0,-0.3,0)*angles(math.rad(-55),math.rad(0),math.rad(0))*RootCF,Alpha)
  	LH.C0 = LH.C0:lerp(cf(-1,-1.4,-0.4)*angles(math.rad(100),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
  	RH.C0 = RH.C0:lerp(cf(1,-1.5,-0.4)*angles(math.rad(100),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
  	LW.C0 = LW.C0:lerp(cf(-1.5,0.8,-0.6)*angles(math.rad(135),math.rad(0),math.rad(0)),Alpha)
  	RW.C0 = RW.C0:lerp(cf(1.5,0.8,-0.6)*angles(math.rad(135),math.rad(0),math.rad(0)),Alpha)
  	Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0,0.3,-0.8)*angles(math.rad(40),math.rad(0),math.rad(0))*necko,Alpha) 
  end
  local Dongo = Sound(tors,"rbxassetid://248138795",1,3,false,true,true)
  Dongo.TimePosition = 0.3
  local Dongie = Instance.new("PitchShiftSoundEffect",Dongo)
  Dongie.Octave = 0.78
  swait(100)
  local Screech = Sound(tors,"rbxassetid://316891313",1,4,false,true,true)
  local target = nil
 local bv = Instance.new("BodyVelocity")
 bv.maxForce = Vector3.new(1e9, 0, 1e9)
 bv.velocity = root.CFrame.lookVector*75
 bv.Parent = root
  tors.Touched:Connect(function(Target)
	if Target.Name ~= "Baseplate" or v.Name ~= "Base" then
	target = Target
	bv:Destroy()
	tors.Touched:Disconnect()
	end
  end)
  repeat
  	swait()
    bv.velocity = root.CFrame.lookVector*75
  	local Alpha = .3
	KnifeWld.C1 = clerp(KnifeWld.C1,CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),Alpha)
  	RootJoint.C0 = RootJoint.C0:lerp(cf(0,0,0.3)*angles(math.rad(35),math.rad(0),math.rad(0))*RootCF,Alpha)
  	LH.C0 = LH.C0:lerp(cf(-1,-1.1,0.3)*angles(math.rad(-95.1),math.rad(0.7),math.rad(2.5))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
  	RH.C0 = RH.C0:lerp(cf(1,-1.1,0.3)*angles(math.rad(-95.1),math.rad(0.7),math.rad(2.5))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
  	LW.C0 = LW.C0:lerp(cf(-1.4,0.5,0.4)*angles(math.rad(0),math.rad(75),math.rad(-90)),Alpha)
  	RW.C0 = RW.C0:lerp(cf(1.5,0.5,0.4)*angles(math.rad(0),math.rad(-80),math.rad(90)),Alpha)
  	Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0,0,-0.5)*angles(math.rad(10),math.rad(0),math.rad(0))*necko,Alpha)	
 until Screech.TimePosition > 20 or target ~= nil
 sphere2(4,"Add",Sharpie.MeshPart.CFrame*CFrame.new(0,0,0),Vector3.new(1,1,1),1,1,1,BrickColor.new("Pink"))
 coroutine.resume(coroutine.create(function() MagniDamage(Sharpie.MeshPart, 10, 5, 10, 1, "Up") end))
 bv:Destroy()
 Sharpie:Destroy()
 Screech:Destroy()
attack = false
hum.WalkSpeed = 69
end

-------------------------------------

Humanoid.Animator.Parent = nil

-------------------------------------
local attacktype = 1
mouse.Button1Down:connect(function()
	if attack == true then return end
if ModeOfGlitch == 201 then
if attack == false and attacktype == 1 then
	slashone()
	attacktype = 2	
elseif attack == false and attacktype == 2 then
	slashtwo()
	attacktype = 3
elseif attack == false and attacktype == 3 then
	slashthree()
	attacktype = 1	
end	
elseif ModeOfGlitch==123666 then
	hamone()
elseif ModeOfGlitch==666 then
	  if attack == false and attacktype == 1 then
    attacktype = 2
    gassmack()
  elseif attack == false and attacktype == 2 then
    attacktype = 3
    attacktwo()
  elseif attack == false and attacktype == 3 then
    attacktype = 1
   balsplode()
	end
else
	  if attack == false and attacktype == 1 then
    attacktype = 2
    attackone()
  elseif attack == false and attacktype == 2 then
    attacktype = 3
    attacktwo()
  elseif attack == false and attacktype == 3 then
    attacktype = 1
    attackthree()
  elseif attack == false and attacktype == 4 then
    attacktype = 1
    --attackfour()
  end
end
end)

mouse.KeyDown:connect(function(k)
	if(k == '[' and ModeOfGlitch==666)then
		if(currentThemePlaying=='rbxassetid://1975572914')then 
			currentThemePlaying='rbxassetid://2622961126' 
		elseif(currentThemePlaying=='rbxassetid://2622961126')then 
			currentThemePlaying='rbxassetid://2968561228' 
		else 
			currentThemePlaying='rbxassetid://1975572914' 
		end
	elseif(k == ']' and ModeOfGlitch==666)then
		if(currentThemePlaying=='rbxassetid://2622961126')then 
			currentThemePlaying='rbxassetid://1975572914' 
		elseif(currentThemePlaying=='rbxassetid://2968561228')then 
			currentThemePlaying='rbxassetid://2622961126' 
		else 
			currentThemePlaying='rbxassetid://2968561228' 
		end
	end
	if k == "1" and ModeOfGlitch ~= 1 then
ModeOfGlitch = 1
storehumanoidWS = 16
hum.WalkSpeed = 16
rainbowmode = false
chaosmode = false
newTheme("rbxassetid://495971354",48.6,1,1.25)
RecolorTextAndRename("POWER",Color3.new(0.25,0,0),Color3.new(1,0,0),"Antique")
MAINRUINCOLOR = BrickColor.new("Really red")
RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,false,false)
	elseif (k == "2" and ModeOfGlitch ~= 2) then
ModeOfGlitch = 2
storehumanoidWS = 16
hum.WalkSpeed = 16
rainbowmode = false
chaosmode = false
RecolorTextAndRename("INNOCENT",Color3.new(1,1,1),Color3.new(0,1,1),"Code")
newTheme("rbxassetid://1298467151",0,1.01,1.25)
MAINRUINCOLOR = BrickColor.new("Toothpaste")
RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,false,false)
	elseif (k == "3" and ModeOfGlitch ~= 3) then
ModeOfGlitch = 3
storehumanoidWS = 16
hum.WalkSpeed = 16
rainbowmode = false
chaosmode = false
RecolorTextAndRename("CORRUPTED",Color3.new(0,0,0),Color3.new(0.35,0,1),"Antique")
newTheme("rbxassetid://544291208",58.15,0.98,1.25)
MAINRUINCOLOR = BrickColor.new("Royal purple")
RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,false,false)
	elseif (k =="4" and ModeOfGlitch ~= 4) then
ModeOfGlitch = 4
storehumanoidWS = 16
hum.WalkSpeed = 16
rainbowmode = false
chaosmode = true
RecolorTextAndRename("HOPELESS",Color3.new(0,0,0),Color3.new(1,1,1),"Arcade")
newTheme("rbxassetid://151476016",0,1.01,1.25)
MAINRUINCOLOR = BrickColor.new("Black")
RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true,false)
	elseif(k == "5" and ModeOfGlitch ~= 5)then
               ModeOfGlitch = 5
storehumanoidWS = 16
hum.WalkSpeed = 16
rainbowmode = false
chaosmode = false
RecolorTextAndRename("WILLFUL",Color3.new(.99,.89,.52),Color3.new(.97,.8,.42),"SciFi")
newTheme("rbxassetid://2659531944",0,.98,1.25)
MAINRUINCOLOR = BrickColor.new("Gold")
RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true,false)
	elseif(k == "6" and ModeOfGlitch ~= 6)then
               ModeOfGlitch = 6
storehumanoidWS = 100
hum.WalkSpeed = 100
rainbowmode = false
chaosmode = false
RecolorTextAndRename("GRACEFUL",Color3.new(1,1,1),Color3.new(.5,.5,.5),"Fantasy")
newTheme("rbxassetid://195916147",0,1.01,1.25)
MAINRUINCOLOR = BrickColor.new("White")
RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true,false)
	elseif(k == "7" and ModeOfGlitch ~= 7)then
               ModeOfGlitch = 7
storehumanoidWS = 180
hum.WalkSpeed = 180
rainbowmode = true
chaosmode = false
RecolorTextAndRename("ELEVATED",Color3.new(1,1,1),Color3.new(1,1,1),"Cartoon")
newTheme("rbxassetid://410474991",0,1,1.25)
MAINRUINCOLOR = BrickColor.new("White")
RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true,false)
	elseif(k == "8" and ModeOfGlitch ~= 8)then
               ModeOfGlitch = 8
storehumanoidWS = 180
hum.WalkSpeed = 180
rainbowmode = false
chaosmode = false
RecolorTextAndRename("ASCENDED",BrickColor.new("Alder").Color,BrickColor.new("Lilac").Color,"Antique")
newTheme("rbxassetid://904930498",0,1.25,1.5)
MAINRUINCOLOR = BrickColor.new("Lilac")
RecolorThing(MAINRUINCOLOR,BrickColor.new("Alder"),MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true,false)
	elseif(k == "9" and ModeOfGlitch ~= 9)then
               ModeOfGlitch = 9
storehumanoidWS = 16
hum.WalkSpeed = 16
rainbowmode = false
chaosmode = false
RecolorTextAndRename("RADIOACTIVITY",BrickColor.new("Lime green").Color,Color3.new(0.1,1,0),"Antique")
newTheme("rbxassetid://1812212957",0,1.01,1.5)
MAINRUINCOLOR = BrickColor.new("Lime green")
warnedpeople(modet.Text,modet.Font,modet.TextColor3,modet.TextStrokeColor3)
RecolorThing(MAINRUINCOLOR,BrickColor.new("Bright green"),MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true,false)
	elseif(k == "0" and ModeOfGlitch ~= 67966)then
               ModeOfGlitch = 67966
storehumanoidWS = 16
hum.WalkSpeed = 16
rainbowmode = false
chaosmode = false
RecolorTextAndRename("ARCANE",Color3.new(.01,.42,.6),Color3.new(.45,.6,.8),"Highway")
newTheme("rbxassetid://1551788627",0,1,1.75)
MAINRUINCOLOR = BrickColor.new("Bright blue")
RecolorThing(MAINRUINCOLOR,BrickColor.new("Bright blue"),MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true,false)

	end
if k == "q" and attack == false and ModeOfGlitch ~= 201 then
               ModeOfGlitch = 201
storehumanoidWS = 16
hum.WalkSpeed = 16
rainbowmode = false
chaosmode = false
RecolorTextAndRename("WANDERER",Color3.fromRGB(33, 84, 185),Color3.new(1,1,1),"SciFi")
newTheme("rbxassetid://1557258673",0,1,1)
MAINRUINCOLOR = BrickColor.new("Deep blue")
RecolorThing(MAINRUINCOLOR,BrickColor.new("Deep blue"),MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true,false,true)
end
if(k=='m' and ModeOfGlitch == 5)then
               ModeOfGlitch = 666666666
storehumanoidWS = 14
hum.WalkSpeed = 14
rainbowmode = false
chaosmode = false
RecolorTextAndRename("STRESSED",Color3.new(0,0,0),Color3.new(.5,.13,.13),"Fantasy")
newTheme("rbxassetid://2142995292",0,1.05,1.25)
MAINRUINCOLOR = BrickColor.new("Dark red")
RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true,false)
elseif(k=='m' and ModeOfGlitch == 666666666)then
               ModeOfGlitch = 123321.888
storehumanoidWS = 12
hum.WalkSpeed = 12
rainbowmode = false
chaosmode = false
RecolorTextAndRename("BROKEN",Color3.new(.5,0,0),Color3.new(0,0,0),"Antique")
newTheme("rbxassetid://803373182",0,.8,1.25)
MAINRUINCOLOR = BrickColor.new("Crimson")
RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true,false)
end
if k == ";" and attack == false and ModeOfGlitch ~= 22666 then
               ModeOfGlitch = 22666
storehumanoidWS = 16
hum.WalkSpeed = 16
rainbowmode = false
chaosmode = false
RecolorTextAndRename("sp00p",Color3.new(0,0,0),BrickColor.new("Deep orange").Color,"Antique")
newTheme("rbxassetid://211637330",0,1,1.5)
MAINRUINCOLOR = BrickColor.new("Black")
RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true,false)
end
if k == "m" and attack == false and ModeOfGlitch == 22666 then
               ModeOfGlitch = 666666
storehumanoidWS = 64
hum.WalkSpeed = 64
rainbowmode = false
chaosmode = false
RecolorTextAndRename("sans?",Color3.new(0,0,1),Color3.new(0,0,0),"Cartoon")
newTheme("rbxassetid://1637719516",0,1,1.5)
MAINRUINCOLOR = BrickColor.new("Bright blue")
RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true,false)
end
if k == "n" and attack == false and ModeOfGlitch == 22666 then
               ModeOfGlitch = 696969
storehumanoidWS = 69
hum.WalkSpeed = 69
rainbowmode = false
chaosmode = false
RecolorTextAndRename("hank pank",Color3.new(1,.4,.8),Color3.new(0.639216,0.635294,0.647059),"Cartoon")
newTheme("rbxassetid://338787394",0,1,1.5)
MAINRUINCOLOR = BrickColor.new("Pink")
RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true,false)
end
if k == "e" and attack == false and ModeOfGlitch ~= 9032 then
               ModeOfGlitch = 9032
storehumanoidWS = 45
hum.WalkSpeed = 45
rainbowmode = false
chaosmode = false
RecolorTextAndRename("DREAM", Color3.new(0,0,0),Color3.fromRGB(255, 0, 191),"Fantasy")
newTheme("rbxassetid://1273944801",0,1,1)
MAINRUINCOLOR = BrickColor.new("Hot pink")
RecolorThing(MAINRUINCOLOR,BrickColor.new("Really black"),MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true,false)
end
if k == "r" and attack == false and ModeOfGlitch ~= 0010 then
               ModeOfGlitch = 0010
storehumanoidWS = 16
hum.WalkSpeed = 16
rainbowmode = false
chaosmode = false
RecolorTextAndRename("JACKAL", Color3.new(0,0,0),Color3.fromRGB(213, 115, 61),"Garamond")
newTheme("rbxassetid://701895896",0,1.01,1)
MAINRUINCOLOR = BrickColor.new("Really black")
RecolorThing(MAINRUINCOLOR,BrickColor.new("Neon orange"),MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true,false)
end
if k == "m" and attack == false and ModeOfGlitch == 201 then
               ModeOfGlitch = 123666
storehumanoidWS = 16
hum.WalkSpeed = 16
rainbowmode = false
chaosmode = false
RecolorTextAndRename("THE DARK", Color3.new(0,0,0),Color3.new(.2,.2,.2),"SciFi")
newTheme("rbxassetid://563062677",0,1.01,1)
MAINRUINCOLOR = BrickColor.new("Black")
RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true,false,false,true)
end
if k == "n" and attack == false and ModeOfGlitch == 0010 and ModeOfGlitch ~= 14234 then
               ModeOfGlitch = 14234
storehumanoidWS = 16
hum.WalkSpeed = 16
rainbowmode = false
chaosmode = false
RecolorTextAndRename("PIONEER", Color3.new(0,0,0),Color3.fromRGB(170, 85, 0),"Fantasy")
newTheme("rbxassetid://478890315",0,1.01,1)
MAINRUINCOLOR = BrickColor.new("CGA brown")
RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true,false)
end
if k == "n" and attack == false and ModeOfGlitch == 3 and ModeOfGlitch ~= 110110100110 then
               ModeOfGlitch = 110110100110
storehumanoidWS = 250
hum.WalkSpeed = 250
rainbowmode = false
chaosmode = false
RecolorTextAndRename("CHIMERA", Color3.new(0,0,0),Color3.fromRGB(89, 34, 89),"Fantasy")
newTheme("rbxassetid://2781731664",0,1.01,1)
MAINRUINCOLOR = BrickColor.new("Mulberry")
RecolorThing(MAINRUINCOLOR,BrickColor.new("Plum"),MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true,false)
end
if k == "m" and attack == false and ModeOfGlitch == 88893333388 and ModeOfGlitch ~= 808080808080808080808080 then
               ModeOfGlitch = 808080808080808080808080
storehumanoidWS = 250
hum.WalkSpeed = 250
rainbowmode = false
chaosmode = false
RecolorTextAndRename("MYTHICAL",BrickColor.new("Dark indigo").Color,BrickColor.new("Really blue").Color,"Bodoni")
newThemeCust("rbxassetid://398455752",0,1.01,2)
MAINRUINCOLOR = BrickColor.new("Really blue")
bosschatfunc("Are you gonna stop now or what?",MAINRUINCOLOR.Color,1)
disably = false
warnedpeople("SYNTH ONBOUND!","Arcade",BrickColor.new("Alder").Color,BrickColor.new("Pastel light blue").Color)
disably = true
RecolorThing(MAINRUINCOLOR,BrickColor.new("Dark indigo"),MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,0,BrickColor.new("Alder"),0,BrickColor.new("Pastel light blue"),true)
end
if k == "m" and attack == false and ModeOfGlitch == 8889 then
               ModeOfGlitch = 88893333388
storehumanoidWS = 200
hum.WalkSpeed = 200
rainbowmode = false
chaosmode = false
RecolorTextAndRename("CATASTROPHE",BrickColor.new("Royal purple").Color,BrickColor.new("Really blue").Color,"Bodoni")
newThemeCust("rbxassetid://1504604335",0,1.01,1.5)
MAINRUINCOLOR = BrickColor.new("Royal purple")
bosschatfunc("Evenly with your rejections.",MAINRUINCOLOR.Color,1)
warnedpeople(modet.Text,modet.Font,modet.TextColor3,modet.TextStrokeColor3)
RecolorThing(MAINRUINCOLOR,BrickColor.new("Really blue"),MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true,false)
end
if k == "m" and attack == false and ModeOfGlitch == 3 then
               ModeOfGlitch = 33666666666
storehumanoidWS = 12
hum.WalkSpeed = 12
rainbowmode = false
chaosmode = false
RecolorTextAndRename("CRIMSON",BrickColor.new("Crimson").Color,Color3.new(0.7,0,0),"Antique")
newTheme("rbxassetid://338871337",0,1.01,1.5)
MAINRUINCOLOR = BrickColor.new("Crimson")
warnedpeople(modet.Text,modet.Font,modet.TextColor3,modet.TextStrokeColor3)
RecolorThing(MAINRUINCOLOR,BrickColor.new("Crimson"),MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true,false)
end
if k == "m" and attack == false and ModeOfGlitch == 1 and ModeOfGlitch ~= 664663666 then
               ModeOfGlitch = 664663666
storehumanoidWS = 16
hum.WalkSpeed = 16
rainbowmode = false
chaosmode = false
RecolorTextAndRename("INFINITE POWER",Color3.new(0.1,0,0),Color3.new(0.25,0,0),"Antique")
newThemeCust("rbxassetid://697467525",0,1,1.5)
MAINRUINCOLOR = BrickColor.new("Maroon")
warnedpeople(modet.Text,modet.Font,modet.TextColor3,modet.TextStrokeColor3)
RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true,false)
end
if k == "n" and attack == false and ModeOfGlitch == 6 and ModeOfGlitch ~= 765688533321 then
               ModeOfGlitch = 765688533321
storehumanoidWS = 260
hum.WalkSpeed = 260
rainbowmode = false
chaosmode = false
RecolorTextAndRename("UNSTABLE",Color3.new(1,1,1),Color3.new(1,0,0),"Arcade")
newTheme("rbxassetid://899090278",0,1.005,1.75)
MAINRUINCOLOR = BrickColor.new("Really black")
warnedpeople(modet.Text,modet.Font,modet.TextColor3,modet.TextStrokeColor3)
RecolorThing(BrickColor.new("Institutional white"),BrickColor.new("Really red"),MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,0,BrickColor.new("Crimson"),0,BrickColor.new("Really black"),true,true)
end
if k == "n" and attack == false and ModeOfGlitch == 1 and ModeOfGlitch ~= 55469696922 then
               ModeOfGlitch = 55469696922
storehumanoidWS = 275
hum.WalkSpeed = 275
rainbowmode = false
chaosmode = false
RecolorTextAndRename("NANODEATH",Color3.new(0.25,0,0.1),BrickColor.new("Hot pink").Color,"Antique")
newTheme("rbxassetid://582020393",0,1.005,1.25)
MAINRUINCOLOR = BrickColor.new("Hot pink")
warnedpeople(modet.Text,modet.Font,modet.TextColor3,modet.TextStrokeColor3)
RecolorThing(MAINRUINCOLOR,BrickColor.new("Crimson"),MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true,false)
end
if k == "n" and attack == false and ModeOfGlitch == 9032 then
               ModeOfGlitch = 4367677813
storehumanoidWS = 50
hum.WalkSpeed = 50
rainbowmode = false
chaosmode = false
--RecolorTextAndRename("DREAMER",Color3.new(0,0,0),BrickColor.new("Pink").Color,"Garamond")
RecolorTextAndRename("EAR SPLITTER",Color3.new(0,1,1),BrickColor.new("Hot pink").Color,"Garamond")
newTheme("rbxassetid://634255007",0,1,1.25)

--newTheme("rbxassetid://2483763576",0,1.01,1.25)
MAINRUINCOLOR = BrickColor.new("Hot pink")
warnedpeople(modet.Text,modet.Font,modet.TextColor3,modet.TextStrokeColor3)
RecolorThing(MAINRUINCOLOR,BrickColor.new("Toothpaste"),MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true,false)
end
if k == "n" and attack == false and ModeOfGlitch == 4 and ModeOfGlitch ~= 999999999556 then
               ModeOfGlitch = 999999999556
storehumanoidWS = 500
hum.WalkSpeed = 500
rainbowmode = false
chaosmode = false
RecolorTextAndRename("CRAZED",BrickColor.new("Really black").Color,BrickColor.new("Navy blue").Color,"Code")
newTheme("rbxassetid://719008519",0,1.02,1.25)
MAINRUINCOLOR = BrickColor.new("Navy blue")
warnedpeople(modet.Text,modet.Font,modet.TextColor3,modet.TextStrokeColor3)
RecolorThing(MAINRUINCOLOR,BrickColor.new("Really black"),MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,0,BrickColor.new("Navy blue"),0,BrickColor.new("Really blue"),true,true)
end
--[[if k == "n" and attack == false and ModeOfGlitch == 5 then
               ModeOfGlitch = 0.110110101100001011000110110100001101001011011100110010101110011 -- machines in binary
storehumanoidWS = 16
hum.WalkSpeed = 16
rainbowmode = false
chaosmode = false
RecolorTextAndRename("MECHANICAL",Color3.new(0,0,.3),BrickColor.new("Really black").Color,"SciFi")
newTheme("rbxassetid://539526132",0,1.01,1.5)
MAINRUINCOLOR = BrickColor.new("Dark blue")
warnedpeople(modet.Text,modet.Font,modet.TextColor3,modet.TextStrokeColor3)
RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true,false)
end]]
if k == "n" and attack == false and ModeOfGlitch == 5 then
               ModeOfGlitch = 666
storehumanoidWS = 16
hum.WalkSpeed = 16
rainbowmode = false
chaosmode = false
RecolorTextAndRename("ARSONIST",BrickColor.new("Flame reddish orange").Color,Color3.new(1,0,0),"SciFi")
newTheme("rbxassetid://2622961126",0,1,1.5)
MAINRUINCOLOR = BrickColor.new("Flame reddish orange")
warnedpeople(modet.Text,modet.Font,modet.TextColor3,modet.TextStrokeColor3)
RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR,true,false,false,false,true)
end
if k == "l" and mutedtog == false then
mutedtog = true
kan.Volume = 0
elseif k == "l" and mutedtog == true then
mutedtog = false
kan.Volume = 1.25
end
if k == "p" and toggleTag == false then
toggleTag = true
modet.TextTransparency = 0
modet.TextStrokeTransparency = 0
elseif k == "p" and toggleTag == true then
toggleTag = false
modet.TextTransparency = 1
modet.TextStrokeTransparency = 1
end
if k == "z" and attack == false and ModeOfGlitch == 1 then
ExtinctiveHeartbreak()
elseif k == "z" and attack == false and ModeOfGlitch == 2 then
HeavenlyDisk()
elseif k == "z" and attack == false and ModeOfGlitch == 3 then
CorruptionEvent()
elseif k == "z" and attack == false and ModeOfGlitch == 4 then 
RapidBurst()
elseif k == "z" and attack == false and ModeOfGlitch == 5 then
--DivineLights()
elseif k == "z" and attack == false and ModeOfGlitch == 6 then
EquinoxOrbs()
elseif k == "z" and attack == false and ModeOfGlitch == 7 then
roldbeam()
elseif k == "z" and attack == false and ModeOfGlitch == 123666 then 
CrystalSlam()
elseif k == "z" and attack == false and ModeOfGlitch == 1264532489 then
FallenOrbs()
elseif k == "z" and attack == false and ModeOfGlitch == 4367677813 then
SHDTwist()
elseif k == "z" and attack == false and ModeOfGlitch == 8 then
CalMets()
end
if k == "v" and attack == false and ModeOfGlitch == 1264532489 then
FallenDEMISE()
end
if k == "x" and attack == false and ModeOfGlitch == 1 then
EndGROUND()
elseif k == "x" and attack == false and ModeOfGlitch == 4 then
EternalChaosOrb()
elseif k == "x" and attack == false and ModeOfGlitch == 123666 then 
YourLastPurpleSight()
elseif k == "x" and attack == false and ModeOfGlitch == 8 then
ExtCalbeam()
end
if k == "b" and attack == false and ModeOfGlitch==67966 then
ArcaneTaunt()
elseif k == "b" and attack == false and ModeOfGlitch==201 then
WanderTaunt()
elseif k == "b" and attack == false and ModeOfGlitch == 696969 then
SuckySuckyImGonnaGiveYouAFuckiFucki()
end
end)

coroutine.resume(coroutine.create(function()
while true do
swait()
if ModeOfGlitch == 2 or ModeOfGlitch == 3 or ModeOfGlitch == 7 or ModeOfGlitch == 67966 then
	sphereMK(10,math.random(10,25)/45,"Add",root.CFrame*CFrame.new(math.random(-20,20),-5,math.random(-20,20))*CFrame.Angles(math.rad(90 + math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),0.25,0.25,8,0,MAINRUINCOLOR,0)
end
if ModeOfGlitch == 6 or ModeOfGlitch == 9 or ModeOfGlitch == 8 or ModeOfGlitch == 88893333388 or ModeOfGlitch == 664663666 or ModeOfGlitch == 1264532489 or ModeOfGlitch == 55469696922 or ModeOfGlitch == 4367677813 or ModeOfGlitch == 9999999921111 or ModeOfGlitch == 999999999556 or ModeOfGlitch == 765688533321 or ModeOfGlitch == 808080808080808080808080 then
sphereMK(7.5,math.random(15,50)/45,"Add",root.CFrame*CFrame.new(math.random(-25,25),-10,math.random(-25,25))*CFrame.Angles(math.rad(90 + math.random(-20,20)),math.rad(math.random(-20,20)),math.rad(math.random(-20,20))),0.75,0.75,10,-0.0075,MAINRUINCOLOR,0)
if ModeOfGlitch == 765688533321 then
sphereMK(7.5,math.random(-50,-15)/45,"Add",root.CFrame*CFrame.new(math.random(-25,25),50,math.random(-25,25))*CFrame.Angles(math.rad(90 + math.random(-20,20)),math.rad(math.random(-20,20)),math.rad(math.random(-20,20))),0.75,0.75,10,-0.0075,BrickColor.new("Really red"),0)
elseif ModeOfGlitch == 88893333388 then
sphereMK(7.5,math.random(-50,-15)/45,"Add",root.CFrame*CFrame.new(math.random(-25,25),50,math.random(-25,25))*CFrame.Angles(math.rad(90 + math.random(-20,20)),math.rad(math.random(-20,20)),math.rad(math.random(-20,20))),0.75,0.75,10,-0.0075,BrickColor.new("Really blue"),0)
elseif ModeOfGlitch == 808080808080808080808080 then
	sphereMK(7.5,math.random(15,50)/45,"Add",root.CFrame*CFrame.new(math.random(-125,125),-10,math.random(-125,125))*CFrame.Angles(math.rad(90 + math.random(-20,20)),math.rad(math.random(-20,20)),math.rad(math.random(-20,20))),3,3,50,-0.03,BrickColor.new("Alder"),0)
end
end
end
end))
--[[coroutine.resume(coroutine.create(function()
while true do
swait(2)
if chaosmode == true then
tl1.Color = ColorSequence.new(BrickColor.random().Color)
tl2.Color = ColorSequence.new(BrickColor.random().Color)
tl3.Color = ColorSequence.new(BrickColor.random().Color)
RecolorTextAndRename("CHAOS",Color3.new(0,0,0),BrickColor.random().Color,"Fantasy")
for i, v in pairs(mw1:GetChildren()) do
if v:IsA("BasePart") then
v.Transparency = 0.75
v.BrickColor = BrickColor.random()
v.Material = "Neon"
end
end
for i, v in pairs(m2:GetChildren()) do
if v:IsA("BasePart") then
v.BrickColor = BrickColor.random()
v.Material = "Neon"
end
end
end
end
end))]]--


local bguis = Instance.new("BillboardGui",tors)
bguis.Size = UDim2.new(25, 0, 25, 0)
local imgca = Instance.new("ImageLabel",bguis)
imgca.BackgroundTransparency = 1
imgca.ImageTransparency = 1
imgca.Size = UDim2.new(1,0,1,0)
imgca.Image = "rbxassetid://2344830904" --997291547,521073910,2312119891,2344830904
imgca.ImageColor3 = Color3.new(0,0,0)

idleanim=.4
--[[coroutine.wrap(function()
	while true do
		swait()
		local CFtoObjectSpace = CFrame.new().toObjectSpace
		local CameraDirection = CFtoObjectSpace(root.CFrame, GetClientProperty('Camera','CFrame')).lookVector.unit
		Neck.C1 = Neck.C1:lerp(cf(Neck.C1.p) * angles(0, math.asin(CameraDirection.x), 0)*angles(-math.pi/2-math.asin(CameraDirection.y),0,math.pi),.2)
	end
end)()]]

haloRot=0
haloRot2=0



--[[coroutine.wrap(function()
	while true do
		swait(5)
		local names = {"shd..","THE INFECTION..","IT SPREADS..","DREAMY","WHO AM I?","WHO ARE YOU?","...","NO...","MERCY..","WHAT IS THE WORLD?","THE NIGHTMARES..","THEY HAUNT ME","SAVE ME"}

		if ModeOfGlitch == 4367677813 then
			currentPitch=math.random(85,95)/100
			RecolorTextAndRename(names[math.random(1,#names)],Color3.new(0,0,0),BrickColor.new("Pink").Color,"Garamond")
		end
	end
end)()]]

local glitchMeshes = {}	

function genGlitches()
	clearGlitches()
	for _,v in next, char:children() do
		if(v:IsA'Part' and v.Name~='Ring')then
			local mesh = v:FindFirstChildOfClass'SpecialMesh'
			if(mesh)then
				mesh.Parent=nil
				local glitched = mesh:Clone()
				glitched.Parent=v
				table.insert(glitchMeshes,{Part=v,Original=mesh,New=glitched;})
			else
				table.insert(glitchMeshes,{Part=v,New=Instance.new("BlockMesh",v);})
			end
		elseif(v:IsA'Accessory' and v:FindFirstChild'Handle')then
			local mesh = v.Handle:FindFirstChildOfClass'SpecialMesh'
			if(mesh)then
				mesh.Parent=nil
				local glitched = mesh:Clone()
				glitched.Parent=v.Handle
				table.insert(glitchMeshes,{Part=v.Handle,Original=mesh,New=glitched;})
			else
				table.insert(glitchMeshes,{Part=v.Handle,New=Instance.new("BlockMesh",v.Handle);})
			end
		end
	end
end

function clearGlitches()
	for _,v in next, glitchMeshes do
		if(v.Original)then
			v.Original.Parent=v.Part
		end
		v.New:destroy()
	end
	glitchMeshes={}
end

function causeGlitch(intensity)
	local intensity = intensity or 1
	for _,v in next, glitchMeshes do
		v.New.Offset=Vector3.new((math.random(-1,1)/10)*intensity,(math.random(-1,1)/10)*intensity,(math.random(-1,1)/10)*intensity)
	end
end

local Glitching=false
local lastGlitch=tick()
local static = Instance.new("Sound")
static.Volume=5
static.SoundId='rbxassetid://1588058260'
static.Playing=true

coroutine.wrap(function()
	while true do
		swait()
		if(ModeOfGlitch==666666666 or ModeOfGlitch==123321.888 or ModeOfGlitch==4 or ModeOfGlitch==5 and math.random(1,125)<10)then
			if(tick()-lastGlitch>=(math.random()*2) and math.random(0,30)==1 and not Glitching)then
				local mode = ModeOfGlitch
				local pit = currentPitch
				genGlitches()
				Glitching=true
				static.Parent=tors
				static.TimePosition=0
				wait(.1)
				static.Playing=true
				local start=tick()
				local pit = currentPitch
				repeat swait()
					if(ModeOfGlitch~=mode)then break end
					kan.Pitch=pit-math.random(-5,5)/10
					causeGlitch((ModeOfGlitch==5 and .5))
				until tick()-start>=(math.random()*2)+0.3
				if(ModeOfGlitch==mode)then currentPitch=pit end
	
				lastGlitch=tick()
				Glitching=false
				clearGlitches()
				static.Parent=nil
			end
		end
	end	
end)()


while true do
	--Neck.C1 = CFNew(Neck.C1.p) * CFAng(0, -asin(CameraDirection.x), 0) * (R6 and CFAng(-hpi + asin(CameraDirection.y), 0, pi) or CFAng(asin(CameraDirection.y), 0, 0))

	if(tick()-lastMachineBreathe>1)then
		lastMachineBreathe=tick()
		MachineBreathePhase=(MachineBreathePhase==0 and 1 or 0)
	end

	for i = 1,#vis.r do
		local right = vis.r[i]
		right:TweenSize(UDim2.new(0,25/(630-(i*60)),math.random(225,365)),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,.05,true)
	end
	for i = 1,#vis.l do
		local left = vis.l[i]
		left:TweenSize(UDim2.new(0,25/(270+(i*60)),math.random(225,365)),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,.05,true)
	end
	ned.Rotation=90+(2.5*math.cos(sine/64)+2.5*math.sin(sine/42))
	ned:TweenPosition(UDim2.new(0.5,5*math.cos(sine/64)+7*math.sin(sine/42),0.7,15*math.cos(sine/79)+12*math.sin(sine/65)),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,.05,true)
	
	scr.Rotation=(2.5*math.cos(sine/49)+2.5*math.sin(sine/68))
	scr:TweenPosition(UDim2.new(0.5,5*math.cos(sine/78)+7*math.sin(sine/61),0.7,15*math.cos(sine/69)+12*math.sin(sine/62)),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,.05,true)

	if(not chaosmode and ModeOfGlitch ~= 4367677813)then
		modet.Rotation=5*math.cos(sine/64)
		circl.Rotation=circl.Rotation-1+2
		circl2.Rotation=circl2.Rotation+1-2
		local rotto=math.rad(-1+25)
		local rotto2=math.rad(1-25)
		h1weld.C1=h1weld.C1:lerp(cf(0,0,0+.1*math.sin(sine/46))*angles(0,0,haloRot+rotto),.6)
		h2weld.C1=h2weld.C1:lerp(cf(0,0,0+.1*math.sin(sine/46))*angles(0,0,haloRot2+rotto2),.6)
		haloRot=haloRot+rotto
		haloRot2=haloRot2+rotto2
	else
		modet.Rotation=5*math.cos(sine/64)+math.random(-5,5)
		circl.Rotation=circl.Rotation-1+25+math.random(-10,5)
		circl2.Rotation=circl2.Rotation+1-25+math.random(-5,10)
		local rotto=math.rad(-1+25+math.random(-10,5))
		local rotto2=math.rad(1-25+math.random(-5,10))
		h1weld.C1=h1weld.C1:lerp(cf(0,0,0+.1*math.sin(sine/46))*angles(math.rad(math.random(-10,10)),math.rad(math.random(-10,10)),haloRot+rotto),.6)
		h2weld.C1=h2weld.C1:lerp(cf(0,0,0+.1*math.sin(sine/46))*angles(math.rad(math.random(-10,10)),math.rad(math.random(-10,10)),haloRot2+rotto2),.6)
		haloRot=haloRot+rotto
		haloRot2=haloRot2+rotto2
	end
	
if(not kan or not kan.Parent)then
	pcall(game.Destroy,kan)
	local tp=0
	if(kan)then tp=kan.TimePosition end
	kan=Instance.new("Sound")
	kan.TimePosition=tp
end
	if mutedtog == false then
kan.Volume = currentVol
elseif mutedtog == true then
kan.Volume = 0
	end
	kan:ClearAllChildren()
kan.PlaybackSpeed = currentPitch
kan.Pitch = currentPitch
kan.SoundId = currentThemePlaying
kan.Looped = true
kan.Parent = root
kan:Resume()
if ModeOfGlitch ~= 1264532489 and ModeOfGlitch ~= 55469696922 and ModeOfGlitch ~= 4367677813 and ModeOfGlitch ~= 9999999921111 and ModeOfGlitch ~= 999999999556 and ModeOfGlitch ~= 765688533321 and ModeOfGlitch ~= 88893333388 and ModeOfGlitch ~= 808080808080808080808080 then
imgca.ImageTransparency = 1
elseif ModeOfGlitch == 1264532489 or ModeOfGlitch == 55469696922 or ModeOfGlitch == 4367677813 or ModeOfGlitch == 9999999921111 or ModeOfGlitch == 999999999556 or ModeOfGlitch == 765688533321 or ModeOfGlitch == 88893333388 or ModeOfGlitch == 808080808080808080808080 then
imgca.ImageColor3 = MAINRUINCOLOR.Color
imgca.ImageTransparency = 0 + 0.25 * math.cos(sine / 30)
end
imgca.Rotation = imgca.Rotation + 5 + 25
bguis.Size = UDim2.new(15 + 3 * math.cos(sine / 30),0, 15 + 3 * math.cos(sine / 30),0)
coroutine.resume(coroutine.create(function()
	if chaosmode == true then
for i, v in pairs(mw1:GetChildren()) do
if v:IsA("BasePart") then
v.Transparency = 0
v.BrickColor = BrickColor.random()
v.Material = "Neon"
end
end
Halo1.Color=BrickColor.random().Color
Halo2.Color=BrickColor.random().Color
if(TcGauntlet)then
for i,v in pairs(TcGauntlet:GetChildren())do
if v.Name == "1" then
v.Color=BrickColor.random().Color
elseif v.Name == "2" then
v.Color=BrickColor.random().Color
end
end
end
if(NebBand)then
for i,v in pairs(NebBand:GetChildren())do
if v.Name == "1" then
v.Color=BrickColor.random().Color
elseif v.Name == "2" then
v.Color=BrickColor.random().Color
end
end
end
tl1.Color = ColorSequence.new(BrickColor.random().Color)
tl2.Color = ColorSequence.new(BrickColor.random().Color)
tl3.Color = ColorSequence.new(BrickColor.random().Color)
for i = 1,#vis.l do
	local left = vis.l[i]
	left.BackgroundColor3=BrickColor.random().Color
	left.BorderColor3=BrickColor.random().Color
end
left.BackgroundColor3=BrickColor.random().Color

	RecolorTextAndRename("HOPELESS",Color3.new(0,0,0),BrickColor.random().Color,"Arcade")
	end
end))

if rainbowmode == true then
	circl.ImageColor3 = Color3.new(r/255,g/255,b/255)
	scr.TextStrokeColor3 = Color3.new(r/255,g/255,b/255)
	modet.TextColor3 = Color3.new(r/255,g/255,b/255)
	ned.TextColor3 = Color3.new(r/255,g/255,b/255)
	tr1.Color = ColorSequence.new(Color3.new(r/255,g/255,b/255))
	Halo1.Color=Color3.new(r/255,g/255,b/255)
	Halo2.Color=Color3.new(r/255,g/255,b/255)
for i = 1,#vis.r do
	local right = vis.r[i]
	right.BackgroundColor3=Color3.new(r/255,g/255,b/255)
end
for i = 1,#vis.l do
	local left = vis.l[i]
	left.BackgroundColor3=Color3.new(r/255,g/255,b/255)
end
right.BackgroundColor3=Color3.new(r/255,g/255,b/255)
left.BackgroundColor3=Color3.new(r/255,g/255,b/255)
if(TcGauntlet)then
for i,v in pairs(TcGauntlet:GetChildren())do
if v.Name == "1" then
v.Color=Color3.new(r/255,g/255,b/255)
elseif v.Name == "2" then
v.Color=Color3.new(r/255,g/255,b/255)
end
end
end
if(NebBand)then
for i,v in pairs(NebBand:GetChildren())do
if v.Name == "1" then
v.Color=Color3.new(r/255,g/255,b/255)
elseif v.Name == "2" then
v.Color=Color3.new(r/255,g/255,b/255)
end
end
end

tr2.Color = ColorSequence.new(Color3.new(r/255,g/255,b/255))
tr3.Color = ColorSequence.new(Color3.new(r/255,g/255,b/255))
tl1.Color = ColorSequence.new(Color3.new(r/255,g/255,b/255))
tl2.Color = ColorSequence.new(Color3.new(r/255,g/255,b/255))
tl3.Color = ColorSequence.new(Color3.new(r/255,g/255,b/255))
for i, v in pairs(mw1:GetChildren()) do
if v:IsA("BasePart") then
v.Color = Color3.new(r/255,g/255,b/255)
end
end
for i, v in pairs(mw2:GetChildren()) do
if v:IsA("BasePart") then
v.Color = Color3.new(r/255,g/255,b/255)
end
end
end


CameraManager()
swait()
if ModeOfGlitch == 55469696922 or ModeOfGlitch == 4367677813 or ModeOfGlitch == 9999999921111 then
lwing1weld.C1=clerp(lwing1weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(90 + 3600 * math.cos(sine / 360))),.3)
lwing2weld.C1=clerp(lwing2weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(147.5 + 3600 * math.cos(sine / 360))),.3)
lwing3weld.C1=clerp(lwing3weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(32.5 + 3600 * math.cos(sine / 360))),.3)
rwing1weld.C1=clerp(rwing1weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(-90 + 3600 * math.cos(sine / 360))),.3)
rwing2weld.C1=clerp(rwing2weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(-147.5 + 3600 * math.cos(sine / 360))),.3)
rwing3weld.C1=clerp(rwing3weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(-32.5 + 3600 * math.cos(sine / 360))),.3)
elseif ModeOfGlitch == 808080808080808080808080 or ModeOfGlitch == 765688533321 or ModeOfGlitch == 1264532489 or ModeOfGlitch == 999999999556 then
lwing1weld.C1=clerp(lwing1weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(90 + 3600 * math.cos(sine / 360))),.3)
lwing2weld.C1=clerp(lwing2weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(147.5 + 3600 * math.cos(sine / 360))),.3)
lwing3weld.C1=clerp(lwing3weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(32.5 + 3600 * math.cos(sine / 360))),.3)
rwing1weld.C1=clerp(rwing1weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(-90 + 3600 * math.cos(sine / 360))),.3)
rwing2weld.C1=clerp(rwing2weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(-147.5 + 3600 * math.cos(sine / 360))),.3)
rwing3weld.C1=clerp(rwing3weld.C1,cf(0 + 2.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),0)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(-32.5 + 3600 * math.cos(sine / 360))),.3)
lwing4weld.C1=clerp(lwing4weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),-1)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(90 - 3600 * math.cos(sine / 360))),.3)
lwing5weld.C1=clerp(lwing5weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),-1)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(147.5 - 3600 * math.cos(sine / 360))),.3)
lwing6weld.C1=clerp(lwing6weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),-1)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(32.5 - 3600 * math.cos(sine / 360))),.3)
rwing4weld.C1=clerp(rwing4weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),-1)*angles(math.rad(0 + 1 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(-90 - 3600 * math.cos(sine / 360))),.3)
rwing5weld.C1=clerp(rwing5weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),-1)*angles(math.rad(0 + 1 * math.cos(sine / 70)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(-147.5 - 3600 * math.cos(sine / 360))),.3)
rwing6weld.C1=clerp(rwing6weld.C1,cf(0 - 7.5 * math.cos(sine / 180),1.5 + 0.75 * math.cos(sine / 25),-1)*angles(math.rad(0 + 1 * math.cos(sine / 60)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(-32.5 - 3600 * math.cos(sine / 360))),.3)
else
	lwing1weld.C1 = clerp(lwing1weld.C1, cf(-1, 1 + .3 * math.cos(sine/36), 0) * cf(-1, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(85)) * angles(math.rad(5 + 10 * math.cos(sine / 32)), math.rad(0), math.rad(12.5 + 5 * math.cos(sine / 32))), 0.3)
	lwing2weld.C1 = clerp(lwing2weld.C1, cf(1, 2 + .3 * math.cos(sine/36), 0) * cf(-1, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(85)) * angles(math.rad(10 + 15 * math.cos(sine / 32)), math.rad(0), math.rad(25 + 7.5 * math.cos(sine / 32))), 0.3)
	lwing3weld.C1 = clerp(lwing3weld.C1, cf(2.75, 2 + .3 * math.cos(sine/36), 0) * cf(-1, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(85)) * angles(math.rad(15 + 20 * math.cos(sine / 32)), math.rad(0), math.rad(37.5 + 10 * math.cos(sine / 32))), 0.3)
	lwing4weld.C1 = clerp(lwing4weld.C1, cf(4.75, 3 + .3 * math.cos(sine/36), 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(20 + 25 * math.cos(sine / 32)), math.rad(0), math.rad(50 + 12.5 * math.cos(sine / 32))), 0.3)
	lwing5weld.C1 = clerp(lwing5weld.C1, cf(5.75, 4 + .3 * math.cos(sine/36), 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(25 + 30 * math.cos(sine / 32)), math.rad(0), math.rad(62.5 + 15 * math.cos(sine / 32))), 0.3)
	lwing6weld.C1 = clerp(lwing6weld.C1, cf(6.75, 5 + .3 * math.cos(sine/36), 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(30 + 35 * math.cos(sine / 32)), math.rad(0), math.rad(75 + 17.5 * math.cos(sine / 32))), 0.3)

	rwing1weld.C1 = clerp(rwing1weld.C1, cf(1, 1 + .3 * math.cos(sine/36), 0) * cf(1, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-85)) * angles(math.rad(5 + 10 * math.cos(sine / 32)), math.rad(0), math.rad(-12.5 - 5 * math.cos(sine / 32))), 0.3)
	rwing2weld.C1 = clerp(rwing2weld.C1, cf(-1, 2 + .3 * math.cos(sine/36), 0) * cf(1, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-85)) * angles(math.rad(10 + 15 * math.cos(sine / 32)), math.rad(0), math.rad(-25 - 7.5 * math.cos(sine / 32))), 0.3)
	rwing3weld.C1 = clerp(rwing3weld.C1, cf(-2.75, 2 + .3 * math.cos(sine/36), 0) * cf(1, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-85)) * angles(math.rad(15 + 20 * math.cos(sine / 32)), math.rad(0), math.rad(-37.5 - 10 * math.cos(sine / 32))), 0.3)
	rwing4weld.C1 = clerp(rwing4weld.C1, cf(-4.75, 3 + .3 * math.cos(sine/36), 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(20 + 25 * math.cos(sine / 32)), math.rad(0), math.rad(-50 - 12.5 * math.cos(sine / 32))), 0.3)
	rwing5weld.C1 = clerp(rwing5weld.C1, cf(-5.75, 4 + .3 * math.cos(sine/36), 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(25 + 30 * math.cos(sine / 32)), math.rad(0), math.rad(-62.5 - 15 * math.cos(sine / 32))), 0.3)
	rwing6weld.C1 = clerp(rwing6weld.C1, cf(-6.75, 5 + .3 * math.cos(sine/36), 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(30 + 35 * math.cos(sine / 32)), math.rad(0), math.rad(-75 - 17.5 * math.cos(sine / 32))), 0.3)

end
 sine = sine + change
local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
local velderp=RootPart.Velocity.y
hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
coroutine.resume(coroutine.create(function()
if ModeOfGlitch == 9 then
	if hitfloor ~= nil then
		sphere2(1.5,"Add",root.CFrame*CFrame.new(0,-3,0),vt(1,0.5,1),0.1,0.01,0.1,BrickColor.new("Lime green"),Color3.new(0,1,0))
	end
end
if ModeOfGlitch == 123321.888 or ModeOfGlitch==666666666 then
	if hitfloor ~= nil then
		sphere2(1.5,"Add",root.CFrame*CFrame.new(0,-3,0),vt(1,0.5,1),0.1,0.01,0.1,BrickColor.new("Crimson"),'Granite')
	end
end
if ModeOfGlitch == 6 or ModeOfGlitch == 8 or ModeOfGlitch == 664663666 or ModeOfGlitch == 1264532489 or ModeOfGlitch == 55469696922 or ModeOfGlitch == 4367677813 or ModeOfGlitch == 9999999921111 or ModeOfGlitch == 999999999556 or ModeOfGlitch == 765688533321 or ModeOfGlitch == 88893333388 or ModeOfGlitch == 808080808080808080808080 then
if hitfloor ~= nil then
	effar.Enabled = true
	effar.Color = ColorSequence.new(MAINRUINCOLOR.Color)
slash(math.random(50,100)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-360,360)),math.rad(math.random(-5,5))),vt(0.01,0.01,0.01),math.random(5,50)/250,BrickColor.new("White"))
if ModeOfGlitch == 1264532489 or ModeOfGlitch == 88893333388 or ModeOfGlitch == 55469696922 or ModeOfGlitch == 4367677813 or ModeOfGlitch == 9999999921111 or ModeOfGlitch == 999999999556 or ModeOfGlitch == 765688533321 or ModeOfGlitch == 808080808080808080808080 then
slash(math.random(75,150)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-360,360)),math.rad(math.random(-5,5))),vt(0.01,0.01,0.01),math.random(5,150)/250,MAINRUINCOLOR)
end
if ModeOfGlitch == 808080808080808080808080 then
slash(math.random(75,150)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-360,360)),math.rad(math.random(-5,5))),vt(0.01,0.01,0.01),math.random(5,350)/250,BrickColor.new("Alder"))
elseif ModeOfGlitch == 765688533321  then
slash(math.random(75,150)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-360,360)),math.rad(math.random(-5,5))),vt(0.01,0.01,0.01),math.random(5,350)/250,BrickColor.new("Really red"))
elseif ModeOfGlitch == 1264532489  then
slash(math.random(75,150)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-360,360)),math.rad(math.random(-5,5))),vt(0.01,0.01,0.01),math.random(5,350)/250,BrickColor.new("Deep orange"))
elseif ModeOfGlitch == 999999999556  then
slash(math.random(75,150)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-360,360)),math.rad(math.random(-5,5))),vt(0.01,0.01,0.01),math.random(5,350)/250,BrickColor.new("Really blue"))
end
elseif hitfloor == nil then
	effar.Enabled = false
end
elseif ModeOfGlitch ~= 6 and ModeOfGlitch ~= 8 and ModeOfGlitch ~= 664663666 and ModeOfGlitch ~= 88893333388 and ModeOfGlitch ~= 1264532489 and ModeOfGlitch ~= 55469696922 and ModeOfGlitch ~= 4367677813 and ModeOfGlitch ~= 9999999921111 and ModeOfGlitch ~= 999999999556 and ModeOfGlitch ~= 8889 and ModeOfGlitch ~= 765688533321 and ModeOfGlitch ~= 808080808080808080808080 then
    effar.Enabled = false
end
end))
if equipped==true or equipped==false then
if attack==false then
idle=idle+1
else
idle=0
end
if idle>=500 then
if attack==false then
--Sheath()
end
end
if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
change=1
if attack==false then
RH.C0=clerp(RH.C0,cf(1,-0.35 - 0.05 * math.cos(sine / 25),-0.75)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(-20)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(20)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 25))*angles(math.rad(-10),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1.45,0.5 + 0.1 * math.cos(sine / 25),0)*angles(math.rad(-5),math.rad(0),math.rad(25)),.1)
LW.C0=clerp(LW.C0,cf(-1.45,0.5 + 0.1 * math.cos(sine / 25),0)*angles(math.rad(-5),math.rad(0),math.rad(-25)),.1)
BladesWeld.C0 = clerp(BladesWeld.C0,CFrame.new(0,-1,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(0)),0.1)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
change=1
if attack==false then
RH.C0=clerp(RH.C0,cf(1,-0.35 - 0.05 * math.cos(sine / 25),-0.75)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(-20)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(20)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 25))*angles(math.rad(10),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(2.5),math.rad(0),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1.45,0.5 + 0.1 * math.cos(sine / 25),0)*angles(math.rad(-15),math.rad(0),math.rad(55)),.1)
LW.C0=clerp(LW.C0,cf(-1.45,0.5 + 0.1 * math.cos(sine / 25),0)*angles(math.rad(-15),math.rad(0),math.rad(-55)),.1)
BladesWeld.C0 = clerp(BladesWeld.C0,CFrame.new(0,-1,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(0)),0.1)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
change=1
if attack==false then
if ModeOfGlitch == 1 then
local snap = math.random(1,10)
local Alpha = .1
RootJoint.C0 = RootJoint.C0:lerp(cf(0,.5+.3*math.cos(sine/32),0)*angles(math.rad(0),math.rad(10),math.rad(0))*RootCF,Alpha)
LH.C0 = LH.C0:lerp(cf(-0.9,-0.7+0.05*math.cos(sine/32),-0.2)*angles(math.rad(-6.3),math.rad(26.1),math.rad(-6.3))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
RH.C0 = RH.C0:lerp(cf(1,-0.1+0.05*math.cos(sine/32),-1)*angles(math.rad(-14.8),math.rad(-2.6),math.rad(-0.3))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
LW.C0 = LW.C0:lerp(cf(-1.3,0.4+0.05*math.cos(sine/32),0.7)*angles(math.rad(-35),math.rad(0),math.rad(40+2*math.cos(sine/32))),Alpha)
RW.C0 = RW.C0:lerp(cf(1.5,0.7+0.05*math.cos(sine/32),0.1)*angles(math.rad(9.1),math.rad(-23.4),math.rad(21.9+2*math.cos(sine/32))),Alpha)
Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0.1,0,0.2)*angles(math.rad(-5.9),math.rad(-10.4),math.rad(3.9))*necko,Alpha)

elseif ModeOfGlitch == 2 then
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-6),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(1 - 2 * math.cos(sine / 32))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-0.5),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-1 + 2 * math.cos(sine / 32))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.01 + 0.02 * math.cos(sine / 32),0 + 0.05 * math.cos(sine / 32))*angles(math.rad(1 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(0 + 3 * math.cos(sine / 42))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(15 - 2 * math.cos(sine / 37)),math.rad(0 + 2 * math.cos(sine / 58)),math.rad(0 + 1 * math.cos(sine / 53))),.1)
RW.C0=clerp(RW.C0,cf(1,0.35 + 0.025 * math.cos(sine / 45),-0.5)*angles(math.rad(62 + 6 * math.cos(sine / 72)),math.rad(3 - 2 * math.cos(sine / 58)),math.rad(-82 + 2 * math.cos(sine / 45))),.1)
LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.025 * math.cos(sine / 45),-0.5)*angles(math.rad(89 - 7 * math.cos(sine / 66)),math.rad(4 - 3 * math.cos(sine / 59)),math.rad(67 - 4 * math.cos(sine / 45))),.1)
elseif ModeOfGlitch == 3 then
					RH.C0 = clerp(RH.C0, cf(1, -1 - 0.05 * math.cos(sine / 28), 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0 - 1 * math.cos(sine / 34))), 0.1)
					LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.05 * math.cos(sine / 28), 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0 + 1 * math.cos(sine / 34))), 0.1)
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 + 0.05 * math.cos(sine / 28)) * angles(math.rad(0 - 1 * math.cos(sine / 34)), math.rad(0), math.rad(-20)), 0.1)
					Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(25 - 2.5 * math.cos(sine / 28)), math.rad(0), math.rad(20)), 0.1)
					RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * angles(math.rad(10), math.rad(-20), math.rad(30 + 2.5 * math.cos(sine / 25))), 0.1)
					LW.C0 = clerp(LW.C0, cf(-1.5, 0.75, 0) * angles(math.rad(170), math.rad(-20), math.rad(20)), 0.1)
elseif ModeOfGlitch == 4 then
local snap = math.random(1,5)
if snap == 1 then
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(25 + math.random(-1,1)),math.rad(math.random(-1,1)),math.rad(math.random(-1,1))),0.6)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(25 + 5 * math.cos(sine / 74) + math.random(-1,1)),math.rad(1 - 3 * math.cos(sine / 53) + math.random(-1,1)),math.rad(1 + 3 * math.cos(sine / 45) + math.random(-1,1))),.6)
LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(25 - 3 * math.cos(sine / 73) + math.random(-1,1)),math.rad(2 - 1 * math.cos(sine / 55) + math.random(-1,1)),math.rad(-3 - 3 * math.cos(sine / 45) + math.random(-1,1))),.6)
end
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(25 - 2 * math.cos(sine / 32))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-25 + 2 * math.cos(sine / 32))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.25 + 0.02 * math.cos(sine / 32),-0.1 + 0.05 * math.cos(sine / 32))*angles(math.rad(25 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(25 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(0 + 2 * math.cos(sine / 53))),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(25 + 5 * math.cos(sine / 74)),math.rad(1 - 3 * math.cos(sine / 53)),math.rad(1 + 3 * math.cos(sine / 45))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(25 - 3 * math.cos(sine / 73)),math.rad(2 - 1 * math.cos(sine / 55)),math.rad(-3 - 3 * math.cos(sine / 45))),.1)
elseif ModeOfGlitch == 5 then
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(0 - 2 * math.cos(sine / 32))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(0 + 2 * math.cos(sine / 32))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),-0.1 + 0.05 * math.cos(sine / 32))*angles(math.rad(0 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(-10)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(10 + 2 * math.cos(sine / 53))),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(2 + 5 * math.cos(sine / 74)),math.rad(1 - 3 * math.cos(sine / 53)),math.rad(8 + 3 * math.cos(sine / 45))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(5 - 3 * math.cos(sine / 73)),math.rad(2 - 1 * math.cos(sine / 55)),math.rad(-14 - 3 * math.cos(sine / 45))),.1)
elseif ModeOfGlitch == 6 then
RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 7 * math.cos(sine / 56))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(10 + 3 * math.cos(sine / 52))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),1 + 0.15 * math.cos(sine / 32))*angles(math.rad(0 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(13 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(0 + 2 * math.cos(sine / 53))),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(2 + 5 * math.cos(sine / 74)),math.rad(1 - 3 * math.cos(sine / 53)),math.rad(14 + 5 * math.cos(sine / 32))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(5 - 3 * math.cos(sine / 73)),math.rad(2 - 1 * math.cos(sine / 55)),math.rad(-14 - 6 * math.cos(sine / 33))),.1)
elseif ModeOfGlitch == 7 then
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-6),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(1 - 2 * math.cos(sine / 32))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-0.5),math.rad(10 - 1 * math.cos(sine / 56)),math.rad(-1 + 2 * math.cos(sine / 32))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.01 + 0.02 * math.cos(sine / 32),0 + 0.05 * math.cos(sine / 32))*angles(math.rad(1 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(-10 + 3 * math.cos(sine / 42))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(15 - 2 * math.cos(sine / 37)),math.rad(0 + 2 * math.cos(sine / 58)),math.rad(10 + 1 * math.cos(sine / 53))),.1)
RW.C0=clerp(RW.C0,cf(1,0.35 + 0.025 * math.cos(sine / 45),-0.5)*angles(math.rad(62 + 6 * math.cos(sine / 72)),math.rad(3 - 2 * math.cos(sine / 58)),math.rad(-82 + 2 * math.cos(sine / 45))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(170 - 7 * math.cos(sine / 66)),math.rad(2 - 1 * math.cos(sine / 56)),math.rad(12 - 1 * math.cos(sine / 45))),.1)
elseif ModeOfGlitch == 67966 then
RH.C0=clerp(RH.C0,cf(1,-.6,-.2)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-6 - 3 * math.sin(sine / 16)),math.rad(0),math.rad(-3 - 3 * math.sin(sine / 16))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-6 - 3 * math.sin(sine / 16)),math.rad(0),math.rad(3 - 3 * math.sin(sine / 16))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,.3 + .3 * math.cos(sine / 16))*angles(math.rad(1 - 1 * math.cos(sine / 16)),math.rad(0),math.rad(0 - 6 * math.cos(sine / 56))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-3 - 5 * math.sin(sine / 16)),math.rad(0),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1,0.5 + 0.2 * math.sin(sine / 16),0.45)*angles(math.rad(-33 - 5 * math.cos(sine / 74)),math.rad(1 - 3 * math.cos(sine / 53)),math.rad(-33 + 3 * math.cos(sine / 45))),.1)
LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.2 * math.sin(sine / 16),0.45)*angles(math.rad(-23 + 3 * math.cos(sine / 73)),math.rad(2 - 1 * math.cos(sine / 55)),math.rad(33 - 3 * math.cos(sine / 45))),.1)
elseif ModeOfGlitch == 123666 then
local Alpha = .1
RootJoint.C0 = RootJoint.C0:lerp(cf(0,0+.1*math.cos(sine/52),0)*angles(math.rad(14.9),math.rad(-20.1),math.rad(5.2))*RootCF,Alpha)
LH.C0 = LH.C0:lerp(cf(-1,-0.9-.1*math.cos(sine/52),0.3)*angles(math.rad(-14),math.rad(20.7),math.rad(0))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
RH.C0 = RH.C0:lerp(cf(1,-1-.1*math.cos(sine/52),-0.2)*angles(math.rad(-27.4),math.rad(-13.4),math.rad(10))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
LW.C0 = LW.C0:lerp(cf(-1.5,0.6+.1*math.sin(sine/52),0.2)*angles(math.rad(-14),math.rad(20.7),math.rad(-7.1)),Alpha)
RW.C0 = RW.C0:lerp(cf(1.5,0.1+.05*math.cos(sine/52),-0.1)*angles(math.rad(-166-3*math.cos(sine/52)-3*math.sin(sine/52)),math.rad(0),math.rad(0)),Alpha)
Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0,0.1,0.3)*angles(math.rad(-14),math.rad(20.7),math.rad(0))*necko,Alpha)
AeshW.C0 = AeshW.C0:lerp(cf(0.1,-1.1+(.1*math.sin(sine/52))+(.1*math.cos(sine/52)),-1.5)*angles(math.rad(174.9+3*math.cos(sine/52)+3*math.sin(sine/52)),math.rad(90),math.rad(0)),Alpha)
elseif ModeOfGlitch == 9 then
local snap = math.random(1,32)
if snap == 1 then
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(19 + math.random(-3,3)),math.rad(math.random(-3,3)),math.rad(-53 + math.random(-3,3))),1)
end
local colors = {BrickColor.new'Earth green',BrickColor.new'Bright green',BrickColor.new'Lime green',BrickColor.new'Forest green',BrickColor.new'Camo'}
PixelBlockX(5,0.25,"Add",rarm.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(90 + math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.75,0.75,0.75,0.0075,colors[math.random(1,#colors)],0)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(-20),math.rad(0 - 2 * math.cos(sine / 32))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(9),math.rad(8 + 2 * math.cos(sine / 32))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),-0.1 + 0.05 * math.cos(sine / 32))*angles(math.rad(0 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(43)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(19 - 2 * math.cos(sine / 37)),math.rad(0 + 5 * math.cos(sine / 55)),math.rad(-43)),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(2 + 11 * math.cos(sine / 73)),math.rad(18 - 6 * math.cos(sine / 57)),math.rad(17 + 5 * math.cos(sine / 52))),.1)
LW.C0=clerp(LW.C0,cf(-1.2,0.85 + 0.025 * math.cos(sine / 45),-0.65)*angles(math.rad(170 - 1 * math.cos(sine / 70)),math.rad(-3 - 1 * math.cos(sine / 59)),math.rad(47 - 1 * math.cos(sine / 60))),.1)
elseif ModeOfGlitch == 666666666 then
	local Alpha = .1
	  RootJoint.C0 = RootJoint.C0:lerp(cf(0,0+ 0.02 * math.cos(sine / 32),0)*angles(math.rad(-29.2-1 * math.cos(sine / 54)),math.rad(0),math.rad(0))*RootCF,Alpha)
  	LH.C0 = LH.C0:lerp(cf(-1,-1.1- 0.02 * math.cos(sine / 32),-0.1)*angles(math.rad(29.2+1 * math.cos(sine / 54)),math.rad(0),math.rad(-5))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
  	RH.C0 = RH.C0:lerp(cf(1,-1.1- 0.02 * math.cos(sine / 32),-0.1)*angles(math.rad(29.2+1 * math.cos(sine / 54)),math.rad(0),math.rad(5))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
  	LW.C0 = LW.C0:lerp(cf(-1.4,1+ 0.05 * math.sin(sine / 32),-0.1)*angles(math.rad(180),math.rad(0),math.rad(50)),Alpha)
  	RW.C0 = RW.C0:lerp(cf(1.4,1+ 0.05 * math.sin(sine / 32),-0.1)*angles(math.rad(180),math.rad(0),math.rad(-50)),Alpha)
if math.random(1,32) == 1 then
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(math.random(-15,15)),0),1)
else
Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*necko,Alpha)	
end
elseif ModeOfGlitch == 666 then
	  	local Alpha = .1 	
	local val = math.random(50,75)/100
SphereX(math.random(15,55)/10,math.random(3,30)/100,"Add",larm.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(math.random(-15,15)),math.rad(math.random(-15,15)),math.rad(math.random(-15,15))),val,val,val,val/100,MAINRUINCOLOR,0)
  	RootJoint.C0 = RootJoint.C0:lerp(cf(0,0+ 0.05 * math.cos(sine / 36),0)*angles(math.rad(0),math.rad(0),math.rad(0))*RootCF,Alpha)
  	LH.C0 = LH.C0:lerp(cf(-1,-1-0.05 * math.cos(sine / 36),0.1)*angles(math.rad(0.7),math.rad(9),math.rad(-4.7))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
  	RH.C0 = RH.C0:lerp(cf(1,-1-0.05 * math.cos(sine / 36),0.1)*angles(math.rad(0.5),math.rad(-8.8),math.rad(3.5))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
  	LW.C0 = LW.C0:lerp(cf(-0.7,0.7+ 0.1 * math.sin(sine / 36),-0.6)*angles(math.rad(107.7+2*math.sin(sine/36)),math.rad(-4.8),math.rad(75.9)),Alpha)
  	RW.C0 = RW.C0:lerp(cf(1.4,0.6+ 0.1 * math.sin(sine / 36),0)*angles(math.rad(0+2*math.sin(sine/36)),math.rad(0),math.rad(13.3)),Alpha)
  	Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0,0,0.1)*angles(math.rad(-2.7+2*math.sin(sine/36)),math.rad(0),math.rad(0))*necko,Alpha)
  	gasW.C0 = gasW.C0:lerp(cf(0,-1.6,0.2)*angles(math.rad(-90+2*math.sin(sine/36)),math.rad(13.3),math.rad(-180)),Alpha)
	
 elseif ModeOfGlitch == 123321.888 then
	  	local Alpha = .1 	
	RootJoint.C0 = RootJoint.C0:lerp(cf(0,0.6+ 0.2 * math.cos(sine / 32),0)*angles(math.rad(-41.6+ 3 * math.sin(sine / 32)),math.rad(0),math.rad(0))*RootCF,Alpha)
  	LH.C0 = LH.C0:lerp(cf(-1,-0.9,-0.2)*angles(math.rad(-34.7+ 7 * math.sin(sine / 32)),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
  	RH.C0 = RH.C0:lerp(cf(1,0,-0.6)*angles(math.rad(-3.2+ 7 * math.sin(sine / 32)),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
  	LW.C0 = LW.C0:lerp(cf(-0.9,0.5+ 0.05 * math.sin(sine / 38),-0.2)*angles(math.rad(163.8+ 2 * math.sin(sine / 38)),math.rad(0),math.rad(30)),Alpha)
  	RW.C0 = RW.C0:lerp(cf(0.9,0.5+ 0.05 * math.sin(sine / 38),-0.2)*angles(math.rad(163.8+ 2 * math.sin(sine / 38)),math.rad(0),math.rad(-30)),Alpha)
  	Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0,0,0.5)*angles(math.rad(-24.2+ 2 * math.sin(sine / 38)),math.rad(0),math.rad(0))*necko,Alpha)
	
elseif ModeOfGlitch == 8 then
RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 5 * math.cos(sine / 51))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(10 + 3 * math.cos(sine / 44))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),1 + 0.15 * math.cos(sine / 32))*angles(math.rad(0 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(-36)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(13 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(36 + 2 * math.cos(sine / 53))),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(3 + 7 * math.cos(sine / 79)),math.rad(1 - 3 * math.cos(sine / 53)),math.rad(33 + 10 * math.cos(sine / 73))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(15 - 3 * math.cos(sine / 73)),math.rad(2 - 1 * math.cos(sine / 55)),math.rad(-27 - 6 * math.cos(sine / 33))),.1)
elseif ModeOfGlitch == 0010 then
  	local Alpha = .1
  	RootJoint.C0 = RootJoint.C0:lerp(cf(-0.1,0 + 0.05 * math.cos(sine/20),-0.1)*angles(math.rad(-3.7),math.rad(60.1 + (2*math.cos(sine/32))),math.rad(1.3 + (2*math.cos(sine/64))))*RootCF,Alpha)
  	LH.C0 = LH.C0:lerp(cf(-1,-1- 0.05 * math.cos(sine/20),-0.1)*angles(math.rad(0),math.rad(0),math.rad(2))*angles(math.rad(0),math.rad(-90- (2*math.cos(sine/32))),math.rad(0-(2*math.cos(sine/64)))),Alpha)
  	RH.C0 = RH.C0:lerp(cf(1.1,-0.9- 0.05 * math.cos(sine/20),0.1)*angles(math.rad(0.7),math.rad(-20),math.rad(2.2))*angles(math.rad(0),math.rad(90- (2*math.cos(sine/32))),math.rad(0-(2*math.cos(sine/64)))),Alpha)
  	LW.C0 = LW.C0:lerp(cf(-0.8+0.1*math.cos(sine/32),0.1-0.1*math.cos(sine/64),-0.6)*angles(math.rad(82.9),math.rad(-10.3),math.rad(72.1)),Alpha)
  	RW.C0 = RW.C0:lerp(cf(1.1-0.1*math.cos(sine/32),0.3-0.1*math.cos(sine/64),-0.4)*angles(math.rad(60),math.rad(0),math.rad(-80)),Alpha)
  	Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0.2,0,0)*angles(math.rad(9.9),math.rad(-59.6),math.rad(13.6))*necko,Alpha)
elseif ModeOfGlitch == 14234 then
  	local Alpha = .1
  	RootJoint.C0 = RootJoint.C0:lerp(cf(0,0 + 0.03 * math.cos(sine/20),0.2)*angles(math.rad(5-2*math.cos(sine/32)),math.rad(10),math.rad(0))*RootCF,Alpha)
  	LH.C0 = LH.C0:lerp(cf(-1,-1,-0.1)*angles(math.rad(-5+2*math.cos(sine/32)),math.rad(0),math.rad(-0.9))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
  	RH.C0 = RH.C0:lerp(cf(1,-1- 0.03 * math.cos(sine/20),0)*angles(math.rad(-5+2*math.cos(sine/32)),math.rad(-5),math.rad(-0.9))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
  	LW.C0 = LW.C0:lerp(cf(-1.5,0.4- 0.03 * math.cos(sine/20),0)*angles(math.rad(5.1-2*math.cos(sine/32)),math.rad(-0.1),math.rad(3.9)),Alpha)
  	RW.C0 = RW.C0:lerp(cf(1.5,0.5,0)*angles(math.rad(-9.9+4.5*math.cos(sine/32)),math.rad(0.1),math.rad(-3.9)),Alpha)
  	Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0,0,0.3)*angles(math.rad(-10.2),math.rad(-9.8),math.rad(-1.8))*necko,Alpha) 
elseif ModeOfGlitch == 33666666666 then
	local Alpha = .1
	RootJoint.C0 = RootJoint.C0:lerp(cf(0,3+.5*math.cos(sine/32),0.1)*angles(math.rad(32-5*math.sin(sine/32)),math.rad(0),math.rad(0))*RootCF,Alpha)
	LH.C0 = LH.C0:lerp(cf(-1,-1-.1*math.sin(sine/32),0)*angles(math.rad(-14.3+15*math.sin(sine/32)),math.rad(7.6+2.5*math.sin(sine/32)),math.rad(-7.8-5*math.sin(sine/32)))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
	RH.C0 = RH.C0:lerp(cf(0.9,-0.7-.1*math.sin(sine/32),-0.5)*angles(math.rad(-14.3+15*math.sin(sine/32)),math.rad(-12.7-2.5*math.sin(sine/32)),math.rad(7+5*math.sin(sine/32)))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
	LW.C0 = LW.C0:lerp(cf(-1.2,0.5-.075*math.sin(sine/32),-0.1)*angles(math.rad(7.1+3*math.cos(sine/32)),math.rad(10.2),math.rad(24.2)),Alpha)
	RW.C0 = RW.C0:lerp(cf(1.3,1-.075*math.sin(sine/32),-0.2)*angles(math.rad(150.3+5*math.cos(sine/32)),math.rad(0),math.rad(-32.7)),Alpha)
	Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0,0,0.1)*angles(math.rad(-14.3-3*math.sin(sine/32)),math.rad(0),math.rad(0))*necko,Alpha)
elseif ModeOfGlitch == 88893333388 then
RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 9 * math.cos(sine / 51))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(10 + 7 * math.cos(sine / 44))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),1.5 + 0.25 * math.cos(sine / 32))*angles(math.rad(2 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(13)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(24 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(-13 + 2 * math.cos(sine / 53))),.1)
RW.C0=clerp(RW.C0,cf(1,0.35 + 0.025 * math.cos(sine / 45),-0.5)*angles(math.rad(68 + 6 * math.cos(sine / 72)),math.rad(3 - 2 * math.cos(sine / 58)),math.rad(-82 + 2 * math.cos(sine / 45))),.1)
LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.025 * math.cos(sine / 45),-0.5)*angles(math.rad(82 - 7 * math.cos(sine / 66)),math.rad(4 - 3 * math.cos(sine / 59)),math.rad(67 - 4 * math.cos(sine / 45))),.1)
elseif ModeOfGlitch == 808080808080808080808080 then
sphere2(8,"Add",rleg.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,0.05,-0.01,BrickColor.new("Pastel light blue"),BrickColor.new("Pastel light blue").Color)
sphere2(8,"Add",lleg.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,0.05,-0.01,BrickColor.new("Alder"),BrickColor.new("Alder").Color)
RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 9 * math.cos(sine / 51))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(10 + 7 * math.cos(sine / 44))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0 + 0.25 * math.cos(sine / 47),0 + 0.25 * math.cos(sine / 35),7 + 1 * math.cos(sine / 32))*angles(math.rad(2 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(13)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(24 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(-13 + 2 * math.cos(sine / 53))),.1)
RW.C0=clerp(RW.C0,cf(1,0.35 + 0.025 * math.cos(sine / 45),-0.5)*angles(math.rad(68 + 6 * math.cos(sine / 72)),math.rad(3 - 2 * math.cos(sine / 58)),math.rad(-82 + 2 * math.cos(sine / 45))),.1)
LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.025 * math.cos(sine / 45),-0.5)*angles(math.rad(82 - 7 * math.cos(sine / 66)),math.rad(4 - 3 * math.cos(sine / 59)),math.rad(67 - 4 * math.cos(sine / 45))),.1)
elseif ModeOfGlitch == 1264532489 then
sphere2(8,"Add",rleg.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,0.05,-0.01,BrickColor.new("Deep orange"),BrickColor.new("Deep orange").Color)
sphere2(8,"Add",lleg.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,0.05,-0.01,BrickColor.new("Toothpaste"),BrickColor.new("Toothpaste").Color)
sphere2(8,"Add",rarm.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,0.05,-0.01,MAINRUINCOLOR,MAINRUINCOLOR.Color)
RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-14 - 5 * math.cos(sine / 48))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(15 + 7 * math.cos(sine / 51))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0 + 0.25 * math.cos(sine / 43),0 - 0.25 * math.cos(sine / 53),6 + 1 * math.cos(sine / 32))*angles(math.rad(0 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(21 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(0 + 2 * math.cos(sine / 53))),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(13 + 6 * math.cos(sine / 72)),math.rad(3 - 2 * math.cos(sine / 58)),math.rad(28 + 2 * math.cos(sine / 45))),.1)
LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.025 * math.cos(sine / 45),-0.5)*angles(math.rad(89 - 7 * math.cos(sine / 66)),math.rad(4 - 3 * math.cos(sine / 59)),math.rad(67 - 4 * math.cos(sine / 45))),.1)
elseif ModeOfGlitch == 9999999921111 then
RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(8 - 6 * math.cos(sine / 67)),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-18 - 5 * math.cos(sine / 32))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-15 - 8 * math.cos(sine / 74)),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(31 + 8 * math.cos(sine / 38))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),1 + 0.15 * math.cos(sine / 32))*angles(math.rad(-21 - 2 * math.cos(sine / 32)),math.rad(8),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(25 - 6 * math.cos(sine / 37)),math.rad(-14 + 5 * math.cos(sine / 58)),math.rad(0 + 2 * math.cos(sine / 53))),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(-24 + 9 * math.cos(sine / 72)),math.rad(3 - 5 * math.cos(sine / 58)),math.rad(38 + 7 * math.cos(sine / 45))),.1)
LW.C0=clerp(LW.C0,cf(-0.8,0.35 + 0.025 * math.cos(sine / 45),-0.75)*angles(math.rad(160 - 2 * math.cos(sine / 66)),math.rad(5 - 8 * math.cos(sine / 59)),math.rad(87 - 3 * math.cos(sine / 45))),.1)
elseif ModeOfGlitch == 201 then
local Alpha = .1
RootJoint.C0 = RootJoint.C0:lerp(cf(0,0+0.2*math.cos(sine/14),0)*angles(math.rad(0),math.rad(-65),math.rad(-1+(2*math.cos(sine/28))))*RootCF,Alpha)
LH.C0 = LH.C0:lerp(cf(-0.8,-1-0.2*math.cos(sine/14),0.3)*angles(math.rad(3.5),math.rad(34.8),math.rad(-6.1))*angles(math.rad(0),math.rad(-90),math.rad(0-(2*math.cos(sine/28)))),Alpha)
RH.C0 = RH.C0:lerp(cf(0.9,-0.8-0.2*math.cos(sine/14),0.2)*angles(math.rad(0),math.rad(-25),math.rad(15))*angles(math.rad(0),math.rad(90),math.rad(0-(2*math.cos(sine/28)))),Alpha)
LW.C0 = LW.C0:lerp(cf(-1.6,0.4,0)*angles(math.rad(25),math.rad(0),math.rad(10-5*math.cos(sine/14))),Alpha)
RW.C0 = RW.C0:lerp(cf(1.4,0.5,0.1)*angles(math.rad(11.5),math.rad(-29.5),math.rad(10.7+5*math.cos(sine/14))),Alpha)
Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0.1,0,0)*angles(math.rad(-8.4),math.rad(54.7),math.rad(8.1))*necko,Alpha)
BladesWeld.C0 = clerp(BladesWeld.C0,CFrame.new(0,-1,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(0)),0.1)
elseif ModeOfGlitch == 666666 then
  	local Alpha = .1
  	RootJoint.C0 = RootJoint.C0:lerp(cf(0,0+0.3*math.cos(sine/12),-0.1)*angles(math.rad(-10),math.rad(0),math.rad(0))*RootCF,Alpha)
  	LH.C0 = LH.C0:lerp(cf(-1.1,-1.1-0.3*math.cos(sine/12),0.2)*angles(math.rad(10),math.rad(20),math.rad(-5))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
  	RH.C0 = RH.C0:lerp(cf(1.1,-1.1-0.3*math.cos(sine/12),0.1)*angles(math.rad(10),math.rad(-10),math.rad(5))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
  	LW.C0 = LW.C0:lerp(cf(-1.6,0.5,-0.1)*angles(math.rad(15),math.rad(0),math.rad(-25-5*math.cos(sine/12))),Alpha)
  	RW.C0 = RW.C0:lerp(cf(1.6,0.5,-0.1)*angles(math.rad(15),math.rad(0),math.rad(25+5*math.cos(sine/12))),Alpha)
  	Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0,0.3,0.5)*angles(math.rad(-30+2*math.cos(sine/12)),math.rad(0),math.rad(0))*necko,Alpha)
elseif ModeOfGlitch == 22666 then
  	local Alpha = .1
  	RootJoint.C0 = RootJoint.C0:lerp(cf(0,0,0.2)*angles(math.rad(10+20*math.cos(sine/22)),math.rad(0),math.rad(0))*RootCF,Alpha)
  	LH.C0 = LH.C0:lerp(cf(-1,-1,0.2+.2*math.cos(sine/22))*angles(math.rad(-10-20*math.cos(sine/22)),math.rad(15),math.rad(0))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
  	RH.C0 = RH.C0:lerp(cf(1,-1,0.2+.2*math.cos(sine/22))*angles(math.rad(-10-20*math.cos(sine/22)),math.rad(-20),math.rad(0))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
  	LW.C0 = LW.C0:lerp(cf(-1.5,0.5,0.1)*angles(math.rad(-15+70*math.cos(sine/22)),math.rad(0),math.rad(0)),Alpha)
  	RW.C0 = RW.C0:lerp(cf(1.5,0.5,0.1)*angles(math.rad(-15+70*math.cos(sine/22)),math.rad(0),math.rad(0)),Alpha)
  	Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*necko,Alpha)	
elseif ModeOfGlitch == 110110100110 then
  	local Alpha = .1
  	RootJoint.C0 = RootJoint.C0:lerp(cf(0,0 + 0.3 * math.cos(sine/10),0)*angles(math.rad(-5),math.rad(0),math.rad(0))*RootCF,Alpha)
  	LH.C0 = LH.C0:lerp(cf(-1,-1-.3 * math.cos(sine/10),-0.1)*angles(math.rad(5),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
  	RH.C0 = RH.C0:lerp(cf(1,-1-.3 * math.cos(sine/10),0.1)*angles(math.rad(5),math.rad(-20),math.rad(0))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
  	LW.C0 = LW.C0:lerp(cf(-1,0.5+ 0.2 * math.cos(sine/10),-0.6)*angles(math.rad(-22.6),math.rad(7.8),math.rad(118.7)),Alpha)
  	RW.C0 = RW.C0:lerp(cf(1.2,0.2+ 0.2 * math.cos(sine/10),0.4)*angles(math.rad(-35),math.rad(0),math.rad(-30)),Alpha)
  	Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0,0.2,0.2)*angles(math.rad(-15),math.rad(0),math.rad(0))*necko,Alpha)
elseif ModeOfGlitch == 0.110110101100001011000110110100001101001011011100110010101110011 then
  	local Alpha = .03
	if(MachineBreathePhase==0)then
		  	RootJoint.C0 = RootJoint.C0:lerp(cf(0,0,0)*angles(math.rad(6.6),math.rad(0),math.rad(0))*RootCF,Alpha)
  	LH.C0 = LH.C0:lerp(cf(-1,-1,-0.2)*angles(math.rad(-6.6),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
  	RH.C0 = RH.C0:lerp(cf(1,-1,-0.2)*angles(math.rad(-6.6),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
  	LW.C0 = LW.C0:lerp(cf(-1.5,0.6,0.1)*angles(math.rad(-9.4),math.rad(0),math.rad(-5)),Alpha)
  	RW.C0 = RW.C0:lerp(cf(1.5,0.6,0.1)*angles(math.rad(-9.4),math.rad(0),math.rad(5)),Alpha)
  	Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0,0,-0.1)*angles(math.rad(4.6),math.rad(0),math.rad(0))*necko,Alpha)
	else
  	RootJoint.C0 = RootJoint.C0:lerp(cf(0,0.1,0)*angles(math.rad(-3.1),math.rad(0),math.rad(0))*RootCF,Alpha)
  	LH.C0 = LH.C0:lerp(cf(-1,-1.1,0)*angles(math.rad(3.1),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
  	RH.C0 = RH.C0:lerp(cf(1,-1.1,0)*angles(math.rad(3.1),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
  	LW.C0 = LW.C0:lerp(cf(-1.4,0.4,-0.1)*angles(math.rad(14),math.rad(0),math.rad(5)),Alpha)
  	RW.C0 = RW.C0:lerp(cf(1.5,0.4,-0.1)*angles(math.rad(14),math.rad(0),math.rad(-5)),Alpha)
  	Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*necko,Alpha)
	end

elseif ModeOfGlitch == 696969 then
	local Alpha = .15
  	RootJoint.C0 = RootJoint.C0:lerp(cf(0,-1-1.4*math.cos(sine/6),0-1.4*math.cos(sine/12))*angles(math.rad(0+70*math.cos(sine/12)),math.rad(0),math.rad(0))*RootCF,Alpha)
  	LH.C0 = LH.C0:lerp(cf(-1,-1,0)*angles(math.rad(0-140*math.cos(sine/12)),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
  	RH.C0 = RH.C0:lerp(cf(1,-1,0)*angles(math.rad(0-140*math.cos(sine/12)),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
  	LW.C0 = LW.C0:lerp(cf(-1.5,0.5,0)*angles(math.rad(0-140*math.cos(sine/12)),math.rad(0),math.rad(0)),Alpha)
  	RW.C0 = RW.C0:lerp(cf(1.5,0.5,0)*angles(math.rad(0-140*math.cos(sine/12)),math.rad(0),math.rad(0)),Alpha)
  	Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*necko,Alpha)
elseif ModeOfGlitch == 9032 then
local Alpha = .1
RootJoint.C0 = RootJoint.C0:lerp(cf(0,0 + 0.1 * math.cos(sine/10),0)*angles(math.rad(0),math.rad(-10),math.rad(0))*RootCF,Alpha)
LH.C0 = LH.C0:lerp(cf(-1,-1- 0.1 * math.cos(sine/10),0)*angles(math.rad(0),math.rad(0),math.rad(-5))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
RH.C0 = RH.C0:lerp(cf(1,-1- 0.1 * math.cos(sine/10),0)*angles(math.rad(0),math.rad(0),math.rad(5))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
LW.C0 = LW.C0:lerp(cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-5-3*math.cos(sine/10))),Alpha)
RW.C0 = RW.C0:lerp(cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(5+3*math.cos(sine/10))),Alpha)
Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0,0,0)*angles(math.rad(0+2*math.cos(sine/10)),math.rad(10),math.rad(0))*necko,Alpha)
elseif ModeOfGlitch == 765688533321 then
local snap = math.random(1,32)
if snap == 1 then
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(13 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),1)
end
sphere2(8,"Add",rleg.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,0.05,-0.01,BrickColor.new("Really red"),BrickColor.new("Really red").Color)
sphere2(8,"Add",lleg.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,0.05,-0.01,BrickColor.new("Really black"),BrickColor.new("Really black").Color)
RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 2 * math.cos(sine / 39))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(10 + 6 * math.cos(sine / 31))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0 - 0.25 * math.cos(sine / 50),0 + 0.25 * math.cos(sine / 43),6 + 1 * math.cos(sine / 32))*angles(math.rad(0 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(13 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(0 + 2 * math.cos(sine / 53))),.1)
RW.C0=clerp(RW.C0,cf(1,0.35 + 0.025 * math.cos(sine / 45),-0.5)*angles(math.rad(62 + 6 * math.cos(sine / 72)),math.rad(2 - 4 * math.cos(sine / 58)),math.rad(-65 + 1 * math.cos(sine / 45))),.1)
LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.025 * math.cos(sine / 45),-0.5)*angles(math.rad(89 - 7 * math.cos(sine / 66)),math.rad(6 - 5 * math.cos(sine / 59)),math.rad(73 - 3 * math.cos(sine / 45))),.1)
elseif ModeOfGlitch == 55469696922 then
RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(19 + 8 * math.cos(sine / 62)),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-20 - 3 * math.cos(sine / 34))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(3 - 1 * math.cos(sine / 55)),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(26 + 5 * math.cos(sine / 41))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),1 + 0.15 * math.cos(sine / 32))*angles(math.rad(-13 - 2 * math.cos(sine / 32)),math.rad(3),math.rad(10 - 4 * math.cos(sine / 67))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(23 - 8 * math.cos(sine / 37)),math.rad(-21 + 2 * math.cos(sine / 58)),math.rad(-10 + 2 * math.cos(sine / 53))),.1)
RW.C0=clerp(RW.C0,cf(1,0.5 + 0.025 * math.cos(sine / 45),0.45)*angles(math.rad(-33 + 5 * math.cos(sine / 74)),math.rad(1 - 3 * math.cos(sine / 53)),math.rad(-33 + 14 * math.cos(sine / 45))),.1)
LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.025 * math.cos(sine / 45),0.45)*angles(math.rad(-23 - 3 * math.cos(sine / 73)),math.rad(2 - 1 * math.cos(sine / 55)),math.rad(35 - 8 * math.cos(sine / 51))),.1)
elseif ModeOfGlitch == 664663666 then
	local Alpha = .1
	MagicCharge(7, 0, "Add", ra.CFrame * CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360))), 0.5, 0.5, 1.5, -0.005, MAINRUINCOLOR, 0, "Brick")
	MagicCharge(7, 0, "Add", la.CFrame * CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360))), 0.5, 0.5, 1.5, -0.005, MAINRUINCOLOR, 0, "Brick")
	 RootJoint.C0 = RootJoint.C0:lerp(cf(0,0+ 0.1 * math.cos(sine/24),0)*angles(math.rad(0),math.rad(47.9),math.rad(0))*RootCF,Alpha)
  	LH.C0 = LH.C0:lerp(cf(-1,-1-0.1 * math.cos(sine/24),0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(-90),math.rad(0)),Alpha)
  	RH.C0 = RH.C0:lerp(cf(0.8,-1-0.1 * math.cos(sine/24),0.4)*angles(math.rad(0),math.rad(-47.9),math.rad(0))*angles(math.rad(0),math.rad(90),math.rad(0)),Alpha)
  	LW.C0 = LW.C0:lerp(cf(-0.9,0.2+ 0.1 * math.sin(sine/24),0.3)*angles(math.rad(-23.4),math.rad(0),math.rad(48-5*math.cos(sine/32))),Alpha)
  	RW.C0 = RW.C0:lerp(cf(1.5,0.5+ 0.1 * math.sin(sine/24),-0.1)*angles(math.rad(15.5),math.rad(0),math.rad(12.5+10*math.cos(sine/32))),Alpha)
  	Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0,0,0)*angles(math.rad(0+1*math.sin(sine/24)),math.rad(-47.9),math.rad(0))*necko,Alpha)
elseif ModeOfGlitch == 4367677813 then
local snap = math.random(1,32)
if snap == 1 then
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(32 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),1)
end
RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-4 - 7 * math.cos(sine / 39))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(15 + 8 * math.cos(sine / 31))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 32),1 + 0.15 * math.cos(sine / 32))*angles(math.rad(32 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(30 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(0 + 2 * math.cos(sine / 53))),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(32 + 6 * math.cos(sine / 72)),math.rad(2 - 4 * math.cos(sine / 58)),math.rad(14 + 1 * math.cos(sine / 45))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(32 - 7 * math.cos(sine / 66)),math.rad(6 - 5 * math.cos(sine / 59)),math.rad(-9 - 3 * math.cos(sine / 45))),.1)
elseif ModeOfGlitch == 999999999556 then
sphere2(8,"Add",rleg.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,0.05,-0.01,BrickColor.new("Navy blue"),BrickColor.new("Navy blue").Color)
sphere2(8,"Add",lleg.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,0.05,-0.01,BrickColor.new("Really black"),BrickColor.new("Really black").Color)
RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10 - 6 * math.cos(sine / 39))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(10 + 3 * math.cos(sine / 45))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0 - 0.25 * math.cos(sine / 47),0 - 0.25 * math.cos(sine / 40),7 + 1 * math.cos(sine / 32))*angles(math.rad(0 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(17)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(29 - 2 * math.cos(sine / 37)),math.rad(0 + 1 * math.cos(sine / 58)),math.rad(-17 + 2 * math.cos(sine / 53))),.1)
RW.C0=clerp(RW.C0,cf(1,0.35 + 0.025 * math.cos(sine / 45),-0.5)*angles(math.rad(62 + 6 * math.cos(sine / 72)),math.rad(3 - 2 * math.cos(sine / 58)),math.rad(-82 + 2 * math.cos(sine / 45))),.1)
LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.025 * math.cos(sine / 45),-0.5)*angles(math.rad(89 - 7 * math.cos(sine / 66)),math.rad(4 - 3 * math.cos(sine / 59)),math.rad(67 - 4 * math.cos(sine / 45))),.1)
end
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
if attack==false then
if ModeOfGlitch == 201 then
	change=1
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.175 + 0.10 * math.cos(sine / 3.5) + -math.sin(sine / 3.5) / 7) * angles(math.rad(3 - 2.5 * math.cos(sine / 3.5)), math.rad(0) - root.RotVelocity.Y / 75, math.rad(4 * math.cos(sine / 7))), 0.15)
tors.Neck.C0 = clerp(tors.Neck.C0, necko* cf(0, 0, 0 + ((1) - 1)) * angles(math.rad(0), math.rad(0), math.rad(0) - hed.RotVelocity.Y / 15), 0.3)
RH.C0 = clerp(RH.C0, cf(1, -0.8 - 0.5 * math.cos(sine / 7) / 2, 0.6 * math.cos(sine / 7) / 2)  * angles(math.rad(-15 - 25 * math.cos(sine / 7)) - rl.RotVelocity.Y / 75 + -math.sin(sine / 7) / 2.5, math.rad(90 - 10 * math.cos(sine / 7)), math.rad(0)) * angles(math.rad(0 + 2 * math.cos(sine / 7)), math.rad(0), math.rad(0)), 0.3)
LH.C0 = clerp(LH.C0, cf(-1, -0.8 + 0.5 * math.cos(sine / 7) / 2, -0.6 * math.cos(sine / 7) / 2) * angles(math.rad(-15 + 25 * math.cos(sine / 7)) + ll.RotVelocity.Y / 75 + math.sin(sine / 7) / 2.5, math.rad(-90 - 10 * math.cos(sine / 7)), math.rad(0)) * angles(math.rad(0 - 2 * math.cos(sine / 7)), math.rad(0), math.rad(0)), 0.3)
 RW.C0 = clerp(RW.C0, cf(1.5, 0.5 + 0.05 * math.cos(sine / 20), 0) * angles(math.rad(65), math.rad(13 + 4.5 * math.sin(sine / 20)), math.rad(24 + 4.5 * math.sin(sine / 20))), 0.1)
LW.C0 = clerp(LW.C0, cf(-1.5, 0.5 + 0.05 * math.sin(sine / 7), 0) * angles(math.rad(-55)  * math.cos(sine / 7) , math.rad(8 * math.cos(sine / 7)) ,   math.rad(-6) + la.RotVelocity.Y / 75), 0.1)
BladesWeld.C0 = clerp(BladesWeld.C0,CFrame.new(0,-1,-.2)*CFrame.Angles(math.rad(155),math.rad(90),math.rad(0)),0.1)
elseif ModeOfGlitch == 123666 then
change=1
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.175 + 0.10 * math.cos(sine / 3.5) + -math.sin(sine / 3.5) / 7) * angles(math.rad(3 - 2.5 * math.cos(sine / 3.5)), math.rad(0) - root.RotVelocity.Y / 75, math.rad(4 * math.cos(sine / 7))), 0.15)
tors.Neck.C0 = clerp(tors.Neck.C0, necko* cf(0, 0, 0 + ((1) - 1)) * angles(math.rad(0), math.rad(0), math.rad(0) - hed.RotVelocity.Y / 15), 0.3)
RH.C0 = clerp(RH.C0, cf(1, -0.8 - 0.5 * math.cos(sine / 7) / 2, 0.6 * math.cos(sine / 7) / 2)  * angles(math.rad(-15 - 25 * math.cos(sine / 7)) - rl.RotVelocity.Y / 75 + -math.sin(sine / 7) / 2.5, math.rad(90 - 10 * math.cos(sine / 7)), math.rad(0)) * angles(math.rad(0 + 2 * math.cos(sine / 7)), math.rad(0), math.rad(0)), 0.3)
LH.C0 = clerp(LH.C0, cf(-1, -0.8 + 0.5 * math.cos(sine / 7) / 2, -0.6 * math.cos(sine / 7) / 2) * angles(math.rad(-15 + 25 * math.cos(sine / 7)) + ll.RotVelocity.Y / 75 + math.sin(sine / 7) / 2.5, math.rad(-90 - 10 * math.cos(sine / 7)), math.rad(0)) * angles(math.rad(0 - 2 * math.cos(sine / 7)), math.rad(0), math.rad(0)), 0.3)
RW.C0 = RW.C0:lerp(cf(1.5,0.1+.1*math.sin(sine/3.5),-0.1)*angles(math.rad(-160-3*math.sin(sine/3.5)),math.rad(0),math.rad(0)),.3)
LW.C0 = clerp(LW.C0, cf(-1.5, 0.5 + 0.05 * math.sin(sine / 7), 0) * angles(math.rad(-55)  * math.cos(sine / 7) , math.rad(8 * math.cos(sine / 7)) ,   math.rad(-6) + la.RotVelocity.Y / 75), 0.1)
AeshW.C0 = AeshW.C0:lerp(cf(0.1,-.85+(.1*math.sin(sine/3.5)),-1.5)*angles(math.rad(190+3*math.sin(sine/3.5)),math.rad(90),math.rad(0)),.3)
elseif ModeOfGlitch == 123321.888 then
change=1
RH.C0=clerp(RH.C0,cf(1,-0.5,-0.6)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(1.5),math.rad(0),math.rad(-20 - 5 * math.cos(sine / 34))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(1),math.rad(0),math.rad(20 + 2 * math.cos(sine / 38))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0 - 0.15 * math.cos(sine / 47),-0.5,0.5 + 0.1 * math.cos(sine / 28))*angles(math.rad(70),math.rad(0 - root.RotVelocity.Y),math.rad(0 - root.RotVelocity.Y *4.5 + 3 * math.cos(sine / 47))),.1)
  	LW.C0 = LW.C0:lerp(cf(-0.9,0.5+ 0.05 * math.sin(sine / 38),-0.2)*angles(math.rad(163.8+ 2 * math.sin(sine / 38)),math.rad(0),math.rad(30)),.1)
  	RW.C0 = RW.C0:lerp(cf(0.9,0.5+ 0.05 * math.sin(sine / 38),-0.2)*angles(math.rad(163.8+ 2 * math.sin(sine / 38)),math.rad(0),math.rad(-30)),.1)
  	Torso.Neck.C0 = Torso.Neck.C0:lerp(cf(0,0,0.5)*angles(math.rad(-24.2+ 2 * math.sin(sine / 38)),math.rad(0),math.rad(0))*necko,.1)
	elseif ModeOfGlitch == 666 then
change=1
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.175 + 0.10 * math.cos(sine / 3.5) + -math.sin(sine / 3.5) / 7) * angles(math.rad(3 - 2.5 * math.cos(sine / 3.5)), math.rad(0) - root.RotVelocity.Y / 75, math.rad(4 * math.cos(sine / 7))), 0.15)
tors.Neck.C0 = clerp(tors.Neck.C0, necko* cf(0, 0, 0 + ((1) - 1)) * angles(math.rad(0), math.rad(0), math.rad(0) - hed.RotVelocity.Y / 15), 0.3)
RH.C0 = clerp(RH.C0, cf(1, -0.8 - 0.5 * math.cos(sine / 7) / 2, 0.6 * math.cos(sine / 7) / 2)  * angles(math.rad(-15 - 25 * math.cos(sine / 7)) - rl.RotVelocity.Y / 75 + -math.sin(sine / 7) / 2.5, math.rad(90 - 10 * math.cos(sine / 7)), math.rad(0)) * angles(math.rad(0 + 2 * math.cos(sine / 7)), math.rad(0), math.rad(0)), 0.3)
LH.C0 = clerp(LH.C0, cf(-1, -0.8 + 0.5 * math.cos(sine / 7) / 2, -0.6 * math.cos(sine / 7) / 2) * angles(math.rad(-15 + 25 * math.cos(sine / 7)) + ll.RotVelocity.Y / 75 + math.sin(sine / 7) / 2.5, math.rad(-90 - 10 * math.cos(sine / 7)), math.rad(0)) * angles(math.rad(0 - 2 * math.cos(sine / 7)), math.rad(0), math.rad(0)), 0.3)
RW.C0 = clerp(RW.C0, cf(1.5, 0.5 + 0.05 * math.sin(sine / 7), 0) * angles(math.rad(55)  * math.cos(sine / 7) , math.rad(-8 * math.cos(sine / 7)) ,   math.rad(6) - ra.RotVelocity.Y / 75), 0.1)
LW.C0 = clerp(LW.C0, cf(-1.5, 0.5 + 0.05 * math.sin(sine / 7), 0) * angles(math.rad(-55)  * math.cos(sine / 7) , math.rad(8 * math.cos(sine / 7)) ,   math.rad(-6) + la.RotVelocity.Y / 75), 0.1)
gasW.C0 = gasW.C0:lerp(cf(0,-1.6,0.2)*angles(math.rad(-90+25*math.cos(sine/7)),math.rad(0),math.rad(-180)),.1)
	local val = math.random(50,75)/100
SphereX(math.random(15,55)/10,math.random(3,30)/100,"Add",larm.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(math.random(-15,15)),math.rad(math.random(-15,15)),math.rad(math.random(-15,15))),val,val,val,val/100,MAINRUINCOLOR,0)

else
change=1
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.175 + 0.10 * math.cos(sine / 3.5) + -math.sin(sine / 3.5) / 7) * angles(math.rad(3 - 2.5 * math.cos(sine / 3.5)), math.rad(0) - root.RotVelocity.Y / 75, math.rad(4 * math.cos(sine / 7))), 0.15)
tors.Neck.C0 = clerp(tors.Neck.C0, necko* cf(0, 0, 0 + ((1) - 1)) * angles(math.rad(0), math.rad(0), math.rad(0) - hed.RotVelocity.Y / 15), 0.3)
RH.C0 = clerp(RH.C0, cf(1, -0.8 - 0.5 * math.cos(sine / 7) / 2, 0.6 * math.cos(sine / 7) / 2)  * angles(math.rad(-15 - 25 * math.cos(sine / 7)) - rl.RotVelocity.Y / 75 + -math.sin(sine / 7) / 2.5, math.rad(90 - 10 * math.cos(sine / 7)), math.rad(0)) * angles(math.rad(0 + 2 * math.cos(sine / 7)), math.rad(0), math.rad(0)), 0.3)
LH.C0 = clerp(LH.C0, cf(-1, -0.8 + 0.5 * math.cos(sine / 7) / 2, -0.6 * math.cos(sine / 7) / 2) * angles(math.rad(-15 + 25 * math.cos(sine / 7)) + ll.RotVelocity.Y / 75 + math.sin(sine / 7) / 2.5, math.rad(-90 - 10 * math.cos(sine / 7)), math.rad(0)) * angles(math.rad(0 - 2 * math.cos(sine / 7)), math.rad(0), math.rad(0)), 0.3)
RW.C0 = clerp(RW.C0, cf(1.5, 0.5 + 0.05 * math.sin(sine / 7), 0) * angles(math.rad(55)  * math.cos(sine / 7) , math.rad(-8 * math.cos(sine / 7)) ,   math.rad(6) - ra.RotVelocity.Y / 75), 0.1)
LW.C0 = clerp(LW.C0, cf(-1.5, 0.5 + 0.05 * math.sin(sine / 7), 0) * angles(math.rad(-55)  * math.cos(sine / 7) , math.rad(8 * math.cos(sine / 7)) ,   math.rad(-6) + la.RotVelocity.Y / 75), 0.1)
end
end
elseif torvel>=22 and hitfloor~=nil then
Anim="Run"
change=1
if attack==false then
if ModeOfGlitch ~= 6 and ModeOfGlitch ~= 8 and ModeOfGlitch ~= 1264532489 and ModeOfGlitch ~= 55469696922 and ModeOfGlitch ~= 4367677813 and ModeOfGlitch ~= 9999999921111 and ModeOfGlitch ~= 999999999556 and ModeOfGlitch ~= 8889 and ModeOfGlitch ~= 765688533321 and ModeOfGlitch ~= 664663666 and ModeOfGlitch ~= 88893333388 and ModeOfGlitch ~= 808080808080808080808080 then
--[[RH.C0=clerp(RH.C0,cf(1,-1 - 0.15 * math.cos(sine / 3),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 + 95 * math.cos(sine / 6))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.15 * math.cos(sine / 3),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 + 95 * math.cos(sine / 6))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.3,-0.05 + 0.15 * math.cos(sine / 3))*angles(math.rad(25 - 4 * math.cos(sine / 3)),math.rad(0 + root.RotVelocity.Y*1.5),math.rad(0 - root.RotVelocity.Y - 1 * math.cos(sine / 6))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-6 + 2 * math.cos(sine / 3)),math.rad(0 + root.RotVelocity.Y*1.5),math.rad(0 - hed.RotVelocity.Y*1.5 + 1 * math.cos(sine / 6))),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0.3)*angles(math.rad(-50 + 10 * math.cos(sine / 3)),math.rad(-10),math.rad(7 + 5 * math.cos(sine / 6))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0.3)*angles(math.rad(-50 + 10 * math.cos(sine / 3)),math.rad(10),math.rad(-7 - 5 * math.cos(sine / 6))),.1)
]]
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.175 + 0.10 * math.cos(sine / 3.5) + -math.sin(sine / 3.5) / 7) * angles(math.rad(20 - 5 * math.cos(sine / 3.5)), math.rad(0) - root.RotVelocity.Y / 75, math.rad(4 * math.cos(sine / 4.5))), 0.15)
tors.Neck.C0 = clerp(tors.Neck.C0, necko* cf(0, 0, 0 + ((1) - 1)) * angles(math.rad(0), math.rad(0), math.rad(0) - hed.RotVelocity.Y / 15), 0.3)
RH.C0 = clerp(RH.C0, cf(1, -0.8 - 0.5 * math.cos(sine / 4.5) / 2, 0.6 * math.cos(sine / 4.5) / 2)  * angles(math.rad(-5 - 65 * math.cos(sine / 4.5)) - rl.RotVelocity.Y / 75 + -math.sin(sine / 4.5) / 2.5, math.rad(90 - 10 * math.cos(sine / 4.5)), math.rad(0)) * angles(math.rad(0 + 2 * math.cos(sine / 4.5)), math.rad(0), math.rad(0)), 0.3)
LH.C0 = clerp(LH.C0, cf(-1, -0.8 + 0.5 * math.cos(sine / 4.5) / 2, -0.6 * math.cos(sine / 4.5) / 2) * angles(math.rad(-5 + 65 * math.cos(sine / 4.5)) + ll.RotVelocity.Y / 75 + math.sin(sine / 4.5) / 2.5, math.rad(-90 - 10 * math.cos(sine / 4.5)), math.rad(0)) * angles(math.rad(0 - 2 * math.cos(sine / 4.5)), math.rad(0), math.rad(0)), 0.3)
RW.C0 = clerp(RW.C0, cf(1.5, 0.5 + 0.05 * math.sin(sine / 4.5), 0) * angles(math.rad(125)  * math.cos(sine / 4.5) , math.rad(-8 * math.cos(sine / 4.5)) ,   math.rad(6) - ra.RotVelocity.Y / 75), 0.1)
LW.C0 = clerp(LW.C0, cf(-1.5, 0.5 + 0.05 * math.sin(sine / 4.5), 0) * angles(math.rad(-125)  * math.cos(sine / 4.5) , math.rad(8 * math.cos(sine / 4.5)) ,   math.rad(-6) + la.RotVelocity.Y / 75), 0.1)

if ModeOfGlitch == 7 then
sphereMK(5,-1,"Add",root.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),-8)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.5,0.5,10,-0.005,MAINRUINCOLOR,0)
end
else
RH.C0=clerp(RH.C0,cf(1,-0.5,-0.6)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(1.5),math.rad(0),math.rad(-20 - 5 * math.cos(sine / 34))),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(1),math.rad(0),math.rad(20 + 2 * math.cos(sine / 38))),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0 - 0.15 * math.cos(sine / 47),-0.5,0.5 + 0.1 * math.cos(sine / 28))*angles(math.rad(70),math.rad(0 - root.RotVelocity.Y),math.rad(0 - root.RotVelocity.Y *4.5 + 3 * math.cos(sine / 47))),.2)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-17 - 5 * math.cos(sine / 52)),math.rad(0 - 3 * math.cos(sine / 37)),math.rad(0 + 2 * math.cos(sine / 78))),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.05 * math.cos(sine / 28),0)*angles(math.rad(-8 - 4 * math.cos(sine / 59)),math.rad(-20 + 7 * math.cos(sine / 62)),math.rad(20 + 5 * math.cos(sine / 50))),.2)
LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.1 * math.cos(sine / 28),0)*angles(math.rad(-8 - 3 * math.cos(sine / 55)),math.rad(20 + 8 * math.cos(sine / 67)),math.rad(-20 - 4 * math.cos(sine / 29))),.2)
if ModeOfGlitch == 765688533321 then
sphereMK(2,-0.5,"Add",root.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),8)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.5,0.5,20,-0.0075,MAINRUINCOLOR,0)
end
end
end
end
end
end