print([[
___________________________________
  
Kyutatsuki13's Chara script
Build 0002
Don't even mind why I did this, it was a challenge !
  
___________________________________
]])


warn("You're whitelisted, "..game:GetService("Players").LocalPlayer.Name.." :)")

local p = game:GetService("Players").LocalPlayer 
local char = p.Character
local mouse = p:GetMouse()
local larm = char:WaitForChild("Left Arm")
local rarm = char:WaitForChild("Right Arm")
local lleg = char:WaitForChild("Left Leg")
local rleg = char:WaitForChild("Right Leg")
local hed = char:WaitForChild("Head")
local torso = char:WaitForChild("Torso")
local root = char:WaitForChild("HumanoidRootPart")
local hum = char:FindFirstChildOfClass("Humanoid")
local debris = game:GetService("Debris")
local input = game:GetService("UserInputService")
local run = game:GetService("RunService")
local rs = run.RenderStepped
local wingpose = "Idle"
local DebrisModel = Instance.new("Model",char)
DebrisModel.Name = "Debris"
repeat rs:wait() until p.CharacterAppearanceLoaded

noidle = false
shift = false
control = false
no_nosound_able = false
kills = 0

----------------------------------------------------------------------------

function rswait(value)
  if value ~= nil and value ~= 0 then
    for i=1,value do
     rs:wait()
    end
  else
    rs:wait()
  end
end

----------------------------------------------------------------------------

local timeposition = 0

function music(id)
if not torso:FindFirstChild("MusicRuin") then
soundz = Instance.new("Sound",torso)
end
soundz.Volume = 10
soundz.Name = "MusicRuin"
soundz.Looped = true
soundz.PlaybackSpeed = 1
soundz.SoundId = "rbxassetid://70631807399198"
soundz:Stop()
soundz:Play()
if no_nosound_able == true then
soundz.TimePosition = timeposition
end
end

----------------------------------------------------------------------------

function lerp(a, b, t)
  return a + (b - a)*t
end

----------------------------------------------------------------------------

function Lerp(c1,c2,al)
  local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
  local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
  for i,v in pairs(com1) do
    com1[i] = v+(com2[i]-v)*al
  end
  return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end

----------------------------------------------------------------------------

function slerp(a, b, t)
  dot = a:Dot(b)
  if dot > 0.99999 or dot < -0.99999 then
    return t <= 0.5 and a or b
  else
    r = math.acos(dot)
    return (a*math.sin((1 - t)*r) + b*math.sin(t*r)) / math.sin(r)
  end
end

----------------------------------------------------------------------------

function clerp(c1,c2,al)

  local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}

  local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}

  for i,v in pairs(com1) do

    com1[i] = lerp(v,com2[i],al)

  end

  return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))

end

----------------------------------------------------------------------------

function findAllNearestTorso(pos,dist)
    local list = workspace:children()
    local torso = {}
    local temp = nil
    local human = nil
    local temp2 = nil
    for x = 1, #list do
        temp2 = list[x]
        if (temp2.className == "Model") and (temp2 ~= char) then
            temp = temp2:findFirstChild("Torso")
            human = temp2:findFirstChildOfClass("Humanoid")
            if (temp ~= nil) and (human ~= nil) and (human.Health > 0) then
                if (temp.Position - pos).magnitude < dist then
                    table.insert(torso,temp)
                    dist = (temp.Position - pos).magnitude
                end
            end
        end
    end
    return torso
end

----------------------------------------------------------------------------

function checkIfNotPlayer(model)
if model.CanCollide == true and model ~= char and model.Parent ~= char and model.Parent.Parent ~= char and model.Parent.Parent ~= char and model.Parent ~= DebrisModel and model.Parent.Parent ~= DebrisModel and model.Parent.Parent.Parent ~= DebrisModel and model ~= wings and model.Parent ~= wings and model.Parent.Parent ~= wings then
return true
else
return false
end
end

----------------------------------------------------------------------------

function newWeld(wp0, wp1, wc0x, wc0y, wc0z)

  local wld = Instance.new("Weld", wp1)

  wld.Part0 = wp0

  wld.Part1 = wp1

  wld.C0 = CFrame.new(wc0x, wc0y, wc0z)

  return wld

end

function weld(model)
  local parts,last = {}
  local function scan(parent)
    for _,v in pairs(parent:GetChildren()) do
      if (v:IsA("BasePart")) then
        if (last) then
          local w = Instance.new("Weld")
          w.Name = ("%s_Weld"):format(v.Name)
          w.Part0,w.Part1 = last,v
          w.C0 = last.CFrame:inverse()
          w.C1 = v.CFrame:inverse()
          w.Parent = last
        end
        last = v
        table.insert(parts,v)
      end
      scan(v)
    end
  end
  scan(model)
  for _,v in pairs(parts) do
        v.Anchored = false
        v.Locked = true
        v.Anchored = false
        v.BackSurface = Enum.SurfaceType.SmoothNoOutlines
        v.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
        v.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
        v.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
        v.RightSurface = Enum.SurfaceType.SmoothNoOutlines
        v.TopSurface = Enum.SurfaceType.SmoothNoOutlines
        v.CustomPhysicalProperties = PhysicalProperties.new(0,0,0)
  end
end

----------------------------------------------------------------------------

function calculate(part,asd)
local Head = hed
local RightShoulder = asd
local RightArm = part
local MousePosition = mouse.Hit.p
local ToMouse = (MousePosition - Head.Position).unit
local Angle = math.acos(ToMouse:Dot(Vector3.new(0, 1, 0)))
local FromRightArmPos = (Head.Position + Head.CFrame:vectorToWorldSpace(Vector3.new(((Head.Size.X / 2) + (RightArm.Size.X / 2)), ((Head.Size.Y / 2) - (RightArm.Size.Z / 2)), 0)))
local ToMouseRightArm = ((MousePosition - FromRightArmPos) * Vector3.new(1 ,0, 1)).unit
local Look = (Head.CFrame.lookVector * Vector3.new(1, 0, 1)).unit
local LateralAngle = math.acos(ToMouseRightArm:Dot(Look))
if tostring(LateralAngle) == "-1.#IND" then
LateralAngle = 0
end
local Cross = Head.CFrame.lookVector:Cross(ToMouseRightArm)
if LateralAngle > (math.pi / 2) then
LateralAngle = (math.pi / 2)
local Torso = root
local Point = Torso.CFrame:vectorToObjectSpace(mouse.Hit.p-Torso.CFrame.p)
if Point.Z > 0 then
if Point.X > -0 and RightArm == rarm then
Torso.CFrame = CFrame.new(Torso.Position,Vector3.new(mouse.Hit.X,Torso.Position.Y,mouse.Hit.Z))*CFrame.Angles(0,math.rad(110),0)
elseif Point.X < 0 and RightArm == rarm then
Torso.CFrame = CFrame.new(Torso.Position,Vector3.new(mouse.Hit.X,Torso.Position.Y,mouse.Hit.Z))*CFrame.Angles(0,math.rad(-110),0)
end
end
end
if Cross.Y < 0 then
LateralAngle = -LateralAngle
end
return(CFrame.Angles(((math.pi / 2) - Angle), ((math.pi / 2) + LateralAngle), math.pi/2))
end

----------------------------------------------------------------------------

function sound(id,position,vol,pitch,start,finish)
  coroutine.resume(coroutine.create(function()

  local part = Instance.new("Part",workspace)
  part.Position = position
  part.Size = Vector3.new(0,0,0)
  part.CanCollide = false
  part.Transparency = 1

  local sound = Instance.new("Sound",part)

  sound.SoundId = "rbxassetid://"..id

  repeat rs:wait() until sound.IsLoaded
  
  if vol ~= nil then
    sound.Volume = vol
  end

  if pitch ~= nil then
    sound.PlaybackSpeed = pitch
  end

  if start ~= nil then
    sound.TimePosition = start
  end

  if finish ~= nil then
    debris:AddItem(part,finish-start)
  else
    debris:AddItem(part,sound.TimeLength)
  end
  
  sound:Play()  

  return sound

  end))
end

----------------------------------------------------------------------------

function computeDirection(vec)
local lenSquared = vec.magnitude * vec.magnitude
local invSqrt = 1 / math.sqrt(lenSquared)
return Vector3.new(vec.x * invSqrt, vec.y * invSqrt, vec.z * invSqrt)
end

----------------------------------------------------------------------------

local shaking = 0
function shake(num) if num > shaking then shaking = num end end
game:GetService("RunService").RenderStepped:connect(function()
hum.CameraOffset = Vector3.new(math.random(-1,1),math.random(-1,1),math.random(-1,1))*(shaking/100)
if shaking > 0 then shaking = shaking - 1 else shaking = 0 end
end)

