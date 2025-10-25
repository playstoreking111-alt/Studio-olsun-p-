game:GetService("StarterGui"):SetCore("SendNotification", { 
	Title = "ban_notification";
	Text = "This script is converted by ban_thid";
	Icon = "rbxthumb://type=Asset&id=71967665601624&w=150&h=150"})
Duration = 15;

local Object = game:GetObjects("rbxassetid://5760009753")[1]  
Object.Parent = game.Workspace
script = Object.Split

	local AHB = Instance.new("BindableEvent")
	
	local FPS = 30
	
	local TimeFrame = 0
	
	local LastFrame = tick()
	local Frame = 1/FPS
	
	game:service'RunService'.Heartbeat:connect(function(s,p)
		TimeFrame = TimeFrame + s
		if(TimeFrame >= Frame)then
			for i = 1,math.floor(TimeFrame/Frame) do
				AHB:Fire()
			end
			LastFrame=tick()
			TimeFrame=TimeFrame-Frame*math.floor(TimeFrame/Frame)
		end
	end)


	function swait(dur)
		if(dur == 0 or typeof(dur) ~= 'number')then
			AHB.Event:wait()
		else
			for i = 1, dur*FPS do
				AHB.Event:wait()
			end
		end
	end

--made by helkern	
wait(1/60)	
player = game:GetService("Players").LocalPlayer
mouse = player:GetMouse()
character = player.Character
playergui = player.PlayerGui

humanoid = character.Humanoid
rootpart = character.HumanoidRootPart
head = character.Head
torso = character.Torso
rightarm = character["Right Arm"]
leftarm = character["Left Arm"]
rightleg = character["Right Leg"]
leftleg = character["Left Leg"]

rootjoint = rootpart.RootJoint
neck = torso.Neck
rightshoulder = torso["Right Shoulder"]
leftshoulder = torso["Left Shoulder"]
righthip = torso["Right Hip"]
lefthip = torso["Left Hip"]


song = Instance.new("Sound",torso)

cf = CFrame.new
d = cf(0,0,0)
vt = Vector3.new
random = math.random
cos = math.cos
sin = math.sin
rad = math.rad
angles = CFrame.Angles

tweenservice = game:GetService("TweenService")
debris = game:GetService("Debris")

sine = 0
mousehold,keyhold = false,false
rooted = false
attack = false
rootc0 = cf(0, 0, 0) * angles(rad(-90), rad(0), rad(180))
neckc0 = cf(0, 1, 0) * angles(rad(-90), rad(0), rad(180))
change = 1
effects = Instance.new("Folder",character)
effects.Name = "effects lol"
if humanoid.Animator then humanoid.Animator:Destroy() end
anim = "idle"
movelegs = false

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "ArtificialHB"
script:WaitForChild("ArtificialHB")
frame = 1/60
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


function Swait(n)
	if n == 0 or n == nil then
		ArtificialHB.Event:wait()
	else
		for i = 1, n do
			ArtificialHB.Event:wait()
		end
	end
end

function part(parent, mat, transp, color, size, anchored, shape)
	local p = Instance.new("Part")
	p.Transparency = transp
	p.CanCollide = false
	p.Locked = true
	if not type(anchored) == "boolean" then
	p.Anchored = true	
	end
	p.Anchored = anchored
	p.Color = color
	p.Size = size
	p.Position = rootpart.Position
	p.Material = mat
	p.Parent = parent
	if shape then
	if shape == "ball" then
	local m = Instance.new("SpecialMesh",p)
	m.MeshType = "Sphere"	
	end	
	end
	return p
end

function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
end

function weld(parent, part0, part1, c0, c1)
	local w = Instance.new("Weld")
	w.Part0 = part0
	w.Part1 = part1
	w.C0 = c0
	w.C1 = c1
	w.Parent = parent
	return w
end

function sound(id, parent, vol, pitch, playonremove)
		local so = Instance.new("Sound")
		so.EmitterSize = 5*vol
		so.Parent = parent
		so.Volume = vol
		so.Pitch = pitch
		so.SoundId = "rbxassetid://"..id
		so.PlayOnRemove = true
		so:Play()
	return so
end

function debree(col,mat,transp,pos,amnt,size,cleartime,power)
		for i = 1, amnt do
			local db = part(effects,mat,transp,col,size,false)
			db.CFrame = pos*randomangle()
			db.Velocity = randompos(power)
			coroutine.resume(coroutine.create(function()
				Swait(15)
				db.Parent = workspace
				db.CanCollide = true
				delay(cleartime,function()
				Tween(db,{Transparency = 1},"Linear","InOut",.8)
				debris:AddItem(db,cleartime+.01)	
				end)	
			end))
		end
end

function arc(p,location,timer,height)
		local dir = cf(p.Position,location)
		local dist = (p.Position-location).magnitude
		for i = 1, timer*1.2 do
			Swait()
			p.CFrame = dir*cf(0,(timer/200)+((timer/height)-((i*2)/height)),-dist/timer)
			dir = p.CFrame
		end
		p:Destroy()
end

function Tween(obj,prop,easing,easingdir,timer)
local easin = Enum.EasingStyle[easing]
local easindir = Enum.EasingDirection[easingdir]
local tweeninf = TweenInfo.new(
	timer/1,	
	easin,
	easindir,
	0,
	false,
	0
)
local props = prop
local tweenanim = tweenservice:Create(obj,tweeninf,props)
tweenanim:Play()
end

function raycast(pos, dir, range, ignore)
	return workspace:FindPartOnRay(Ray.new(pos, dir.unit * range), ignore)
end

function castray(start, endp, dist, ignore)
	local dir = cf(start,endp).lookVector
	return raycast(start, dir, dist, ignore)
end

function Effect(tblee)
	coroutine.resume(coroutine.create(function()
		local origpos = (tblee.cf or nil)
		local moveto = (tblee.moveto or nil)
		local color = (tblee.clr or Color3.new(0,0,0))
		local color2 = (tblee.clr2 or nil)
		local defaultsize = (tblee.size or vt(2,2,2))
		local material = (tblee.mat or "Neon")
		local locker = (tblee.lock or false)
		local rotateX = (tblee.radX or 0)
		local rotateY = (tblee.radY or 0)
		local rotateZ = (tblee.radZ or 0)
		local secondsize = (tblee.size2 or vt(4,4,4))
		local acttime = (tblee.waits or 100)
		local transpar = (tblee.tran or 0)
		local transpar2 = (tblee.tran2 or 1)
		local typeofmesh = (tblee.mtype or "S")
		local movingspeed = nil
		local mesh = nil
		if typeof(origpos) == "Vector3"then origpos=cf(origpos) end 
		if typeof(moveto) == "CFrame"then moveto=moveto.p end 
		if typeof(color) == "BrickColor"then color=color.Color end 
		if typeof(color2) == "BrickColor"then color2=color2.Color end
		if origpos then
		local p=Instance.new("Part",effects)p.Anchored=true p.CanCollide=false p.Color=color p.CFrame=origpos p.Material=material p.Size=Vector3.new(1,1,1)p.CanCollide=false p.Transparency=transpar p.CastShadow=false p.Locked=true
		if typeofmesh == "Box" or typeofmesh == "B" or typeofmesh == "1" then
			mesh=Instance.new("BlockMesh",p)mesh.Scale=defaultsize
		elseif typeofmesh == "Sphere" or typeofmesh == "S" or typeofmesh == "2" then
			mesh=Instance.new("SpecialMesh",p)mesh.MeshType="Sphere"mesh.Scale=defaultsize
		elseif typeofmesh == "Cylinder" or typeofmesh == "C" or typeofmesh == "3" then
			mesh=Instance.new("SpecialMesh",p)mesh.MeshType="Cylinder"mesh.Scale=defaultsize
		elseif typeofmesh == "Slash" or typeofmesh == "SL" or typeofmesh == "4" then
			mesh=Instance.new("SpecialMesh",p)mesh.MeshType="FileMesh"mesh.MeshId="rbxassetid://662585058"mesh.Scale = vt(defaultsize.X/10,0,defaultsize.X/10)
		elseif typeofmesh == "Wave" or typeofmesh == "W" or typeofmesh == "5" then
			mesh=Instance.new("SpecialMesh",p)mesh.MeshType="FileMesh"mesh.MeshId="rbxassetid://20329976"mesh.Scale = vt(0,0,-defaultsize.X/8)
		end
		if locker == true then
			p.Position = origpos.p
			if typeofmesh == "Cylinder" or typeofmesh == "C" or typeofmesh == "3" then 
				p.CFrame = cf(p.Position,moveto)*cf(0,0,-(p.Size.Z/1.5))*angles(0,rad(90),0)
			else
				p.CFrame = cf(p.Position,moveto)*cf(0,0,-(p.Size.Z/1.5))
			end
		else
			if typeofmesh == "Cylinder" or typeofmesh == "C" or typeofmesh == "3" then 
				p.CFrame = origpos*CFrame.Angles(0,math.rad(90),0)
			else
				p.CFrame = origpos
			end
		end
		if mesh then
			if  moveto then
				movingspeed=(origpos.p - moveto).Magnitude/acttime
			end
			local endsize=(defaultsize - secondsize)
			local endtranpar=transpar-transpar2
			for i = 1, acttime+1 do Swait()
				mesh.Scale=mesh.Scale-endsize/acttime
				p.Transparency = p.Transparency - endtranpar/acttime
				p.CFrame=p.CFrame*CFrame.Angles(math.rad(rotateX),math.rad(rotateY),math.rad(rotateZ))
				if color2 then
					p.Color = color:Lerp(color2,i/acttime)
				end
				if moveto ~= nil then
					local a = p.Orientation
					if typeofmesh == "Cylinder" or typeofmesh == "C" or typeofmesh == "3" then 
						p.CFrame = CFrame.new(p.Position,moveto)*CFrame.new(0,0,-movingspeed)*CFrame.Angles(0,math.rad(90),0)
					else
						p.CFrame = CFrame.new(p.Position,moveto)*CFrame.new(0,0,-movingspeed)
					end
					p.Orientation = a
				end
			end
			p:Destroy()
		end
		elseif origpos == nil then
		warn("Origpos is nil!")
		end
	end))
