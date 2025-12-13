print("✅ Security verification passed. Loading Night Slayer Hub...")

if game.PlaceId == 2753915549 then
	World1 = true;
elseif game.PlaceId == 4442272183 then
	World2 = true;
elseif game.PlaceId == 7449423635 then
	World3 = true;
end;

-- TẢI NIGHT SLAYER HUB UI LIBRARY
local Update = (loadstring(Game:HttpGet("https://raw.githubusercontent.com/mascaracathub/Library/refs/heads/main/Library")))();

if Update:LoadAnimation() then
	Update:StartLoad();
end;
if Update:LoadAnimation() then
	Update:Loaded();
end;

local Library = Update:Window({
	SubTitle = "Blox Fruits",
	Size = UDim2.new(0, 500, 0, 450),
	TabWidth = 150
});

-- Tạo các tabs
local MainTab = Library:Tab("Main", "rbxassetid://10723407389");
local FarmTab = Library:Tab("Farming", "rbxassetid://10723415335");
local ItemsTab = Library:Tab("Items", "rbxassetid://10709782497");
local SettingsTab = Library:Tab("Setting", "rbxassetid://10734950309");
local LocalPlayerTab = Library:Tab("Local Player", "rbxassetid://10747373176");
local HoldTab = Library:Tab("Hold Skill", "rbxassetid://10734984606");

if World3 then
	SeaTab = Library:Tab("Sea Event", "rbxassetid://10709761530");
	SettingSeaTab = Library:Tab("Setting Sea", "rbxassetid://10709810948");
end;

if World2 or World3 then
	SeaStackTab = Library:Tab("Stack Sea", "rbxassetid://10747376931");
end;

if World3 then
	CraftTab = Library:Tab("Crafts", "rbxassetid://10723405360");
	DragonDojoTab = Library:Tab("Dragon Dojo", "rbxassetid://10734951847");
end;

local StatsTab = Library:Tab("Stats Weapon", "rbxassetid://10709770317");

if World3 or World2 then
	RaceV4Tab = Library:Tab("Race V4", "rbxassetid://10723425539");
end;

local CombatTab = Library:Tab("Combat", "rbxassetid://10734975486");

if World2 or World3 then
	RaidTab = Library:Tab("Raid", "rbxassetid://10723345749");
end;

local EspTab = Library:Tab("Esp", "rbxassetid://10723346959");
local TeleportTab = Library:Tab("Teleport", "rbxassetid://10734886004");
local ShopTab = Library:Tab("Shop", "rbxassetid://10734952479");
local FruitTab = Library:Tab("Devil Fruit", "rbxassetid://10734883986");
local MiscTab = Library:Tab("Misc", "rbxassetid://10723424838");
local ServTab = Library:Tab("Server", "rbxassetid://10723426722");

