repeat
	task.wait()
until game:IsLoaded() and game.Players.LocalPlayer

if not Executed then
	game:GetService("StarterGui"):SetCore("SendNotification", {Title = "BOOGA-HUB V4", Text = "Hello " .. game.Players.LocalPlayer.Name .. " ,welcome to the best DBZFS Hub", Duration = 10})
else
	game:GetService("StarterGui"):SetCore("SendNotification", {Title = "BOOGA-HUB V4", Text = "BOOGA HUB ALREADY LOADED", Duration = 10})
	while true do
		task.wait(6000)
	end
end


-- [[Made by BOOGABLOZxD / FortniBloxYT#2555 / Discord Server : https://discord.gg/YCvCSqADtV]] --
-- [[At what are you looking skids]] --

getgenv().Executed = true
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local BoogaHub = Library.new("BOOGA-HUB V4", 5013109572)
local Player, UIS, RS, VU, TeleportService , KIGMToggled, TeleSpeed, SpamMelee, AntiGrabRespawn, SpamKi, ServerDestroyer, RespawnKey, OtherRespawnKey, Buying, BuyingEXP, SpammingMoves, AutoFarming, Attacking, HeavyAttacking , SilentEGM, ResetStamina, Ressetting, BeanSpam, AutoFarming, AutoForm, TpKey, NpcsMode, AutoBlock, LoopAttach, OldPercentatge, Power = game.Players.LocalPlayer, game:GetService("UserInputService"), game:GetService("RunService"),game:GetService("VirtualUser"),game:GetService("TeleportService"),false,false,false,false,false,false,Enum.KeyCode.Comma,Enum.KeyCode.Clear,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,Enum.KeyCode.Clear,100,100
local TouchyCFrame
local Toggled = false
if game.PlaceId == 536102540 then
	TouchyCFrame = workspace.Touchy.Part.CFrame
end
local SlowValues = {"xx","Action","Activity","SuperAction","Attacking","Using","heavy","hyper","Hyper","Tele","tele","Slow","Killed","KiBlasted","Hyper","Dodging","KiBlasting","BStun","creator","KnockBacked","NotHardBack","evasive","Velocity","zDASZzxc"}
local MeleeMoves = {"Meteor Crash","Anger Rush","Wolf Fang Fist","Neo Wolf Fang Fist","Deadly Dance","God Slicer","Sweep Kick","TS Molotov","Flash Skewer","Demon Flash","Strong Kick","Masenko","Big Bang Kamehameha","Flash Strike","Aerial Breaker"}
local KiMoves = {"Blaster Meteor","Masenko","Big Bang Kamehameha","Sudden Storm","Super Volley","Tribeam","Beam Scatter","Justice Flash","Chain Destruco Disk","Spirit Ball","Giant Storm","Super Death Beam","Death Beam","Divine Lasso","Explosive Grip","Hellzone Grenade"}
local FireValues = {"Attacking","Action","heavy","hyper","Hyper","Using"}
local Trackables = {"KiBlast","Blast"}
local Magnitude = 12

local Themes = {
	Background = Color3.fromRGB(24, 24, 24),
	Glow = Color3.fromRGB(190, 0, 0),
	Accent = Color3.fromRGB(215, 0, 0),
	LightContrast = Color3.fromRGB(20, 20, 20),
	DarkContrast = Color3.fromRGB(14, 14, 14),
	TextColor = Color3.fromRGB(255, 255, 255),
}

local function ResetRace()
	if Player.Character.Race.Value == "Saiyan" or Player.Character.Race.Value == "Android" or Player.Character.Race.Value == "Human" then
		return true
	else
		return false
	end
end

local function ResetCharacter()
	Player.Character.Humanoid.Health = 0
	Player.Character.Head:Destroy()
end

local function Respawn()
	if game.PlaceId ~= 536102540 then ResetCharacter() return end
	if game.PlaceId == 536102540 and not ResetRace() then ResetCharacter() return end
	Player.Character:WaitForChild("HumanoidRootPart")
	Toggled = true
	local CFrame = Player.Character.HumanoidRootPart.CFrame
	Player.Backpack.ServerTraits.ChatStart:FireServer(workspace.FriendlyNPCs["Hair Stylist"])
	task.wait(.430)
	Player.Backpack.ServerTraits.ChatAdvance:FireServer({"Yes"})
	task.wait(.430)
	Player.Backpack.HairScript.RemoteEvent:FireServer("woah")

	local HumanoidRootPart = Player.Character:WaitForChild("HumanoidRootPart")
	Player.CharacterAdded:Connect(function()
		if not Toggled then
			return
		end
		repeat
			task.wait()
			Player.Character.HumanoidRootPart.CFrame = CFrame
		until Player.Character:FindFirstChild("PowerOutput")
		Toggled = false
	end)
end

local function changeSlot(Slot,CF)
    Player.Backpack.ServerTraits.ChatStart:FireServer(workspace.FriendlyNPCs["Character Slot Changer"])
    task.wait(.550)
    Player.Backpack.ServerTraits.ChatAdvance:FireServer({"Yes"})
    task.wait(.550)
    Player.Backpack.ServerTraits.ChatAdvance:FireServer({"k"})
    task.wait(.550)
    Player.Backpack.ServerTraits.ChatAdvance:FireServer({Slot})
	task.wait(4)
	game:GetService("TweenService"):Create(Player.Character.HumanoidRootPart,TweenInfo.new(1.2,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0),{CFrame = CF}):Play()
end

local function buyBeans()
	Player.Backpack.ServerTraits.ChatStart:FireServer(game:GetService("Workspace").FriendlyNPCs["Korin BEANS"])
	task.wait(.450)
	Player.Backpack.ServerTraits.ChatAdvance:FireServer({"k"})
	task.wait(.450)
	Player.Backpack.ServerTraits.ChatAdvance:FireServer({"k"})
	task.wait(.450)
	Player.Backpack.ServerTraits.ChatAdvance:FireServer({Types})
	task.wait(.450)
	Player.Backpack.ServerTraits.ChatAdvance:FireServer({"k"})
	task.wait(.450)
	Player.Backpack.ServerTraits.ChatAdvance:FireServer({amountt})
	task.wait(.450)
	Player.Backpack.ServerTraits.ChatAdvance:FireServer({"k"})
	task.wait(.450)
	Player.Backpack.ServerTraits.ChatAdvance:FireServer({Color})
	task.wait(.450)
	Player.Backpack.ServerTraits.ChatAdvance:FireServer({"k"})
	task.wait(.450)
	if amountt == "80" then
		Player.Backpack.ServerTraits.ChatAdvance:FireServer({"Yes"})
	else
		Player.Backpack.ServerTraits.ChatAdvance:FireServer({"Use Zenni"})
	end
	task.wait(.450)
	Player.Backpack.ServerTraits.ChatAdvance:FireServer({"k"})
	task.wait(1)
end

local function findExtra(PlayerName)
	if game.Players:FindFirstChild(PlayerName) then
		if workspace.Live[PlayerName]:FindFirstChild("RebirthWings") then
			Extraa = "Rebirth"
			return Extraa
		end
		if workspace.Live[PlayerName]:FindFirstChild("RealHalo") then
			Extraa = "Heaven"
			return Extraa
		end
		if not workspace.Live[PlayerName]:FindFirstChild("RebirthWings") and not workspace.Live[PlayerName]:FindFirstChild("RealHalo") then
			Extraa = "Pure"
			return Extraa
		end
	end
end

UIS.InputBegan:Connect(function(Input,GameProcessedEvent)
	if GameProcessedEvent then return end
	if Input.KeyCode == RespawnKey then
		if game.PlaceId == 536102540 and ResetRace() then
			Respawn()
		else
			ResetCharacter()
		end
	end
end)

UIS.InputBegan:Connect(function(Input,GameProcessedEvent)
	if GameProcessedEvent then return end
	if Input.KeyCode == OtherRespawnKey then
		game.Players.LocalPlayer.Backpack.ServerTraits.ChatStart:FireServer(game.Workspace.FriendlyNPCs["Hair Stylist"])
		task.wait(.450)
		game.Players.LocalPlayer.Backpack.ServerTraits.ChatAdvance:FireServer({"Yes"})
		task.wait(.450)
		game.Players.LocalPlayer.Backpack.HairScript.RemoteEvent:FireServer("woah")
	end
end)

UIS.InputBegan:Connect(function(Input,GameProcessedEvent)
	if GameProcessedEvent then return end
	if Input.KeyCode == TpKey then
		local function findNearest()
			local Nearest = nil
			local t = {math.huge}
			for _,v in pairs(workspace.Live:GetChildren()) do
				if v:FindFirstChild("Damagers") then
					continue
				end
				local Distance = (Player.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).magnitude
				if v.Name ~= Player.Name and Distance < t[1] then
					t[1] = Distance
					Nearest = v
				end
			end
			return Nearest
		end
		Player.Backpack.ServerTraits.Vanish:FireServer()
		local Target = findNearest()
		Player.Character.HumanoidRootPart.CFrame = Target.HumanoidRootPart.CFrame * CFrame.new(0,0,2)
		workspace.CurrentCamera.CFrame = Target.Head.CFrame
	end
end)

local Main, MainSection = BoogaHub:addPage("Main", 5012544693)
local MainSection = Main:addSection("Main | Section 1")
MainSection:addToggle("No Slow", nil, function(NS)
	if NS then
		NSRun = RS.RenderStepped:Connect(function()
			pcall(function()
				for _, v in ipairs(Player.Character:GetChildren()) do
					if table.find(SlowValues, v.Name) then
						v:Destroy()
					end
					if v.Name == "Block" and v.Value then
						v.Value = false
					end
				end
			end)
		end)
	else
		if NSRun then
			NSRun:Disconnect()
		end
	end
end)

MainSection:addToggle("Better No Slow", nil, function(BNS)
	if BNS then
		BNSRun = RS.RenderStepped:Connect(function()
			pcall(function()
				for _, v in ipairs(Player.Character:GetChildren()) do
					if table.find(SlowValues, v.Name) then
						v:Destroy()
					end
					if v.Name == "Block" and v.Value then
						v.Value = false
					end
					if v:FindFirstChild("BodyVelocity") then
						v.BodyVelocity:Destroy()
					end
				end
			end)
		end)
	else
		if BNSRun then
			BNSRun:Disconnect()
		end
	end
end)

local MainGodModesSection = Main:addSection("Main | Section 2 | GodModes")

MainGodModesSection:addButton("Universal GodMode", function(UNIGM) -- Universal God Mode Was Not Made By Booga
	if UNIGM and not Activated then
		Activated = true
		getgenv().toggled = true

		repeat
			task.wait()
		until game:IsLoaded()
		repeat
			task.wait()
		until game.Players.LocalPlayer.Character
		game.Players.LocalPlayer.Character:WaitForChild("Prestige")
		task.wait(1)
		function uni_god()
			char = game.Players.LocalPlayer.Character
			bp = game.Players.LocalPlayer.Backpack
			game.Players.LocalPlayer.Character:WaitForChild("Prestige")
			task.wait(0.5)
			local aas = bp:FindFirstChild("Afterimage Strike")
			if not aas then
				return print("unsuccessful")
			end
			aas.Parent = char
			pcall(function()
				char.PrimaryPart:FindFirstChild("VanishParticle"):Destroy()
			end)
			repeat
				task.wait()
				aas.Targeter:FireServer(char)
				aas:Activate()
			until char:FindFirstChild("i")
			aas:Deactivate()
		end
		getgenv().uni_god_hookfunc = false
		if not uni_god_hookfunc then
			getgenv().uni_god_hookfunc = true
			old = hookmetamethod(game, "__namecall", function(self, ...)
				nc = getnamecallmethod()
				args = { ... }
				if nc == "FireServer" and self.Name == "Input" then
					if args[1][1] == "blockoff" or args[1][1] == "blockon" then
						return nil
					end
				end
				return old(self, ...)
			end)
		end

		if toggled then
			uni_god()
			uni_char_added = game.Players.LocalPlayer.CharacterAdded:Connect(uni_god)
		end
	end
end)

MainGodModesSection:addToggle("Earth God Mode", nil, function(EGM)
	if EGM then
		EGMRun = RS.RenderStepped:Connect(function()
			if not Player.Character:FindFirstChild("HumanoidRootPart") then
				return
			end
			firetouchinterest(Player.Character.HumanoidRootPart, workspace.Touchy.Part, 0)
			firetouchinterest(Player.Character.HumanoidRootPart, workspace.Touchy.Part, 1)
			pcall(function()
				if Player.PlayerGui:FindFirstChild("Popup") then
					Player.PlayerGui.Popup:Destroy()
				end
			end)
		end)
	else
		if EGMRun then
			EGMRun:Disconnect()
			workspace.Touchy.Part.CFrame = TouchyCFrame
		end
	end
end)

MainGodModesSection:addToggle("Ki God Mode", nil, function(KIGM)
	if KIGM then
		KIGMToggled = true
		local function kigm()
			Player.Backpack["Energy Wave"].Parent = Player.Character
			Player.Character["Energy Wave"]:Activate()
			repeat
				task.wait()
			until Player.Character:FindFirstChild("Blast")
			Player.Character:WaitForChild("Blast").Mesh:Destroy()
			Player.Character["Energy Wave"]:Deactivate()
			wait(0.3)
			if Player.Character:FindFirstChild("Action") then
				Player.Character["Action"]:Destroy()
			end
			if Player.Backpack:FindFirstChild("Super Death Beam") then
				Player.Backpack["Super Death Beam"].Parent = Player.Character
				Player.Character["Super Death Beam"]:Activate()
				wait(0.4)
				Player.Character["Super Death Beam"]:Deactivate()
				wait(0.4)
				if Player.Character:FindFirstChild("Action") then
					Player.Character.Action:Destroy()
				end
			end
		end
		kigm()
		Player.CharacterAdded:Connect(function()
			if not KIGMToggled then
				return
			end
			task.wait(2.5)
			kigm()
		end)
	else
		KIGMToggled = false
		Respawn()
	end
end)

MainGodModesSection:addToggle("Ranked/HTC/Basic God Mode", nil, function(BGM)
	if BGM then
		Player.Character.Stats["Phys-Resist"]:Destroy()
		Player.Character.Stats["Ki-Resist"]:Destroy()
	else
		Respawn()
	end
end)

MainGodModesSection:addToggle("Hair God Mode",nil,function(HGM)
	if HGM then
		pcall(function()
			local AnimateClone = Player.Character.Animate:Clone()
			Player.Character.Parent = workspace.Effects
			wait()
			Player.Backpack.ServerTraits.ChatStart:FireServer(game:GetService("Workspace").FriendlyNPCs["Hair Stylist"])
			task.wait(.6)
			Player.Backpack.ServerTraits.ChatAdvance:FireServer({"Yes"})
			repeat task.wait() until Player.PlayerGui:FindFirstChild("Setup")
			Player.PlayerGui.Setup.Enabled = false
			task.wait(1)
			AnimateClone.Parent = Player.Character
		end)
	else
		ResetCharacter()
		local oldcf = Player.Character.HumanoidRootPart.CFrame 
        task.wait(6.5)
        local TI  = TweenInfo.new(.3,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0)
        local Goals = {CFrame = oldcf}
        game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TI,Goals):Play()
	end
end)

MainGodModesSection:addToggle("Silent Earth God Mode (PvP)", nil,function(silentEGM)
	if silentEGM then
		SilentEGM = true
		DestroyGui = RS.RenderStepped:Connect(function()
			pcall(function()
				if Player.PlayerGui:FindFirstChild("Popup") then
					Player.PlayerGui.Popup:Destroy()
				end
			end)
		end)
		while SilentEGM do
			task.wait(.6)
			if not workspace.Live:FindFirstChild(Player.Name) then
				continue
			end
			if not Player.Character:FindFirstChild("HumanoidRootPart") then
				continue
			end
			if Player.Character.Humanoid.MoveDirection == Vector3.new(0,0,0) or Player.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") or Player.Character.Humanoid.WalkSpeed == 0 then
				firetouchinterest(Player.Character.HumanoidRootPart, workspace.Touchy.Part, 1)
				workspace.Touchy.Part.CanTouch = false
				workspace.Touchy.Part.CFrame = TouchyCFrame
				if Player.Character:FindFirstChild("i") then
					Player.Character.i:Destroy()
				end
				continue
			end
			if Player.Character.Humanoid.WalkSpeed > 0 then
				workspace.Touchy.Part.CanTouch = true
				firetouchinterest(Player.Character.HumanoidRootPart, workspace.Touchy.Part, 0)
				firetouchinterest(Player.Character.HumanoidRootPart, workspace.Touchy.Part, 1)
			end
		end
	else
		SilentEGM = false
		DestroyGui:Disconnect()
		workspace.Touchy.Part.CFrame = TouchyCFrame
	end
end)

local MainSection3 = Main:addSection("Main Toggles | Section 3")
MainSection3:addKeybind("Fast Reset", Enum.KeyCode.Comma, function()

end, function(Key) 
	RespawnKey = Key.KeyCode
end)

MainSection3:addKeybind("Fast Reset (No Save Pos)", Enum.KeyCode.Clear, function()

end, function(Key) 
	OtherRespawnKey = Key.KeyCode
end)

MainSection3:addToggle("Dragon Throw Glitch", nil, function(DT)
	if DT then
		DTRUN = RS.RenderStepped:Connect(function()
			pcall(function()
				if Player.Character:FindFirstChild("Dragon Throw") then
					if Player.Character["Dragon Throw"]:FindFirstChild("Activator"):FindFirstChild("Flip") then
						Player.Character["Dragon Throw"].Activator.Flip:Destroy()
					end
				end
			end)
		end)
	else
		DTRUN:Disconnect()
	end
end)

MainSection3:addToggle("Dragon Crush Glitch", nil, function(DTC)
	if DTC then
		DTCRUN = RS.RenderStepped:Connect(function()
			pcall(function()
				if Player.Character:FindFirstChild("Dragon Crush") then
					if Player.Character["Dragon Crush"]:FindFirstChild("Activator"):FindFirstChild("Flip") then
						Player.Character["Dragon Crush"].Activator.Flip:Destroy()
					end
				end
			end)
		end)
	else
		DTCRUN:Disconnect()
	end
end)

MainSection3:addToggle("Dragon Crush Yeet", nil, function(DCYEET)
	if DCYEET then
		DCYeetRun = RS.RenderStepped:Connect(function()
			pcall(function()
				if Player.Character:FindFirstChild("Dragon Crush") then
					if Player.Character["Dragon Crush"]:FindFirstChild("Activator"):FindFirstChild("HitDown") then
						Player.Character["Dragon Crush"]:WaitForChild("Activator").HitDown:Destroy()
					end
				end
			end)
		end)
	else
		DCYeetRun:Disconnect()
	end
end)

MainSection3:addToggle("Bone Crush Glitch", nil, function(BCG)
	if BCG then
		BCGGlitch = RS.RenderStepped:Connect(function()
			if Player.Character:FindFirstChild("Bone Crush") then
				Player.Character:FindFirstChild("Bone Crush").Activator.Crash:Destroy()
			end
		end)
	else
		BCGGlitch:Disconnect()
	end
end)

MainSection3:addToggle("Trash Glitch", nil, function(TRG)
	if TRG then
		TRGRun = RS.RenderStepped:Connect(function()
			pcall(function()
				if Player.Character:FindFirstChild("Trash???") then
					if Player.Character["Trash???"]:FindFirstChild("Activator"):FindFirstChild("Hit1") then
						Player.Character:WaitForChild("Trash???").Activator.Hit1:Destroy()
					end
				end

				if Player.Character:FindFirstChild("Trash?") then
					if Player.Character["Trash?"]:FindFirstChild("Activator"):FindFirstChild("Hit1") then
						Player.Character:WaitForChild("Trash?").Activator.Hit1:Destroy()
					end
				end
			end)
		end)
	else
		TRGRun:Disconnect()
	end
end)

MainSection3:addToggle("Anti-Glitch", nil, function(AG)
	if AG then
		AGRUN = RS.RenderStepped:Connect(function()
			pcall(function()
				for _, v in pairs(Player.Character:GetChildren()) do
					if v.Name == "MoveStart" then
						for _, v in pairs(Player.Character:GetDescendants()) do
							if v:IsA("BodyVelocity") and v.Name ~= "Flying" then
								v:Destroy()
							end
						end
					end
				end
			end)
		end)
	else
		AGRUN:Disconnect()
	end
end)

MainSection3:addToggle("Anti-Grab", nil, function(ANG)
	if ANG then
		if workspace:FindFirstChild("Wormhole") then
			workspace.Wormhole:Destroy()
		end
		ANGRun = RS.RenderStepped:Connect(function()
			pcall(function()
				if Player.Character:FindFirstChild("MoveStart") and not AntiGrabRespawn then
					AntiGrabRespawn = true
					task.delay(1.2, function()
						AntiGrabRespawn = false
					end)
					Respawn()
				end
			end)
		end)
	else
		ANGRun:Disconnect()
	end
end)

MainSection3:addToggle("Anti Glitch Dt Throw/Dc Throw", nil, function(AG2)
	if AG2 then
		AG2Run = RS.RenderStepped:Connect(function()
			pcall(function()
				if Player.Character.Humanoid:FindFirstChild("Animator") then
					Player.Character.Humanoid.Animator:Destroy()
				end
			end)
		end)
	else
		AG2Run:Disconnect()
		if game.PlaceId == 536102540 and ResetRace() then
			Respawn()
		else
			ResetCharacter()
		end
	end
end)

MainSection3:addToggle("Level/Prestige Hider", nil, function(LVL)
	if LVL then
		LVLRun = RS.RenderStepped:Connect(function()
			pcall(function()
				for _, v in pairs(Player.Character:GetChildren()) do
					if v.ClassName == "Model" then
						v:Destroy()
					end
				end
			end)
		end)
	else
		LVLRun:Disconnect()
		if game.PlaceId == 536102540 and ResetRace() then
			Respawn()
		else
			ResetCharacter()
		end
	end
end)

MainSection3:addToggle("Rebirth Wings-Hider", nil, function(WingHide)
	if WingHide then
		WingsHideRun = RS.RenderStepped:Connect(function()
			pcall(function()
				if Player.Character:FindFirstChild("RebirthWings"):FindFirstChild("RebirthWings") then
					Player.Character["RebirthWings"].Handle:Destroy()
				end
			end)
		end)
	else
		WingsHideRun:Disconnect()
		if game.PlaceId == 536102540 and ResetRace() then
			Respawn()
		else
			ResetCharacter()
		end
	end
end)

MainSection3:addToggle("Halo-Hider", nil, function(HaloHide)
	if HaloHide then
		HaloHideRun = RS.RenderStepped:Connect(function()
			pcall(function()
				if Player.Character:FindFirstChild("RealHalo"):FindFirstChild("Handle") then
					Player.Character["RealHalo"].Handle:Destroy()
				end
			end)
		end)
	else
		HaloHideRun:Disconnect()
		if game.PlaceId == 536102540 and ResetRace() then
			Respawn()
		else
			ResetCharacter()
		end
	end
end)

local MainSection4 = Main:addSection("Main Buttons | Section 4")

MainSection4:addTextbox("Player To Attach","",function(PlayerToAttach)
	playerToAttach = PlayerToAttach
	for _,v in pairs(game.Players:GetPlayers()) do
		if v.Name:find(playerToAttach) then
			playerToAttach = v.Name
		end
	end
end)

MainSection4:addToggle("Loop Attach", nil,function(loopAttach)
	if loopAttach then
		LoopAttach = true
		while LoopAttach do
			if not playerToAttach then
				continue
			end
			if playerToAttach == "" or not workspace.Live:FindFirstChild(playerToAttach) then
				continue
			end
			local char = Player.Character
			local tchar = workspace.Live[playerToAttach]
			local hum = Player.Character:FindFirstChildOfClass("Humanoid")
			local hrp = Player.Character.HumanoidRootPart
			local hrp2 = workspace.Live[playerToAttach].HumanoidRootPart
			hum.Name = "1"
			local newHum = hum:Clone()
			newHum.Parent = char
			newHum.Name = "Humanoid"
			wait()
			hum:Destroy()
			workspace.CurrentCamera.CameraSubject = char
			newHum.DisplayDistanceType = "None"
			local tool = Player:FindFirstChildOfClass("Backpack"):FindFirstChildOfClass("Tool") or Player.Character:FindFirstChildOfClass("Tool")
			tool.Parent = char
			hrp.CFrame = hrp2.CFrame * CFrame.new(0, 0, 0) * CFrame.new(math.random(-100, 100)/200,math.random(-100, 100)/200,math.random(-100, 100)/200)
			local n = 0
			repeat
				task.wait(.1)
				n = n + 1
				hrp.CFrame = hrp2.CFrame
			until (tool.Parent ~= char or not hrp or not hrp2 or not hrp.Parent or not hrp2.Parent or n > 250) and n > 2
		end
	else
		LoopAttach = false
	end
end)

MainSection4:addButton("Attach",function()
	if not playerToAttach then
		return
	end
	if playerToAttach == "" or not workspace.Live:FindFirstChild(playerToAttach) then
		return
	end
	local char = Player.Character
	local tchar = workspace.Live[playerToAttach]
	local hum = Player.Character:FindFirstChildOfClass("Humanoid")
	local hrp = Player.Character.HumanoidRootPart
	local hrp2 = workspace.Live[playerToAttach].HumanoidRootPart
	hum.Name = "1"
	local newHum = hum:Clone()
	newHum.Parent = char
	newHum.Name = "Humanoid"
	wait()
	hum:Destroy()
	workspace.CurrentCamera.CameraSubject = char
	newHum.DisplayDistanceType = "None"
	local tool = Player:FindFirstChildOfClass("Backpack"):FindFirstChildOfClass("Tool") or Player.Character:FindFirstChildOfClass("Tool")
	tool.Parent = char
	hrp.CFrame = hrp2.CFrame * CFrame.new(0, 0, 0) * CFrame.new(math.random(-100, 100)/200,math.random(-100, 100)/200,math.random(-100, 100)/200)
	local n = 0
	repeat
		task.wait(.1)
		n = n + 1
		hrp.CFrame = hrp2.CFrame
	until (tool.Parent ~= char or not hrp or not hrp2 or not hrp.Parent or not hrp2.Parent or n > 250) and n > 2
end)

MainSection4:addButton("Hard Reset", function()
	ResetCharacter()
end)

MainSection4:addButton("God / UI / MUI", function()
	game:GetService("ReplicatedStorage").ResetChar:FireServer() for i = 1,20,1 do game.Players.LocalPlayer.Backpack.ServerTraits.Input:FireServer({"decrease"}, true) end task.wait(.350) if game.Players.LocalPlayer.character:FindFirstChild("Killed") and game.Players.LocalPlayer.character:FindFirstChild("Action") then game.Players.LocalPlayer.character.Killed:Destroy() game.Players.LocalPlayer.character.Action:Destroy() end game.Players.LocalPlayer.Backpack.ServerTraits.Transform:FireServer("h") for i = 1,20,1 do game.Players.LocalPlayer.Backpack.ServerTraits.Input:FireServer({"increase"}, true) end
end)

MainSection4:addButton("Complete Red Quests",function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/FortniBloxYT1/Red-Quests/main/Red%20quests"))()
end)

local Misc = BoogaHub:addPage("Misc", 5012544693)
local MiscSection1 = Misc:addSection("Misc Toggles | Section 1")

MiscSection1:addSlider("Tele-Speed", 0, 0, 5000, function(telespeed) -- This TeleSpeed Was Not Made By Booga,I just optimized a bit and changed some things
	local function TeleSpeed()
		local down = false
		local velocity = Instance.new("BodyVelocity")
		velocity.maxForce = Vector3.new(10000000, 0, 10000000)

		local speed = telespeed
		local gyro = Instance.new("BodyGyro")
		gyro.maxTorque = Vector3.new(10000000, 0, 10000000)

		local hum = Player.Character.Humanoid

		local function onButton1Down(mouse)
			down = true
			velocity.Parent = game.Players.LocalPlayer.Character.UpperTorso
			velocity.velocity = hum.MoveDirection * speed
			gyro.Parent = game.Players.LocalPlayer.Character.UpperTorso
			while down do
				if not down then
					break
				end
				velocity.velocity = hum.MoveDirection * speed
				local refpos = gyro.Parent.Position
					+ (gyro.Parent.Position - workspace.CurrentCamera.CoordinateFrame.p).unit * 5
				gyro.cframe = CFrame.new(gyro.Parent.Position, Vector3.new(refpos.x, gyro.Parent.Position.y, refpos.z))
				wait(0.1)
			end
		end

		local function onButton1Up(mouse)
			velocity.Parent = nil
			gyro.Parent = nil
			down = false
		end

		local function onSelected(mouse)
			mouse.KeyDown:connect(function(k)
				if k:upper() == "Q" then
					onButton1Down(mouse)
				end
			end)
			mouse.KeyUp:connect(function(k)
				if k:upper() == "Q" then
					onButton1Up(mouse)
				end
			end)
		end

		onSelected(Player:GetMouse())
	end
	TeleSpeed()
	Player.CharacterAdded:Connect(function()
		task.wait(0.5)
		TeleSpeed()
	end)
end)

MiscSection1:addSlider("FOV", 70, 1, 120, function(FOV)
	workspace.CurrentCamera.FieldOfView = FOV
end)

MiscSection1:addTextbox("Player-TP","",function(PlayerToTp)
	if PlayerToTp == "" then
		return
	end

	for _,v in pairs(game.Players:GetPlayers()) do
		if v.Name:find(PlayerToTp) then
			PlayerToTp = v.Name
		end
	end

	if game.Players:FindFirstChild(PlayerToTp) then
		local Distance = (Player.Character.HumanoidRootPart.Position - workspace.Live[PlayerToTp].HumanoidRootPart.Position).magnitude / 10000
		game:GetService("TweenService"):Create(Player.Character.HumanoidRootPart,TweenInfo.new(Distance,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0),{CFrame = workspace.Live[PlayerToTp].HumanoidRootPart.CFrame}):Play()
	end
end)

MiscSection1:addToggle("No Shadows", nil, function(Shadow)
    if Shadow then
        game.Lighting.FogEnd = 99999
    else
        game.Lighting.FogEnd = 4000
    end
end)

MiscSection1:addToggle("Spam Melee Moves",nil,function(MeleeSpam)
	if MeleeSpam then
		SpamMelee = true
		while SpamMelee do
			task.wait()
			for _,v in pairs(Player.Backpack:GetChildren()) do
				if table.find(MeleeMoves,v.Name) then
					v.Parent = Player.Character
					v:Activate()
					v:Deactivate()
					task.wait(.1)
					v.Parent = Player.Backpack
				end
			end
		end
	else
		SpamMelee = false
	end
end)

MiscSection1:addToggle("Spam Ki Moves",nil,function(KiSpam)
	if KiSpam then
		SpamKi = true
		while SpamKi do
			task.wait()
			for _,v in pairs(Player.Backpack:GetChildren()) do
				if table.find(KiMoves,v.Name) then
					v.Parent = Player.Character
					v:Activate()
					v:Deactivate()
					task.wait(.1)
					v.Parent = Player.Backpack
				end
			end
		end
	else
		SpamKi = false
	end
end)

MiscSection1:addToggle("Server Destroyer",nil,function(DestroyServer)
	if DestroyServer then
		ServerDestroyer = true
		while ServerDestroyer do
			task.wait()
			for _,v in pairs(Player.Backpack:GetChildren()) do
				if v:FindFirstChild("Ki") then
					v.Parent = Player.Character
					v:Activate()
					v:Deactivate()
					task.wait()
					v.Parent = Player.Backpack
				end
			end
		end
	else
		ServerDestroyer = false
	end
end)

MiscSection1:addTextbox("Player Tracker", "", function(TrackValue, focusLost)
    PlayerValue = TrackValue
	if focusLost then
		BoogaHub:Notify("Tracking : ", TrackValue)
	end
end)

MiscSection1:addToggle("Player-Tracker",nil,function(Track)
	if PlayerValue == "" or not PlayerValue then
		game:GetService("StarterGui"):SetCore("SendNotification", {Title = "BOOGA-HUB V4", Text = "Type a player to track",Duration = 3})
		return
	end
	for _,v in pairs(game.Players:GetPlayers()) do
		if v.Name:find(PlayerValue) then
			PlayerValue = v.Name
		end
	end
	if not game.Players:FindFirstChild(PlayerValue) then
		game:GetService("StarterGui"):SetCore("SendNotification", {Title = "BOOGA-HUB V4", Text = PlayerValue .. " was not found on the player list",Duration = 3})
	end
	if Track then
		TrackRun = RS.RenderStepped:Connect(function()
			pcall(function()
				local Distance = (Player.Character.HumanoidRootPart.Position - workspace.Live[PlayerValue].HumanoidRootPart.Position).magnitude / 10000
				game:GetService("TweenService"):Create(Player.Character.HumanoidRootPart,TweenInfo.new(Distance,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0),{CFrame = workspace.Live[PlayerValue].HumanoidRootPart.CFrame * CFrame.new(0,0,2.5)}):Play()
			end)
		end)
	else
		TrackRun:Disconnect()
	end
end)

MiscSection1:addTextbox("Player Ki Tracker", "", function(TrackValue, focusLost)
    PlayerToKiTrack = TrackValue
	if focusLost then
		BoogaHub:Notify("Tracking : ", TrackValue)
	end
end)

MiscSection1:addToggle("Player Ki-Tracker",nil,function(KiTracker)
	if PlayerToKiTrack == "" or not PlayerToKiTrack then
		game:GetService("StarterGui"):SetCore("SendNotification", {Title = "BOOGA-HUB V4", Text = "Type a player to track",Duration = 3})
		return
	end
	for _,v in pairs(game.Players:GetPlayers()) do
		if v.Name:find(PlayerToKiTrack) then
			PlayerToKiTrack = v.Name
		end
	end
	if not game.Players:FindFirstChild(PlayerToKiTrack) then
		game:GetService("StarterGui"):SetCore("SendNotification", {Title = "BOOGA-HUB V4", Text = PlayerToKiTrack .. " was not found on the player list",Duration = 3})
	end

	if KiTracker then
		KiTrackerRun = RS.RenderStepped:Connect(function()
			pcall(function()
                for _,v in pairs(workspace:GetChildren()) do
					if table.find(Trackables,v.Name) then
						v.CFrame = workspace.Live[PlayerToKiTrack].HumanoidRootPart.CFrame
					end
				end
				for _, v in pairs(Player.Character:GetChildren()) do
                    if v:FindFirstChild("Ki") and v:FindFirstChild("Mesh") then
                        v.CFrame = workspace.Live[PlayerToKiTrack].HumanoidRootPart.CFrame
                    end
                end
            end)
		end)
	else
		KiTrackerRun:Disconnect()
	end
end)

MiscSection1:addToggle("Anti-KnockBack", nil, function(AntiKnockBack)
	if AntiKnockBack then
		AntiKnockBackRun = RS.RenderStepped:Connect(function()
			pcall(function()
				if Player.Character.Head:FindFirstChild("KnockBacked") then
					Player.Character.Head.KnockBacked:Destroy()
				end
			end)
		end)
	else
		AntiKnockBackRun:Disconnect()
	end
end)

MiscSection1:addToggle("Auto-Defender",nil,function(AutoDefender)
	if AutoDefender then
		AutoDefenderRun = RS.RenderStepped:Connect(function()
			pcall(function()
				for _,v in pairs(workspace.Live:GetChildren()) do
					if v:FindFirstChild("HumanoidRootPart") then
						if (Player.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).magnitude < Magnitude then
							for _,v in pairs(v:GetChildren()) do
								if table.find(FireValues,v.Name) and tostring(v.Parent) ~= Player.Name and v.Parent.Humanoid.Health > 1 then
									Player.Backpack.ServerTraits.Vanish:FireServer()
									Player.Character.HumanoidRootPart.CFrame = v.Parent.HumanoidRootPart.CFrame * CFrame.new(0,0,3)
									workspace.CurrentCamera.CFrame = v.Parent.HumanoidRootPart.CFrame * CFrame.new(0,2,10)
									Player.Backpack.ServerTraits.Input:FireServer({"m2"}, CFrame.new())
								end
							end
						end
					end
				end
			end)
		end)
	else
		AutoDefenderRun:Disconnect()
	end
end)

MiscSection1:addToggle("Infinite Form", nil, function(InfForm)
	if InfForm then
		InfFormRun = RS.RenderStepped:Connect(function()
			pcall(function()
				if Player.Character.HumanoidRootPart:FindFirstChild("SaiyanAuraWeak") then
					Player.Character.HumanoidRootPart.SaiyanAuraWeak:Destroy()
				elseif Player.Character.HumanoidRootPart:FindFirstChild("MajinParticle") then
					Player.Character.HumanoidRootPart.MajinParticle:Destroy()
				elseif Player.Character.HumanoidRootPart:FindFirstChild("Lightning2") then
					Player.Character.HumanoidRootPart.Lightning2:Destroy()
				elseif Player.Character:FindFirstChild("SaiyanHair") then
					Player.Character.SaiyanHair:Destroy()
				elseif Player.Character.Head:FindFirstChild("Tatoo") then
					Player.Character.Head.Tatoo:Destroy()
				elseif Player.Character.HumanoidRootPart:FindFirstChild("MajinAura") then
					Player.Character.HumanoidRootPart.MajinAura:Destroy()
				end
			end)
		end)
	else
		InfFormRun:Disconnect()
		if game.PlaceId == 536102540 and ResetRace() then
			Respawn()
		else
			ResetCharacter()
		end
	end
end)

MiscSection1:addToggle("Invisibility", nil, function(Invis)
	if Invis then
		InvisRun = RS.RenderStepped:Connect(function()
			for _, v in pairs(Player.Backpack:GetChildren()) do
				if v.Name == "Flash Strike" then
					v.Parent = Player.Character
					v:Activate()
					Player.Character["Flash Strike"].Activator.Animation:Destroy()
					v:Deactivate()
					task.wait(0.2)
					v.Parent = game.Players.LocalPlayer.Backpack
				end
			end
		end)
	else
		InvisRun:Disconnect()
		if game.PlaceId == 536102540 and ResetRace() then
			Respawn()
		else
			ResetCharacter()
		end
	end
end)

MiscSection1:addToggle("Auto TOP Respawn", nil,function(AutoTopRespawn)
	if AutoTopRespawn and (game.PlaceId == 535527772 or game.PlaceId == 3552158750) then
		AutoTopRespawnRun = RS.RenderStepped:Connect(function()
			if Player.Character:FindFirstChild("SuperAction") then
				Player.Character.SuperAction:Destroy()
				game:GetService("TweenService"):Create(Player.Character.HumanoidRootPart,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0),{CFrame = CFrame.new(100,100,100)}):Play()
			end
			if Player.Character.Humanoid.Health == 1 then
				task.wait(6)
				Player.Character.SuperAction:Destroy()
				game:GetService("TweenService"):Create(Player.Character.HumanoidRootPart,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0),{CFrame = CFrame.new(100,100,100)}):Play()
			end
		end)
	else
		if game.PlaceId == 535527772 or game.PlaceId == 3552158750 then
			AutoTopRespawnRun:Disconnect()
		end
	end