plr = game:GetService("Players").LocalPlayer
DebrisModel = Instance.new("Model",plr.Character)
DebrisModel.Name = "DebrisModel"

function Effect(mesh,size,transparency,material,color,position,rotation,sizechange,rotationchange,transparencychange,acceleration)
 
 local part = Instance.new("Part",DebrisModel)
  part.Anchored = true
  part.CanCollide = false
  part.Size = Vector3.new(1,1,1)
  part.Transparency = transparency
  part.Material = material
  part.Color = color
  part.CFrame = CFrame.new(position)*CFrame.Angles(math.rad(rotation.X),math.rad(rotation.Y),math.rad(rotation.Z))
 
 local partmesh = Instance.new("SpecialMesh",part)
  if tonumber(mesh) == nil then partmesh.MeshType = mesh else partmesh.MeshId = "rbxassetid://"..mesh end
  partmesh.Scale = size
 
 local pvalue = Instance.new("Vector3Value",part)
  pvalue.Name = "Position"
  pvalue.Value = part.Position
 
 local svalue = Instance.new("Vector3Value",part)
  svalue.Name = "Size"
  svalue.Value = sizechange

 local rvalue = Instance.new("Vector3Value",part)
  rvalue.Name = "Rotation"
  rvalue.Value = rotationchange
  
 local tvalue = Instance.new("NumberValue",part)
  tvalue.Name = "Transparency"
  tvalue.Value = transparencychange

 local avalue = Instance.new("NumberValue",part)
  avalue.Name = "Acceleration"
  avalue.Value = acceleration
 
 part.Name = "EFFECT"
 
 return part

end

game:GetService("RunService").RenderStepped:connect(function()


 if not plr.Character:FindFirstChild("DebrisModel") then
  DebrisModel = Instance.new("Model",plr.Character)
  DebrisModel.Name = "DebrisModel"
 end

 for i,v in pairs(DebrisModel:GetChildren()) do
  if v:IsA("BasePart") and v.Name == "EFFECT" then
   local pvalue = v:FindFirstChild("Position").Value
   local svalue = v:FindFirstChild("Size").Value
   local rvalue = v:FindFirstChild("Rotation").Value
   local tvalue = v:FindFirstChild("Transparency").Value
   local avalue = v:FindFirstChild("Acceleration").Value
   local mesh = v:FindFirstChild("Mesh")
   mesh.Scale = mesh.Scale + svalue
   v:FindFirstChild("Size").Value = v:FindFirstChild("Size").Value + (Vector3.new(1,1,1)*avalue)
   v.Transparency = v.Transparency + tvalue
   v.CFrame = v.CFrame*CFrame.Angles(math.rad(rvalue.X),math.rad(rvalue.Y),math.rad(rvalue.Z))
   if v.Transparency >= 1 or mesh.Scale.X < 0 or mesh.Scale.Y < 0 or mesh.Scale.Z < 0 then
     v:Destroy()
   end
  end
 end


end)

----------------------------------------------------------------------------
skin_color = BrickColor.new("Light orange")
p:ClearCharacterAppearance()
--hed:WaitForChild("face"):Destroy()

----------------------------------------------------------------------------
music(540857600)
equalizer = Instance.new("EqualizerSoundEffect",torso:FindFirstChild("MusicRuin"))

local size = 1

newWeld(torso, larm, -1.5*size, 0.5*size, 0)
larm.Weld.C1 = CFrame.new(0, 0.5*size, 0)
newWeld(torso, rarm, 1.5*size, 0.5*size, 0)
rarm.Weld.C1 = CFrame.new(0, 0.5*size, 0)
newWeld(torso, hed, 0, 1.5*size, 0)
newWeld(torso, lleg, -0.5*size, -1, 0)
lleg.Weld.C1 = CFrame.new(0, 1*size, 0)
newWeld(torso, rleg, 0.5*size, -1*size, 0)
rleg.Weld.C1 = CFrame.new(0, 1*size, 0)
newWeld(root, torso, 0, -1*size, 0)
torso.Weld.C1 = CFrame.new(0, -1*size, 0)

emitters={}
for i,v in pairs(char:GetChildren()) do
if v:IsA("Part") and v.Name ~= "HumanoidRootPart" then
local emitter = Instance.new("ParticleEmitter",v)
emitter.LightEmission = 1
emitter.Transparency = NumberSequence.new(0.95,1)
emitter.Size = NumberSequence.new(2,5)
emitter.SpreadAngle = Vector2.new(360,360)
emitter.Speed = NumberRange.new(1)
emitter.Lifetime = NumberRange.new(0.75)
emitter.Texture = "rbxassetid://133619974"
emitter.Rate = 20
emitter.Color = ColorSequence.new(Color3.new(1,0,0))
emitter.LockedToPart = true
table.insert(emitters,emitter)
end
end
----------------------------------------------------------------------------------------
hair = Instance.new("Part",char)
hair.Color = Color3.fromRGB(30,10,0)
hair.CanCollide = false
meshhair = Instance.new("SpecialMesh",hair)
meshhair.MeshId = "rbxassetid://431809364"
meshhair.Scale = Vector3.new(1,1,1)*1.1
newWeld(hed,hair,0,0.22,0)