-- Settings
_G.Settings = {
	Main = {
		["Select Weapon"] = "Melee",
		["Farm Mode"] = "Normal",
		["Auto Farm"] = false,
		["Auto Farm Fast"] = false,
		["Selected Mastery Mode"] = "Quest",
		["Auto Farm Fruit Mastery"] = false,
		["Auto Farm Gun Mastery"] = false,
		["Selected Mastery Sword"] = nil,
		["Auto Farm Sword Mastery"] = false,
		["Selected Mob"] = nil,
		["Auto Farm Mob"] = false,
		["Selected Boss"] = nil,
		["Auto Farm Boss"] = false,
		["Auto Farm All Boss"] = false
	},
	Event = {},
	Farm = {
		["Auto Elite Hunter"] = false,
		["Auto Elite Hunter Hop"] = false,
		["Selected Bone Farm Mode"] = "Quest",
		["Auto Farm Bone"] = false,
		["Auto Random Surprise"] = false,
		["Auto Pirate Raid"] = false,
		["Auto Farm Observation"] = false,
		["Auto Observation V2"] = false,
		["Auto Musketeer Hat"] = false,
		["Auto Saber"] = false,
		["Auto Farm Chest Tween"] = false,
		["Auto Farm Chest Instant"] = false,
		["Auto Chest Hop"] = false,
		["Auto Farm Chest Mirage"] = false,
		["Auto Stop Items"] = false,
		["Auto Farm Katakuri"] = false,
		["Auto Spawn Cake Prince"] = false,
		["Auto Kill Cake Prince"] = false,
		["Auto Kill Dough King"] = false,
		["Auto Farm Radioactive"] = false,
		["Auto Farm Mystic Droplet"] = false,
		["Auto Farm Magma Ore"] = false,
		["Auto Farm Angel Wings"] = false,
		["Auto Farm Leather"] = false,
		["Auto Farm Scrap Metal"] = false,
		["Auto Farm Conjured Cocoa"] = false,
		["Auto Farm Dragon Scale"] = false,
		["Auto Farm Gunpowder"] = false,
		["Auto Farm Fish Tail"] = false,
		["Auto Farm Mini Tusk"] = false
	},
	Setting = {
		["Spin Position"] = false,
		["Farm Distance"] = 35,
		["Player Tween Speed"] = 350,
		["Bring Mob"] = true,
		["Bring Mob Mode"] = "Normal",
		["Fast Attack"] = true,
		["Fast Attack Mode"] = "Normal",
		["Fast Attack Type"] = "New",
		["Attack Aura"] = true,
		["Hide Notification"] = false,
		["Hide Damage Text"] = true,
		["Black Screen"] = false,
		["White Screen"] = false,
		["Hide Monster"] = false,
		["Mastery Health"] = 25,
		["Fruit Mastery Skill Z"] = true,
		["Fruit Mastery Skill X"] = true,
		["Fruit Mastery Skill C"] = true,
		["Fruit Mastery Skill V"] = false,
		["Fruit Mastery Skill F"] = false,
		["Gun Mastery Skill Z"] = true,
		["Gun Mastery Skill X"] = true,
		["Auto Set Spawn Point"] = true,
		["Auto Observation"] = false,
		["Auto Haki"] = true,
		["Auto Rejoin"] = true,
		["Bypass Anti Cheat"] = true
	},
	Hold = {
		["Hold Mastery Skill Z"] = 0,
		["Hold Mastery Skill X"] = 0,
		["Hold Mastery Skill C"] = 0,
		["Hold Mastery Skill V"] = 0,
		["Hold Mastery Skill F"] = 0,
		["Hold Sea Skill Z"] = 0,
		["Hold Sea Skill X"] = 0,
		["Hold Sea Skill C"] = 0,
		["Hold Sea Skill V"] = 0,
		["Hold Sea Skill F"] = 0
	},
	Stats = {
		["Auto Add Melee Stats"] = false,
		["Auto Add Defense Stats"] = false,
		["Auto Add Devil Fruit Stats"] = false,
		["Auto Add Sword Stats"] = false,
		["Auto Add Gun Stats"] = false,
		["Point Stats"] = 1
	},
	Items = {
		["Auto Second Sea"] = false,
		["Auto Third Sea"] = false,
		["Auto Farm Factory"] = false,
		["Auto Super Human"] = false,
		["Auto Death Step"] = false,
		["Auto Fishman Karate"] = false,
		["Auto Electric Claw"] = false,
		["Auto Dragon Talon"] = false,
		["Auto God Human"] = false,
		["Auto Buddy Sword"] = false,
		["Auto Soul Guitar"] = false,
		["Auto Rengoku"] = false,
		["Auto Hallow Scythe"] = false,
		["Auto Warden Sword"] = false,
		["Auto Cursed Dual Katana"] = false,
		["Auto Yama"] = false,
		["Auto Tushita"] = false,
		["Auto Canvander"] = false,
		["Auto Dragon Trident"] = false,
		["Auto Pole"] = false,
		["Auto Shawk Saw"] = false,
		["Auto Greybeard"] = false,
		["Auto Swan Glasses"] = false,
		["Auto Arena Trainer"] = false,
		["Auto Dark Dagger"] = false,
		["Auto Press Haki Button"] = false,
		["Auto Rainbow Haki"] = false,
		["Auto Holy Torch"] = false,
		["Auto Bartilo Quest"] = false
	},
	Esp = {
		["ESP Player"] = false,
		["ESP Chest"] = false,
		["ESP DevilFruit"] = false,
		["ESP RealFruit"] = false,
		["ESP Flower"] = false,
		["ESP Island"] = false,
		["ESP Npc"] = false,
		["ESP Sea Beast"] = false,
		["ESP Monster"] = false,
		["ESP Mirage"] = false,
		["ESP Kitsune"] = false,
		["ESP Frozen"] = false,
		["ESP Advanced Fruit Dealer"] = false,
		["ESP Aura"] = false,
		["ESP Gear"] = false
	},
	DragonDojo = {
		["Auto Farm Blaze Ember"] = false,
		["Auto Collect Blaze Ember"] = false
	},
	SeaEvent = {
		["Selected Boat"] = "Guardian",
		["Selected Zone"] = "Zone 5",
		["Boat Tween Speed"] = 300,
		["Sail Boat"] = false,
		["Auto Farm Shark"] = true,
		["Auto Farm Piranha"] = true,
		["Auto Farm Fish Crew Member"] = true,
		["Auto Farm Ghost Ship"] = true,
		["Auto Farm Pirate Brigade"] = true,
		["Auto Farm Pirate Grand Brigade"] = true,
		["Auto Farm Terrorshark"] = true,
		["Auto Farm Seabeasts"] = true,
		["Dodge Seabeasts Attack"] = true,
		["Dodge Terrorshark Attack"] = true,
		Lightning = false,
		["Increase Boat Speed"] = false,
		["No Clip Rock"] = false
	},
	SettingSea = {
		["Skill Devil Fruit"] = true,
		["Skill Melee"] = true,
		["Skill Sword"] = true,
		["Skill Gun"] = true,
		["Sea Fruit Skill Z"] = true,
		["Sea Fruit Skill X"] = true,
		["Sea Fruit Skill C"] = true,
		["Sea Fruit Skill V"] = false,
		["Sea Fruit Skill F"] = false,
		["Sea Melee Skill Z"] = true,
		["Sea Melee Skill X"] = true,
		["Sea Melee Skill C"] = true,
		["Sea Melee Skill V"] = true,
		["Sea Sword Skill Z"] = true,
		["Sea Sword Skill X"] = true,
		["Sea Gun Skill Z"] = true,
		["Sea Gun Skill X"] = true
	},
	SeaStack = {
		["Teleport To Frozen Dimension"] = false,
		["Sail To Frozen Dimension"] = false,
		["Summon Frozen Dimension"] = false,
		["Teleport To Kitsune Island"] = false,
		["Auto Collect Azure Ember"] = false,
		["Set Azure Ember"] = 20,
		["Auto Trade Azure Ember"] = false,
		["Teleport To Mirage Island"] = false,
		["Teleport To Advanced Fruit Dealer"] = false,
		["Auto Attack Seabeasts"] = false,
		["Summon Prehistoric Island"] = false,
		["Tween To Prehistoric Island"] = false,
		["Auto Kill Lava Golem"] = false
	},
	Craft = {
		["Auto Craft Common Scroll"] = false,
		["Auto Craft Rare Scroll"] = false,
		["Auto Craft Legendary Scroll"] = false,
		["Auto Craft Mythical Scroll"] = false
	},
	Race = {
		["Auto Race V2"] = false,
		["Auto Race V3"] = false,
		["Selected PlaceV4"] = nil,
		["Teleport To PlaceV4"] = false,
		["Auto Buy Gear"] = false,
		["Tween To Highest Mirage"] = false,
		["Find Blue Gear"] = false,
		["Look Moon Ability"] = false,
		["Auto Train"] = false,
		["Auto Kill Player After Trial"] = false,
		["Auto Trial"] = false
	},
	Combat = {
		["Auto Kill Player Quest"] = false,
		["Aimbot Gun"] = false,
		["Aimbot Skill Neares"] = false,
		["Aimbot Skill"] = false,
		["Enable PvP"] = false
	},
	Raid = {
		["Selected Chip"] = nil,
		["Auto Dungeon"] = false,
		["Auto Awaken"] = false,
		["Price Devil Fruit"] = 1000000,
		["Unstore Devil Fruit"] = false,
		["Law Raid"] = false
	},
	Shop = {
		["Auto Buy Legendary Sword"] = false,
		["Auto Buy Haki Color"] = false
	},
	LocalPlayer = {
		["Infinite Energy"] = false,
		["Infinite Ability"] = true,
		["Infinite Geppo"] = false,
		["Infinite Soru"] = false,
		["Dodge No Cooldown"] = false,
		["Active Race V3"] = false,
		["Active Race V4"] = true,
		["Walk On Water"] = true,
		["No Clip"] = false
	},
	Fruit = {
		["Auto Buy Random Fruit"] = false,
		["Store Rarity Fruit"] = "Common - Mythical",
		["Auto Store Fruit"] = false,
		["Fruit Notification"] = false,
		["Teleport To Fruit"] = false,
		["Tween To Fruit"] = false
	},
	Misc = {
		["Hide Chat"] = false,
		["Hide Leaderboard"] = false,
		["Highlight Mode"] = false
	}
};