end

function FindNearestHead(Position, Distance, SinglePlayer)
	if SinglePlayer then
		return (SinglePlayer.Torso.CFrame.p - Position).magnitude < Distance
	end
	local List = {}
	for i, v in pairs(workspace:GetChildren()) do
		if v:IsA("Model") then
			if v:findFirstChild("Head") then
				if v ~= character then
					if (v.Head.Position - Position).magnitude <= Distance then
						table.insert(List, v)
					end 
				end 
			end 
		end 
	end
	return List
end

function attcf(p)
	return p.Parent.CFrame*cf(p.Position)
end

function randomangle()
	return angles(rad(random(1,360)),rad(random(1,360)),rad(random(1,360)))
end

function randompos(num,typ)
	if typ == "vt" or not typ then
		return vt(random(-num,num),random(-num,num),random(-num,num))
	elseif typ == "cf" then
		return cf(random(-num,num),random(-num,num),random(-num,num))
	end
end

function soundtopos(pos,id,pitch,vol)
	if typeof(pos) == "Vector3" then pos = cf(pos) end
	local spart = part(workspace,"Plastic",1,Color3.new(),vt(1,1,1),true)
	spart.CFrame = pos
	sound(id,spart,vol,pitch,true)
	debris:AddItem(spart,.05)
	return spart
end

function deathfunction(model)
	if model ~= character then
	model:BreakJoints()
	for _, c in pairs(model:GetChildren()) do
		if c:IsA("BasePart") and c.Name ~= "HumanoidRootPart" then
			if c.Name == "Head" then
				
				elseif c.Name ~= "HumanoidRootPart" then
					
			end
		end
	end
	debris:AddItem(model,6)
	end
end


function applydamage(0,0)
	damage = damage
	if humanoid.Health < 2000 then
		if humanoid.Health - damage hit 0 then
			humanoid.Health = humanoid.Health - damage
		else
			deathfunction(humanoid.Parent)
		end
	else
		deathfunction(humanoid.Parent)
	end
end

function aoe(pos,range,min,max,fling,0,knock)
	for index, ch in pairs(workspace:GetDescendants()) do
		if ch.ClassName == "Model" and ch ~= character then
			local hum = ch:FindFirstChildOfClass("Humanoid")
			if hum  and hum.Parent then
				local torso = ch:FindFirstChild("Torso") or ch:FindFirstChild("UpperTorso")
				if torso then
					if (torso.Position - pos).Magnitude <= range then
						if instakill == false then
							deathfunction(ch)
						else
							local dmag = random(0,0)
							applydamage(0,0)
						end
						if fling > 0 then
							for _, c in pairs(ch:GetChildren()) do
								if c:IsA("BasePart") then
									local bv = Instance.new("BodyVelocity") 
									bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
									bv.velocity = cf(pos,torso.Position).lookVector*fling bv.Parent = c debris:AddItem(bv,.05)
								end
							end
						end
						if knock and knock == true then
							if ch:FindFirstChild("HumanoidRootPart") then
								ch.HumanoidRootPart.CFrame = ch.HumanoidRootPart.CFrame*randomangle()
							end
						else	
						end
					end
				end
			end
		end
	end
end



songid = 4826887888
speed = 75
humanoid.WalkSpeed = speed

for _,v in next, humanoid:GetPlayingAnimationTracks() do
	 v:Stop();
end
character.Animate.Parent = nil

local la = Instance.new("Weld")
local ra = Instance.new("Weld")
rightshoulder.Parent = nil
leftshoulder.Parent = nil
ra.Name = "ra"
ra.Part0 = torso 
ra.C0 = cf(1.5, 0.5, 0)
ra.C1 = cf(0, 0.5, 0)
ra.Part1 = rightarm
ra.Parent = torso  

la.Name = "la"
la.Part0 = torso 
la.C0 = cf(-1.5, 0.5, 0)
la.C1 = cf(0, 0.5, 0) 
la.Part1 = leftarm
la.Parent = torso

local lh = weld(leftleg,torso,leftleg,cf(-.5,-1,0),d)
lh.C1 = cf(0,1,0)
local rh = weld(rightleg,torso,rightleg,cf(.5,-1,0),d)
rh.C1 = cf(0,1,0)

armor = script.armor
player:ClearCharacterAppearance()
script.bc.Parent = character
if head:FindFirstChild("face") then
head.face.Transparency = 1	
end	
head.Transparency = 1
fla,fra,ftor,frl,fll,fhed = weld(leftarm,armor.la,leftarm,d,d),weld(rightarm,armor.ra,rightarm,d,d),weld(torso,armor.tors,torso,d,d),weld(rightleg,armor.rl,rightleg,d,d),weld(leftleg,armor.ll,leftleg,d,d),weld(head,armor.hed,head,d,d)
for _,c in pairs(armor:GetDescendants()) do if c:IsA("BasePart") then c.Anchored = false end end
leftw,rightw = armor.hed.leftw,armor.hed.rightw
armor.Parent = character
rightgun,leftgun = script.rightgun,script.leftgun
righthole,lefthole = rightgun.hole,leftgun.hole
rightgunweld,leftgunweld = weld(rightgun.joint2,rightgun.joint2,rightarm,d,cf(0,-1,0)*angles(rad(88),rad(0),rad(90))),weld(leftgun.joint2,leftgun.joint2,leftarm,d,cf(0,-1,0)*angles(rad(88),rad(0),rad(90)))
for _,c in pairs(leftgun:GetChildren()) do c.Anchored = false end
for _,c in pairs(rightgun:GetChildren()) do c.Anchored = false end
combo = 1
colors = {Color3.fromRGB(170, 85, 0),Color3.fromRGB(50, 50, 50)}
bomb = script.bomb
bomb.Parent = nil
efcols = {Color3.new(1,1,1),Color3.fromRGB(112,112,112)}
explodesounds = {4307076623,4307076381,4307076141}
--[[
sounds for future ref

]]

function cs()
	if songid == 4826887888 then
		songid = 4812867479
	elseif songid == 4812867479 then
		songid = 4827999154
	elseif songid == 4827999154 then
		songid = 4639382420
	elseif songid == 4639382420 then
		songid = 3206925146
	elseif songid == 3206925146 then
		songid = 871275016
	elseif songid == 871275016 then
		songid = 886085413
	elseif songid == 886085413 then
		songid = 4826887888
	end
end