Model0 = Instance.new("Model")
Part1 = Instance.new("Part")
Part2 = Instance.new("Part")
Part3 = Instance.new("Part")
Part4 = Instance.new("Part")
Part5 = Instance.new("Part")
Part6 = Instance.new("Part")
Part7 = Instance.new("Part")
Model0.Parent = char
Part1.Parent = Model0
Part1.Anchored = true
Part1.CanCollide = false
Part1.Size = Vector3.new(2.02000022, 0.370000094, 1.01999998)
Part1.CFrame = CFrame.new(87.5, 17.1749992, 83.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part1.BottomSurface = Enum.SurfaceType.Smooth
Part1.TopSurface = Enum.SurfaceType.Smooth
Part1.Position = Vector3.new(87.5, 17.1749992, 83.5)
Part1.Color = Color3.new(0, 1, 0)
Part2.Parent = Model0
Part2.Anchored = true
Part2.CanCollide = false
Part2.Size = Vector3.new(0.920000076, 0.110000037, 0.579999983)
Part2.CFrame = CFrame.new(88.0500031, 18.9549999, 83.2799988, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part2.BottomSurface = Enum.SurfaceType.Smooth
Part2.TopSurface = Enum.SurfaceType.Smooth
Part2.Position = Vector3.new(88.0500031, 18.9549999, 83.2799988)
Part2.Color = Color3.new(0, 1, 0)
Part3.Parent = Model0
Part3.Anchored = true
Part3.CanCollide = false
Part3.Size = Vector3.new(2.02000022, 0.590000093, 1.01999998)
Part3.CFrame = CFrame.new(87.5, 17.6550007, 83.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part3.BottomSurface = Enum.SurfaceType.Smooth
Part3.TopSurface = Enum.SurfaceType.Smooth
Part3.Position = Vector3.new(87.5, 17.6550007, 83.5)
Part3.Color = Color3.new(0.992157, 0.917647, 0.552941)
Part4.Parent = Model0
Part4.Anchored = true
Part4.CanCollide = false
Part4.Size = Vector3.new(2.02000022, 0.110000037, 0.439999968)
Part4.CFrame = CFrame.new(87.5, 18.9549999, 83.7900009, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part4.BottomSurface = Enum.SurfaceType.Smooth
Part4.TopSurface = Enum.SurfaceType.Smooth
Part4.Position = Vector3.new(87.5, 18.9549999, 83.7900009)
Part4.Color = Color3.new(0, 1, 0)
Part5.Parent = Model0
Part5.Anchored = true
Part5.CanCollide = false
Part5.Size = Vector3.new(0.920000076, 0.110000037, 0.579999983)
Part5.CFrame = CFrame.new(86.9499969, 18.9549999, 83.2799988, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part5.BottomSurface = Enum.SurfaceType.Smooth
Part5.TopSurface = Enum.SurfaceType.Smooth
Part5.Position = Vector3.new(86.9499969, 18.9549999, 83.2799988)
Part5.Color = Color3.new(0, 1, 0)
Part6.Name = "asd"
Part6.Parent = Model0
Part6.Transparency = 1
Part6.Anchored = true
Part6.CanCollide = false
Part6.Size = Vector3.new(2, 2, 1)
Part6.CFrame = CFrame.new(87.5, 18, 83.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part6.BottomSurface = Enum.SurfaceType.Smooth
Part6.TopSurface = Enum.SurfaceType.Smooth
Part6.Position = Vector3.new(87.5, 18, 83.5)
Part7.Parent = Model0
Part7.Anchored = true
Part7.CanCollide = false
Part7.Size = Vector3.new(2.02000022, 0.949999988, 1.01999998)
Part7.CFrame = CFrame.new(87.5, 18.4249992, 83.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part7.BottomSurface = Enum.SurfaceType.Smooth
Part7.TopSurface = Enum.SurfaceType.Smooth
Part7.Position = Vector3.new(87.5, 18.4249992, 83.5)
Part7.Color = Color3.new(0, 1, 0)
weld(Model0)
newWeld(torso,Model0.asd)

Model0 = Instance.new("Model")
Part1 = Instance.new("Part")
Part2 = Instance.new("Part")
Model0.Parent = char
Part1.Parent = Model0
Part1.Anchored = true
Part1.CanCollide = false
Part1.Size = Vector3.new(1.01999998, 1.91000009, 1.01999998)
Part1.CFrame = CFrame.new(49.5, 18.0999985, 83.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part1.BottomSurface = Enum.SurfaceType.Smooth
Part1.TopSurface = Enum.SurfaceType.Smooth
Part1.Position = Vector3.new(49.5, 18.0999985, 83.5)
Part1.Color = Color3.new(0, 1, 0)
Part2.Name = "asd"
Part2.Parent = Model0
Part2.Transparency = 1
Part2.Anchored = true
Part2.CanCollide = false
Part2.Size = Vector3.new(1, 2, 1)
Part2.CFrame = CFrame.new(49.5, 18.0450001, 83.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part2.BottomSurface = Enum.SurfaceType.Smooth
Part2.TopSurface = Enum.SurfaceType.Smooth
Part2.Position = Vector3.new(49.5, 18.0450001, 83.5)
weld(Model0)
Model1=Model0:Clone()
Model1.Parent=char
newWeld(larm,Model0.asd,0,0,0)
newWeld(rarm,Model1.asd,0,0,0)

Model0 = Instance.new("Model")
Part1 = Instance.new("Part")
Part2 = Instance.new("Part")
Part3 = Instance.new("Part")
Model0.Parent = char
Part1.Parent = Model0
Part1.Anchored = true
Part1.CanCollide = false
Part1.Size = Vector3.new(1.03999996, 0.27000007, 1.03999996)
Part1.CFrame = CFrame.new(28, 17.125, 83.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part1.BottomSurface = Enum.SurfaceType.Smooth
Part1.TopSurface = Enum.SurfaceType.Smooth
Part1.Position = Vector3.new(28, 17.125, 83.5)
Part1.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part2.Parent = Model0
Part2.Anchored = true
Part2.CanCollide = false
Part2.Size = Vector3.new(1.01999998, 1.91000009, 1.01999998)
Part2.CFrame = CFrame.new(28, 18.0550003, 83.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part2.BottomSurface = Enum.SurfaceType.Smooth
Part2.TopSurface = Enum.SurfaceType.Smooth
Part2.Position = Vector3.new(28, 18.0550003, 83.5)
Part2.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part3.Name = "asd"
Part3.Parent = Model0
Part3.Transparency = 1
Part3.Anchored = true
Part3.CanCollide = false
Part3.Size = Vector3.new(1, 2, 1)
Part3.CFrame = CFrame.new(28, 18, 83.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part3.BottomSurface = Enum.SurfaceType.Smooth
Part3.TopSurface = Enum.SurfaceType.Smooth
Part3.Position = Vector3.new(28, 18, 83.5)
weld(Model0)
Model1=Model0:Clone()
Model1.Parent=char
newWeld(lleg,Model0.asd,0,0,0)
newWeld(rleg,Model1.asd,0,0,0)

----------------------------------------------------------------------------
HitBox = Instance.new("Part",DebrisModel)
HitBox.Size = Vector3.new(0.5,0.5,2.45)
HitBox.CanCollide = false
HitBox:BreakJoints()
HitBox.Transparency = 1
newWeld(rarm,HitBox,0,-0.95,-1.9)
atch0 = Instance.new("Attachment",HitBox)
atch0.Position = Vector3.new(0,0,HitBox.Size.Z/2)
atch1 = Instance.new("Attachment",HitBox)
atch1.Position = Vector3.new(0,0,-HitBox.Size.Z/2)
trail = Instance.new("Trail",HitBox)
trail.Attachment0 = atch0
trail.Attachment1 = atch1
trail.Lifetime = 0.2
trail.Enabled = true
trail.LightEmission = 1
trail.LightInfluence = 0
trail.Color = ColorSequence.new(Color3.new(1,0,0))
trail.Transparency = NumberSequence.new(0,1)

function ded(model)
kills = kills + 1
model.Archivable = true
model.Head:ClearAllChildren()
local clone = model:Clone()
clone.Parent = workspace
clone.Name = "DED"
--model:Destroy()
--clone:FindFirstChildOfClass("Humanoid"):Destroy()
local emitters={}
for i,v in pairs(clone:GetChildren()) do
if v:IsA("Accoutrement") then
--v:Destroy()
end
if v:IsA("Part") then
v.Anchored = true
v.CanCollide = false
v.Transparency = 1
local emitter = Instance.new("ParticleEmitter",v)
emitter.LightEmission = 1
emitter.Transparency = NumberSequence.new(0,1)
emitter.Size = NumberSequence.new(0,0.8)
emitter.SpreadAngle = Vector2.new(360,360)
emitter.Speed = NumberRange.new(0.5)
emitter.Lifetime = NumberRange.new(0.75)
emitter.Texture = "rbxassetid://744949545"
emitter.Rate = 20
emitter.Color = ColorSequence.new(Color3.new(1,1,1))
emitter.LockedToPart = false
table.insert(emitters,emitter)
end
end
delay(1, function()
sound(427025525,clone.Head.Position,10,1)
for i,v in pairs(emitters) do
v.Speed = NumberRange.new(4)
v.Acceleration = Vector3.new(0,10,0)
delay(0.5, function()
v.Enabled = false
debris:AddItem(clone,0.75)
end)
end
end)
end

local alreadytouched = {}
HitBox.Touched:connect(function(ht)
coroutine.resume(coroutine.create(function()
local hit = ht.Parent
if mode == "determination" and hit.Name ~= "DED" and attacking == true and checkIfNotPlayer(ht) and hit:FindFirstChildOfClass("Humanoid") and hit:FindFirstChildOfClass("Humanoid").Health > 0 then
local hurt = true
for i,v in pairs(alreadytouched) do if v == hit then hurt = false end end
if hurt == true then
table.insert(alreadytouched,hit)
sound(388826051,ht.Position,10,1)
ded(hit)
end
end
end))
end)

function createknife()
Model0 = Instance.new("Model")
Part1 = Instance.new("Part")
BlockMesh2 = Instance.new("BlockMesh")
Part3 = Instance.new("Part")
BlockMesh4 = Instance.new("BlockMesh")
Part5 = Instance.new("Part")
Part6 = Instance.new("Part")
BlockMesh7 = Instance.new("BlockMesh")
Part8 = Instance.new("Part")
Part9 = Instance.new("Part")
Part10 = Instance.new("Part")
SpecialMesh11 = Instance.new("SpecialMesh")
Part12 = Instance.new("Part")
Model0.Parent = char
Part1.Parent = Model0
Part1.Anchored = true
Part1.CanCollide = false
Part1.Size = Vector3.new(0.280000031, 0.0500000007, 0.0500000007)
Part1.CFrame = CFrame.new(49.5, 20.7350044, 52.3199997, 0.99999994, 0, 0, 0, 1, -5.56362707e-08, 0, 5.56362707e-08, 1)
Part1.BottomSurface = Enum.SurfaceType.Smooth
Part1.TopSurface = Enum.SurfaceType.Smooth
Part1.Position = Vector3.new(49.5, 20.7350044, 52.3199997)
Part1.Color = Color3.new(0.972549, 0.972549, 0.972549)
BlockMesh2.Parent = Part1
BlockMesh2.Scale = Vector3.new(1, 0.399999797, 0.400000781)
BlockMesh2.Scale = Vector3.new(1, 0.399999797, 0.400000781)
Part3.Parent = Model0
Part3.Anchored = true
Part3.CanCollide = false
Part3.Size = Vector3.new(0.220000014, 0.0500000007, 0.0500000007)
Part3.CFrame = CFrame.new(49.5, 20.6250038, 53.6199989, 0.99999994, 0, 0, 0, 1, -5.56362707e-08, 0, 5.56362707e-08, 1)
Part3.BottomSurface = Enum.SurfaceType.Smooth
Part3.TopSurface = Enum.SurfaceType.Smooth
Part3.Position = Vector3.new(49.5, 20.6250038, 53.6199989)
Part3.Color = Color3.new(0.972549, 0.972549, 0.972549)
BlockMesh4.Parent = Part3
BlockMesh4.Scale = Vector3.new(1, 0.399999797, 0.400000781)
BlockMesh4.Scale = Vector3.new(1, 0.399999797, 0.400000781)
Part5.Parent = Model0
Part5.Anchored = true
Part5.CanCollide = false
Part5.Size = Vector3.new(0.159999996, 0.400000006, 1.70000005)
Part5.CFrame = CFrame.new(49.5, 20.5750046, 51.4300003, 0.99999994, 0, 0, 0, 1, -5.56362707e-08, 0, 5.56362707e-08, 1)
Part5.BottomSurface = Enum.SurfaceType.Smooth
Part5.TopSurface = Enum.SurfaceType.Smooth
Part5.Position = Vector3.new(49.5, 20.5750046, 51.4300003)
Part5.Color = Color3.new(1, 0, 0)
Part6.Parent = Model0
Part6.Anchored = true
Part6.CanCollide = false
Part6.Size = Vector3.new(0.280000031, 0.0500000007, 0.0500000007)
Part6.CFrame = CFrame.new(49.5, 20.4150047, 52.3199997, 0.99999994, 0, 0, 0, 1, -5.56362707e-08, 0, 5.56362707e-08, 1)
Part6.BottomSurface = Enum.SurfaceType.Smooth
Part6.TopSurface = Enum.SurfaceType.Smooth
Part6.Position = Vector3.new(49.5, 20.4150047, 52.3199997)
Part6.Color = Color3.new(0.972549, 0.972549, 0.972549)
BlockMesh7.Parent = Part6
BlockMesh7.Scale = Vector3.new(1, 0.399999797, 0.400000781)
BlockMesh7.Scale = Vector3.new(1, 0.399999797, 0.400000781)
Part8.Name = "asd"
Part8.Parent = Model0
Part8.Anchored = true
Part8.CanCollide = false
Part8.Size = Vector3.new(0.200000003, 0.200000003, 1.30000007)
Part8.CFrame = CFrame.new(49.5, 20.6250038, 52.9300003, 0.99999994, 0, 0, 0, 1, -5.56362707e-08, 0, 5.56362707e-08, 1)
Part8.BottomSurface = Enum.SurfaceType.Smooth
Part8.TopSurface = Enum.SurfaceType.Smooth
Part8.Position = Vector3.new(49.5, 20.6250038, 52.9300003)
Part8.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part9.Parent = Model0
Part9.Anchored = true
Part9.CanCollide = false
Part9.Size = Vector3.new(0.200000003, 0.25999999, 0.100000039)
Part9.CFrame = CFrame.new(49.5, 20.595005, 53.6199989, 0.99999994, 0, 0, 0, 1, -5.56362707e-08, 0, 5.56362707e-08, 1)
Part9.BottomSurface = Enum.SurfaceType.Smooth
Part9.TopSurface = Enum.SurfaceType.Smooth
Part9.Position = Vector3.new(49.5, 20.595005, 53.6199989)
Part9.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part10.Parent = Model0
Part10.Rotation = Vector3.new(0, 0, 180)
Part10.Anchored = true
Part10.CanCollide = false
Part10.Size = Vector3.new(0.159999996, 0.400000006, 0.800000012)
Part10.CFrame = CFrame.new(49.5, 20.5750046, 50.1800003, -0.99999994, -8.74227766e-08, 3.82137093e-15, 8.74227695e-08, -1, 3.17865059e-08, 1.04250613e-15, 3.17865059e-08, 1)
Part10.BottomSurface = Enum.SurfaceType.Smooth
Part10.TopSurface = Enum.SurfaceType.Smooth
Part10.Position = Vector3.new(49.5, 20.5750046, 50.1800003)
Part10.Color = Color3.new(1, 0, 0)
SpecialMesh11.Parent = Part10
SpecialMesh11.MeshType = Enum.MeshType.Wedge
Part12.Parent = Model0
Part12.Anchored = true
Part12.CanCollide = false
Part12.Size = Vector3.new(0.25999999, 0.460000008, 0.100000039)
Part12.CFrame = CFrame.new(49.5, 20.5750046, 52.3199997, 0.99999994, 0, 0, 0, 1, -5.56362707e-08, 0, 5.56362707e-08, 1)
Part12.BottomSurface = Enum.SurfaceType.Smooth
Part12.TopSurface = Enum.SurfaceType.Smooth
Part12.Position = Vector3.new(49.5, 20.5750046, 52.3199997)
Part12.Color = Color3.new(0.105882, 0.164706, 0.207843)
weld(Model0)
for i,v in pairs(Model0:GetChildren()) do
if v:IsA("Part") and v.Color == Color3.new(1,0,0) then
v.Material = Enum.Material.Neon
end
end
return Model0
end

knife = createknife()
newWeld(rarm,knife.asd,0,-1,0)

----------------------------------------------------------------------------------------

function createpistol()
Model0 = Instance.new("Model")
Part1 = Instance.new("Part")
BlockMesh2 = Instance.new("BlockMesh")
Part3 = Instance.new("Part")
Part4 = Instance.new("Part")
Part5 = Instance.new("Part")
Part6 = Instance.new("Part")
Part7 = Instance.new("Part")
Part8 = Instance.new("Part")
Part9 = Instance.new("Part")
Part10 = Instance.new("Part")
Part11 = Instance.new("Part")
Part12 = Instance.new("Part")
Part13 = Instance.new("Part")
Part14 = Instance.new("Part")
Part15 = Instance.new("Part")
Part16 = Instance.new("Part")
Part17 = Instance.new("Part")
Part18 = Instance.new("Part")
Part19 = Instance.new("Part")
Model0.Name = "Pistol"
Model0.Parent = char
Part1.Name = "ShootPos"
Part1.Parent = Model0
Part1.BrickColor = BrickColor.new("Really black")
Part1.Anchored = true
Part1.CanCollide = false
Part1.Size = Vector3.new(0.100000001, 0.100000001, 0.0500000007)
Part1.CFrame = CFrame.new(-90, 10.5000019, 13.8957434, 1, 0, 0, 0, 1, -2.08616257e-07, 0, 2.08616257e-07, 1)
Part1.BottomSurface = Enum.SurfaceType.Smooth
Part1.TopSurface = Enum.SurfaceType.Smooth
Part1.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part1.Position = Vector3.new(-90, 10.5000019, 13.8957434)
Part1.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
BlockMesh2.Parent = Part1
BlockMesh2.Scale = Vector3.new(1, 1, 0.199999988)
BlockMesh2.Scale = Vector3.new(1, 1, 0.199999988)
Part3.Parent = Model0
Part3.BrickColor = BrickColor.new("Pearl")
Part3.Anchored = true
Part3.CanCollide = false
Part3.Size = Vector3.new(0.100000001, 0.550000012, 0.0500000007)
Part3.CFrame = CFrame.new(-90.0999985, 10.3750019, 13.8757429, 1, 0, 0, 0, 1, -2.08616257e-07, 0, 2.08616257e-07, 1)
Part3.BottomSurface = Enum.SurfaceType.Smooth
Part3.TopSurface = Enum.SurfaceType.Smooth
Part3.Color = Color3.new(0.905882, 0.905882, 0.92549)
Part3.Position = Vector3.new(-90.0999985, 10.3750019, 13.8757429)
Part3.Color = Color3.new(0.905882, 0.905882, 0.92549)
Part4.Parent = Model0
Part4.BrickColor = BrickColor.new("Pearl")
Part4.Anchored = true
Part4.CanCollide = false
Part4.Size = Vector3.new(0.300000012, 0.349999994, 0.0500000007)
Part4.CFrame = CFrame.new(-90, 10.2750025, 13.8757429, 1, 0, 0, 0, 1, -2.08616257e-07, 0, 2.08616257e-07, 1)
Part4.BottomSurface = Enum.SurfaceType.Smooth
Part4.TopSurface = Enum.SurfaceType.Smooth
Part4.Color = Color3.new(0.905882, 0.905882, 0.92549)
Part4.Position = Vector3.new(-90, 10.2750025, 13.8757429)
Part4.Color = Color3.new(0.905882, 0.905882, 0.92549)
Part5.Parent = Model0
Part5.BrickColor = BrickColor.new("Pearl")
Part5.Rotation = Vector3.new(15, 0, 0)
Part5.Anchored = true
Part5.CanCollide = false
Part5.Size = Vector3.new(0.200000003, 0.25, 0.150000006)
Part5.CFrame = CFrame.new(-90, 10.4379425, 15.8274469, 1, 0, 0, 0, 0.965925753, -0.258819252, 0, 0.258819252, 0.965925753)
Part5.BottomSurface = Enum.SurfaceType.Smooth
Part5.TopSurface = Enum.SurfaceType.Smooth
Part5.Color = Color3.new(0.905882, 0.905882, 0.92549)
Part5.Position = Vector3.new(-90, 10.4379425, 15.8274469)
Part5.Orientation = Vector3.new(15, 0, 0)
Part5.Color = Color3.new(0.905882, 0.905882, 0.92549)
Part6.Parent = Model0
Part6.BrickColor = BrickColor.new("Pearl")
Part6.Anchored = true
Part6.CanCollide = false
Part6.Size = Vector3.new(0.300000012, 0.550000012, 1.89999998)
Part6.CFrame = CFrame.new(-90, 10.3750019, 14.8507433, 1, 0, 0, 0, 1, -2.08616257e-07, 0, 2.08616257e-07, 1)
Part6.BottomSurface = Enum.SurfaceType.Smooth
Part6.TopSurface = Enum.SurfaceType.Smooth
Part6.Color = Color3.new(0.905882, 0.905882, 0.92549)
Part6.Position = Vector3.new(-90, 10.3750019, 14.8507433)
Part6.Color = Color3.new(0.905882, 0.905882, 0.92549)
Part7.Parent = Model0
Part7.BrickColor = BrickColor.new("Pearl")
Part7.Anchored = true
Part7.CanCollide = false
Part7.Size = Vector3.new(0.100000001, 0.0500000007, 0.0500000007)
Part7.CFrame = CFrame.new(-90.0999985, 10.6750021, 15.6257429, 1, 0, 0, 0, 1, -2.08616257e-07, 0, 2.08616257e-07, 1)
Part7.BottomSurface = Enum.SurfaceType.Smooth
Part7.TopSurface = Enum.SurfaceType.Smooth
Part7.Color = Color3.new(0.905882, 0.905882, 0.92549)
Part7.Position = Vector3.new(-90.0999985, 10.6750021, 15.6257429)
Part7.Color = Color3.new(0.905882, 0.905882, 0.92549)
Part8.Parent = Model0
Part8.BrickColor = BrickColor.new("Black")
Part8.Rotation = Vector3.new(-15, 0, 0)
Part8.Anchored = true
Part8.CanCollide = false
Part8.Size = Vector3.new(0.220000014, 0.5, 0.209999993)
Part8.CFrame = CFrame.new(-90, 9.71499538, 15.4898481, 1, 0, 0, 0, 0.965925872, 0.258818835, 0, -0.258818835, 0.965925872)
Part8.BottomSurface = Enum.SurfaceType.Smooth
Part8.TopSurface = Enum.SurfaceType.Smooth
Part8.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part8.Position = Vector3.new(-90, 9.71499538, 15.4898481)
Part8.Orientation = Vector3.new(-15, 0, 0)
Part8.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part9.Parent = Model0
Part9.BrickColor = BrickColor.new("Pearl")
Part9.Anchored = true
Part9.CanCollide = false
Part9.Size = Vector3.new(0.100000001, 0.550000012, 0.0500000007)
Part9.CFrame = CFrame.new(-89.9000015, 10.3750019, 13.8757429, 1, 0, 0, 0, 1, -2.08616257e-07, 0, 2.08616257e-07, 1)
Part9.BottomSurface = Enum.SurfaceType.Smooth
Part9.TopSurface = Enum.SurfaceType.Smooth
Part9.Color = Color3.new(0.905882, 0.905882, 0.92549)
Part9.Position = Vector3.new(-89.9000015, 10.3750019, 13.8757429)
Part9.Color = Color3.new(0.905882, 0.905882, 0.92549)
Part10.Parent = Model0
Part10.BrickColor = BrickColor.new("Pearl")
Part10.Anchored = true
Part10.CanCollide = false
Part10.Size = Vector3.new(0.100000001, 0.0500000007, 0.0500000007)
Part10.CFrame = CFrame.new(-89.9000015, 10.6750021, 15.6257429, 1, 0, 0, 0, 1, -2.08616257e-07, 0, 2.08616257e-07, 1)
Part10.BottomSurface = Enum.SurfaceType.Smooth
Part10.TopSurface = Enum.SurfaceType.Smooth
Part10.Color = Color3.new(0.905882, 0.905882, 0.92549)
Part10.Position = Vector3.new(-89.9000015, 10.6750021, 15.6257429)
Part10.Color = Color3.new(0.905882, 0.905882, 0.92549)
Part11.Parent = Model0
Part11.BrickColor = BrickColor.new("Pearl")
Part11.Anchored = true
Part11.CanCollide = false
Part11.Size = Vector3.new(0.200000003, 0.150000006, 0.600000024)
Part11.CFrame = CFrame.new(-90, 9.37500191, 15.6007433, 1, 0, 0, 0, 1, -2.08616257e-07, 0, 2.08616257e-07, 1)
Part11.BottomSurface = Enum.SurfaceType.Smooth
Part11.TopSurface = Enum.SurfaceType.Smooth
Part11.Color = Color3.new(0.905882, 0.905882, 0.92549)
Part11.Position = Vector3.new(-90, 9.37500191, 15.6007433)
Part11.Color = Color3.new(0.905882, 0.905882, 0.92549)
Part12.Parent = Model0
Part12.BrickColor = BrickColor.new("Pearl")
Part12.Rotation = Vector3.new(-30, 0, 0)
Part12.Anchored = true
Part12.CanCollide = false
Part12.Size = Vector3.new(0.100000001, 0.150000006, 0.0500000007)
Part12.CFrame = CFrame.new(-90, 9.97165203, 15.1132431, 1, 0, 0, 0, 0.866025448, 0.5, 0, -0.5, 0.866025448)
Part12.BottomSurface = Enum.SurfaceType.Smooth
Part12.TopSurface = Enum.SurfaceType.Smooth
Part12.Color = Color3.new(0.905882, 0.905882, 0.92549)
Part12.Position = Vector3.new(-90, 9.97165203, 15.1132431)
Part12.Orientation = Vector3.new(-30, 0, 0)
Part12.Color = Color3.new(0.905882, 0.905882, 0.92549)
Part13.Parent = Model0
Part13.BrickColor = BrickColor.new("Pearl")
Part13.Anchored = true
Part13.CanCollide = false
Part13.Size = Vector3.new(0.300000012, 0.100000001, 0.0500000007)
Part13.CFrame = CFrame.new(-90, 10.6000023, 13.8757429, 1, 0, 0, 0, 1, -2.08616257e-07, 0, 2.08616257e-07, 1)
Part13.BottomSurface = Enum.SurfaceType.Smooth
Part13.TopSurface = Enum.SurfaceType.Smooth
Part13.Color = Color3.new(0.905882, 0.905882, 0.92549)
Part13.Position = Vector3.new(-90, 10.6000023, 13.8757429)
Part13.Color = Color3.new(0.905882, 0.905882, 0.92549)
Part14.Parent = Model0
Part14.BrickColor = BrickColor.new("Pearl")
Part14.Rotation = Vector3.new(-30, 0, 0)
Part14.Anchored = true
Part14.CanCollide = false
Part14.Size = Vector3.new(0.200000003, 0.100000001, 0.25)
Part14.CFrame = CFrame.new(-90, 10.5216522, 15.9065447, 1, 0, 0, 0, 0.866025329, 0.49999997, 0, -0.49999997, 0.866025329)
Part14.BottomSurface = Enum.SurfaceType.Smooth
Part14.TopSurface = Enum.SurfaceType.Smooth
Part14.Color = Color3.new(0.905882, 0.905882, 0.92549)
Part14.Position = Vector3.new(-90, 10.5216522, 15.9065447)
Part14.Orientation = Vector3.new(-30, 0, 0)
Part14.Color = Color3.new(0.905882, 0.905882, 0.92549)
Part15.Parent = Model0
Part15.BrickColor = BrickColor.new("White")
Part15.Rotation = Vector3.new(-105, 0, 0)
Part15.Anchored = true
Part15.CanCollide = false
Part15.Size = Vector3.new(0.100000001, 0.200000003, 0.0500000007)
Part15.CFrame = CFrame.new(-90, 9.92812252, 15.2373915, 1, 0, 0, 0, -0.258819371, 0.965925813, 0, -0.965925813, -0.258819371)
Part15.BottomSurface = Enum.SurfaceType.Smooth
Part15.TopSurface = Enum.SurfaceType.Smooth
Part15.Color = Color3.new(0.94902, 0.952941, 0.952941)
Part15.Position = Vector3.new(-90, 9.92812252, 15.2373915)
Part15.Orientation = Vector3.new(-75, 180, 180)
Part15.Color = Color3.new(0.94902, 0.952941, 0.952941)
Part16.Name = "asd"
Part16.Parent = Model0
Part16.BrickColor = BrickColor.new("Pearl")
Part16.Rotation = Vector3.new(-15, 0, 0)
Part16.Anchored = true
Part16.CanCollide = false
Part16.Size = Vector3.new(0.200000003, 1.14999998, 0.400000006)
Part16.CFrame = CFrame.new(-90, 9.93709087, 15.5425692, 1, 0, 0, 0, 0.965925872, 0.258818835, 0, -0.258818835, 0.965925872)
Part16.BottomSurface = Enum.SurfaceType.Smooth
Part16.TopSurface = Enum.SurfaceType.Smooth
Part16.Color = Color3.new(0.905882, 0.905882, 0.92549)
Part16.Position = Vector3.new(-90, 9.93709087, 15.5425692)
Part16.Orientation = Vector3.new(-15, 0, 0)
Part16.Color = Color3.new(0.905882, 0.905882, 0.92549)
Part17.Parent = Model0
Part17.BrickColor = BrickColor.new("Pearl")
Part17.Anchored = true
Part17.CanCollide = false
Part17.Size = Vector3.new(0.100000001, 0.100000001, 0.0500000007)
Part17.CFrame = CFrame.new(-90, 10.0500021, 15.0757437, 1, 0, 0, 0, 1, -2.08616257e-07, 0, 2.08616257e-07, 1)
Part17.BottomSurface = Enum.SurfaceType.Smooth
Part17.TopSurface = Enum.SurfaceType.Smooth
Part17.Color = Color3.new(0.905882, 0.905882, 0.92549)
Part17.Position = Vector3.new(-90, 10.0500021, 15.0757437)
Part17.Color = Color3.new(0.905882, 0.905882, 0.92549)
Part18.Parent = Model0
Part18.BrickColor = BrickColor.new("Pearl")
Part18.Anchored = true
Part18.CanCollide = false
Part18.Size = Vector3.new(0.100000001, 0.0500000007, 0.0500000007)
Part18.CFrame = CFrame.new(-90, 10.6750021, 13.8757429, 1, 0, 0, 0, 1, -2.08616257e-07, 0, 2.08616257e-07, 1)
Part18.BottomSurface = Enum.SurfaceType.Smooth
Part18.TopSurface = Enum.SurfaceType.Smooth
Part18.Color = Color3.new(0.905882, 0.905882, 0.92549)
Part18.Position = Vector3.new(-90, 10.6750021, 13.8757429)
Part18.Color = Color3.new(0.905882, 0.905882, 0.92549)
Part19.Parent = Model0
Part19.BrickColor = BrickColor.new("Pearl")
Part19.Anchored = true
Part19.CanCollide = false
Part19.Size = Vector3.new(0.400000006, 0.200000003, 1.05000007)
Part19.CFrame = CFrame.new(-90, 10.1500015, 14.4757433, 1, 0, 0, 0, 1, -2.08616257e-07, 0, 2.08616257e-07, 1)
Part19.BottomSurface = Enum.SurfaceType.Smooth
Part19.TopSurface = Enum.SurfaceType.Smooth
Part19.Color = Color3.new(0.905882, 0.905882, 0.92549)
Part19.Position = Vector3.new(-90, 10.1500015, 14.4757433)
Part19.Color = Color3.new(0.905882, 0.905882, 0.92549)
for i,v in pairs(Model0:GetChildren()) do
if v:IsA("Part") then
v.Color = Color3.new(1,1,0)
v.Material = Enum.Material.Neon
v.Transparency = 0
v.CanCollide = false
end
end
weld(Model0)
return Model0
end

mode = "determination"
function justice()
mode = "justice"
for i=1,5 do rs:wait()
local asd = Vector3.new(math.random(-10000,10000)/10000,math.random(-10000,10000)/10000,math.random(-10000,10000)/10000)
Effect(Enum.MeshType.Brick,Vector3.new(1,1,1),0,Enum.Material.Neon,Color3.new(1,1,0),rarm.RightGripAttachment.WorldPosition+(asd*1),asd*360,Vector3.new(0.5,0.5,0.5),asd*1,0.1,0.0005)
end
knife:Destroy()
pistol = createpistol()
newWeld(rarm,pistol.asd,0,-1,0)
pistol.asd.Weld.C1 = CFrame.Angles(math.rad(110),0,0)
end

function determination()
mode = "determination"
for i=1,5 do rs:wait()
local asd = Vector3.new(math.random(-10000,10000)/10000,math.random(-10000,10000)/10000,math.random(-10000,10000)/10000)
Effect(Enum.MeshType.Brick,Vector3.new(1,1,1),0,Enum.Material.Neon,Color3.new(1,0,0),rarm.RightGripAttachment.WorldPosition+(asd*1),asd*360,Vector3.new(0.5,0.5,0.5),asd*1,0.1,0.0005)
end
pistol:Destroy()
knife = createknife()
newWeld(rarm,knife.asd,0,-1,0)
end

debounce = false
mouse.KeyDown:connect(function(key)
if debounce == false then
debounce = true
if key == "e" then
sound(462606062,root.Position,10,1)
if mode == "determination" then
justice()
elseif mode == "justice" then
determination()
end
end
delay(0.3,function() debounce = false end)
end
end)

----------------------------------------------------------------------------------------

function slash()
local spd = 0.2
for i=1,15 do rs:wait()
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.1)     *CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), spd)
hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)         *CFrame.Angles(math.rad(0),math.rad(-30),math.rad(0)), spd)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0) *CFrame.Angles(math.rad(0),math.rad(0),math.rad(-10)), spd)
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)  *CFrame.Angles(math.rad(160),math.rad(0),math.rad(10)), spd)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0)  *CFrame.Angles(math.rad(0),math.rad(-50),math.rad(10)), spd)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5,-0.95,0)*CFrame.Angles(math.rad(0),math.rad(50),math.rad(-10)), spd)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5,-0.95,0) *CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), spd)
end
sound(357417055,root.Position,10,1)
attacking = true
local spd = 0.4
for i=1,5 do rs:wait()
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.1)     *CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), spd)
hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)         *CFrame.Angles(math.rad(0),math.rad(80),math.rad(0)), spd)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0) *CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-20)), spd)
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)  *CFrame.Angles(math.rad(-10),math.rad(0),math.rad(0)), spd)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0)  *CFrame.Angles(math.rad(0),math.rad(80),math.rad(-20)), spd)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5,-0.95,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), spd)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5,-0.95,0) *CFrame.Angles(math.rad(0),math.rad(-80),math.rad(20)), spd)
end
end