end)

MiscSection1:addToggle("No Clip", nil,function(NoClip)
	if NoClip then
		noClipRun = RS.Stepped:Connect(function()
			for _,v in pairs(Player.Character:GetDescendants()) do
				if v:IsA("BasePart") and v.CanCollide then
					v.CanCollide = false
				end
			end
		end)
	else
		noClipRun:Disconnect()
		for _,v in pairs(Player.Character:GetChildren()) do
			if v:IsA("MeshPart") or v:IsA("Part") then
				v.CanCollide = true
			end
		end
	end
end)

MiscSection1:addToggle("Dust", nil, function(Dust)
	if Dust then
		DustRun = game:GetService("RunService").RenderStepped:connect(function()
			Player.Backpack.ServerTraits.Vanish:FireServer("average",CFrame.new())
		end)
	else
		DustRun:Disconnect()
	end
end)

MiscSection1:addToggle("Dark Theme Chat", nil, function(DarkTheme)
	if DarkTheme then
		local DarkTheme = Instance.new("Folder")
		DarkTheme.Name = "DarkTheme"
		DarkTheme.Parent = Player.Character
	else
		Player.Character.DarkTheme:Destroy()
	end
end)

MiscSection1:addToggle("Auto-Vanish", nil, function(AutoVanish)
	if AutoVanish then
		VanishRun = RS.RenderStepped:Connect(function()
			Player.Backpack.ServerTraits.Vanish:FireServer()
		end)
	else
		VanishRun:Disconnect()
	end
end)