function shoot()
	attack = true
	repeat
		if combo == 1 then
			combo = 2
	local Time,Easing,Direction = .24,'Quad','InOut'
  Tween(rootjoint,{C0 = cf(0,0,0)*angles(rad(0),rad(54.5),rad(0))*rootc0},Easing,Direction,Time)
  Tween(lh,{C0 = cf(-0.6,-1,0)*angles(rad(-3.3),rad(11.5),rad(-5.7))},Easing,Direction,Time)
  Tween(rh,{C0 = cf(0.5,-0.9,-0.5)*angles(rad(-7.7),rad(-6.9),rad(6.9))},Easing,Direction,Time)
  Tween(la,{C0 = cf(-1.4,0.3,0)*angles(rad(45.3),rad(11.8),rad(-20.6))},Easing,Direction,Time)
  Tween(ra,{C0 = cf(1.5,0.3,-0.3)*angles(rad(84.6),rad(6),rad(57))},Easing,Direction,Time)
  Tween(neck,{C0 = neckc0*cf(0,0,0)*angles(rad(0),rad(0),rad(-54.5))},Easing,Direction,Time)
  swait(Time)
	local hit,pos = castray(righthole.Position,mouse.Hit.p,500,character)
	local dist = (righthole.Position-pos).Magnitude
	Effect({cf=cf(righthole.Position,pos)*cf(0,0,-dist/2),moveto=nil,clr=colors[1],clr2=colors[2],mtype="Box",waits=20,size=Vector3.new(righthole.Size.X,righthole.Size.X,dist),size2=Vector3.new(righthole.Size.X*10,righthole.Size.X*10,dist),radX=0,radY=0,radZ=0,mat="Neon",lock=false,tran=0,tran2=1})
	sound(4458746910,righthole,4,random(6,8)/10)
	sound(4827157585,righthole,4,random(6,8)/10)
	Effect({cf=pos,moveto=nil,clr=colors[1],clr2=colors[2],mtype="S",waits=30,size=Vector3.new(1,1,1),size2=Vector3.new(5,5,5),radX=0,radY=0,radZ=0,mat="Neon",lock=false,tran=0,tran2=1})
	for i = 1,3 do
	Effect({cf=cf(pos)*randomangle(),moveto=nil,clr=efcols[1],clr2=efcols[2],mtype="W",waits=30,size=Vector3.new(1,.35,1),size2=Vector3.new(6,.4,6),radX=0,radY=random(-5,5),radZ=0,mat="Neon",lock=false,tran=0,tran2=1})	
	end	
	aoe(pos,2,0,0,85,true)
	if hit and hit.Name == "Head" then
	hit:Destroy()
	soundtopos(hit.Position,4516612539,1,8)
	Effect({cf=hit.Position,moveto=nil,clr=Color3.new(1,0,0),clr2=Color3.new(0,0,0),mtype="S",waits=30,size=Vector3.new(hit.Size.Z,hit.Size.Y,hit.Size.Z),size2=Vector3.new(hit.Size.Z,hit.Size.Y,hit.Size.Z)*1.2,radX=0,radY=0,radZ=0,mat="Neon",lock=false,tran=0,tran2=1})
	debree(BrickColor.new("Crimson").Color,"Slate",0,hit.CFrame,10,vt(random(2,3)/10,random(2,3)/10,random(2,3)/10)*2,1,30)
	end	
  	local Time,Easing,Direction = .12,'Quad','InOut'
  Tween(rootjoint,{C0 = cf(0,-0.1,0.2)*angles(rad(11.6),rad(54.5),rad(0))*rootc0},Easing,Direction,Time)
  Tween(lh,{C0 = cf(-0.5,-0.8,-0.1)*angles(rad(-8),rad(12.4),rad(-15.3))},Easing,Direction,Time)
  Tween(rh,{C0 = cf(0.6,-1,-0.5)*angles(rad(-15.4),rad(-5),rad(-2.3))},Easing,Direction,Time)
  Tween(la,{C0 = cf(-1.4,0.3,0)*angles(rad(45.3),rad(11.8),rad(-20.6))},Easing,Direction,Time)
  Tween(ra,{C0 = cf(1.7,0.6,-0.4)*angles(rad(104),rad(31.6),rad(50.6))},Easing,Direction,Time)
  Tween(neck,{C0 = neckc0*cf(-0.1,0,0.1)*angles(rad(5.8),rad(0),rad(-54.3))},Easing,Direction,Time)
  swait(Time)
	end
	if combo == 2 then
		combo = 1
		 	local Time,Easing,Direction = .24,'Quad','InOut'
  Tween(rootjoint,{C0 = cf(-0.1,0,0)*angles(rad(0),rad(-59),rad(0))*rootc0},Easing,Direction,Time)
  Tween(lh,{C0 = cf(-0.6,-1,0)*angles(rad(-3.3),rad(11.5),rad(-5.7))},Easing,Direction,Time)
  Tween(rh,{C0 = cf(0.5,-0.9,-0.5)*angles(rad(-7.7),rad(-6.9),rad(6.9))},Easing,Direction,Time)
  Tween(la,{C0 = cf(-1.5,0.5,-0.1)*angles(rad(88.8),rad(-3.7),rad(-65.2))},Easing,Direction,Time)
  Tween(ra,{C0 = cf(1.3,0.3,-0.1)*angles(rad(45.3),rad(-11.8),rad(20.6))},Easing,Direction,Time)
  Tween(neck,{C0 = neckc0*cf(0.1,0,-0.1)*angles(rad(0),rad(0),rad(59))},Easing,Direction,Time)
  swait(Time)
	local hit,pos = castray(lefthole.Position,mouse.Hit.p,500,character)
	local dist = (lefthole.Position-pos).Magnitude
	Effect({cf=cf(lefthole.Position,pos)*cf(0,0,-dist/2),moveto=nil,clr=colors[1],clr2=colors[2],mtype="Box",waits=20,size=Vector3.new(lefthole.Size.X,lefthole.Size.X,dist),size2=Vector3.new(lefthole.Size.X*10,lefthole.Size.X*10,dist),radX=0,radY=0,radZ=0,mat="Neon",lock=false,tran=0,tran2=1})
	sound(4458746910,lefthole,4,random(6,8)/10)
	sound(4827157585,lefthole,4,random(6,8)/10)
	Effect({cf=pos,moveto=nil,clr=colors[1],clr2=colors[2],mtype="S",waits=30,size=Vector3.new(1,1,1),size2=Vector3.new(5,5,5),radX=0,radY=0,radZ=0,mat="Neon",lock=false,tran=0,tran2=1})
	for i = 1,3 do
	Effect({cf=cf(pos)*randomangle(),moveto=nil,clr=efcols[1],clr2=efcols[2],mtype="W",waits=30,size=Vector3.new(1,.35,1),size2=Vector3.new(6,.4,6),radX=0,radY=random(-5,5),radZ=0,mat="Neon",lock=false,tran=0,tran2=1})	
	end	
	aoe(pos,2,0,0,85,true)
	if hit and hit.Name == "Head" then
	hit:Destroy()
	soundtopos(hit.Position,4516612539,1,8)
	Effect({cf=hit.Position,moveto=nil,clr=Color3.new(1,0,0),clr2=Color3.new(0,0,0),mtype="S",waits=30,size=Vector3.new(hit.Size.Z,hit.Size.Y,hit.Size.Z),size2=Vector3.new(hit.Size.Z,hit.Size.Y,hit.Size.Z)*1.2,radX=0,radY=0,radZ=0,mat="Neon",lock=false,tran=0,tran2=1})
	debree(BrickColor.new("Crimson").Color,"Slate",0,hit.CFrame,15,vt(random(2,3)/10,random(2,3)/10,random(2,3)/10)*2,1,30)
	end	
  	local Time,Easing,Direction = .12,'Quad','InOut'
  Tween(rootjoint,{C0 = cf(0.1,-0.1,0.3)*angles(rad(13.9),rad(-59),rad(0))*rootc0},Easing,Direction,Time)
  Tween(lh,{C0 = cf(-0.6,-1.1,-0.1)*angles(rad(-12.7),rad(9.8),rad(6.3))},Easing,Direction,Time)
  Tween(rh,{C0 = cf(0.5,-0.8,-0.5)*angles(rad(-13.3),rad(-9.1),rad(18.8))},Easing,Direction,Time)
  Tween(la,{C0 = cf(-1.6,0.6,-0.1)*angles(rad(104.4),rad(-27.8),rad(-62.3))},Easing,Direction,Time)
  Tween(ra,{C0 = cf(1.3,0.3,-0.1)*angles(rad(45.3),rad(-11.8),rad(20.6))},Easing,Direction,Time)
  Tween(neck,{C0 = neckc0*cf(0,0,0)*angles(rad(8.4),rad(0),rad(58.2))},Easing,Direction,Time)
  swait(Time)
	end
until mousehold == false
	attack = false
end