mouse.Button1Down:connect(function()
if debounce == false and mode == "determination" then
alreadytouched = {}
noidle = true
debounce = true
slash()
attacking = false
noidle = false
delay(0.05,function() debounce = false end)
end
end)

-----------------------------
local jumped = false
function boom()
freeze = true
sound(446961725,root.Position,10,1)
local bg = Instance.new("BodyGyro",root)
bg.Name = "lolnochara"
bg.P = 10000
bg.D = 100
bg.MaxTorque = Vector3.new(9e9,9e9,9e9)
if jumped == false then
root.CFrame = CFrame.new(root.Position,Vector3.new(mouse.Hit.x,root.Position.Y,mouse.Hit.z))
bg.CFrame = CFrame.new(root.Position,Vector3.new(mouse.Hit.x,root.Position.Y,mouse.Hit.z))
else
root.CFrame = CFrame.new(root.Position,mouse.Hit.p)
bg.CFrame = CFrame.new(root.Position,mouse.Hit.p)
end

local spd = 0.2
for i=1,20 do rs:wait()
if jumped == false then
bg.CFrame = CFrame.new(root.Position,Vector3.new(mouse.Hit.x,root.Position.Y,mouse.Hit.z))
else
bg.CFrame = CFrame.new(root.Position,mouse.Hit.p)
end
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.1)     *CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), spd)
hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)         *CFrame.Angles(math.rad(0),math.rad(90),math.rad(0)), spd)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0) *CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), spd)
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)  *CFrame.Angles(math.rad(45),math.rad(0),math.rad(90)), spd)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0)  *CFrame.Angles(math.rad(0),math.rad(90),math.rad(0)), spd)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5,-0.95,0)*CFrame.Angles(math.rad(0),math.rad(-5),math.rad(0)), spd)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5,-0.95,0) *CFrame.Angles(math.rad(0),math.rad(-20),math.rad(0)), spd)
end