MiscSection1:addToggle("Remove Bean Aura", nil, function(BeanAura)
	if BeanAura then
		BeanRun = RS.RenderStepped:Connect(function()
			if Player.Character.HumanoidRootPart:FindFirstChild("Critz") then
				Player.Character.HumanoidRootPart.Critz:Destroy()
			end
		end)
	else
		BeanRun:Disconnect()
	end
end)

MiscSection1:addToggle("GOD-Punch", nil, function(GOD)
	if GOD then
		if not Player.Backpack:FindFirstChild("Super Volley") and not Player.Character:FindFirstChild("Super Volley") then game:GetService("StarterGui"):SetCore("SendNotification", { Title = "BOOGA-HUB V4", Text = "Buy Super Volley", Duration = 5 }) return end
		Player.Backpack["Super Volley"].Parent = Player.Character
		Player.Character["Super Volley"]:Activate()
		Player.Character:WaitForChild("Super Volley").Activator.Sound:Destroy()
		task.wait(0.3)
		if Player.Character:FindFirstChild("Action") then
			Player.Character.Action:Destroy()
		end
		if Player.Character:FindFirstChild("Using") then
			Player.Character.Using:Destroy()
		end
	else
		if game.PlaceId == 536102540 and ResetRace() then
			Respawn()
		else
			ResetCharacter()
		end
	end
end)