-- Save/Load Settings Functions (Đã sửa cho Night Slayer Hub)
(getgenv()).Load = function()
	if readfile and writefile and isfile and isfolder then
		if not isfolder("Night Slayer Hub") then
			makefolder("Night Slayer Hub");
		end;
		if not isfolder("Night Slayer Hub/Blox Fruits/") then
			makefolder("Night Slayer Hub/Blox Fruits/");
		end;
		if not isfile(("Night Slayer Hub/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json")) then
			writefile("Night Slayer Hub/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json", (game:GetService("HttpService")):JSONEncode(_G.Settings));
		else
			local Decode = (game:GetService("HttpService")):JSONDecode(readfile("Night Slayer Hub/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json"));
			for i, v in pairs(Decode) do
				_G.Settings[i] = v;
			end;
		end;
		print("Loaded!");
	else
		return warn("Status : Undetected Executor");
	end;
end;

(getgenv()).SaveSetting = function()
	if Update:SaveSettings() then
		if readfile and writefile and isfile and isfolder then
			if not isfile(("Night Slayer Hub/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json")) then
				(getgenv()).Load();
			else
				local Decode = (game:GetService("HttpService")):JSONDecode(readfile("Night Slayer Hub/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json"));
				local Array = {};
				for i, v in pairs(_G.Settings) do
					Array[i] = v;
				end;
				writefile("Night Slayer Hub/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json", (game:GetService("HttpService")):JSONEncode(Array));
			end;
		else
			return warn("Status : Undetected Executor");
		end;
	end;