bg:Destroy()

sound(470245800,root.Position,10,1)

local Part0 = Instance.new("Part",DebrisModel)
Part0.Name = "Bullet"
Part0.Material = Enum.Material.Neon
Part0.Color = Color3.new(1,1,0)
Part0.Anchored = true
local mesh = Instance.new("SpecialMesh",Part0)
mesh.MeshType = Enum.MeshType.Brick
Part0.CanCollide = false
local Position = rarm.Position
local Target = mouse.Hit.p
local direction = Target - Position
local direction = computeDirection(direction)
local ray = Ray.new(Position, (Target-Position).unit*1048)
local part, endPoint = workspace:FindPartOnRay(ray, char)
Part0.Size = Vector3.new(5,1,5)
mesh.Scale = Vector3.new(1,(Position-endPoint).magnitude+5,1)
local pos = Position + (direction * (mesh.Scale.Y/2))
Part0.CFrame = CFrame.new(pos,  pos + direction) * CFrame.Angles((math.pi/2)+math.rad(180), 0, 0)
local loop = nil
local i = 0
rs:connect(function()
local lole = (i/10)
mesh.Scale = Vector3.new(lole,mesh.Scale.Y,lole)
Part0.Transparency = Part0.Transparency + 0.1
i = i + 1
if Part0.Transparency >= 1 then
Part0:Destroy()
end
end)