MiscSection1:addKeybind("TP Behind", Enum.KeyCode.Clear, function()
end, function(Key) 
	TpKey = Key.KeyCode
end)

MiscSection1:addDropdown("Slot Changer", { "Slot1", "Slot2", "Slot3" }, function(Slot)
	changeSlot(Slot,Player.Character.HumanoidRootPart.CFrame)
end)

MiscSection1:addDropdown("Power Percentatge", {"100","95","90","85","80","75","70","65","60","55","50","45","40","35","30","25","20","15","10","5"}, function(Percentatge)
	if tonumber(Percentatge) > OldPercentatge then
		repeat
			Power = Power + 5
			Player.Backpack.ServerTraits.Input:FireServer({"increase"}, true)
		until Power == tonumber(Percentatge)
	elseif tonumber(Percentatge) < OldPercentatge then
		repeat
			Power = Power - 5
			Player.Backpack.ServerTraits.Input:FireServer({"decrease"}, true)
		until Power == tonumber(Percentatge)
	else
		return
	end
	OldPercentatge = tonumber(Percentatge)
end)

local MiscSection2 = Misc:addSection("Misc Buttons | Section 2")

MiscSection2:addButton("Lock On", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/FortniBloxYT1/lock-on/main/Lock-on.txt"))()
end)