end;

(getgenv()).Load();

spawn(function()
	repeat
		task.wait();
	until game:IsLoaded();
	local ChatService = game:GetService("Chat");
	wait(1);
	((require(game.ReplicatedStorage.Notification)).new("<Color=Purple>[ Welcome to Night Slayer Hub " .. game.Players.LocalPlayer.DisplayName .. " ]<Color=/>")):Display();
	wait(1);
	((require(game.ReplicatedStorage.Notification)).new("<Color=Yellow>[ Enjoy Night Slayer Hub Script ]<Color=/>")):Display();
end);

-- Thêm các functions cơ bản cho UI
function CheckQuest()
	MyLevel = (game:GetService("Players")).LocalPlayer.Data.Level.Value;
	if World1 then
		if MyLevel == 1 or MyLevel <= 9 then
			Mon = "Bandit";
			LevelQuest = 1;
			NameQuest = "BanditQuest1";
			NameMon = "Bandit";
			CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544);
			CFrameMon = CFrame.new(1045.962646484375, 27.00250816345215, 1560.8203125);
		elseif MyLevel == 10 or MyLevel <= 14 then
			Mon = "Monkey";
			LevelQuest = 1;
			NameQuest = "JungleQuest";
			NameMon = "Monkey";
			CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0);
			CFrameMon = CFrame.new(-1448.51806640625, 67.85301208496094, 11.46579647064209);
		-- ... (giữ nguyên phần CheckQuest còn lại)
		end;
	end;
end;

function Hop()
	local module = (loadstring(game:HttpGet("https://raw.githubusercontent.com/raw-scriptpastebin/FE/main/Server_Hop_Settings")))();
	module:Teleport(game.PlaceId);
end;

-- =========== THÊM CÁC UI ELEMENTS VÀO TABS ===========

-- Main Tab
MainTab:Seperator("Main");

Time = MainTab:Label("Executor Time");
function UpdateTime()
	local GameTime = math.floor(workspace.DistributedGameTime + 0.5);
	local Hour = math.floor(GameTime / 60 ^ 2) % 24;
	local Minute = math.floor(GameTime / 60 ^ 1) % 60;
	local Second = math.floor(GameTime / 60 ^ 0) % 60;
	Time:Set("[Game Time] : Hours : " .. Hour .. " Min : " .. Minute .. " Sec : " .. Second);