if part and part.Parent:FindFirstChildOfClass("Humanoid") and checkIfNotPlayer(part) == true then
coroutine.resume(coroutine.create(function()
sound(388826051,part.Position,10,1)
ded(part.Parent)
end))
end

local spd = 0.5
for i=1,10 do rs:wait()
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.1)     *CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), spd)
hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)         *CFrame.Angles(math.rad(0),math.rad(90),math.rad(0)), spd)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0) *CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), spd)
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)  *CFrame.Angles(math.rad(45),math.rad(40),math.rad(90)), spd)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0)  *CFrame.Angles(math.rad(0),math.rad(90),math.rad(0)), spd)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5,-0.95,0)*CFrame.Angles(math.rad(0),math.rad(-5),math.rad(0)), spd)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5,-0.95,0) *CFrame.Angles(math.rad(0),math.rad(-20),math.rad(0)), spd)
end

freeze = false

end

mouse.Button1Down:connect(function()
if debounce == false and mode == "justice" then
alreadytouched = {}
noidle = true
debounce = true
boom()
attacking = false
noidle = false
delay(0.05,function() debounce = false end)
end
end)

----------------------------------------------------------------------------------------
velocityYFall=0
velocityYFall2=0
velocityYFall3=0
velocityYFall4=0
neckrotY=0
neckrotY2=0
torsorotY=0
torsorotY2=0
torsoY=0
torsoY2=0
colored = 0
sine = 0
change=0.4
movement=5
timeranim=0
running = false
glitched = false
backup = hed.Weld.C1
glitchedC1 = hed.Weld.C1