MiscSection2:addButton("Anti-Kick",function()
	local mt = getrawmetatable(game)
	local NameCall = mt.__namecall
	setreadonly(mt,false)

	mt.__namecall = newcclosure(function(self, ...)
		local Method = getnamecallmethod()
		if Method:lower() == "kick" then
			return nil
		end
		return NameCall(self, ...)
	end)
end)

MiscSection2:addButton("Anti-AFK", function()
	Player.Idled:Connect(function()
		VU:CaptureController()
		VU:ClickButton2(Vector2.new())
	end)
end)

MiscSection2:addButton("Spy Chat",function() -- This was not made by BOOGABLOZxD
	local enabled = true
	local spyOnMyself = true
	local public = false
	local publicItalics = true
	local privateProperties = {
		Color = Color3.fromRGB(0,255,255); 
		Font = Enum.Font.SourceSansBold;
		TextSize = 18;
	}
	local StarterGui = game:GetService("StarterGui")
	local Players = game:GetService("Players")
	local player = Players.LocalPlayer
	local saymsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest")
	local getmsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("OnMessageDoneFiltering")
	local instance = (_G.chatSpyInstance or 0) + 1
	_G.chatSpyInstance = instance

	local function onChatted(p,msg)
		if _G.chatSpyInstance == instance then
			if p==player and msg:lower():sub(1,6)=="/e spy" then
				enabled = not enabled
				wait(0.3)
				privateProperties.Text = "{SPY "..(enabled and "EN" or "DIS").."ABLED}"
				StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
			elseif enabled and (spyOnMyself==true or wp~=player) then
				msg = msg:gsub("[\n\r]",''):gsub("\t",' '):gsub("[ ]+",' ')
				local hidden = true
				local conn = getmsg.OnClientEvent:Connect(function(packet,channel)
					if packet.SpeakerUserId==p.UserId and packet.Message==msg:sub(#msg-#packet.Message+1) and (channel=="All" or (channel=="Team" and public==false and Players[packet.FromSpeaker].Team==player.Team)) then
						hidden = false
					end
				end)
				wait(1)
				conn:Disconnect()
				if hidden and enabled then
					if public then
						saymsg:FireServer((publicItalics and "/me " or '').."{SPY} [".. p.Name .."]: "..msg,"All")
					else
						privateProperties.Text = "{SPY} [".. p.Name .."]: "..msg
						StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
					end
				end
			end
		end
	end

	for _,p in ipairs(Players:GetPlayers()) do
		p.Chatted:Connect(function(msg) onChatted(p,msg) end)
	end
	Players.PlayerAdded:Connect(function(p)
		p.Chatted:Connect(function(msg) onChatted(p,msg) end)
	end)
	privateProperties.Text = "{SPY "..(enabled and "EN" or "DIS").."ABLED}"
	StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
	local chatFrame = player.PlayerGui.Chat.Frame
	chatFrame.ChatChannelParentFrame.Visible = true
	chatFrame.ChatBarParentFrame.Position = chatFrame.ChatChannelParentFrame.Position+UDim2.new(UDim.new(),chatFrame.ChatChannelParentFrame.Size.Y)
end)

MiscSection2:addButton("No Nerf Ranked", function()
	for _,v in pairs(Player.Character.Boosts:GetChildren()) do
		v:Destroy()
	end
end)

MiscSection2:addButton("Broly Player Damage", function()
	Player.Character["team damage"]:Destroy()
end)

MiscSection2:addButton("Anti-Queue", function()
	if workspace:FindFirstChild("Wormhole") then
		workspace.Wormhole:Destroy()
	end
end)

MiscSection2:addButton("Anti-Kill (Kill Script)",function()
	if Player.Character:FindFirstChild("RightHand") then
		Player.Character.RightHand:Destroy()
	end
	if Player.Character:FindFirstChild("LeftHand") then
		Player.Character.LeftHand:Destroy()
	end
end)

MiscSection2:addButton("X2 EXP Freeze", function()
	RS.RenderStepped:Connect(function()
		if Player.Character:FindFirstChild("True") then
			Player.Character.True:Destroy()
		end
	end)
end)

MiscSection2:addButton("No Flying Ki-Drain", function()
	local mt = getrawmetatable(game)
	local namecall = mt.__namecall
	setreadonly(mt, false)

	mt.__namecall = newcclosure(function(self, ...)
		local method = getnamecallmethod()
		if method == "FireServer" and self.Name == "Super" then
			return nil
		end
		return namecall(self, ...)
	end)
end)

MiscSection2:addButton("No-Ki-Waste-Vanish", function()
	local mt = getrawmetatable(game)
	local namecall = mt.__namecall
	setreadonly(mt, false)

	mt.__namecall = newcclosure(function(self, ...)
		local method = getnamecallmethod()
		if method == "FireServer" and self.Name == "Use" then
			return nil
		end
		return namecall(self, ...)
	end)
end)

MiscSection2:addButton("Fusion Stack", function()
	Player.Character.ChildAdded:Connect(function(Child)
		if Child.Name == "FUSED" then
			Child:Destroy()
		end
	end)
end)

MiscSection2:addButton("Anchor (O)",function()
	UIS.InputBegan:Connect(function(Input,GameProcessedEvent)
		if GameProcessedEvent then return end

		if Input.KeyCode == Enum.KeyCode.O and not Player.Character.HumanoidRootPart.Anchored then
			Player.Character.HumanoidRootPart.Anchored = true
		elseif Input.KeyCode == Enum.KeyCode.O and Player.Character.HumanoidRootPart.Anchored then
			Player.Character.HumanoidRootPart.Anchored = false
		end

	end)
end)

MiscSection2:addButton("Destroy LowerTorso",function()
	if Player.Character:FindFirstChild("LowerTorso") then
		Player.Character.LowerTorso:Destroy()
	end
end)

MiscSection2:addButton("Free Nimbus",function()
	local Nimbus = Instance.new("Part")
	Nimbus.Name = "Nimbus"
	Nimbus.Parent = Player.Character
end)

MiscSection2:addButton("Remove Heaven Shield", function()
	game:GetService("RunService").RenderStepped:Connect(function()
		pcall(function()
			for _, v in pairs(Player.Character:GetChildren()) do
				if v:IsA("ForceField") then
					v:Destroy()
				end
			end
		end)
	end)
end)

MiscSection2:addButton("Naked",function()
	Player.Character.Shirt:Destroy()
	Player.Character.Pants:Destroy()
end)

MiscSection2:addButton("Tiny Character", function()
	if Player.Character.Humanoid:FindFirstChild("BodyWidthScale") then
		Player.Character.Humanoid["BodyWidthScale"]:Destroy()
	end
	if Player.Character.Humanoid:FindFirstChild("BodyHeightScale") then
		Player.Character.Humanoid["BodyHeightScale"]:Destroy()
	end
	if Player.Character.Humanoid:FindFirstChild("BodyDepthScale") then
		Player.Character.Humanoid["BodyDepthScale"]:Destroy()
	end
	if Player.Character.Humanoid:FindFirstChild("HeadScale") then
		Player.Character.Humanoid["HeadScale"]:Destroy()
	end
end)

MiscSection2:addButton("Wide Head", function()
	if Player.Character.Head:FindFirstChild("Mesh") then
		Player.Character.Head.Mesh:Destroy()
	end
end)

local Store = BoogaHub:addPage("Store", 5012544693)

local Storesection = Store:addSection("Beans/Jars")
local StoreMoveSection = Store:addSection("Buy Moves / Forms")
local Storesection2 = Store:addSection("ElderKai")
local Storesection3 = Store:addSection("GOD Moves")
local Storesection4 = Store:addSection("Saiyan Prestige Forms")
local Storesection5 = Store:addSection("Jiren Prestige Forms")
local Storesection6 = Store:addSection("Namekian Prestige Forms")
local Storesection7 = Store:addSection("Arcosians Prestige Forms")
local Storesection8 = Store:addSection("Majin Prestige Forms")
local Storesection9 = Store:addSection("Human Prestige Forms")
local Storesection10 = Store:addSection("Other")

Storesection:addDropdown("Type", { "Beans", "Jars" }, function(typee)
	if typee == "Beans" then
		Types = "Beans"
	end
	if typee == "Jars" then
		Types = "Jars"
	end
end)

Storesection:addDropdown("Color", { "Red", "Green", "Blue", "Yellow" }, function(Beans)
	if Beans == "Red" then
		Color = "Red"
	end
	if Beans == "Green" then
		Color = "Green"
	end
	if Beans == "Blue" then
		Color = "Blue"
	end
	if Beans == "Yellow" then
		Color = "Yellow"
	end
end)

Storesection:addDropdown("Amount", { "80", "8" }, function(Amount)
	if Amount == "80" then
		amountt = "80"
	elseif Amount == "8" then
		amountt = "8"
	end
end)

Storesection:addToggle("Start Buying", nil, function(buying)
	if buying then
		Buying = true
		if Types == "Beans" then
			repeat
				buyBeans()
				local Money = Player.PlayerGui.HUD.FullSize.Money.Text:gsub("%p+","")
			until not Buying or tonumber(Money) < 25000
		elseif Types == "Jars" then
			repeat
				buyBeans()
				local Money = Player.PlayerGui.HUD.FullSize.Money.Text:gsub("%p+","")
			until not Buying or tonumber(Money) < 40000
		end
	else
		Buying = false
	end
end)

Storesection2:addToggle("Purchase ElderKai EXP", nil, function(EXP)
	if EXP then
		BuyingEXP = true
		repeat
			Player.Backpack.ServerTraits.ChatStart:FireServer(game:GetService("Workspace").FriendlyNPCs["Elder Kai"])
			task.wait(.430)
			Player.Backpack.ServerTraits.ChatAdvance:FireServer({"k"})
			task.wait(.430)
			Player.Backpack.ServerTraits.ChatAdvance:FireServer({"Yes"})
			task.wait(.430)
			Player.Backpack.ServerTraits.ChatAdvance:FireServer({"k"})
			task.wait(.430)
			Player.Backpack.ServerTraits.ChatAdvance:FireServer({"k"})
			task.wait(1)
			local Money = Player.PlayerGui.HUD.FullSize.Money.Text:gsub("%p+","")
		until not BuyingEXP or tonumber(Money) < 10000
	else
		BuyingEXP = false
	end
end)

StoreMoveSection:addTextbox("Buy Moves / Forms", "",function(Buy,focusLost)
	ToBuy = Buy
end)

StoreMoveSection:addButton("Buy Moves / Forms",function()
	if ToBuy then
		pcall(function()
			game:GetService("ReplicatedStorage").AttemptBuy:InvokeServer(ToBuy)
		end)
	end
end)

Storesection3:addButton("GOD-Punch", function()
	game:GetService("ReplicatedStorage").AttemptBuy:InvokeServer("God Punch")
end)

Storesection3:addButton("GOD-Evade", function()
	game:GetService("ReplicatedStorage").AttemptBuy:InvokeServer("God Evade")
end)
Storesection4:addButton("SSJ4", function()
	game:GetService("ReplicatedStorage").AttemptBuy:InvokeServer("SSJ4")
end)

Storesection4:addButton("SSJBE", function()
	game:GetService("ReplicatedStorage").AttemptBuy:InvokeServer("Complete Super Saiyan Blue")
end)

Storesection4:addButton("SSJ Rose", function()
	game:GetService("ReplicatedStorage").AttemptBuy:InvokeServer("SSJ Rose")
end)

Storesection5:addButton("Despair", function()
	game:GetService("ReplicatedStorage").AttemptBuy:InvokeServer("Despair")
end)

Storesection6:addButton("White Namekian", function()
	game:GetService("ReplicatedStorage").AttemptBuy:InvokeServer("White Namek")
end)

Storesection6:addButton("Demon Namekian", function()
	game:GetService("ReplicatedStorage").AttemptBuy:InvokeServer("Demon Namekian")
end)

Storesection7:addButton("Golden Cooler", function()
	game:GetService("ReplicatedStorage").AttemptBuy:InvokeServer("Gold Cooler")
end)

Storesection7:addButton("Cooler Form", function()
	game:GetService("ReplicatedStorage").AttemptBuy:InvokeServer("Fifth Form")
end)

Storesection8:addButton("Unstable Majin", function()
	game:GetService("ReplicatedStorage").AttemptBuy:InvokeServer("Unstable")
end)

Storesection8:addButton("Dark Majin", function()
	game:GetService("ReplicatedStorage").AttemptBuy:InvokeServer("Dark Majin")
end)

Storesection9:addButton("KKx100", function()
	game:GetService("ReplicatedStorage").AttemptBuy:InvokeServer("Kaioken x100")
end)

Storesection9:addButton("Dark Human", function()
	game:GetService("ReplicatedStorage").AttemptBuy:InvokeServer("Dark Human")
end)

Storesection10:addButton("MUI", function()
	game:GetService("ReplicatedStorage").AttemptBuy:InvokeServer("Mastered Ultra Instinct")
end)

local AutoFarm = BoogaHub:addPage("AutoFarm",5012544693)
local MovesetSection = AutoFarm:addSection("Moveset")
local Moves = {}

MovesetSection:addButton("Recommended Melee Moves", function()
	Move1.Button.Textbox.Text = "Meteor Crash"
	Move2.Button.Textbox.Text = "Anger Rush"
	Move3.Button.Textbox.Text = "Wolf Fang Fist"
	Move4.Button.Textbox.Text = "Neo Wolf Fang Fist"
	Move5.Button.Textbox.Text = "Deadly Dance"
	Move6.Button.Textbox.Text = "God Slicer"
end)

Move1 = MovesetSection:addTextbox("Move1", "", function(value)
	for _,v in pairs(Player.Backpack:GetChildren()) do
		if v.Name:find(value) then
			value = v.Name
		end
	end
	Moves[1] = value
end)

Move2 = MovesetSection:addTextbox("Move2", "", function(value)
	for _,v in pairs(Player.Backpack:GetChildren()) do
		if v.Name:find(value) then
			value = v.Name
		end
	end
	Moves[2] = value
end)

Move3 = MovesetSection:addTextbox("Move3", "", function(value)
	for _,v in pairs(Player.Backpack:GetChildren()) do
		if v.Name:find(value) then
			value = v.Name
		end
	end
	Moves[3] = value
end)

Move4 = MovesetSection:addTextbox("Move4", "", function(value)
	for _,v in pairs(Player.Backpack:GetChildren()) do
		if v.Name:find(value) then
			value = v.Name
		end
	end
	Moves[4] = value
end)

Move5 = MovesetSection:addTextbox("Move5", "", function(value)
	for _,v in pairs(Player.Backpack:GetChildren()) do
		if v.Name:find(value) then
			value = v.Name
		end
	end
	Moves[5] = value
end)

Move6 = MovesetSection:addTextbox("Move6", "", function(value)
	for _,v in pairs(Player.Backpack:GetChildren()) do
		if v.Name:find(value) then
			value = v.Name
		end
	end
	Moves[6] = value
end)

local npcssection = AutoFarm:addSection("NPCS")
local NPCS = {"     ","      ","     ","     "}

npcssection:addButton("Recommended Farm",function()
	npc1.Button.Textbox.Text = "Saibaman"
	npc2.Button.Textbox.Text = "Saiyan"
	npc3.Button.Textbox.Text = "Chi"
	npc4.Button.Textbox.Text = "Boxer"
end)

npc1 = npcssection:addTextbox("NPC1","",function(Value)
	NPCS[1] = Value
end)

npc2 = npcssection:addTextbox("NPC2","",function(Value)
	NPCS[2] = Value
end)

npc3 = npcssection:addTextbox("NPC3","",function(Value)
	NPCS[3] = Value
end)

npc4 = npcssection:addTextbox("NPC4","",function(Value)
	NPCS[4] = Value
end)

local AutoFarmOptions = AutoFarm:addSection("AutoFarm")

AutoFarmOptions:addToggle("Start Autofarm", nil, function(AutoFarm)
	if AutoFarm then
		AutoFarming = true
		while AutoFarming do
			task.wait()
			if not workspace.Live:FindFirstChild(Player.Name) or Toggled then
				continue
			end
			if not Player.Character:FindFirstChild("HumanoidRootPart") or Toggled then
				continue
			end
			for _,v in pairs(workspace.Live:GetChildren()) do
				if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChildOfClass("Humanoid") and (v.Name:match(NPCS[1]) or v.Name:match(NPCS[2]) or v.Name:match(NPCS[3]) or v.Name:match(NPCS[4])) then
					if NpcsMode and not v:FindFirstChild("Damagers") then
						continue
					end
					if v.Humanoid.Health == 0 then
						continue
					end
					local Target = v
					repeat
						task.wait()
						if not Target:FindFirstChild("HumanoidRootPart") or not AutoFarming or not Target:FindFirstChildOfClass("Humanoid") then
							break
						end
						local Distance = (Player.Character.HumanoidRootPart.Position - Target.HumanoidRootPart.Position).magnitude / 10000
						game:GetService("TweenService"):Create(Player.Character.HumanoidRootPart,TweenInfo.new(Distance,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0),{CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,2)}):Play()
					until Target.Humanoid.Health == 0
				end
			end
		end
	else
		AutoFarming = false
	end
end)