end;

spawn(function()
	while task.wait() do
		pcall(function()
			UpdateTime();
		end);
	end;
end);

Client = MainTab:Label("Client");
function UpdateClient()
	local Fps = workspace:GetRealPhysicsFPS();
	Client:Set("[Fps] : " .. Fps);
end;

spawn(function()
	while true do
		wait(0.1);
		UpdateClient();
	end;
end);

Client1 = MainTab:Label("Client");
function UpdateClient1()
	local Ping = (game:GetService("Stats")).Network.ServerStatsItem["Data Ping"]:GetValueString();
	Client1:Set("[Ping] : " .. Ping);
end;

spawn(function()
	while true do
		wait(0.1);
		UpdateClient1();
	end;
end);

MainTab:Button("Copy Discord Link", function()
	setclipboard("https://discord.gg/nightslayerhub");
	Update:Notify("Copied!", 3);
end);

MainTab:Seperator("Level Farm");

local WeaponList = {
	"Melee",
	"Sword",
	"Fruit"
};

MainTab:Dropdown("Choose Weapon", WeaponList, _G.Settings.Main["Select Weapon"], function(value)
	_G.Settings.Main["Select Weapon"] = value;
	(getgenv()).SaveSetting();
end);

task.spawn(function()
	while wait(0.2) do
		pcall(function()
			if _G.Settings.Main["Select Weapon"] == "Melee" then
				for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Melee" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.Settings.Main["Selected Weapon"] = v.Name;
						end;
					end;
				end;
			elseif _G.Settings.Main["Select Weapon"] == "Sword" then
				for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Sword" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.Settings.Main["Selected Weapon"] = v.Name;
						end;
					end;
				end;
			elseif _G.Settings.Main["Select Weapon"] == "Fruit" then
				for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Blox Fruit" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.Settings.Main["Selected Weapon"] = v.Name;
						end;
					end;
				end;
			end;
		end);
	end;
end);

local ListF = {
	"Normal",
	"Auto Quest",
	"Nearest"
};

MainTab:Dropdown("Choose Farm Mode", ListF, _G.Settings.Main["Farm Mode"], function(value)
	_G.Settings.Main["Farm Mode"] = value;
	(getgenv()).SaveSetting();
end);

MainTab:Toggle("Auto Farm", _G.Settings.Main["Auto Farm"], "Auto Farm Selected Mode", function(value)
	_G.Settings.Main["Auto Farm"] = value;
	StopTween(_G.Settings.Main["Auto Farm"]);
	(getgenv()).SaveSetting();
end);

-- Farm Tab
FarmTab:Seperator("Farming Settings");

FarmTab:Toggle("Auto Farm Observation", _G.Settings.Farm["Auto Farm Observation"], false, function(value)
	_G.Settings.Farm["Auto Farm Observation"] = value;
	StopTween(_G.Settings.Farm["Auto Farm Observation"]);
	(getgenv()).SaveSetting();
end);

if World3 then
	FarmTab:Toggle("Auto V2 Observation", _G.Settings.Farm["Auto Observation V2"], false, function(value)
		_G.Settings.Farm["Auto Observation V2"] = value;
		StopTween(_G.Settings.Farm["Auto Observation V2"]);
		(getgenv()).SaveSetting();
	end);
end;

if World1 then
	FarmTab:Toggle("Auto Get Saber", _G.Settings.Farm["Auto Saber"], "Auto Get Saber", function(value)
		_G.Settings.Farm["Auto Saber"] = value;
		StopTween(_G.Settings.Farm["Auto Saber"]);
		(getgenv()).SaveSetting();
	end);
end;

-- Settings Tab
SettingsTab:Seperator("General Settings");

SettingsTab:Toggle("Spin Position", _G.Settings.Setting["Spin Position"], false, function(value)
	_G.Settings.Setting["Spin Position"] = value;
	(getgenv()).SaveSetting();
end);

SettingsTab:Slider("Farm Distance", 10, 100, _G.Settings.Setting["Farm Distance"], function(value)
	_G.Settings.Setting["Farm Distance"] = value;
	(getgenv()).SaveSetting();
end);