mouse.KeyDown:connect(function(key)
key = string.lower(key)
if string.byte(key) == 48 then
running = true
local keyup = mouse.KeyUp:connect(function(key)
if string.byte(key) == 48 then
running = false
end
end)
repeat rs:wait() until running == false
keyup:disconnect()
end
end)

icolor=1
imode=false

didjump = false
jumppower = 0
freeze = false
debounceimpact = false

function jumpimpact()
if debounceimpact == false then
debounceimpact = true
if jumppower < -150 then jumppower = -150 end
shake(-jumppower/5)
for i=1,-jumppower/20 do rs:wait()
hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.Angles(0,0,0), 0.05)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, (jumppower/20)*size-hum.HipHeight, 0) * CFrame.Angles(math.rad(0),math.rad(0), math.rad(0)), 0.05)
end
debounceimpact = false
end
end

local sond = nil
rs:connect(function()

if not torso:FindFirstChild("STATICSOUND") then
sond=Instance.new("Sound",torso)
sond.Name = "STATICSOUND"
sond.SoundId = "rbxassetid://223103466"
sond.Looped = true
sond:Play()
end

if icolor > 1 then
imode = false
elseif icolor < 0 then
imode = true
end

if imode == true then
icolor = icolor + 0.01
else
icolor = icolor - 0.01
end

for i,v in pairs(emitters) do
v.Acceleration = root.CFrame.upVector*(666/100)
end

if p.Character.Parent == nil then
local model = Instance.new("Model")
model.Name = p.Name
p.Character = model
for i,v in pairs(char:GetChildren()) do
v.Parent = p.Character
end
end

char = p.Character
if p.Character.Parent ~= workspace then
p.Character.Parent = workspace
end
for i,v in pairs(char:GetChildren()) do
if v:IsA("Accoutrement") then
if v.Handle:FindFirstChild("Mesh") then
v.Handle:FindFirstChild("Mesh").Offset = Vector3.new()
v.Handle.Transparency = 0
end
elseif v:IsA("BasePart") then
v.Anchored = false
if v:FindFirstChildOfClass("BodyPosition") then
v:FindFirstChildOfClass("BodyPosition"):Destroy()
end
if v:FindFirstChildOfClass("BodyVelocity") then
v:FindFirstChildOfClass("BodyVelocity"):Destroy()
end
if v:FindFirstChildOfClass("BodyGyro") and v:FindFirstChildOfClass("BodyGyro").Name ~= "lolnochara" then
v:FindFirstChildOfClass("BodyGyro"):Destroy()
end
if v:FindFirstChild("Mesh") then
v:FindFirstChild("Mesh").Offset = Vector3.new()
end
if not DebrisModel:FindFirstChild(v.Name.."FORCEFIELD") then
local force = Instance.new("Part",DebrisModel)
force.Name = v.Name.."FORCEFIELD"
force.Size = v.Size+(Vector3.new(1,1,1)*0.2)
force.CanCollide = false
force.Transparency = 1
newWeld(v,force,0,0,0)
else
if not DebrisModel:FindFirstChild(v.Name.."FORCEFIELD"):FindFirstChildOfClass("Weld") then
newWeld(v,DebrisModel:FindFirstChild(v.Name.."FORCEFIELD"),0,0,0)
end
end
if v.Name ~= "HumanoidRootPart" then
v.Transparency = 0
else
v.Transparency = 1
end
end
end

if mode == "determination" then
trail.Enabled = true
else
trail.Enabled = false
end

if freeze == false then
if running == false then
hum.WalkSpeed = 12*size
change=0.4
movement=5
else
hum.WalkSpeed = (666/10)*size
if (torso.Velocity*Vector3.new(1, 0, 1)).magnitude >= 5*size then
change=1
else
change=0.4
end
movement=15
end
else
hum.WalkSpeed = 1
change=0.4
movement=5
end

if -root.Velocity.Y/1.5 > -5 and -root.Velocity.Y/1.5 < 150 then
velocityYFall = root.Velocity.Y/1.5
else
if -root.Velocity.Y/1.5 < -5 then
velocityYFall = 5
elseif -root.Velocity.Y/1.5 > 150 then
velocityYFall = -150
end
end

if -root.Velocity.Y/180 > 0 and -root.Velocity.Y/180 < 1.2 then
velocityYFall2 = root.Velocity.Y/180
else
if -root.Velocity.Y/180 < 0 then
velocityYFall2 = 0
elseif -root.Velocity.Y/180 > 1.2 then
velocityYFall2 = -1.2
end
end

if -root.Velocity.Y/1.5 > -5 and -root.Velocity.Y/1.5 < 50 then
velocityYFall3 = root.Velocity.Y/1.5
else
if -root.Velocity.Y/1.5 < -5 then
velocityYFall3 = 5
elseif -root.Velocity.Y/1.5 > 50 then
velocityYFall3 = -50
end
end

if -root.Velocity.Y/1.5 > -50 and -root.Velocity.Y/1.5 < 20 then
velocityYFall4 = root.Velocity.Y/1.5
else
if -root.Velocity.Y/180 < -5 then
velocityYFall4 = 5
elseif -root.Velocity.Y/180 > 50 then
velocityYFall4 = -50
end
end

if root.RotVelocity.Y/6 < 1 and root.RotVelocity.Y/6 > -1 then
neckrotY = root.RotVelocity.Y/6
else
if root.RotVelocity.Y/6 < -1 then
neckrotY = -1
elseif root.RotVelocity.Y/6 > 1 then
neckrotY = 1
end
end

if root.RotVelocity.Y/8 < 0.6 and root.RotVelocity.Y/8 > -0.6 then
neckrotY2 = root.RotVelocity.Y/8
else
if root.RotVelocity.Y/8 < -0.6 then
neckrotY2 = -0.6
elseif root.RotVelocity.Y/8 > 0.6 then
neckrotY2 = 0.6
end
end

if root.RotVelocity.Y/6 < 0.2 and root.RotVelocity.Y/6 > -0.2 then
torsorotY = root.RotVelocity.Y/6
else
if root.RotVelocity.Y/6 < -0.2 then
torsorotY = -0.2
elseif root.RotVelocity.Y/6 > 0.2 then
torsorotY = 0.2
end
end

if root.RotVelocity.Y/8 < 0.2 and root.RotVelocity.Y/8 > -0.2 then
torsorotY2 = root.RotVelocity.Y/8
else
if root.RotVelocity.Y/8 < -0.2 then
torsorotY2 = -0.2
elseif root.RotVelocity.Y/8 > 0.2 then
torsorotY2 = 0.2
end
end

torsoY = -(torso.Velocity*Vector3.new(1, 0, 1)).magnitude/20
torsoY2 = -(torso.Velocity*Vector3.new(1, 0, 1)).magnitude/36

local ray1 = Ray.new(root.Position+Vector3.new(size,0,0),Vector3.new(0, -4*size, 0))
local part1, endPoint = workspace:FindPartOnRay(ray1, char)
local ray2 = Ray.new(root.Position-Vector3.new(size,0,0),Vector3.new(0, -4*size, 0))
local part2, endPoint = workspace:FindPartOnRay(ray2, char)
local ray3 = Ray.new(root.Position+Vector3.new(0,0,size/2),Vector3.new(0, -4*size, 0))
local part3, endPoint = workspace:FindPartOnRay(ray3, char)
local ray4 = Ray.new(root.Position-Vector3.new(0,0,size/2),Vector3.new(0, -4*size, 0))
local part4, endPoint = workspace:FindPartOnRay(ray4, char)
local ray = Ray.new(root.Position,Vector3.new(0, -6, 0))
local part, endPoint = workspace:FindPartOnRay(ray, char)

if part1 or part2 or part3 or part4 then jumped = false else endPoint = 0 jumped = true end

local rlegray = Ray.new(rleg.Position+Vector3.new(0,size/2,0),Vector3.new(0, -1.75*size, 0))
local rlegpart, rlegendPoint = workspace:FindPartOnRay(rlegray, char)

local llegray = Ray.new(lleg.Position+Vector3.new(0,size/2,0),Vector3.new(0, -1.75*size, 0))
local llegpart, llegendPoint = workspace:FindPartOnRay(llegray, char)

if hum.Health > 0 and noidle == false then
if (torso.Velocity*Vector3.new(1, 0, 1)).magnitude >= 5 and jumped == false then
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new((change/5)*math.sin(sine/4), 1.5, -.2) * CFrame.Angles(math.rad((torso.Velocity*Vector3.new(1, 0, 1)).magnitude/35),torsorotY, math.rad(0)+torsorotY), 0.4)
hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.Angles((change/10)*math.cos(sine/2)+0.1,-(change/10)*math.cos(sine/4)-(torsorotY/5),(change/2)*math.sin(sine/4)), 0.1)
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62-(movement/40)*math.cos(sine/4)/3,(movement/150)+(movement/40)*math.cos(sine/4))*CFrame.Angles(math.rad(-5-(movement*2)*math.cos(sine/4))+ -(movement/10)*math.sin(sine/4),math.rad(0-(movement*2)*math.cos(sine/4)),math.rad(0)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62+(movement/40)*math.cos(sine/4)/3,(movement/150)-(movement/40)*math.cos(sine/4))*CFrame.Angles(math.rad(-5+(movement*2)*math.cos(sine/4))+ (movement/10)*math.sin(sine/4),math.rad(0-(movement*2)*math.cos(sine/4)),math.rad(0)), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.05+(change/2)*math.cos(sine/2), 0) * CFrame.Angles(math.rad(-(change*20)-(movement/20)*math.cos(sine/2)), torsorotY2+math.rad(0-4*math.cos(sine/4)), torsorotY2+math.rad(0-1*math.cos(sine/4))), 0.1)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5,(-0.85-(movement/15)*math.cos(sine/4)/2),-0.1+(movement/15)*math.cos(sine/4))*CFrame.Angles(math.rad(-10+(change*5)-movement*math.cos(sine/4))+ -(movement/10)*math.sin(sine/4),math.rad(0+(movement*2)*math.cos(sine/4)),math.rad(0)), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5,(-0.85+(movement/15)*math.cos(sine/4)/2),-0.1-(movement/15)*math.cos(sine/4))*CFrame.Angles(math.rad(-10+(change*5)+movement*math.cos(sine/4))+ (movement/10)*math.sin(sine/4),math.rad(0+(movement*2)*math.cos(sine/4)),math.rad(0)), 0.2)
elseif jumped == true then
didjump = true
jumppower = root.Velocity.Y
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.1) * CFrame.Angles(0,0,0), 0.4)
hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.Angles(math.rad(-velocityYFall3/5),0,0), 0.1)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55-velocityYFall3/70,0)*CFrame.Angles(math.rad(-velocityYFall3/10),math.rad(0),math.rad(velocityYFall)), 0.2)
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55-velocityYFall3/70,0)*CFrame.Angles(math.rad(-velocityYFall3/10),math.rad(0),math.rad(-velocityYFall)), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(velocityYFall3/10),math.rad(0), math.rad(0)), 0.1)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5,-0.925,0)*CFrame.Angles(math.rad(-35),math.rad(0),math.rad(-2)), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5,0,-0.8)*CFrame.Angles(math.rad(-25),math.rad(0),math.rad(2)), 0.2)
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 5*size then
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5*size, -.1*size) * CFrame.Angles(math.rad((torso.Velocity*Vector3.new(1, 0, 1)).magnitude/35),0, 0), 0.4)
hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.Angles(0.05*math.cos(sine/16)+0.15,0.05*math.cos(sine/32),0.01*math.cos(sine/32)), 0.1)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5*size,0.55*size-(0.1*size)*math.cos(sine/16)/3,-0.05-0.1*size*math.cos(sine/16))*CFrame.Angles(math.rad(-2+4*math.cos(sine/16)),math.rad(-5-5*math.cos(sine/16)),math.rad(-6+2*math.cos(sine/16))), 0.2)
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5*size,0.55*size-(0.1*size)*math.cos(sine/16)/3,-0.05-0.1*size*math.cos(sine/16))*CFrame.Angles(math.rad(-2+4*math.cos(sine/16)),math.rad(5+5*math.cos(sine/16)),math.rad(6-2*math.cos(sine/16))), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.1*size-(0.1*size)*math.cos(sine/16)-hum.HipHeight, 0) * CFrame.Angles(math.rad(0-2*math.cos(sine/16)),math.rad(0), math.rad(0-1*math.cos(sine/32))), 0.1)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(0,llegendPoint.Y-lleg.Position.Y,0)*CFrame.new(-0.5*size,0*size+(0.1*size)*math.cos(sine/16),0)*CFrame.Angles(math.rad(0+2*math.cos(sine/16)),math.rad(10+2*math.cos(sine/16)),math.rad(-5+1*math.cos(sine/32))), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0,rlegendPoint.Y-rleg.Position.Y,0)*CFrame.new(0.5*size,0*size+(0.1*size)*math.cos(sine/16),0)*CFrame.Angles(math.rad(0+2*math.cos(sine/16)),math.rad(-10-2*math.cos(sine/16)),math.rad(5+1*math.cos(sine/32))), 0.2)
end
end
if didjump == true and jumped == false and jumppower < 0 then
didjump = false
jumpimpact()
end