AutoFarmOptions:addToggle("Spam Moves", nil,function(SpamMoves)
	if SpamMoves then
		SpammingMoves = true
		while SpammingMoves do
			task.wait()
			for _,v in pairs(Player.Backpack:GetChildren()) do
				if table.find(Moves,v.Name) then
					v.Parent = Player.Character
					v:Activate()
					v:Deactivate()
					task.wait(.1)
					v.Parent = Player.Backpack
				end
			end
		end
	else
		SpammingMoves = false
	end
end)

AutoFarmOptions:addToggle("Auto Attack", nil,function(attacking)
	if attacking then
		Attacking = true
		while Attacking do
			Player.Backpack.ServerTraits.Input:FireServer({"md"},CFrame.new())
			task.wait(.350)
		end
	else
		Attacking = false
	end
end)

AutoFarmOptions:addToggle("Auto Right Click", nil, function(rightClick)
	if rightClick then
		HeavyAttacking = true
		while HeavyAttacking do
			Player.Backpack.ServerTraits.Input:FireServer({"m2"},CFrame.new())
			task.wait(.5)
		end
	else
		HeavyAttacking = false
	end
end)

AutoFarmOptions:addToggle("Auto-Block", nil,function(autoBlock)
	if autoBlock then
		AutoBlock = true
		while AutoBlock do
			game:GetService("Players").LocalPlayer.Backpack.ServerTraits.Input:FireServer({"blockon"},CFrame.new())
			task.wait(.5)
		end
	else
		AutoBlock = false
		game:GetService("Players").LocalPlayer.Backpack.ServerTraits.Input:FireServer({"blockoff"},CFrame.new())
	end
end)