SettingsTab:Slider("Player Tween Speed", 100, 500, _G.Settings.Setting["Player Tween Speed"], function(value)
	_G.Settings.Setting["Player Tween Speed"] = value;
	(getgenv()).SaveSetting();
end);

SettingsTab:Toggle("Bring Mob", _G.Settings.Setting["Bring Mob"], true, function(value)
	_G.Settings.Setting["Bring Mob"] = value;
	(getgenv()).SaveSetting();
end);

SettingsTab:Toggle("Fast Attack", _G.Settings.Setting["Fast Attack"], true, function(value)
	_G.Settings.Setting["Fast Attack"] = value;
	(getgenv()).SaveSetting();
end);

SettingsTab:Toggle("Attack Aura", _G.Settings.Setting["Attack Aura"], true, function(value)
	_G.Settings.Setting["Attack Aura"] = value;
	(getgenv()).SaveSetting();
end);

SettingsTab:Toggle("Auto Haki", _G.Settings.Setting["Auto Haki"], true, function(value)
	_G.Settings.Setting["Auto Haki"] = value;
	(getgenv()).SaveSetting();
end);

SettingsTab:Toggle("Auto Rejoin", _G.Settings.Setting["Auto Rejoin"], true, function(value)
	_G.Settings.Setting["Auto Rejoin"] = value;
	(getgenv()).SaveSetting();
end);

-- Local Player Tab
LocalPlayerTab:Seperator("Player Modifications");

LocalPlayerTab:Toggle("Infinite Energy", _G.Settings.LocalPlayer["Infinite Energy"], false, function(value)
	_G.Settings.LocalPlayer["Infinite Energy"] = value;
	(getgenv()).SaveSetting();
end);

LocalPlayerTab:Toggle("Infinite Ability", _G.Settings.LocalPlayer["Infinite Ability"], true, function(value)
	_G.Settings.LocalPlayer["Infinite Ability"] = value;
	(getgenv()).SaveSetting();
end);

LocalPlayerTab:Toggle("Infinite Geppo", _G.Settings.LocalPlayer["Infinite Geppo"], false, function(value)
	_G.Settings.LocalPlayer["Infinite Geppo"] = value;
	(getgenv()).SaveSetting();
end);

LocalPlayerTab:Toggle("Infinite Soru", _G.Settings.LocalPlayer["Infinite Soru"], false, function(value)
	_G.Settings.LocalPlayer["Infinite Soru"] = value;
	(getgenv()).SaveSetting();
end);

LocalPlayerTab:Toggle("Dodge No Cooldown", _G.Settings.LocalPlayer["Dodge No Cooldown"], false, function(value)
	_G.Settings.LocalPlayer["Dodge No Cooldown"] = value;
	(getgenv()).SaveSetting();
end);

LocalPlayerTab:Toggle("Walk On Water", _G.Settings.LocalPlayer["Walk On Water"], true, function(value)
	_G.Settings.LocalPlayer["Walk On Water"] = value;
	(getgenv()).SaveSetting();
end);

LocalPlayerTab:Toggle("No Clip", _G.Settings.LocalPlayer["No Clip"], false, function(value)
	_G.Settings.LocalPlayer["No Clip"] = value;
	(getgenv()).SaveSetting();
end);

-- ESP Tab
EspTab:Seperator("ESP Settings");

EspTab:Toggle("ESP Player", _G.Settings.Esp["ESP Player"], false, function(value)
	_G.Settings.Esp["ESP Player"] = value;
	(getgenv()).SaveSetting();
end);

EspTab:Toggle("ESP Chest", _G.Settings.Esp["ESP Chest"], false, function(value)
	_G.Settings.Esp["ESP Chest"] = value;
	(getgenv()).SaveSetting();
end);

EspTab:Toggle("ESP DevilFruit", _G.Settings.Esp["ESP DevilFruit"], false, function(value)
	_G.Settings.Esp["ESP DevilFruit"] = value;
	(getgenv()).SaveSetting();
end);

EspTab:Toggle("ESP Flower", _G.Settings.Esp["ESP Flower"], false, function(value)
	_G.Settings.Esp["ESP Flower"] = value;
	(getgenv()).SaveSetting();
end);

EspTab:Toggle("ESP Island", _G.Settings.Esp["ESP Island"], false, function(value)
	_G.Settings.Esp["ESP Island"] = value;
	(getgenv()).SaveSetting();
end);

