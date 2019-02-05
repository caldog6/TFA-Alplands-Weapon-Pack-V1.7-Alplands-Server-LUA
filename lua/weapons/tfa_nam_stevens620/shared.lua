-- Variables that are used on both client and server
SWEP.Gun = ("tfa_nam_stevens620") -- must be the name of your swep but NO CAPITALS!
SWEP.Category				= "TFA Alplands"
SWEP.Author				= "The Master MLG"
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellAttachment			= "shell" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Stevens 620"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 3				-- Slot in the weapon selection menu
SWEP.SlotPos				= 8			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight				= 36			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "shotgun"		-- how others view you carrying the weapon
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive 
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles

SWEP.ViewModelFOV			= 54
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/v_nam_stevens620.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_nam_stevens620.mdl"	-- Weapon world model
SWEP.Base				= "tfa_shotty_base"
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false
SWEP.UseHands = true

SWEP.Primary.Sound			= Sound("weapons/tfa_nam_stevens620/stevens620_fp.wav")
SWEP.Primary.RPM			= 350			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 5		-- Size of a clip
SWEP.Primary.DefaultClip		= 5	-- Bullets you start with
SWEP.Primary.KickUp				= 1.6		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.7		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.01		-- Maximum up recoil (stock)
SWEP.Primary.StaticRecoilFactor = 1.2

SWEP.Primary.Automatic			= false		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "12 Gauge"			-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a light metal peircing shotgun pellets

SWEP.Secondary.IronFOV			= 70		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 1

SWEP.Primary.NumShots = 12		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 8	-- Base damage per bullet
SWEP.Primary.Spread		= .052	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .046 -- Ironsight accuracy, should be the same for shotguns

SWEP.Primary.Range = -1 -- The distance the bullet can travel in source units.  Set to -1 to autodetect based on damage/rpm.
SWEP.Primary.RangeFalloff = -1 -- The percentage of the range the bullet damage starts to fall off at.  Set to 0.8, for example, to start falling off after 80% of the range.

SWEP.ShellTime			= 0.6
SWEP.KF2StyleShotgun = true --Allow empty reloads for shotguns?
SWEP.ShotgunEmptyAnim = true --Enable insertion of a shell directly into the chamber on empty reload?

-- Enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(-2.023, -0.08, 0.839)
SWEP.IronSightsAng = Vector(0.829, 0, 0)
SWEP.RunSightsPos = Vector(0, -4.634, 0.985)
SWEP.RunSightsAng = Vector(-11.396, 18.172, -1.351)
SWEP.InspectPos = Vector(7.309, -2.007, 1.335)
SWEP.InspectAng = Vector(0.888, 41.819, 8.211)

SWEP.Sprint_Mode = TFA.Enum.LOCOMOTION_ANI -- ANI = mdl, HYBRID = ani + lua, Lua = lua only
SWEP.SprintAnimation = {
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "base_sprint", --Number for act, String/Number for sequence
		["is_idle"] = true
	}
}

SWEP.PumpAction = {
	["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
	["value"] = ACT_SHOTGUN_PUMP, --Number for act, String/Number for sequence
	["value_is"] = ACT_SHOTGUN_PUMP
}

SWEP.StatusLengthOverride = {
	[ACT_VM_RELOAD_EMPTY] = 60 / 35,
	[ACT_VM_RELOAD] = 0.2,
	[ACT_SHOTGUN_PUMP] = 0.5,
	[ACT_VM_PRIMARYATTACK_DEPLOYED_2] = 0.5,
	[ACT_VM_PRIMARYATTACK_DEPLOYED_EMPTY] = 0.5,
	[ACT_VM_DRYFIRE] = 0.5
} --Changes the status delay of a given animation; only used on reloads.  Otherwise, use SequenceLengthOverride or one of the others
SWEP.SequenceLengthOverride = {
	[ACT_SHOTGUN_PUMP] = 0.5,
	[ACT_VM_PRIMARYATTACK_DEPLOYED_2] = 0.5,
	[ACT_VM_PRIMARYATTACK_DEPLOYED_EMPTY] = 0.5,
	[ACT_VM_DRYFIRE] = 0.5
} --Changes both the status delay and the nextprimaryfire of a given animation

SWEP.MuzzleAttachmentSilenced = 3
SWEP.LaserSightModAttachment = 1
SWEP.LaserSightModWorldAttachment = 0
SWEP.Blowback_Shell_Effect = "ShotgunShellEject" --Which shell effect to use
SWEP.LuaShellEject = false --Enable shell ejection through lua?
SWEP.LuaShellEjectDelay = 0 --The delay to actually eject things
SWEP.LuaShellEffect = "ShotgunShellEject" --The effect used for shell ejection; Defaults to that used for blowback

SWEP.WElements = {
	["ref"] = { type = "Model", model = SWEP.WorldModel, bone = "oof", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
}

SWEP.Offset = {
	Pos = {
		Up = -2.6,
		Right = 0.8,
		Forward = 3.7
	},
	Ang = {
		Up = 0,
		Right = -5.844,
		Forward = 180
	},
	Scale = 0.8
} --Procedural world model animation, defaulted for CS:S purposes.

SWEP.Attachments = {
}

SWEP.EventTable = {
	[ACT_SHOTGUN_PUMP] = {
		{ ["time"] = 10 / 35, ["type"] = "lua", ["value"] = function(wep,vm)
			if wep and wep.EventShell then
				wep:EventShell()
			end
		end, ["client"] = true, ["server"] = true }
	},
	[ACT_VM_PULLBACK] = {
		{ ["time"] = 10 / 35, ["type"] = "lua", ["value"] = function(wep,vm)
			if wep and wep.EventShell then
				wep:EventShell()
			end
		end, ["client"] = true, ["server"] = true }
	},
	[ACT_VM_PULLBACK_LOW] = {
		{ ["time"] = 10 / 35, ["type"] = "lua", ["value"] = function(wep,vm)
			if wep and wep.EventShell then
				wep:EventShell()
			end
		end, ["client"] = true, ["server"] = true }
	},
	[ACT_VM_PULLBACK_HIGH] = {
		{ ["time"] = 10 / 35, ["type"] = "lua", ["value"] = function(wep,vm)
			if wep and wep.EventShell then
				wep:EventShell()
			end
		end, ["client"] = true, ["server"] = true }
	}
}