function bombs()
	attack = true
	Swait()
	humanoid.Jump = true
	local ori = rootpart.CFrame*cf(0,-2.9,0)
	local numberofbombs = 10
	local alt = 1
	local currentbombs = {}
	sound(4085859074,rootpart,6,1.75)
	Effect({cf=ori,moveto=nil,clr=efcols[1],clr2=efcols[2],mtype="W",waits=100,size=Vector3.new(1,.3,1),size2=Vector3.new(15,.9,15),radX=0,radY=random(-5,5),radZ=0,mat="Neon",lock=false,tran=0,tran2=1})
	rootpart.Velocity = rootpart.CFrame.lookVector*150+vt(0,200,0)
	for _,v in pairs(rightgun:GetChildren()) do
		Tween(v,{Transparency = 1},"Linear","InOut",.5)
	end
	for _,v in pairs(leftgun:GetChildren()) do
		Tween(v,{Transparency = 1},"Linear","InOut",.5)
	end
	delay(1, function()
	rootpart.Anchored = true
	Tween(rootpart,{CFrame = rootpart.CFrame*angles(rad(-45),0,0)},"Quad","InOut",.5)
	swait(.5)
	for i = 1,numberofbombs do
		if alt == 1 then
				local boomb = bomb:Clone()
				boomb.Transparency = 1
	boomb.Parent = effects
			Tween(boomb,{Transparency = 0},"Linear","InOut",.35)
			boomb.CFrame = attcf(leftarm.LeftGripAttachment)
			
		local Time,Easing,Direction = .15,'Back','Out'
  Tween(rootjoint,{C0 = cf(0,0,0)*angles(rad(0),rad(26.9),rad(0))*rootc0},Easing,Direction,Time)
  Tween(lh,{C0 = cf(-0.5,-1,-0.1)*angles(rad(-3.7),rad(0),rad(0))},Easing,Direction,Time)
  Tween(rh,{C0 = cf(0.4,-0.3,-0.9)*angles(rad(-10.3),rad(1.4),rad(3.8))},Easing,Direction,Time)
  Tween(la,{C0 = cf(-1.5,0.9,0.1)*angles(rad(144.7),rad(-20.8),rad(0))},Easing,Direction,Time)
  Tween(ra,{C0 = cf(1.5,0.5,0)*angles(rad(2.8),rad(-17.1),rad(9.6))},Easing,Direction,Time)
  Tween(neck,{C0 = neckc0*cf(0,0,0)*angles(rad(0),rad(0),rad(26.9))},Easing,Direction,Time)
  swait(Time)
sound(138097048,leftarm,5,random(8,12)/10)
  	local Time,Easing,Direction = .07,'Quad','InOut'
  Tween(rootjoint,{C0 = cf(0,0,-0.1)*angles(rad(0),rad(-48.7),rad(0))*rootc0},Easing,Direction,Time)
  Tween(lh,{C0 = cf(-0.5,-1,-0.1)*angles(rad(-3.7),rad(0),rad(0))},Easing,Direction,Time)
  Tween(rh,{C0 = cf(0.4,-0.3,-0.9)*angles(rad(-10.3),rad(1.4),rad(3.8))},Easing,Direction,Time)
  Tween(la,{C0 = cf(-0.5,0.4,-0.9)*angles(rad(112.9),rad(-31.8),rad(58))},Easing,Direction,Time)
  Tween(ra,{C0 = cf(1.5,0.5,0)*angles(rad(2.8),rad(-17.1),rad(9.6))},Easing,Direction,Time)
  Tween(neck,{C0 = neckc0*cf(0.1,0,0)*angles(rad(0),rad(0),rad(48.7))},Easing,Direction,Time)
  swait(Time)
boomb.CFrame = cf(boomb.Position,mouse.Hit.p)
		alt = 2
		local what
		coroutine.wrap(function()
		for i = 1,100 do
			Swait()
			boomb.CFrame = boomb.CFrame*cf(0,0,-5)
			local hit,pos = raycast(boomb.Position,boomb.CFrame.lookVector,4,character)
			if hit then 		what = hit break end
			end
			if what then
		weldBetween(boomb,what)
				table.insert(currentbombs,boomb)
					Tween(boomb,{Color = BrickColor.new("Crimson").Color},"Quad","InOut",1)
					sound(2303101209,boomb,6,random(8,12)/10)
					else
						boomb:Destroy()
		end		
		end)()
		end	
		if alt == 2 then
			local boomb = bomb:Clone()
				boomb.Transparency = 1
	boomb.Parent = effects
			Tween(boomb,{Transparency = 0},"Linear","InOut",.35)
			boomb.CFrame = attcf(rightarm.RightGripAttachment)
			  	local Time,Easing,Direction = .15,'Quad','InOut'
  Tween(rootjoint,{C0 = cf(0,0,0.1)*angles(rad(0),rad(-38),rad(0))*rootc0},Easing,Direction,Time)
  Tween(lh,{C0 = cf(-0.5,-1,-0.1)*angles(rad(-3.7),rad(0),rad(0))},Easing,Direction,Time)
  Tween(rh,{C0 = cf(0.4,-0.3,-0.9)*angles(rad(-10.3),rad(1.4),rad(3.8))},Easing,Direction,Time)
  Tween(la,{C0 = cf(-1.4,0.5,0.1)*angles(rad(2),rad(18.1),rad(-6.4))},Easing,Direction,Time)
  Tween(ra,{C0 = cf(1.5,0.7,-0.1)*angles(rad(151.6),rad(23.9),rad(0))},Easing,Direction,Time)
  Tween(neck,{C0 = neckc0*cf(0,0,-0.1)*angles(rad(0),rad(0),rad(38))},Easing,Direction,Time)
  swait(Time)
sound(138097048,rightarm,5,random(8,12)/10)
  	local Time,Easing,Direction = .07,'Quad','InOut'
  Tween(rootjoint,{C0 = cf(0.1,0,0)*angles(rad(0),rad(55.7),rad(0))*rootc0},Easing,Direction,Time)
  Tween(lh,{C0 = cf(-0.5,-1,-0.1)*angles(rad(-3.7),rad(0),rad(0))},Easing,Direction,Time)
  Tween(rh,{C0 = cf(0.4,-0.3,-0.9)*angles(rad(-10.3),rad(1.4),rad(3.8))},Easing,Direction,Time)
  Tween(la,{C0 = cf(-1.4,0.5,0.1)*angles(rad(2),rad(18.1),rad(-6.4))},Easing,Direction,Time)
  Tween(ra,{C0 = cf(0.6,0.4,-1.1)*angles(rad(93.7),rad(27.9),rad(-59.2))},Easing,Direction,Time)
  Tween(neck,{C0 = neckc0*cf(-0.1,0,-0.1)*angles(rad(0),rad(0),rad(-55.7))},Easing,Direction,Time)
  swait(Time)
alt = 1
boomb.CFrame = cf(boomb.Position,mouse.Hit.p)
local what
		coroutine.wrap(function()
		for i = 1,100 do
			Swait()
			boomb.CFrame = boomb.CFrame*cf(0,0,-5)
			local hit,pos = raycast(boomb.Position,boomb.CFrame.lookVector,4,character)
			if hit then 		what = hit break end
			end
		if what then
		weldBetween(boomb,what)
				table.insert(currentbombs,boomb)
			Tween(boomb,{Color = BrickColor.new("Crimson").Color},"Quad","InOut",1)
			sound(2303101209,boomb,6,random(8,12)/10)
					else
			boomb:Destroy()
		end
		end)()	
		end	
		
		
	end	

	delay(1,function()
	for _,t in pairs(currentbombs) do
		swait(.05)
		Effect({cf=t.Position,moveto=nil,clr=colors[1],clr2=colors[2],mtype="S",waits=45,size=Vector3.new(1,1,1),size2=Vector3.new(10,10,10)*2,radX=0,radY=0,radZ=0,mat="Neon",lock=false,tran=0,tran2=1})
		for i = 1,3 do
			Effect({cf=t.CFrame*randomangle(),moveto=nil,clr=efcols[1],clr2=efcols[2],mtype="W",waits=50,size=Vector3.new(1,.35,1),size2=Vector3.new(12,.175,12)*2,radX=0,radY=random(-5,5),radZ=0,mat="Neon",lock=false,tran=0,tran2=1})
		end	
		aoe(t.Position,10,50,60,100,false)
		sound(explodesounds[random(1,#explodesounds)],t,8,random(12,15)/10)
		t:Destroy()
	end		
	end)	
	rootpart.Anchored = false
	for _,v in pairs(rightgun:GetChildren()) do
		Tween(v,{Transparency = 0},"Linear","InOut",.5)
	end
	for _,v in pairs(leftgun:GetChildren()) do
		Tween(v,{Transparency = 0},"Linear","InOut",.5)
	end		
	end)	
	attack = false
end

function die()
	attack = true
	local grab,confirm = false,false
	local hitb = part(effects,"Neon",1,Color3.new(),vt(2,2,2),false) hitb.Massless = true
	local hitweld = weld(hitb,hitb,righthole,d,d)
	local ttors
	local hum
	local dead = false
	local timed = .6
	local hh = hitb.Touched:Connect(function(h)
	if h.Parent:FindFirstChildOfClass("Humanoid") and h.Parent then
	hum = h.Parent:FindFirstChildOfClass("Humanoid")
	if hum.Health ~= 0 then
	ttors = h.Parent:FindFirstChild("Torso") or h.Parent:FindFirstChild("UpperTorso")
	grab = true
	--local targweld = weld(hitb,hitb,ttors,d*angles(0,rad(90),0),d)
	end
	end					
	end)
	sound(2162237356,rootpart,5,.75)
	Effect({cf=rootpart.CFrame*cf(0,0,2)*angles(rad(-90),0,0),moveto=nil,clr=efcols[1],clr2=efcols[2],mtype="W",waits=25,size=Vector3.new(1,.15,1)*2,size2=Vector3.new(6,.2,6)*2,radX=0,radY=6,radZ=0,mat="Neon",lock=false,tran=0,tran2=1})
	Effect({cf=rootpart.CFrame*cf(0,0,1.75)*angles(rad(-90),0,0),moveto=nil,clr=efcols[1],clr2=efcols[2],mtype="W",waits=25,size=Vector3.new(1,.15,1)*1.5,size2=Vector3.new(6,.2,6)*1.5,radX=0,radY=-6,radZ=0,mat="Neon",lock=false,tran=0,tran2=1})	
	
	for i = 1,25 do Swait()
  	local Alpha = .2
	rootpart.CFrame = rootpart.CFrame*cf(0,0,-1.75)
  	rootjoint.C0 = rootjoint.C0:lerp(cf(0,0.2,-0.2)*angles(rad(-18.4),rad(55.2),rad(0))*rootc0,Alpha)
  	lh.C0 = lh.C0:lerp(cf(-0.5,-1,0)*angles(rad(-7.2),rad(12.2),rad(-14)),Alpha)
  	rh.C0 = rh.C0:lerp(cf(0.6,-0.7,-0.6)*angles(rad(-14.7),rad(-27.5),rad(-1.2)),Alpha)
  	la.C0 = la.C0:lerp(cf(-1.5,0.4,0.1)*angles(rad(45.3),rad(11.8),rad(-77.4)),Alpha)
  	ra.C0 = ra.C0:lerp(cf(1.6,0.6,-0.3)*angles(rad(99.9),rad(15.3),rad(44.5)),Alpha)
  	neck.C0 = neck.C0:lerp(neckc0*cf(0,0,-0)*angles(rad(-16.2),rad(0),rad(-54.1)),Alpha)
	if grab == true then break end
	end
  --swait(timed)
	if grab == false then
		hitb:Destroy()
	else
		hh:Disconnect()
		coroutine.wrap(function()
		repeat Swait()
		ttors.Anchored = true
		ttors.CFrame = righthole.CFrame*angles(0,rad(90),0)
		until dead == true or not ttors
		end)()	
		rootpart.Anchored = true
	  	local Time,Easing,Direction = .35,'Quad','InOut'
  Tween(rootjoint,{C0 = cf(0,0,-0)*angles(rad(-3.5),rad(55.2),rad(0))*rootc0},Easing,Direction,Time)
  Tween(lh,{C0 = cf(-0.7,-1.1,-0.1)*angles(rad(-8),rad(0.2),rad(-3.6))},Easing,Direction,Time)
  Tween(rh,{C0 = cf(0.5,-1,-0.4)*angles(rad(-5.3),rad(-27.3),rad(3.1))},Easing,Direction,Time)
  Tween(la,{C0 = cf(-1.7,0.1,-0.7)*angles(rad(110.2),rad(33.5),rad(65.6))},Easing,Direction,Time)
  Tween(ra,{C0 = cf(1.6,0.7,-0.2)*angles(rad(112.3),rad(25.9),rad(40))},Easing,Direction,Time)
  Tween(neck,{C0 = neckc0*cf(0,0,-0)*angles(rad(-23.7),rad(0),rad(-52.8))},Easing,Direction,Time)
  swait(Time*1.2)
  Tween(la,{C0 = cf(-1.6,0,-.8)*angles(rad(124.2),rad(52.3),rad(55.7))},'Quad','InOut',.15)
	local hd = ttors.Parent:FindFirstChild("Head")
	sound(4458746910,lefthole,4,random(6,8)/10)
	sound(4827157585,lefthole,4,random(6,8)/10)
	sound(4516612539,hd,8,1)
	Effect({cf=lefthole.Position,moveto=nil,clr=colors[1],clr2=colors[2],mtype="S",waits=30,size=Vector3.new(.5,.5,.5),size2=Vector3.new(2,2,2),radX=0,radY=0,radZ=0,mat="Neon",lock=false,tran=0,tran2=1})
	for i = 1,3 do
	Effect({cf=lefthole.CFrame*randomangle(),moveto=nil,clr=efcols[1],clr2=efcols[2],mtype="W",waits=40,size=Vector3.new(.5,.15,.5),size2=Vector3.new(2,.15,2),radX=0,radY=random(-5,5),radZ=0,mat="Neon",lock=false,tran=0,tran2=1})	
	end
	local dd = (hd.Position-lefthole.Position).Magnitude
	Effect({cf=cf(lefthole.Position,hd.Position)*cf(0,0,-dd/2),moveto=nil,clr=colors[1],clr2=colors[2],mtype="Box",waits=30,size=Vector3.new(.25,.25,dd),size2=Vector3.new(1,1,dd),radX=0,radY=0,radZ=0,mat="Neon",lock=false,tran=0,tran2=1})
	debree(BrickColor.new("Crimson").Color,"Slate",0,hd.CFrame,30,vt(random(4,6)/10,random(4,6)/10,random(4,6)/10)*1.2,2,50)
	Effect({cf=hd.Position,moveto=nil,clr=Color3.new(1,0,0),clr2=Color3.new(0,0,0),mtype="S",waits=40,size=Vector3.new(hd.Size.Z,hd.Size.Y,hd.Size.Z),size2=Vector3.new(hd.Size.Z,hd.Size.Y,hd.Size.Z)*2,radX=0,radY=0,radZ=0,mat="Neon",lock=false,tran=0,tran2=1})
	hd:Destroy()
  swait(.15)	
  local Time,Easing,Direction = .8,'Quad','InOut'
  Tween(rootjoint,{C0 = cf(0,0.1,-0.1)*angles(rad(-3.5),rad(55.2),rad(0))*rootc0},Easing,Direction,Time)
  Tween(lh,{C0 = cf(-0.7,-1.1,-0.1)*angles(rad(-8),rad(0.2),rad(-3.6))},Easing,Direction,Time)
  Tween(rh,{C0 = cf(0.5,-1,-0.4)*angles(rad(-5.3),rad(-27.3),rad(3.1))},Easing,Direction,Time)
  Tween(la,{C0 = cf(-1.3,0.4,0.2)*angles(rad(49.9),rad(16),rad(-73.8))},Easing,Direction,Time)
  Tween(ra,{C0 = cf(1.6,0.4,-0.4)*angles(rad(91.5),rad(7),rad(46.1))},Easing,Direction,Time)
  Tween(neck,{C0 = neckc0*cf(-0,0,0)*angles(rad(3.5),rad(0),rad(-55.2))},Easing,Direction,Time)
  swait(Time)
	sound(4458746910,righthole,4,random(6,8)/10)
	sound(4827157585,righthole,4,random(6,8)/10)
	sound(4459573960,ttors,7,1)
	debree(BrickColor.new("Crimson").Color,"Slate",0,hd.CFrame,38,vt(random(4,6)/10,random(4,6)/10,random(4,6)/10)*1.2,2,50)
	Effect({cf=ttors.Position,moveto=ttors.Position+vt(0,1,0),clr=Color3.new(1,0,0),clr2=Color3.new(0,0,0),mtype="Box",waits=60,size=ttors.Size,size2=ttors.Size*1.2,radX=random(-1,1),radY=random(-1,1),radZ=random(-1,1),mat="Neon",lock=false,tran=0,tran2=1})
	ttors:Destroy()
	dead = true
	rootpart.Anchored = false
	hitb:Destroy()	
	end
	
	attack = false
end

function throwshoot()
	attack = true
	local bigbo = bomb:Clone()
	bigbo.CanCollide = false
	bigbo.Massless = true
	bigbo.Anchored = false
	bigbo.Parent = effects
	bigbo.Size = bigbo.Size*2
	bigbo.Transparency = 1
	local bw = weld(bigbo,bigbo,leftarm,cf(0,2,0),d)
	for _,v in pairs(leftgun:GetChildren()) do
		Tween(v,{Transparency = 1},"Linear","In",.15)
	end
		rootpart.Anchored = true
	Tween(bigbo,{Transparency = 0},"Linear","In",.3)
	local Time,Easing,Direction = .4,'Quad','InOut'
  Tween(rootjoint,{C0 = cf(0,0,0)*angles(rad(0),rad(53.2),rad(0))*rootc0},Easing,Direction,Time)
  Tween(lh,{C0 = cf(-0.6,-1,0)*angles(rad(-3.3),rad(11.5),rad(-5.7))},Easing,Direction,Time)
  Tween(rh,{C0 = cf(0.5,-0.9,-0.5)*angles(rad(-7.7),rad(-6.9),rad(6.9))},Easing,Direction,Time)
  Tween(la,{C0 = cf(-1.5,0.4,0.5)*angles(rad(-33.6),rad(32.3),rad(-12.1))},Easing,Direction,Time)
  Tween(ra,{C0 = cf(1.3,0.3,-0.1)*angles(rad(45.3),rad(-11.8),rad(20.6))},Easing,Direction,Time)
  Tween(neck,{C0 = neckc0*cf(-0,0,-0)*angles(rad(0),rad(0),rad(-53.2))},Easing,Direction,Time)
  swait(Time)
  	local Time,Easing,Direction = .15,'Quad','InOut'
  Tween(rootjoint,{C0 = cf(0,0,0)*angles(rad(0),rad(-37.7),rad(0))*rootc0},Easing,Direction,Time)
  Tween(lh,{C0 = cf(-0.6,-1,0)*angles(rad(-3.3),rad(11.5),rad(-5.7))},Easing,Direction,Time)
  Tween(rh,{C0 = cf(0.5,-0.9,-0.5)*angles(rad(-7.7),rad(-6.9),rad(6.9))},Easing,Direction,Time)
  Tween(la,{C0 = cf(-1.5,0.5,0.1)*angles(rad(138.2),rad(-46.6),rad(-31.7))},Easing,Direction,Time)
  Tween(ra,{C0 = cf(1.3,0.3,-0.1)*angles(rad(45.3),rad(-11.8),rad(20.6))},Easing,Direction,Time)
  Tween(neck,{C0 = neckc0*cf(-0,0,-0)*angles(rad(-23.7),rad(0),rad(35.3))},Easing,Direction,Time)
  swait(Time)
	bigbo:BreakJoints()
	bigbo.CFrame = attcf(leftarm.LeftGripAttachment)*cf(0,0,-3)
	local arcpos = rootpart.CFrame*cf(-10,22,-38)
	bigbo.Anchored = true
	coroutine.wrap(function()
		for i = 1,60 do
			arc(bigbo,arcpos.p,40,80)
		end	
		coroutine.yield()
	end)()	
			for _,v in pairs(leftgun:GetChildren()) do
		Tween(v,{Transparency = 0},"Linear","In",.3)
	end	
		  	local Time,Easing,Direction = .35,'Quad','InOut'
  Tween(rootjoint,{C0 = cf(0,0,0)*angles(rad(0),rad(-37.7),rad(0))*rootc0},Easing,Direction,Time)
  Tween(lh,{C0 = cf(-0.6,-1,0)*angles(rad(-3.3),rad(11.5),rad(-5.7))},Easing,Direction,Time)
  Tween(rh,{C0 = cf(0.5,-0.9,-0.5)*angles(rad(-7.7),rad(-6.9),rad(6.9))},Easing,Direction,Time)
  Tween(la,{C0 = cf(-1.6,0.6,0)*angles(rad(110.2),rad(-33.6),rad(-43.2))},Easing,Direction,Time)
  Tween(ra,{C0 = cf(1.4,0.3,0.1)*angles(rad(57.9),rad(-9.1),rad(34.9))},Easing,Direction,Time)
  Tween(neck,{C0 = neckc0*cf(-0,0,-0)*angles(rad(-11.4),rad(0),rad(37.2))},Easing,Direction,Time)
  swait(Time)
		sound(4458746910,lefthole,4,random(6,8)/10)
	sound(4827157585,lefthole,4,random(6,8)/10)
		Effect({cf=lefthole.Position,moveto=nil,clr=colors[1],clr2=colors[2],mtype="S",waits=30,size=Vector3.new(.5,.5,.5),size2=Vector3.new(2,2,2),radX=0,radY=0,radZ=0,mat="Neon",lock=false,tran=0,tran2=1})
	for i = 1,3 do
	Effect({cf=lefthole.CFrame*randomangle(),moveto=nil,clr=efcols[1],clr2=efcols[2],mtype="W",waits=40,size=Vector3.new(.5,.15,.5),size2=Vector3.new(2,.15,2),radX=0,radY=random(-5,5),radZ=0,mat="Neon",lock=false,tran=0,tran2=1})	
	end
	local dd = (bigbo.Position-lefthole.Position).Magnitude
	Effect({cf=cf(lefthole.Position,bigbo.Position)*cf(0,0,-dd/2),moveto=nil,clr=colors[1],clr2=colors[2],mtype="Box",waits=30,size=Vector3.new(.25,.25,dd),size2=Vector3.new(1,1,dd),radX=0,radY=0,radZ=0,mat="Neon",lock=false,tran=0,tran2=1})
	for i = 1,10 do
	Effect({cf=bigbo.Position,moveto=bigbo.Position+randompos(20),clr=bigbo.Color,clr2=bigbo.Color,mtype="S",waits=40,size=Vector3.new(1,1,1),size2=Vector3.new(0,0,0),radX=random(-7,7),radY=random(-7,7),radZ=random(-7,7),mat=bigbo.Material,lock=false,tran=0,tran2=1})
	end
	sound(explodesounds[random(1,#explodesounds)],bigbo,7,random(8,12)/10)
	debree(bigbo.Color,bigbo.Material,0,bigbo.CFrame,15,vt(random(2,3)/5,random(2,3)/5,random(2,3)/5)*1.5,1.5,45)
	Effect({cf=bigbo.Position,moveto=nil,clr=colors[1],clr2=colors[2],mtype="S",waits=60,size=Vector3.new(1,1,1),size2=Vector3.new(20,20,20),radX=0,radY=0,radZ=0,mat="Neon",lock=false,tran=0,tran2=1})
	for i = 1,3 do
	Effect({cf=bigbo.CFrame*randomangle(),moveto=nil,clr=efcols[1],clr2=efcols[2],mtype="W",waits=70,size=Vector3.new(1,.35,1),size2=Vector3.new(25,.4,25),radX=0,radY=random(-5,5),radZ=0,mat="Neon",lock=false,tran=0,tran2=1})	
	end
	rootpart.Anchored = false
	local bol = part(effects,"Neon",1,colors[1],vt(3,3,3),true,"ball")
	bol.Orientation = vt(0,0,0)
	bol.CFrame = bigbo.CFrame
	Tween(bol,{Transparency = 0,CFrame = bol.CFrame*cf(0,-22,0)},"Linear","In",.3)
	delay(.3,function()
	Effect({cf=bol.Position,moveto=nil,clr=colors[1],clr2=colors[2],mtype="S",waits=40,size=bol.Size,size2=bol.Size*10,radX=0,radY=0,radZ=0,mat="Neon",lock=false,tran=0,tran2=1})
	for i = 1,3 do
	Effect({cf=bol.CFrame*randomangle(),moveto=nil,clr=efcols[1],clr2=efcols[2],mtype="W",waits=50,size=Vector3.new(1,1,1),size2=Vector3.new(bol.Size.X*11,.35,bol.Size.X*11),radX=0,radY=random(-5,5),radZ=0,mat="Neon",lock=false,tran=0,tran2=1})
	end
	for i = 1,2 do
	Effect({cf=bol.CFrame*randomangle(),moveto=nil,clr=colors[1],clr2=colors[2],mtype="Box",waits=40,size=Vector3.new(3,3,3),size2=Vector3.new(25,25,25),radX=random(-40,40),radY=random(-40,40),radZ=random(-40,40),mat="Neon",lock=false,tran=0,tran2=1})
	end
	aoe(bol.Position,20,0,0,120,true)
	sound(3750994166,bol,7,1)
	bol:Destroy()
	end)
	bigbo:Destroy()
	attack = false
end

function twopunches()
	attack = true
				for _,v in pairs(leftgun:GetChildren()) do
		Tween(v,{Transparency = 1},"Linear","In",.5)
	end	
				for _,v in pairs(rightgun:GetChildren()) do
		Tween(v,{Transparency = 1},"Linear","In",.5)
	end	
	 	local Time,Easing,Direction = .8,'Quad','InOut'
  Tween(rootjoint,{C0 = cf(-0.1,0,-0.1)*angles(rad(0),rad(71.4),rad(0))*rootc0},Easing,Direction,Time)
  Tween(lh,{C0 = cf(-0.6,-1,0)*angles(rad(-3.3),rad(11.5),rad(-5.7))},Easing,Direction,Time)
  Tween(rh,{C0 = cf(0.5,-0.9,-0.5)*angles(rad(-7.7),rad(-6.9),rad(6.9))},Easing,Direction,Time)
  Tween(la,{C0 = cf(-1.2,0.4,0)*angles(rad(74.7),rad(-19.7),rad(-51.9))},Easing,Direction,Time)
  Tween(ra,{C0 = cf(1.3,0.5,0.2)*angles(rad(3.7),rad(-22.4),rad(7.8))},Easing,Direction,Time)
  Tween(neck,{C0 = neckc0*cf(0,0,0.1)*angles(rad(0),rad(0),rad(-71.4))},Easing,Direction,Time)
  swait(Time)
sound(3755636825,leftarm,4,1)
	  	local Time,Easing,Direction = .12,'Quad','InOut'
  Tween(rootjoint,{C0 = cf(-0,0,-0)*angles(rad(-26.3),rad(-64.9),rad(-7))*rootc0},Easing,Direction,Time)
  Tween(lh,{C0 = cf(-0.6,-0.9,-0.4)*angles(rad(22.1),rad(34.7),rad(-26.9))},Easing,Direction,Time)
  Tween(rh,{C0 = cf(0.5,-1.1,-0.4)*angles(rad(4),rad(2.1),rad(-8.9))},Easing,Direction,Time)
  Tween(la,{C0 = cf(-1.5,0.5,-0.3)*angles(rad(83.8),rad(-22.2),rad(-68.3))},Easing,Direction,Time)
  Tween(ra,{C0 = cf(1.4,0.4,0.3)*angles(rad(24.2),rad(-43.2),rad(45.7))},Easing,Direction,Time)
  Tween(neck,{C0 = neckc0*cf(-0,0,-0)*angles(rad(-16.6),rad(0),rad(55.9))},Easing,Direction,Time)
  swait(Time)
sound(3750958498,leftarm,7,.65)
sound(3929466751,leftarm,7,1)
Effect({cf=attcf(leftarm.LeftGripAttachment),moveto=nil,clr=colors[1],clr2=colors[2],mtype="S",waits=30,size=Vector3.new(1,1,1),size2=Vector3.new(10,10,10),radX=0,radY=0,radZ=0,mat="Neon",lock=false,tran=0,tran2=1})
Effect({cf=attcf(leftarm.LeftGripAttachment),moveto=nil,clr=colors[1],clr2=colors[2],mtype="S",waits=30,size=Vector3.new(1,1,1),size2=Vector3.new(7,7,7),radX=0,radY=0,radZ=0,mat="Neon",lock=false,tran=0,tran2=1})
for i = 1,3 do
	Effect({cf=attcf(leftarm.LeftGripAttachment)*randomangle(),moveto=nil,clr=efcols[1],clr2=efcols[2],mtype="W",waits=35,size=Vector3.new(1,.35,1),size2=Vector3.new(13,.4,13),radX=0,radY=random(-6,6),radZ=0,mat="Neon",lock=false,tran=0,tran2=1})
	Effect({cf=attcf(leftarm.LeftGripAttachment)*randomangle(),moveto=nil,clr=efcols[1],clr2=efcols[2],mtype="Slash",waits=35,size=Vector3.new(.01,.01,.01),size2=Vector3.new(.075,.015,.075),radX=0,radY=random(-18,18),radZ=0,mat="Neon",lock=false,tran=0,tran2=1})
end
for i = 1,10 do
	local typs = {"S","B"}
	Effect({cf=attcf(leftarm.LeftGripAttachment),moveto=attcf(leftarm.LeftGripAttachment).p+randompos(15),clr=colors[1],clr2=colors[2],mtype=typs[random(1,2)],waits=30,size=Vector3.new(.45,.45,.45),size2=Vector3.new(.65,.65,.65),radX=random(-8,8),radY=random(-8,8),radZ=random(-8,8),mat="Neon",lock=false,tran=0,tran2=1})
end
aoe(leftarm.Position,13,30,50,400,false,true)
  	local Time,Easing,Direction = .3,'Quad','InOut'
  Tween(rootjoint,{C0 = cf(0,0,0)*angles(rad(0),rad(-65.6),rad(0))*rootc0},Easing,Direction,Time)
  Tween(lh,{C0 = cf(-0.6,-1,0)*angles(rad(-3.3),rad(11.5),rad(-5.7))},Easing,Direction,Time)
  Tween(rh,{C0 = cf(0.5,-0.9,-0.5)*angles(rad(-7.7),rad(-6.9),rad(6.9))},Easing,Direction,Time)
  Tween(la,{C0 = cf(-1.6,0.5,0.1)*angles(rad(-5.1),rad(23.3),rad(-4.4))},Easing,Direction,Time)
  Tween(ra,{C0 = cf(1.3,0.4,0)*angles(rad(125.1),rad(19.6),rad(24.4))},Easing,Direction,Time)
  Tween(neck,{C0 = neckc0*cf(0,0,0)*angles(rad(0),rad(0),rad(65.6))},Easing,Direction,Time)
  swait(Time)
sound(3755636825,rightarm,4,1)
  	local Time,Easing,Direction = .12,'Quad','InOut'
  Tween(rootjoint,{C0 = cf(0,0,-0)*angles(rad(-18.5),rad(63.4),rad(0))*rootc0},Easing,Direction,Time)
  Tween(lh,{C0 = cf(-0.5,-1.2,-0.1)*angles(rad(1.7),rad(11.2),rad(11.2))},Easing,Direction,Time)
  Tween(rh,{C0 = cf(0.5,-0.8,-0.5)*angles(rad(2.7),rad(-7.6),rad(23.6))},Easing,Direction,Time)
  Tween(la,{C0 = cf(-1.3,0.5,0.3)*angles(rad(8.5),rad(40),rad(-31.9))},Easing,Direction,Time)
  Tween(ra,{C0 = cf(1.6,0.7,-0.4)*angles(rad(81.4),rad(25.2),rad(68.7))},Easing,Direction,Time)
  Tween(neck,{C0 = neckc0*cf(0,0,-0)*angles(rad(-30),rad(0),rad(-60))},Easing,Direction,Time)
  swait(Time)
sound(3750958498,rightarm,7,.65)
sound(3929466751,rightarm,7,1)
Effect({cf=attcf(rightarm.RightGripAttachment),moveto=nil,clr=colors[1],clr2=colors[2],mtype="S",waits=30,size=Vector3.new(1,1,1),size2=Vector3.new(10,10,10),radX=0,radY=0,radZ=0,mat="Neon",lock=false,tran=0,tran2=1})
Effect({cf=attcf(rightarm.RightGripAttachment),moveto=nil,clr=colors[1],clr2=colors[2],mtype="S",waits=30,size=Vector3.new(1,1,1),size2=Vector3.new(7,7,7),radX=0,radY=0,radZ=0,mat="Neon",lock=false,tran=0,tran2=1})
for i = 1,3 do
	Effect({cf=attcf(rightarm.RightGripAttachment)*randomangle(),moveto=nil,clr=efcols[1],clr2=efcols[2],mtype="W",waits=35,size=Vector3.new(1,.35,1),size2=Vector3.new(13,.4,13),radX=0,radY=random(-6,6),radZ=0,mat="Neon",lock=false,tran=0,tran2=1})
	Effect({cf=attcf(rightarm.RightGripAttachment)*randomangle(),moveto=nil,clr=efcols[1],clr2=efcols[2],mtype="Slash",waits=35,size=Vector3.new(.01,.01,.01),size2=Vector3.new(.075,.015,.075),radX=0,radY=random(-18,18),radZ=0,mat="Neon",lock=false,tran=0,tran2=1})
end
for i = 1,10 do
	local typs = {"S","B"}
	Effect({cf=attcf(rightarm.RightGripAttachment),moveto=attcf(rightarm.RightGripAttachment).p+randompos(15),clr=colors[1],clr2=colors[2],mtype=typs[random(1,2)],waits=30,size=Vector3.new(.45,.45,.45),size2=Vector3.new(.65,.65,.65),radX=random(-8,8),radY=random(-8,8),radZ=random(-8,8),mat="Neon",lock=false,tran=0,tran2=1})
end
aoe(rightarm.Position,13,30,50,400,false,true)

				for _,v in pairs(leftgun:GetChildren()) do
		Tween(v,{Transparency = 0},"Linear","In",.5)
	end	
				for _,v in pairs(rightgun:GetChildren()) do
		Tween(v,{Transparency = 0},"Linear","In",.5)
	end	
attack = false
end

state = 1 

function thecircle()
	attack = true
	state = state+1
	if state == 3 then state = 1 end
	  	local Time,Easing,Direction = .5,'Quad','InOut'
  Tween(rootjoint,{C0 = cf(0,-0.1,0.4)*angles(rad(23.1),rad(-1.6),rad(0))*rootc0},Easing,Direction,Time)
  Tween(lh,{C0 = cf(-0.6,-1,0)*angles(rad(-26.5),rad(11.3),rad(-5.1))},Easing,Direction,Time)
  Tween(rh,{C0 = cf(0.5,-1.1,-0.5)*angles(rad(-30.7),rad(-7.1),rad(7.5))},Easing,Direction,Time)
  Tween(la,{C0 = cf(-1.4,0.4,0.3)*angles(rad(36.2),rad(12),rad(-20.5))},Easing,Direction,Time)
  Tween(ra,{C0 = cf(1.3,0.4,0.2)*angles(rad(36.3),rad(-11.7),rad(20.8))},Easing,Direction,Time)
  Tween(neck,{C0 = neckc0*cf(0,0,0.3)*angles(rad(11.8),rad(0),rad(0.3))},Easing,Direction,Time)
  swait(Time)
  	local Time,Easing,Direction = .2,'Quad','InOut'
  Tween(rootjoint,{C0 = cf(0,0,-0.1)*angles(rad(-17.2),rad(-1.6),rad(0))*rootc0},Easing,Direction,Time)
  Tween(lh,{C0 = cf(-0.6,-1,-0.2)*angles(rad(14),rad(11.4),rad(-6.2))},Easing,Direction,Time)
  Tween(rh,{C0 = cf(0.6,-0.9,-0.6)*angles(rad(9.4),rad(-6.9),rad(6.5))},Easing,Direction,Time)
  Tween(la,{C0 = cf(-1.4,0.2,-0.2)*angles(rad(36.2),rad(12),rad(-20.5))},Easing,Direction,Time)
  Tween(ra,{C0 = cf(1.3,0.2,-0.2)*angles(rad(36.3),rad(-11.7),rad(20.8))},Easing,Direction,Time)
  Tween(neck,{C0 = neckc0*cf(0,0,0)*angles(rad(3.2),rad(0),rad(0.1))},Easing,Direction,Time)
local circl = part(effects,"Neon",1,colors[1],vt(1,.1,1),true,"ball")
circl.CFrame = rootpart.CFrame*cf(0,-3,0)
Tween(circl,{Size = vt(50,.1,50),Transparency = 0},"Quad","InOut",.75)
sound(3750994166,circl,4,2)
  swait(Time*2)
	coroutine.wrap(function()
	if state == 1 then
	for i = 1,23 do
		swait(.15)
		local wh = cf(random(-circl.Size.X/2,circl.Size.X/2),0,random(-circl.Size.X/3,circl.Size.X/3))
		Effect({cf=circl.CFrame*wh,moveto=nil,clr=colors[1],mtype="S",waits=40,size=Vector3.new(1,1,1),size2=Vector3.new(7,12,7)*2,radX=0,radY=0,radZ=0,mat="Neon",lock=false,tran=0,tran2=1})
		Effect({cf=circl.CFrame*wh,moveto=nil,clr=colors[1],mtype="S",waits=40,size=Vector3.new(1,1,1),size2=Vector3.new(7,12,7)*1.5,radX=0,radY=0,radZ=0,mat="Neon",lock=false,tran=0,tran2=1})
		Effect({cf=circl.CFrame*wh,moveto=nil,clr=colors[1],mtype="S",waits=40,size=Vector3.new(1,1,1),size2=Vector3.new(2,22,2)*2,radX=0,radY=0,radZ=0,mat="Neon",lock=false,tran=0,tran2=1})
		for i = 1,3 do
		Effect({cf=circl.CFrame*wh*angles(0,0,rad(random(-20,20))),moveto=nil,clr=efcols[1],clr2=efcols[2],mtype="W",waits=65,size=Vector3.new(1,.7,1),size2=Vector3.new(9,.9,9)*2,radX=0,radY=random(-8,8),radZ=0,mat="Neon",lock=false,tran=0,tran2=1})
		end
		soundtopos(circl.CFrame*wh,3750994166,random(8,12)/10,5)
		soundtopos(circl.CFrame*wh,192410084,random(10,14)/10,5)
		aoe(circl.CFrame*wh.p,15,30,40,50,false,true)
	end
	end
	if state == 2 then
	for _,h in pairs(FindNearestHead(circl.Position,30)) do
		if h:FindFirstChild("Torso") or h:FindFirstChild("UpperTorso") then
			local ttors = h:FindFirstChild("Torso") or h:FindFirstChild("UpperTorso")
			local tt = part(effects,"Neon",1,Color3.fromRGB(185, 92, 0),vt(.5,.5,.5),true)
			tt.CFrame = circl.CFrame*cf(random(-circl.Size.X/2,circl.Size.X/2),0,random(-circl.Size.X/3,circl.Size.X/3))
			Tween(tt,{CFrame = cf(tt.Position,ttors.Position),Transparency = 0},"Quad","InOut",.6)
			swait(.15)
			local dd = (ttors.Position-tt.Position).Magnitude
			Tween(tt,{Size = vt(1,1,dd),CFrame = cf(tt.Position,ttors.Position)*cf(0,0,-dd/2)},"Quad","InOut",.35)
			sound(304529688,tt,3,random(12,14)/10,true)
			delay(.35,function()
			Tween(tt,{Transparency = 1},"Linear","In",.6)
			debris:AddItem(tt,.6)
			Effect({cf=ttors.Position,moveto=nil,clr=colors[1],mtype="Box",waits=40,size=ttors.Size,size2=ttors.Size*1.4,radX=0,radY=0,radZ=0,mat="Neon",lock=false,tran=0,tran2=1})	
			ttors:Destroy()
			end)
		end	
	end
	end
	local del = 0
	if state == 1 then del = 0 elseif state == 2 then del =.75 end
	delay(del,function()
	Tween(circl,{Color = colors[2],Size = vt(),Transparency = 1},"Quad","InOut",.75)
	debris:AddItem(circl,.75)	
	end)
	end)()	
	attack = false
end

mouse.Button1Down:Connect(function()
	mousehold = true
	if attack == false then
		shoot()
	end
end)

mouse.Button1Up:Connect(function()
	mousehold = false
end)

mouse.KeyDown:Connect(function(k)
	keyhold = true
	if k == "z" and attack == false then
		bombs()
	end
	
	if k == "x" and attack == false then
		die()
	end
	if k == "c" and attack == false then
		throwshoot()
	end
	
	if k == "v" and attack == false then
		twopunches()
	end
	
	if k == "b" and attack == false then
		thecircle()
	end
	
	if k == "m" then cs() end
end)

mouse.KeyUp:Connect(function(k)
	keyhold = false
end)

while true do
	Swait()
	sine = sine + change
	local torsoverticalvel = rootpart.Velocity.Y
	local torsovel = (rootpart.Velocity * vt(1, 0, 1)).Magnitude
	local hitfloor,hitpos,normal = raycast(rootpart.Position,(cf(rootpart.Position, rootpart.Position+vt(0,-1,0))).lookVector,4+humanoid.HipHeight,character)
	local speedval = 12/(humanoid.WalkSpeed/16)
	local Walking = humanoid.MoveDirection.magnitude>0
	local FwdDir = (Walking and humanoid.MoveDirection*rootpart.CFrame.lookVector or vt())
	local RigDir = (Walking and humanoid.MoveDirection*rootpart.CFrame.rightVector or vt())
	local Vec = {
		X=RigDir.X+RigDir.Z,
		Z=FwdDir.X+FwdDir.Z
	};
	local Divide = 1
	if(Vec.Z<0)then
		Divide=math.clamp(-(1.25*Vec.Z),1,2)
	end
	Vec.Z = Vec.Z/Divide
	Vec.X = Vec.X/Divide
	if torsoverticalvel > 1 and not hitfloor then
		anim = "jump"
		if attack == false then
		local Alpha = .2
  		rootjoint.C0 = rootjoint.C0:lerp(cf(0,0,0)*angles(rad(15.2),rad(0),rad(0))*rootc0,Alpha)
  		lh.C0 = lh.C0:lerp(cf(-0.5,-1.1,0)*angles(rad(-21),rad(0),rad(0)),Alpha)
 		rh.C0 = rh.C0:lerp(cf(0.5,-0.4,-1)*angles(rad(-18.6),rad(0),rad(0)),Alpha)
  		la.C0 = la.C0:lerp(cf(-1.5,0.5,0.2)*angles(rad(-9.7),rad(8.3),rad(-8.1)),Alpha)
  		ra.C0 = ra.C0:lerp(cf(1.5,0.5,0.2)*angles(rad(-9.7),rad(-8.3),rad(8.1)),Alpha)
  		neck.C0 = neck.C0:lerp(neckc0*cf(0,0,0)*angles(rad(-9.6),rad(0),rad(0)),Alpha)
		end
	elseif torsoverticalvel < -1 and not hitfloor then
		anim = "fall"
		local Alpha = .2
		if attack == false then
 		rootjoint.C0 = rootjoint.C0:lerp(cf(0,0,-0.1)*angles(rad(-16.1),rad(0),rad(0))*rootc0,Alpha)
  		lh.C0 = lh.C0:lerp(cf(-0.5,-1,-0.3)*angles(rad(-12.5),rad(0),rad(0)),Alpha)
  		rh.C0 = rh.C0:lerp(cf(0.5,-0.2,-1.1)*angles(rad(-16),rad(0),rad(0)),Alpha)
 		la.C0 = la.C0:lerp(cf(-1.4,0.4,0.1)*angles(rad(35.1),rad(11.2),rad(-39.1)),Alpha)
  		ra.C0 = ra.C0:lerp(cf(1.4,0.4,0.1)*angles(rad(35.5),rad(-15.8),rad(40.7)),Alpha)
  		neck.C0 = neck.C0:lerp(neckc0*cf(0,0,0)*angles(rad(-5),rad(0),rad(0)),Alpha)
		end
	elseif torsovel < 1 and hitfloor then
		anim = "idle"
		local Alpha = .1
		if attack == false then
  		rootjoint.C0 = rootjoint.C0:lerp(cf(0,0+.07*cos(sine/25),0)*angles(rad(-2+1*cos(sine/25)),rad(37.9),rad(0))*rootc0,Alpha)
  		lh.C0 = lh.C0:lerp(cf(-0.6,-1-.07*cos(sine/25),0)*angles(rad(-3.3-1*cos(sine/25)),rad(11.5),rad(-5.7)),Alpha)
  		rh.C0 = rh.C0:lerp(cf(0.5,-1-.07*cos(sine/25),-0.5)*angles(rad(-7.7-1*cos(sine/25)),rad(-6.9),rad(6.9)),Alpha)
  		la.C0 = la.C0:lerp(cf(-1.4,0.3+.085*sin(sine/25),0)*angles(rad(55.3+3*cos(sine/50)),rad(11.8+2.4*cos(sine/25)),rad(-20.6-2.8*sin(sine/25))),Alpha)
  		ra.C0 = ra.C0:lerp(cf(1.3,0.3+.085*sin(sine/25),-0.1)*angles(rad(55.3),rad(-11.8+2.4*cos(sine/25)),rad(20.6+2.8*sin(sine/25))),Alpha)
  		neck.C0 = neck.C0:lerp(neckc0*cf(0,0,0)*angles(rad(-5.5*sin(sine/25)),rad(0),rad(-37.9)),Alpha)
		end
	elseif torsovel > 1 and torsovel < 22 and hitfloor then
		anim = "walk"
		local Alpha = .1
		if attack == false then
  		rootjoint.C0 = rootjoint.C0:lerp(cf(0,.14-.07*cos(sine/speedval*2),0)*angles(rad(-15*Vec.Z),rad(5*sin(sine/speedval)),rad(-12.5*Vec.X))*rootc0,Alpha)
  		lh.C0 = lh.C0:lerp(cf(-0.5,-1+.15*sin(sine/speedval),-.1+.12*sin(sine/speedval)*Vec.Z)*angles(rad(-30*cos(sine/speedval)*Vec.Z),rad(2*cos(sine/speedval)),rad(-20*cos(sine/speedval)*Vec.X)),Alpha)
  		rh.C0 = rh.C0:lerp(cf(0.5,-1-.15*sin(sine/speedval),-.1-.12*sin(sine/speedval)*Vec.Z)*angles(rad(30*cos(sine/speedval)*Vec.Z),rad(-2*cos(sine/speedval)),rad(20*cos(sine/speedval)*Vec.X)),Alpha)
  		la.C0 = la.C0:lerp(cf(-1.5,0.5,-.065*cos(sine/speedval))*angles(rad(30*cos(sine/speedval)*Vec.Z),rad(0),rad(0)),Alpha)
  		ra.C0 = ra.C0:lerp(cf(1.5,0.5,.065*cos(sine/speedval))*angles(rad(-30*cos(sine/speedval)*Vec.Z),rad(0),rad(0)),Alpha)
  		neck.C0 = neck.C0:lerp(neckc0*cf(0,0,0)*angles(rad(0),rad(0),rad(-26*Vec.X)),Alpha)
		elseif attack == true and movelegs == true then
		lh.C0 = lh.C0:lerp(cf(-0.5,-1+.15*sin(sine/speedval),-.1+.12*sin(sine/speedval)*Vec.Z)*angles(rad(-30*cos(sine/speedval)*Vec.Z),rad(2*cos(sine/speedval)),rad(-20*cos(sine/speedval)*Vec.X)),Alpha)
  		rh.C0 = rh.C0:lerp(cf(0.5,-1-.15*sin(sine/speedval),-.1-.12*sin(sine/speedval)*Vec.Z)*angles(rad(30*cos(sine/speedval)*Vec.Z),rad(-2*cos(sine/speedval)),rad(20*cos(sine/speedval)*Vec.X)),Alpha)
		end
	elseif torsovel >= 22 and hitfloor then
		anim = "run"
		local runval = speedval*2
		local Alpha = .1
		if attack == false then
		rootjoint.C0 = rootjoint.C0:lerp(cf(0,.17-.12*cos(sine/runval*2),0)*angles(rad(-15*Vec.Z),rad(5*sin(sine/runval)),rad(-12.5*Vec.X))*rootc0,Alpha)
  		lh.C0 = lh.C0:lerp(cf(-0.5,-1+.6*sin(sine/runval),-.1+.24*sin(sine/runval)*Vec.Z)*angles(rad(-80*cos(sine/runval)*Vec.Z),rad(4*cos(sine/runval)),rad(-40*cos(sine/runval)*Vec.X)),Alpha)
  		rh.C0 = rh.C0:lerp(cf(0.5,-1-.6*sin(sine/runval),-.1-.24*sin(sine/runval)*Vec.Z)*angles(rad(80*cos(sine/runval)*Vec.Z),rad(-4*cos(sine/runval)),rad(40*cos(sine/runval)*Vec.X)),Alpha)
  		la.C0 = la.C0:lerp(cf(-1.4,0.3+.085*sin(sine/25),.4)*angles(rad(-55.3+3*cos(sine/50)),rad(11.8+2.4*cos(sine/25)),rad(-20.6-2.8*sin(sine/25))),Alpha)
  		ra.C0 = ra.C0:lerp(cf(1.3,0.3+.085*sin(sine/25),.4)*angles(rad(-55.3),rad(-11.8+2.4*cos(sine/25)),rad(20.6+2.8*sin(sine/25))),Alpha)
  		neck.C0 = neck.C0:lerp(neckc0*cf(0,0,0)*angles(rad(0),rad(0),rad(-26*Vec.X)),Alpha)
		end
	end
	rightw.C0 = rightw.C0:lerp(cf(.25-.18*sin(sine/36),.3+.15*cos(sine/36),0)*angles(rad(-1*cos(sine/36)),rad(2*sin(sine/36)),rad(7*sin(sine/72))),.1)
	leftw.C0 = leftw.C0:lerp(cf(-.25+.18*sin(sine/36),.3-.15*cos(sine/36),0)*angles(rad(1*cos(sine/36)),rad(-2*sin(sine/36)),rad(-7*sin(sine/72))),.1)
	song.SoundId,song.Looped,song.Pitch,song.Volume,song.Playing = "rbxassetid://"..songid,true,1,3,true
	humanoid.Health,humanoid.MaxHealth = 9e9,9e9
end