AutoFarmOptions:addToggle("Auto Reset Low Ki", nil, function(ResetLowKi)
	if ResetLowKi then
		ResetStamina = true
		while ResetStamina do
			task.wait(.2)
			if Player.Character.Ki.Value <= Player.Character.Ki.MaxValue * 0.1 and not Ressetting then
				Ressetting = true
				task.delay(5,function()
					Ressetting = false
				end)
				game:GetService("ReplicatedStorage").ResetChar:FireServer()
			end
		end
	else
		ResetStamina = false
	end
end)

AutoFarmOptions:addToggle("Bean Spam", nil, function(beanSpam)
	if beanSpam then
		BeanSpam = true
		while BeanSpam do
			Player.Backpack.ServerTraits.EatSenzu:FireServer("something")
			task.wait(.2)
		end
	else
		BeanSpam = false
	end
end)

AutoFarmOptions:addToggle("Only NPCs Mode", nil, function(npcsMode)
	if npcsMode then
		NpcsMode = true
	else
		NpcsMode = false
	end
end)

AutoFarmOptions:addDropdown("Time Transform", { "0", "1", "2", "3", "4", "5" }, function(Time)
	if Time == "0" then
		TIME = 0
	elseif Time == "1" then
		TIME = 1
	elseif Time == "2" then
		TIME = 2
	elseif Time == "3" then
		TIME = 3
	elseif Time == "4" then
		TIME = 4
	elseif Time == "5" then
		TIME = 5
	end
end)

AutoFarmOptions:addDropdown("Form Key", { "g", "h" }, function(FormType)
	if FormType == "g" then
		FORMTYPE = "g"
	end
	if FormType == "h" then
		FORMTYPE = "h"
	end
end)

AutoFarmOptions:addToggle("Auto Form", nil,function(autoForm)
	if autoForm then
		AutoForm = true
		while AutoForm do
			task.wait(.2)
			if not workspace.Live:FindFirstChild(Player.Name) then
				continue
			end
			if not Player.Character:FindFirstChild("HumanoidRootPart") then
				continue
			end
			if TIME and FORMTYPE and not Player.Character.Boosts:FindFirstChild("Phys-Damage") and (Player.Character.Ki.Value >= Player.Character.Ki.MaxValue * 0.15 or Player.Character.Humanoid.Health == 1) then
				if TIME >= 1 then
					Player.Backpack.ServerTraits.Input:FireServer({"x"},CFrame.new())
					task.wait(TIME)
					Player.Backpack.ServerTraits.Transform:FireServer(FORMTYPE)
					task.wait(.8)
					Player.Backpack.ServerTraits.Input:FireServer({"xoff"},CFrame.new())
				else
					Player.Backpack.ServerTraits.Transform:FireServer(FORMTYPE)
				end
			end
		end
	else
		AutoForm = false
	end
end)

local StatChecker = BoogaHub:addPage("Stat Checker",5012544693)
local StatCheckerSection = StatChecker:addSection("Stat Checker")

StatCheckerSection:addTextbox("Player Name","",function(PlayerName)
	if PlayerName == "" then
		PlayerNamee.Button.Textbox.Text = ""
		HealthMax.Button.Textbox.Text = ""
		KiMax.Button.Textbox.Text = ""
		PhysDamage.Button.Textbox.Text = ""
		KiDamage.Button.Textbox.Text = ""
		PhysResist.Button.Textbox.Text = ""
		KiResist.Button.Textbox.Text = ""
		Speed.Button.Textbox.Text = ""
		Extra.Button.Textbox.Text = ""
		return
	end
	for _,v in pairs(game.Players:GetPlayers()) do
		if v.Name:lower():find(PlayerName:lower()) then
			PlayerName = v.Name
		end
	end
	if game.Players:FindFirstChild(PlayerName) then
		PlayerNamee.Button.Textbox.Text = PlayerName
		HealthMax.Button.Textbox.Text = workspace.Live[PlayerName].Stats["Health-Max"].Value
		KiMax.Button.Textbox.Text = workspace.Live[PlayerName].Stats["Ki-Max"].Value
		PhysDamage.Button.Textbox.Text = workspace.Live[PlayerName].Stats["Phys-Damage"].Value
		KiDamage.Button.Textbox.Text = workspace.Live[PlayerName].Stats["Ki-Damage"].Value
		PhysResist.Button.Textbox.Text = workspace.Live[PlayerName].Stats["Phys-Resist"].Value
		KiResist.Button.Textbox.Text = workspace.Live[PlayerName].Stats["Ki-Resist"].Value
		Speed.Button.Textbox.Text = workspace.Live[PlayerName].Stats.Speed.Value
		Extra.Button.Textbox.Text = findExtra(PlayerName)
	end
end)

PlayerNamee = StatCheckerSection:addTextbox("Name","",function()
	
end)

HealthMax = StatCheckerSection:addTextbox("Health-Max","",function()
end)

KiMax = StatCheckerSection:addTextbox("Ki-Max","",function()
end)

PhysDamage = StatCheckerSection:addTextbox("Phys-Damage","",function()
end)

KiDamage = StatCheckerSection:addTextbox("Ki-Damage","",function()
end)

PhysResist = StatCheckerSection:addTextbox("Phys-Resist","",function()
end)

KiResist = StatCheckerSection:addTextbox("Ki-Resist","",function()
end)

Speed = StatCheckerSection:addTextbox("Speed","",function()
end)

Extra = StatCheckerSection:addTextbox("Extra","",function()
end)

local Other = BoogaHub:addPage("Other",5012544693)
local OtherSection = Other:addSection("Other")

OtherSection:addButton("Remove Aura", function()
	if Player.Character:FindFirstChild("HumanoidRootPart") then
		if Player.Character.HumanoidRootPart:FindFirstChild("TempAura") then
			Player.Character.HumanoidRootPart.TempAura:Destroy()
		end
		if Player.Character.HumanoidRootPart:FindFirstChild("Lightning") then
			Player.Character.HumanoidRootPart.Lightning:Destroy()
		end
	end
end)

OtherSection:addButton("Blaster Meteor Aura", function()
	if not Player.Backpack:FindFirstChild("Blaster Meteor") and not Player.Character:FindFirstChild("Blaster Meteor") then
		game:GetService("StarterGui"):SetCore("SendNotification", {Title = "BOOGA-HUB V4", Text = "Get Blaster Meteor",Duration = 3})
		return
	end
	Player.Character.Humanoid:EquipTool((Player.Backpack:FindFirstChild("Blaster Meteor")))
	task.wait(.3)
	Player.Character["Blaster Meteor"].Activator.Sound:Destroy()
end)

OtherSection:addButton("Rush Aura", function()
	if not Player.Backpack:FindFirstChild("Rush") and not Player.Character:FindFirstChild("Rush") then
		game:GetService("StarterGui"):SetCore("SendNotification", {Title = "BOOGA-HUB V4", Text = "Buy Rush",Duration = 3})
		return
	end
	Player.Character.Humanoid:EquipTool((Player.Backpack:FindFirstChild("Rush")))
	task.wait(.3)
	Player.Character["Rush"].Activator.DASH2:Destroy()
end)

OtherSection:addButton("Super Rush Aura", function()
	if not Player.Backpack:FindFirstChild("Super Rush") and not Player.Character:FindFirstChild("Super Rush") then
		game:GetService("StarterGui"):SetCore("SendNotification", {Title = "BOOGA-HUB V4", Text = "Buy Super Rush",Duration = 3})
		return
	end
	Player.Character.Humanoid:EquipTool((Player.Backpack:FindFirstChild("Super Rush")))
	task.wait(.3)
	Player.Character["Super Rush"].Activator.DASH2:Destroy()
end)

OtherSection:addButton("Super Dragon Fist Aura", function()
	if not Player.Backpack:FindFirstChild("Super Dragon Fist") and not Player.Character:FindFirstChild("Super Dragon Fist") then
		game:GetService("StarterGui"):SetCore("SendNotification", {Title = "BOOGA-HUB V4", Text = "Buy Super Dragon Fist",Duration = 3})
		return
	end
	Player.Character.Humanoid:EquipTool((Player.Backpack:FindFirstChild("Super Dragon Fist")))
	task.wait(.5)
	Player.Character["Super Dragon Fist"].Activator.Forward:Destroy()
end)

OtherSection:addButton("Kaioken Assault Aura", function()
	if not Player.Backpack:FindFirstChild("Kaioken Assault") and not Player.Character:FindFirstChild("Kaioken Assault") then
		game:GetService("StarterGui"):SetCore("SendNotification", {Title = "BOOGA-HUB V4", Text = "Buy Kaioken Assault",Duration = 3})
		return
	end
	Player.Character.Humanoid:EquipTool((Player.Backpack:FindFirstChild("Kaioken Assault")))
	task.wait(0.5)
	Player.Character["Kaioken Assault"].Activator.Forward:Destroy()
end)

OtherSection:addButton("Wrathful Charge Aura", function()
	if not Player.Backpack:FindFirstChild("Wrathful Charge") and not Player.Character:FindFirstChild("Wrathful Charge") then
		game:GetService("StarterGui"):SetCore("SendNotification", {Title = "BOOGA-HUB V4", Text = "Buy Wrathful Charge",Duration = 3})
		return
	end
	Player.Character.Humanoid:EquipTool((Player.Backpack:FindFirstChild("Wrathful Charge")))
	task.wait(0.5)
	Player.Character["Wrathful Charge"].Activator.Forward:Destroy()
end)

OtherSection:addDropdown("Auto-Stats",{ "Health-Max", "Ki-Max", "Phys-Damage", "Ki-Damage", "Phys-Resist", "Ki-Resist", "Speed" },function(AutoStats)
	Stat = AutoStats
end)

OtherSection:addToggle("Auto Stats On/Off", nil, function(AutoStatsToggle)
	if AutoStatsToggle and Stat then
		AutoStatsRun = RS.RenderStepped:Connect(function()
			Player.Backpack.ServerTraits.AttemptUpgrade:FireServer(Player.PlayerGui.HUD.Bottom.Stats[Stat])
		end)
	else
		AutoStatsRun:Disconnect()
	end
end)