local chance = math.random(0,10000)/100
if chance <= 5 + (kills/2) then
if glitched == false then
backup = hed.Weld.C1
end
if torso:FindFirstChild("MusicRuin") then
equalizer.HighGain = 0
equalizer.MidGain = -20
equalizer.LowGain = -80
end
hed.Weld.C1 = glitchedC1
local glitch_color = Color3.fromHSV(math.random(0,1000)/1000,1,1)
hed.Color = glitch_color
torso.Color = glitch_color
rarm.Color = glitch_color
larm.Color = glitch_color
rleg.Color = glitch_color
lleg.Color = glitch_color
shake(5)
glitched = true
hed.face.Texture = "rbxassetid://435233416"
sond:Resume()
else
if glitched == true then
glitched = false
hed.Weld.C1 = backup
glitchedC1 = backup*CFrame.Angles(math.rad(math.random(-40,40)),math.rad(math.random(-40,40)),math.rad(math.random(-20,20)))
end
if torso:FindFirstChild("MusicRuin") then
equalizer.HighGain = 0
equalizer.MidGain = 0
equalizer.LowGain = 0
end
hed.BrickColor = skin_color
torso.BrickColor = skin_color
rarm.BrickColor = skin_color
larm.BrickColor = skin_color
rleg.BrickColor = skin_color
lleg.BrickColor = skin_color
hed.face.Texture = "rbxassetid://422627909"
sond:Pause()
end

timeposition = soundz.TimePosition
sine = sine + change
hum.Health = math.huge
hum.MaxHealth = math.huge
end)