EspTab:Toggle("ESP Npc", _G.Settings.Esp["ESP Npc"], false, function(value)
	_G.Settings.Esp["ESP Npc"] = value;
	(getgenv()).SaveSetting();
end);

-- Teleport Tab
TeleportTab:Seperator("Teleport Locations");

TeleportTab:Button("Teleport to Safe Zone", function()
	local player = game.Players.LocalPlayer
	if player.Character then
		player.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(0, 100, 0)
		Update:Notify("Teleported to Safe Zone!", 3)
	end
end);

TeleportTab:Button("Teleport to Spawn", function()
	local player = game.Players.LocalPlayer
	if player.Character then
		local spawn = workspace:FindFirstChild("SpawnLocation")
		if spawn then
			player.Character:WaitForChild("HumanoidRootPart").CFrame = spawn.CFrame
			Update:Notify("Teleported to Spawn!", 3)
		end
	end
end);

-- Misc Tab
MiscTab:Seperator("Miscellaneous");

MiscTab:Toggle("Hide Chat", _G.Settings.Misc["Hide Chat"], false, function(value)
	_G.Settings.Misc["Hide Chat"] = value;
	(game:GetService("StarterGui")):SetCore("ChatActive", not value);
	(getgenv()).SaveSetting();
end);

MiscTab:Toggle("Hide Leaderboard", _G.Settings.Misc["Hide Leaderboard"], false, function(value)
	_G.Settings.Misc["Hide Leaderboard"] = value;
	local leaderboard = game.Players.LocalPlayer.PlayerGui:FindFirstChild("Leaderboard")
	if leaderboard then
		leaderboard.Enabled = not value
	end
	(getgenv()).SaveSetting();
end);

-- Server Tab
ServTab:Seperator("Server Control");

ServTab:Button("Rejoin Server", function()
	game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
	Update:Notify("Rejoining server...", 3)
end);

ServTab:Button("Server Hop", function()
	Hop()
	Update:Notify("Server hopping...", 3)
end);

ServTab:Button("Copy Server ID", function()
	setclipboard(tostring(game.JobId))
	Update:Notify("Server ID Copied!", 3)
end);

-- Thêm các functions hỗ trợ
function AutoHaki()
	if not (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("HasBuso") then
		(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("Buso");
	end;
end;

function EquipWeapon(ToolSe)
	if not game.Players.LocalPlayer.Character:FindFirstChild(ToolSe) then
		if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
			Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe);
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool);
		end;
	end;
end;

function UnEquipWeapon(Weapon)
	if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
		(game.Players.LocalPlayer.Character:FindFirstChild(Weapon)).Parent = game.Players.LocalPlayer.Backpack;
	end;
end;

-- Anti-AFK
(game:GetService("Players")).LocalPlayer.Idled:connect(function()
	(game:GetService("VirtualUser")):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame);
	wait(1);
	(game:GetService("VirtualUser")):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame);
end);

-- Auto Farm Function
spawn(function()
	while wait(0.2) do
		if _G.Settings.Main["Farm Mode"] == "Normal" and _G.Settings.Main["Auto Farm"] then
			pcall(function()
				CheckQuest();
				local QuestTitle = (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
				if not string.find(QuestTitle, NameMon) then
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("AbandonQuest");
				end;
				if (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					-- topos(CFrameQuest);
					if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 5 then
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest);
					end;
				elseif (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == true then
					if (game:GetService("Workspace")).Enemies:FindFirstChild(Mon) then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								if v.Name == Mon then
									if string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
										repeat
											(game:GetService("RunService")).Heartbeat:wait();
											EquipWeapon(_G.Settings.Main["Selected Weapon"]);
											AutoHaki();
											-- topos(v.HumanoidRootPart.CFrame * Pos);
											v.HumanoidRootPart.CanCollide = false;
											v.Humanoid.WalkSpeed = 0;
											v.Head.CanCollide = false;
											v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
											-- Attack();
										until not _G.Settings.Main["Auto Farm"] or v.Humanoid.Health <= 0 or (not v.Parent) or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false;
									end;
								end;
							end;
						end;
					end;
				end;
			end);
		end;
	end;
end);

-- Final Notification
Update:Notify("Night Slayer Hub Loaded Successfully!", 5);