OtherSection:addToggle("Better Walking Anim", nil, function(WalkingAnimation)
	if WalkingAnimation then
		Walk = true
		Player.Character.Animate.walk.RunAnim.AnimationId = "rbxassetid://2625673611"
		Player.CharacterAdded:Connect(function()
			task.wait(1)
			if Walk then
				Player.Character.Animate.walk.RunAnim.AnimationId = "rbxassetid://2625673611"
			end
		end)
	else
		Walk = false
		Player.Character.Animate.walk.RunAnim.AnimationId = "rbxassetid://669161051"
	end
end)

OtherSection:addButton("Fix Little Jiren", function()
	Player.Character["Little Jiren"].Handle.Jiren.Humanoid:Destroy()
end)

OtherSection:addSlider("Saturation", 0.2, -25, 25, function(Saturation)
	game.Lighting.ColorCorrection.Saturation = Saturation
end)

OtherSection:addColorPicker("Wing/Halo Color", Color3.new(255, 0, 0), function(Color)
	if Player.Character:FindFirstChild("RebirthWings") then
		Player.Character.RebirthWings.Handle.Color = Color
	elseif Player.Character:FindFirstChild("RealHalo") then
		Player.Character.RealHalo.Handle.Color = Color
	end
end)

local Animations = Other:addSection("Animations")

Animations:addToggle("Beerus Animation", nil,function(BS)
	if BS then
		Bs = true
		Player.Character.Animate.idle.Animation1.AnimationId = "rbxassetid://1171558651"
		Player.Character.Animate.run.RunAnim.AnimationId = "rbxassetid://1171558651"
		Player.CharacterAdded:Connect(function()
			task.wait(1)
			if Bs then
				Player.Character.Animate.idle.Animation1.AnimationId = "rbxassetid://1171558651"
				Player.Character.Animate.run.RunAnim.AnimationId = "rbxassetid://1171558651"
			end
		end)
	else
		Bs = false
		Player.Character.Animate.run.RunAnim.AnimationId = "rbxassetid://669161051"
		Player.Character.Animate.idle.Animation1.AnimationId = "rbxassetid://669158098"
	end
end)

Animations:addToggle("Samurai Animation", nil,function(samurai)
	if samurai then
		Samurai = true
		Player.Character.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083195517"
		Player.Character.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=656118852"
		Player.CharacterAdded:Connect(function()
			task.wait(1)
			if Samurai then
				Player.Character.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083195517"
				Player.Character.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=656118852"
			end
		end)
	else
		Samurai = false
		Player.Character.Animate.run.RunAnim.AnimationId = "rbxassetid://669158098"
		Player.Character.Animate.idle.Animation1.AnimationId = "rbxassetid://669161051"
	end
end)

Animations:addToggle("Dumb Animation", nil, function(tpose)
	if tpose then
		Player.Character.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=6531483720"
	else
		Player.Character.Animate.idle.Animation1.AnimationId = "rbxassetid://669158098"
	end
end)

local Visuals = Other:addSection("Visuals")

Visuals:addButton("Galaxy Shaders",function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/FortniBloxYT1/Shaders/main/Galaxy%20Shader"))()
end)

Visuals:addButton("Shader",function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/FortniBloxYT1/Shaders/main/OtherShader"))()
end)

Visuals:addButton("Japanese Dark Shader",function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/FortniBloxYT1/Shaders/main/Dark"))()
end)

Visuals:addButton("Japanese Shader",function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/FortniBloxYT1/Shaders/main/Japanese"))()
end)

Visuals:addButton("FPS Boost",function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/FortniBloxYT1/Fps-boost/main/Fps%20boost"))()
end)

Visuals:addToggle("Day", nil, function(day)
	if day then
		Day = true
		while Day do
			task.wait()
			game.Lighting.ClockTime = 14
		end
	else
		Day = false
	end
end)

Visuals:addToggle("Evening", nil, function(evening)
	if evening then
		Evening = true
		while Evening do
			task.wait()
			game.Lighting.ClockTime = 17.60
		end
	else
		Evening = false
	end
end)

Visuals:addToggle("Night", nil, function(night)
	if night then
		Night = true
		while Night do
			task.wait()
			game.Lighting.ClockTime = 0
		end
	else
		Night = false
	end
end)

Visuals:addToggle("Transparent Body", nil, function(TransparentBody)
	if TransparentBody then
		for _, v in pairs(Player.Character:GetChildren()) do
			if v:IsA("MeshPart") or v:IsA("Part") then
				Oldmaterial = v.Material
				Oldcolor = v.Color
				v.Material = "ForceField"
				v.Color = Color3.fromRGB(255, 255, 255)
			end
		end
	else
		for _, v in pairs(Player.Character:GetChildren()) do
			if v:IsA("MeshPart") or v:IsA("Part") then
				v.Material = Oldmaterial
				v.Color = Oldcolor
			end
		end
	end
end)

local Teleports = BoogaHub:addPage("Teleports", 5012544693)
local TeleportSection = Teleports:addSection("Worlds")

TeleportSection:addButton("Earth", function()
	task.wait(1)
	TeleportService:Teleport(536102540)
end)

TeleportSection:addButton("Namek", function()
	task.wait(1)
	TeleportService:Teleport(882399924)
end)

TeleportSection:addButton("Space", function()
	task.wait(1)
	TeleportService:Teleport(478132461)
end)

TeleportSection:addButton("Future", function()
	task.wait(1)
	TeleportService:Teleport(569994010)
end)

TeleportSection:addButton("Secret World", function()
	task.wait(1)
	TeleportService:Teleport(2046990924)
end)

TeleportSection:addButton("Queue", function()
	task.wait(1)
	TeleportService:Teleport(3565304751)
end)

TeleportSection:addButton("Zaros", function()
	task.wait(1)
	TeleportService:Teleport(2651456105)
end)

TeleportSection:addButton("Heaven", function()
	task.wait(1)
	TeleportService:Teleport(3552157537)
end)

TeleportSection:addButton("Ranked", function()
	task.wait(1)
	TeleportService:Teleport(489979581)
end)

TeleportSection:addButton("HTC", function()
	task.wait(1)
	TeleportService:Teleport(882375367)
end)

TeleportSection:addButton("Server Hop", function()
	local z = {}
	for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
		if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
			z[#z + 1] = v.id
		end
	end
	if #z > 0 then
		game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, z[math.random(1, #z)])
	else
		return BoogaHub:Notify("Server Hop can't find a server")
	end
end)

local TeleportSection2 = Teleports:addSection("Cities")

TeleportSection2:addButton("South City", function()
	game:GetService("TweenService"):Create(Player.Character.HumanoidRootPart, TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.In,0,false,0), {CFrame = CFrame.new(-457.2287902832031, 27.987550735473633, -6411.3095703125)}):Play()
end)

TeleportSection2:addButton("West City", function()
	game:GetService("TweenService"):Create(Player.Character.HumanoidRootPart, TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.In,0,false,0), {CFrame = CFrame.new(-571.0878295898438, 22.987470626831055, -2883.974365234375)}):Play()
end)

TeleportSection2:addButton("Central City", function()
	game:GetService("TweenService"):Create(Player.Character.HumanoidRootPart, TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.In,0,false,0), {CFrame = CFrame.new(-3834.2216796875, 22.98755645751953, -1428.0703125)}):Play()
end)

TeleportSection2:addButton("Satan City", function()
	game:GetService("TweenService"):Create(Player.Character.HumanoidRootPart, TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.In,0,false,0), {CFrame = CFrame.new(-5782.05908203125, 139.98768615722656, -2742.615478515625)}):Play()
end)

TeleportSection2:addButton("Destroyed City", function()
	game:GetService("TweenService"):Create(Player.Character.HumanoidRootPart, TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.In,0,false,0), {CFrame = CFrame.new(-6195.70654296875, 21.987497329711914, -918.4222412109375)}):Play()
end)

local TeleportSection3 = Teleports:addSection("Specials")

TeleportSection3:addButton("Broly Pad", function()
	game:GetService("TweenService"):Create(Player.Character.HumanoidRootPart, TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.In,0,false,0), {CFrame = CFrame.new(2751.67725, 3944.85986, -2272.62622)}):Play()
end)

TeleportSection3:addButton("TOP Pad", function()
	game:GetService("TweenService"):Create(Player.Character.HumanoidRootPart, TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.In,0,false,0), {CFrame = CFrame.new(2508.15, 3945.41, -2029.8)}):Play()
end)

TeleportSection3:addButton("Hard TOP Pad", function()
	game:GetService("TweenService"):Create(Player.Character.HumanoidRootPart, TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.In,0,false,0), {CFrame = CFrame.new(2510.97656, 3944.75, -2527.53125)}):Play()
end)

local MoreScripts = BoogaHub:addPage("More Scripts", 5012544693)
local MoreScriptsSection = MoreScripts:addSection("More Scripts")

MoreScriptsSection:addButton("Infinite Yield", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)

MoreScriptsSection:addButton("Fates-Admin", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))()
end)

MoreScriptsSection:addButton("CMD-X", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source"))()
end)

MoreScriptsSection:addButton("BOOGA-CMDS",function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/FortniBloxYT1/BOOGA-CMDS-V1/main/BOOGA_CMDS_V1(1).lua"))()
end)

MoreScriptsSection:addButton("Kosa-HUB", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/FortniBloxYT1/shit-kosa-hub/main/HubDBFS-SK-v4.lua"))()
end)

MoreScriptsSection:addButton("Snowy Hub",function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/FortniBloxYT1/Snowy-Hub/main/SnowySkidHub_1.lua"))()
end)

local Settings = BoogaHub:addPage("Settings", 5012544693)
local Colors = Settings:addSection("Settings & Themes")

for theme, color in pairs(Themes) do
	Colors:addColorPicker(theme, color, function(color3)
		BoogaHub:setTheme(theme, color3)
	end)
end
local Plus = Settings:addSection("Plus")

Plus:addKeybind("Close UI", Enum.KeyCode.Clear, function()
	BoogaHub:toggle()
	BoogaHub:close()
end)

Plus:addButton("Destroy GUI",function()
	game.CoreGui["BOOGA-HUB V4"]:Destroy()
	getgenv().Executed = false
end)

Plus:addButton("Made By BOOGABLOZxD", function()
	setclipboard("https://discord.gg/YCvCSqADtV")
end)

Plus:addButton("Press this to copy discord link for updates", function()
	setclipboard("https://discord.gg/YCvCSqADtV")
end)

BoogaHub:SelectPage(BoogaHub.pages[1], true)
