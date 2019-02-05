include("fonts.lua")

SWEP.WepSelectFont		= "TitleFont"
SWEP.WepSelectLetter	= "l"

SWEP.Gun					= ("tfa_hl2r_ar2") --Make sure this is unique.  Specically, your folder name.
if (GetConVar(SWEP.Gun.."_allowed")) != nil then
	if not (GetConVar(SWEP.Gun.."_allowed"):GetBool()) then SWEP.Base = "tfa_blacklisted" SWEP.PrintName = SWEP.Gun return end
end
SWEP.Base				= "tfa_gun_base"
SWEP.Category				= "TFA Alplands" --The category.  Please, just choose something generic or something I've already done if you plan on only doing like one swep..
SWEP.Manufacturer = "Universal Union" --Gun Manufactrer (e.g. Hoeckler and Koch )
SWEP.Author				= "" --Author Tooltip
SWEP.Contact				= "" --Contact Info Tooltip
SWEP.Purpose				= "" --Purpose Tooltip
SWEP.Instructions				= "" --Instructions Tooltip
SWEP.Spawnable				= true --Can you, as a normal user, spawn this?
SWEP.AdminSpawnable			= false --Can an adminstrator spawn this?  Does not tie into your admin mod necessarily, unless its coded to allow for GMod's default ranks somewhere in its code.  Evolve and ULX should work, but try to use weapon restriction rather than these.
SWEP.DrawCrosshair			= true		-- Draw the crosshair?
SWEP.DrawCrosshairIS = false --Draw the crosshair in ironsights?
SWEP.PrintName				= "AR2 Pulse Rifle"		-- Weapon name (Shown on HUD)
SWEP.Slot				= 2				-- Slot in the weapon selection menu.  Subtract 1, as this starts at 0.
SWEP.SlotPos				= 20			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter if enabled in the GUI.
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.Weight				= 30			-- This controls how "good" the weapon is for autopickup.

--[[WEAPON HANDLING]]--

--Firing related
SWEP.Primary.Sound 			= Sound("TFA_HL2R_AR2.1")				-- This is the sound of the weapon, when you shoot.
SWEP.Primary.SilencedSound 			= nil				-- This is the sound of the weapon, when silenced.
SWEP.Primary.PenetrationMultiplier = 2 --Change the amount of something this gun can penetrate through
SWEP.Primary.Damage		= 55					-- Damage, in standard damage points.
SWEP.Primary.HullSize = 0 --Big bullets, increase this value.  They increase the hull size of the hitscan bullet.
SWEP.DamageType = bit.bor(DMG_AIRBOAT,DMG_BULLET) --See DMG enum.  This might be DMG_SHOCK, DMG_BURN, DMG_BULLET, etc.
SWEP.Primary.NumShots	= 1 --The number of shots the weapon fires.  SWEP.Shotgun is NOT required for this to be >1.
SWEP.Primary.Automatic			= true					-- Automatic/Semi Auto
SWEP.Primary.RPM				= 652					-- This is in Rounds Per Minute / RPM
SWEP.Primary.RPM_Semi				= nil					-- RPM for semi-automatic or burst fire.  This is in Rounds Per Minute / RPM
SWEP.Primary.RPM_Burst				= nil					-- RPM for burst fire, overrides semi.  This is in Rounds Per Minute / RPM
SWEP.Primary.BurstDelay				= nil					-- Delay between bursts, leave nil to autocalculate
SWEP.FiresUnderwater = false

SWEP.CanBeSilenced = false --Can we silence?  Requires animations.
SWEP.Silenced = false --Silenced by default?

-- Selective Fire Stuff

SWEP.SelectiveFire		= false --Allow selecting your firemode?
SWEP.DisableBurstFire	= false --Only auto/single?
SWEP.OnlyBurstFire		= false --No auto, only burst/single?
SWEP.DefaultFireMode 	= "" --Default to auto or whatev
SWEP.FireModeName = nil --Change to a text value to override it

--Ammo Related

SWEP.Primary.ClipSize			= 30				-- This is the size of a clip
SWEP.Primary.DefaultClip			= 30					-- This is the number of bullets the gun gives you, counting a clip as defined directly above.
SWEP.Primary.Ammo			= "Pulse Rounds"					-- What kind of ammo.  Options, besides custom, include pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, and AirboatGun.
--Pistol, buckshot, and slam like to ricochet. Use AirboatGun for a light metal peircing shotgun pellets

SWEP.DisableChambering = true --Disable round-in-the-chamber

--Recoil Related
SWEP.Primary.KickUp			= 0.50					-- This is the maximum upwards recoil (rise)
SWEP.Primary.KickDown			= 0.35					-- This is the maximum downwards recoil (skeet)
SWEP.Primary.KickHorizontal			= 0.15					-- This is the maximum sideways recoil (no real term)
SWEP.Primary.StaticRecoilFactor = 0.8 	--Amount of recoil to directly apply to EyeAngles.  Enter what fraction or percentage (in decimal form) you want.  This is also affected by a convar that defaults to 0.5.

--Firing Cone Related

SWEP.Primary.Spread		= .02					--This is hip-fire acuracy.  Less is more (1 is horribly awful, .0001 is close to perfect)
SWEP.Primary.IronAccuracy = .004	-- Ironsight accuracy, should be the same for shotguns

--Unless you can do this manually, autodetect it.  If you decide to manually do these, uncomment this block and remove this line.
SWEP.Primary.SpreadMultiplierMax = 3 --How far the spread can expand when you shoot.
SWEP.Primary.SpreadIncrement = 0.6 --What percentage of the modifier is added on, per shot.
SWEP.Primary.SpreadRecovery = 3 --How much the spread recovers, per second.

--Range Related
SWEP.Primary.Range = -1 -- The distance the bullet can travel in source units.  Set to -1 to autodetect based on damage/rpm.
SWEP.Primary.RangeFalloff = -1 -- The percentage of the range the bullet damage starts to fall off at.  Set to 0.8, for example, to start falling off after 80% of the range.


--Penetration Related

SWEP.MaxPenetrationCounter=1 --The maximum number of ricochets.  To prevent stack overflows.

--Misc
SWEP.IronRecoilMultiplier=0.8 --Multiply recoil by this factor when we're in ironsights.  This is proportional, not inversely.
SWEP.CrouchRecoilMultiplier=0.5  --Multiply recoil by this factor when we're crouching.  This is proportional, not inversely.
SWEP.JumpRecoilMultiplier=1.3  --Multiply recoil by this factor when we're crouching.  This is proportional, not inversely.
SWEP.WallRecoilMultiplier=1.1  --Multiply recoil by this factor when we're changing state e.g. not completely ironsighted.  This is proportional, not inversely.
SWEP.ChangeStateRecoilMultiplier=1.3  --Multiply recoil by this factor when we're crouching.  This is proportional, not inversely.
SWEP.CrouchAccuracyMultiplier=0.6--Less is more.  Accuracy * 0.5 = Twice as accurate, Accuracy * 0.1 = Ten times as accurate
SWEP.ChangeStateAccuracyMultiplier=1.5 --Less is more.  A change of state is when we're in the progress of doing something, like crouching or ironsighting.  Accuracy * 2 = Half as accurate.  Accuracy * 5 = 1/5 as accurate
SWEP.JumpAccuracyMultiplier=2--Less is more.  Accuracy * 2 = Half as accurate.  Accuracy * 5 = 1/5 as accurate
SWEP.WalkAccuracyMultiplier=1.35--Less is more.  Accuracy * 2 = Half as accurate.  Accuracy * 5 = 1/5 as accurate
SWEP.IronSightTime = 0.3 --The time to enter ironsights/exit it.
SWEP.NearWallTime = 0.25 --The time to pull up  your weapon or put it back down
SWEP.ToCrouchTime = 0.05 --The time it takes to enter crouching state
SWEP.WeaponLength = 40 --Almost 3 feet Feet.  This should be how far the weapon sticks out from the player.  This is used for calculating the nearwall trace.
SWEP.MoveSpeed = 1 --Multiply the player's movespeed by this.
SWEP.IronSightsMoveSpeed = 0.8 --Multiply the player's movespeed by this when sighting.
SWEP.SprintFOVOffset = 3.75 --Add this onto the FOV when we're sprinting.

--[[PROJECTILES]]--

SWEP.ProjectileEntity = nil --Entity to shoot
SWEP.ProjectileVelocity = 0 --Entity to shoot's velocity
SWEP.ProjectileModel = nil --Entity to shoot's model

--[[VIEWMODEL]]--

SWEP.ViewModel			= "models/weapons/tfa_hl2r/c_irifle.mdl" --Viewmodel path
SWEP.ViewModel_LEG			= "models/weapons/tfa_hl2r/c_irifle_og.mdl" --Viewmodel path
SWEP.ViewModelFOV			= 60		-- This controls how big the viewmodel looks.  Less is more.
SWEP.ViewModelFlip			= false		-- Set this to true for CSS models, or false for everything else (with a righthanded viewmodel.)
SWEP.MaterialTable = nil --Make sure the viewmodel and the worldmodel have the same material ids.  Next, fill this in with your desired submaterials.
SWEP.UseHands = true --Use gmod c_arms system.
SWEP.VMPos = Vector(0,-0,0) --The viewmodel positional offset, constantly.  Subtract this from any other modifications to viewmodel position.
SWEP.VMAng = Vector(0,0,0) --The viewmodel angular offset, constantly.   Subtract this from any other modifications to viewmodel angle.
SWEP.CenteredPos = Vector(-4.68, 0, -3.016)
SWEP.CenteredAng = Vector(3.517, 0, 0)

SWEP.VMBodyGroups = nil --{
	--[0] = 1,
	--[1] = 4,
	--[2] = etc.
--}

--[[WORLDMODEL]]--

SWEP.WorldModel			= "models/weapons/tfa_hl2r/w_irifle.mdl" -- Weapon world model path

SWEP.WMBodyGroups = nil--{
	--[0] = 1,
	--[1] = 4,
	--[2] = etc.
--}

SWEP.HoldType 				= "ar2"		-- This is how others view you carrying the weapon. Options include:
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive
-- You're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles

SWEP.Offset = { --Procedural world model animation, defaulted for CS:S purposes.
        Pos = {
        Up = 0,
        Right = 0,
        Forward = 0,
        },
        Ang = {
        Up = -1,
        Right = -2,
        Forward = 178
        },
		Scale = 1
}

SWEP.ThirdPersonReloadDisable=false --Disable third person reload?  True disables.

--[[SCOPES]]--

SWEP.IronSightsSensitivity = 1 --Useful for a RT scope.  Change this to 0.25 for 25% sensitivity.  This is if normal FOV compenstaion isn't your thing for whatever reason, so don't change it for normal scopes.
SWEP.BoltAction			= false  --Unscope/sight after you shoot?
SWEP.Scoped				= false  --Draw a scope overlay?

SWEP.ScopeOverlayThreshold = 0.875 --Percentage you have to be sighted in to see the scope.
SWEP.BoltTimerOffset = 0.25 --How long you stay sighted in after shooting, with a bolt action.

SWEP.ScopeScale = 0.5 --Scale of the scope overlay
SWEP.ReticleScale = 0.7 --Scale of the reticle overlay

--GDCW Overlay Options.  Only choose one.

SWEP.Secondary.UseACOG			= false	 --Overlay option
SWEP.Secondary.UseMilDot			= false			 --Overlay option
SWEP.Secondary.UseSVD			= false		 --Overlay option
SWEP.Secondary.UseParabolic		= false		 --Overlay option
SWEP.Secondary.UseElcan			= false	 --Overlay option
SWEP.Secondary.UseGreenDuplex		= false		 --Overlay option

if surface then
	SWEP.Secondary.ScopeTable = nil --[[
		{
			scopetex = surface.GetTextureID("scope/gdcw_closedsight"),
			reticletex = surface.GetTextureID("scope/gdcw_acogchevron"),
			dottex = surface.GetTextureID("scope/gdcw_acogcross")
		}
	]]--
end

--[[SHOTGUN CODE]]--

SWEP.Shotgun = false --Enable shotgun style reloading.

SWEP.ShellTime			= .35 -- For shotguns, how long it takes to insert a shell.

--[[SPRINTING]]--

SWEP.RunSightsPos = Vector( 2.148, -3.2166, -0.0264 )
SWEP.RunSightsAng = Vector( -13.6633, 17.1075, 0 )

--[[IRONSIGHTS]]--

SWEP.data 				= {}
SWEP.data.ironsights			= 1 --Enable Ironsights
SWEP.Secondary.IronFOV			= 70					-- How much you 'zoom' in. Less is more!  Don't have this be <= 0.  A good value for ironsights is like 70.

--SWEP.IronSightsPos = Vector( -2, 0, 1 )
--SWEP.IronSightsAng = Vector( 0, 0, 0 )
--SWEP.IronSightsPos = Vector(-5.126, -4, 2.115)
--SWEP.IronSightsAng = Vector(0.105, 0.05, 0)
SWEP.IronSightsPos = Vector(-5.124, -4.000, 2.165)
SWEP.IronSightsAng = Vector(0.600, 0.050, 0)

SWEP.IronSightsPos_LEG = Vector( -2, 0, 1 )
SWEP.IronSightsAng_LEG = Vector( 0, 0, 0 )

--[[INSPECTION]]--

--SWEP.InspectPos = Vector(0,0,0) --Replace with a vector, in style of ironsights position, to be used for inspection
--SWEP.InspectAng = Vector(0,0,0) --Replace with a vector, in style of ironsights angle, to be used for inspection

--[[VIEWMODEL ANIMATION HANDLING]]--

SWEP.ShootWhileDraw=false --Can you shoot while draw anim plays?
SWEP.AllowReloadWhileDraw=false --Can you reload while draw anim plays?
SWEP.SightWhileDraw=false --Can we sight in while the weapon is drawing / the draw anim plays?
SWEP.AllowReloadWhileHolster=true --Can we interrupt holstering for reloading?
SWEP.ShootWhileHolster=true --Cam we interrupt holstering for shooting?
SWEP.SightWhileHolster=false --Cancel out "iron"sights when we holster?
SWEP.UnSightOnReload=true --Cancel out ironsights for reloading.
SWEP.AllowReloadWhileSprinting=true --Can you reload when close to a wall and facing it?
SWEP.AllowReloadWhileNearWall=false --Can you reload when close to a wall and facing it?
SWEP.SprintBobMult=1.5 -- More is more bobbing, proportionally.  This is multiplication, not addition.  You want to make this > 1 probably for sprinting.
SWEP.IronBobMult=0  -- More is more bobbing, proportionally.  This is multiplication, not addition.  You want to make this < 1 for sighting, 0 to outright disable.
SWEP.IronBobMultWalk=0.2  -- More is more bobbing, proportionally.  This is multiplication, not addition.  You want to make this < 1 for sighting, 0 to outright disable.
SWEP.BobScaleCustom=-5
SWEP.AllowViewAttachment = true --Allow the view to sway based on weapon attachment while reloading or drawing, IF THE CLIENT HAS IT ENABLED IN THEIR CONVARS!!!!11111oneONEELEVEN


--[[VIEWMODEL BLOWBACK]]--

SWEP.BlowbackEnabled = false --Enable Blowback?
SWEP.BlowbackVector = Vector(0,-1,0) --Vector to move bone <or root> relative to bone <or view> orientation.
SWEP.BlowbackCurrentRoot = 0 --Amount of blowback currently, for root
SWEP.BlowbackCurrent = 0 --Amount of blowback currently, for bones
SWEP.BlowbackBoneMods = nil --Viewmodel bone mods via SWEP Creation Kit
SWEP.Blowback_Only_Iron = true --Only do blowback on ironsights
SWEP.Blowback_PistolMode = false --Do we recover from blowback when empty?
SWEP.Blowback_Shell_Enabled = true
SWEP.Blowback_Shell_Effect = "ShellEject"


--[[VIEWMODEL PROCEDURAL ANIMATION]]--

SWEP.DoProceduralReload = false--Animate first person reload using lua?
SWEP.ProceduralReloadTime = 1 --Procedural reload time?

--[[HOLDTYPES]]--

SWEP.IronSightHoldTypeOverride=""  --This variable overrides the ironsights holdtype, choosing it instead of something from the above tables.  Change it to "" to disable.
SWEP.SprintHoldTypeOverride=""  --This variable overrides the sprint holdtype, choosing it instead of something from the above tables.  Change it to "" to disable.

--[[ANIMATION]]--

SWEP.ForceDryFireOff = false --Disables dryfire.  Set to false to enable them.
SWEP.DisableIdleAnimations = false --Disables idle animations.  Set to false to enable them.
SWEP.ForceEmptyFireOff = false --Disables empty fire animations.  Set to false to enable them.

--If you really want, you can remove things from SWEP.actlist and manually enable animations and set their lengths.

SWEP.SequenceEnabled = {} --Self explanitory.  This can forcefully enable or disable a certain ACT_VM
SWEP.SequenceLength = {}  --This controls the length of a certain ACT_VM
SWEP.SequenceLengthOverride={} --Override this if you want to change the length of a sequence but not the next idle

--[[EFFECTS]]--

--Muzzle Smoke

SWEP.SmokeParticles = { pistol = "smoke_trail_controlled",  --These are particle effects INSIDE a pcf file, not PCF files, that are played when you shoot.
	smg = "smoke_trail_tfa",
	grenade = "smoke_trail_tfa",
	ar2 = "smoke_trail_tfa",
	shotgun = "smoke_trail_wild",
	rpg = "smoke_trail_tfa",
	physgun = "smoke_trail_tfa",
	crossbow = "smoke_trail_tfa",
	melee = "smoke_trail_tfa",
	slam = "smoke_trail_tfa",
	normal = "smoke_trail_tfa",
	melee2 = "smoke_trail_tfa",
	knife = "smoke_trail_tfa",
	duel = "smoke_trail_tfa",
	camera = "smoke_trail_tfa",
	magic = "smoke_trail_tfa",
	revolver = "smoke_trail_tfa",
	silenced = "smoke_trail_controlled"
}

--Muzzle Flash

SWEP.MuzzleAttachment			= "muzzle" 		-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "shell" 		-- Should be "2" for CSS models or "shell" for hl2 models


SWEP.DoMuzzleFlash = true --Do a muzzle flash?
SWEP.CustomMuzzleFlash = false --Disable muzzle anim events and use our custom flashes?
SWEP.AutoDetectMuzzleAttachment = false --For multi-barrel weapons, detect the proper attachment?
SWEP.MuzzleFlashEffect = "tfa_hl2r_muzzleflash_ar2" --Change to a string of your muzzle flash effect.  Copy/paste one of the existing from the base.
SWEP.ChargeMuzzleFlashEffect = "tfa_hl2r_muzzleflash_ar2_charge" --Used by the AR2, Charging Muzzle effect
SWEP.SecondaryMuzzleFlash = "tfa_hl2r_muzzleflash_ar2_alt" --Used by the AR2, Secondary Fire muzzle effect.

--Shell eject override
SWEP.LuaShellEject = true --Enable shell ejection through lua?
SWEP.ShellModel = "models/weapons/tfa_hl2r/irifleshell.mdl" --The model to use for ejected shells
SWEP.LuaShellModel = "models/weapons/tfa_hl2r/irifleshell.mdl" --The model to use for ejected shells
SWEP.LuaShellEjectDelay = 0 --The delay to actually eject things
SWEP.LuaShellScale = 0.82 --The model scale to use for ejected shells
SWEP.LuaShellYaw = 0 --The model yaw rotation ( relative ) to use for ejected shells

--Tracer Stuff

SWEP.Tracer				= 0		--Bullet tracer.  TracerName overrides this.
SWEP.TracerName 		= "AR2Tracer" 	--Change to a string of your tracer name.  Can be custom.
								--There is a nice example at https://github.com/garrynewman/garrysmod/blob/master/garrysmod/gamemodes/base/entities/effects/tooltracer.lua
SWEP.TracerCount 		= 1 	--0 disables, otherwise, 1 in X chance


SWEP.TracerLua 			= false --Use lua effect, TFA Muzzle syntax.  Currently obsolete.
SWEP.TracerDelay		= 0.01 --Delay for lua tracer effect

--Impact Effects

SWEP.ImpactEffect = "AR2Impact"--Impact Effect
SWEP.ImpactDecal = nil--Impact Decal

--[[EVENT TABLE]]--


--example:
SWEP.MagModel = Model("models/weapons/tfa_hl2r/w_ar2_magazine.mdl")
SWEP.EventTable = {
	[ACT_VM_DRAW] = {
		--{ ['time'] = 0, ['type'] = "lua", ['value'] = function (wep,vm) wep.Charging = false end, ['client'] = true, ['server'] = true  },
	},
	[ACT_VM_PRIMARYATTACK] = {
		--{ ['time'] = 0, ['type'] = "lua", ['value'] = function (wep,vm) wep.Charging = true end, ['client'] = true, ['server'] = true  },
		--{ ['time'] = 5/30, ['type'] = "lua", ['value'] = function (wep,vm) wep.Charging = false end, ['client'] = true, ['server'] = true  },
	},
	[ACT_VM_PRIMARYATTACK_1] = {
		--{ ['time'] = 0, ['type'] = "lua", ['value'] = function (wep,vm) wep.Charging = true end, ['client'] = true, ['server'] = true  },
		--{ ['time'] = 5/30, ['type'] = "lua", ['value'] = function (wep,vm) wep.Charging = false end, ['client'] = true, ['server'] = true  },
	},
    [ACT_VM_RELOAD] = {
        { ['time'] = 20/30, ['type'] = "lua", ['value'] = function (wep,vm) wep:DropMag() end, ['client'] = true, ['server'] = false  },
    },
    [ACT_VM_RELOAD_EMPTY] = {
        { ['time'] = 20/30, ['type'] = "lua", ['value'] = function (wep,vm) wep:DropMag() end, ['client'] = true, ['server'] = false  },
    },
	["reload_midempty"] = {
        { ['time'] = 20/30, ['type'] = "lua", ['value'] = function (wep,vm) wep:DropMag() end, ['client'] = true, ['server'] = false  },
	},
	["reloadempty_lastcapsule"] = { 
        { ['time'] = 20/30, ['type'] = "lua", ['value'] = function (wep,vm) wep:DropMag() end, ['client'] = true, ['server'] = false  },
	},
	[ACT_VM_THROW] = {
		--{ ['time'] = 0, ['type'] = "lua", ['value'] = function (wep,vm) wep.Charging = true end, ['client'] = true, ['server'] = true  },
	},
	[ACT_VM_SECONDARYATTACK] = {
		--{ ['time'] = 0, ['type'] = "lua", ['value'] = function (wep,vm) wep.Charging = false end, ['client'] = true, ['server'] = true  },
	}
}

--[[RENDER TARGET]]--

SWEP.RTMaterialOverride = nil -- Take the material you want out of print(LocalPlayer():GetViewModel():GetMaterials()), subtract 1 from its index, and set it to this.

SWEP.RTOpaque = false -- Do you want your render target to be opaque?

SWEP.RTCode = function( self ) --This is the function to draw onto your rendertarget

	return

end

--[[AKIMBO]]--

SWEP.Akimbo = false --Akimbo gun?  Alternates between primary and secondary attacks.
SWEP.AnimCycle = 0 -- Start on the right

--[[TTT]]--

local gm = engine.ActiveGamemode()
if string.find(gm,"ttt") or string.find(gm,"terrorist") then
	SWEP.Kind = WEAPON_HEAVY
	SWEP.AutoSpawnable = false
	SWEP.AllowDrop = true
	SWEP.AmmoEnt = "item_ammo_smg1_ttt"
end


--[[MISC INFO FOR MODELERS]]--

--[[

Used Animations (for modelers):

ACT_VM_DRAW - Draw
ACT_VM_DRAW_EMPTY - Draw empty
ACT_VM_DRAW_SILENCED - Draw silenced, overrides empty

ACT_VM_IDLE - Idle
ACT_VM_IDLE_SILENCED - Idle empty, overwritten by silenced
ACT_VM_IDLE_SILENCED - Idle silenced

ACT_VM_PRIMARYATTACK - Shoot
ACT_VM_PRIMARYATTACK_EMPTY - Shoot last chambered bullet
ACT_VM_PRIMARYATTACK_SILENCED - Shoot silenced, overrides empty
ACT_VM_PRIMARYATTACK_1 - Shoot ironsights, overriden by everything besides normal shooting
ACT_VM_DRYFIRE - Dryfire

ACT_VM_RELOAD - Reload / Tactical Reload / Insert Shotgun Shell
ACT_SHOTGUN_RELOAD_START - Start shotgun reload, unless ACT_VM_RELOAD_EMPTY is there.
ACT_SHOTGUN_RELOAD_FINISH - End shotgun reload.
ACT_VM_RELOAD_EMPTY - Empty mag reload, chambers the new round.  Works for shotguns too, where applicable.
ACT_VM_RELOAD_SILENCED - Silenced reload, overwrites all


ACT_VM_HOLSTER - Holster
ACT_VM_HOLSTER_SILENCED - Holster empty, overwritten by silenced
ACT_VM_HOLSTER_SILENCED - Holster silenced

]]--

--[[Stuff you SHOULD NOT touch after this]]--

--Allowed VAnimations.  These are autodetected, so not really needed except as an extra precaution.  Do NOT change these, unless absolutely necessary.

--Misc

SWEP.ShouldDrawAmmoHUD=false--THIS IS PROCEDURALLY CHANGED AND SHOULD NOT BE TWEAKED.  BASE DEPENDENT VALUE.  DO NOT CHANGE OR THINGS MAY BREAK.  NO USE TO YOU.
SWEP.DefaultFOV=90 --BASE DEPENDENT VALUE.  DO NOT CHANGE OR THINGS MAY BREAK.  NO USE TO YOU.

--Disable secondary crap

SWEP.Secondary.ClipSize			= -1					-- Size of a clip
SWEP.Secondary.DefaultClip			= 2					-- Default ammo to give...
SWEP.Secondary.Automatic			= false					-- Automatic/Semi Auto
SWEP.Secondary.Ammo			= "AR2AltFire" -- Self explanitory, ammo type.
SWEP.Secondary.RPM = 30
SWEP.Secondary.Velocity = 1000
SWEP.Secondary.Recoil = 6

--Convar support

SWEP.ConDamageMultiplier = 1

SWEP.Base				= "tfa_gun_base"

SWEP.Caps = 5
SWEP.ForcedReload = 0

SWEP.Charging = false

SWEP.BaseAnimations = {
	["draw_midempty"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "draw_midempty"
	},
	["shoot1_midempty"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "fire_midempty"
	},
	["shoot1_is_midempty"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "fire_midempty_is"
	},
	["idle_midempty"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "idle_midempty"
	},
	["reload_midempty"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "reload_midempty"
	},
	["reload_lastcapsule"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "reloadempty_lastcapsule"
	},
	["holster_midempty"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "holster_midempty"
	},
	["inspect"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
		["value"] = ACT_VM_FIDGET
	},
	["inspect_empty"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
		["value"] = ACT_VM_FIDGET_EMPTY
	},
	["inspect_midempty1"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "fidget_midempty"
	},
	["inspect_midempty2"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "fidget2_midempty"
	},
}

SWEP.SprintAnimation = {
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "Sprint", --Number for act, String/Number for sequence
		["value_last"] = "Sprint_midempty",
		["value_empty"] = "Sprint_empty",
		["is_idle"] = true
	}
}

SWEP.WalkAnimation = {
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "Walk", --Number for act, String/Number for sequence
		["value_last"] = "Walk_midempty",
		["value_empty"] = "Walk_empty",
		["is_idle"] = true
	},
}

SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_L_UpperArm"] = { scale = Vector(1, 1, 1), pos = Vector(4.63, 10.925, 0), angle = Angle(0, -56.667, 0) },
	["ValveBiped.Bip01_R_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(1, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(1, 0, 0), angle = Angle(0, 0, 0) }
}

SWEP.IronAnimation = {
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "idle_ironsight", --Number for act, String/Number for sequence
		["value_last"] = "idle_midempty_ironsight",
		["value_empty"] = "idle_empty_ironsight",
		["value_is_last"] = "idle_midempty_ironsight",
		["value_is_empty"] = "idle_empty_ironsight",
		["is_idle"] = true,
	}
}

SWEP.AllowViewAttachment = true --Allow the view to sway based on weapon attachment while reloading or drawing, IF THE CLIENT HAS IT ENABLED IN THEIR CONVARS.
SWEP.Sprint_Mode = TFA.Enum.LOCOMOTION_ANI -- ANI = mdl, HYBRID = ani + lua, Lua = lua only
SWEP.Sights_Mode = TFA.Enum.LOCOMOTION_LUA -- ANI = mdl, HYBRID = lua but continue idle, Lua = stop mdl animation
SWEP.Walk_Mode = TFA.Enum.LOCOMOTION_ANI -- ANI = mdl, HYBRID = ani + lua, Lua = lua only
SWEP.Idle_Mode = TFA.Enum.IDLE_BOTH --TFA.Enum.IDLE_DISABLED = no idle, TFA.Enum.IDLE_LUA = lua idle, TFA.Enum.IDLE_ANI = mdl idle, TFA.Enum.IDLE_BOTH = TFA.Enum.IDLE_ANI + TFA.Enum.IDLE_LUA
SWEP.Idle_Blend = 0 --Start an idle this far early into the end of a transition
SWEP.Idle_Smooth = 0 --Start an idle this far early into the end of another animation
SWEP.SprintBobMult = 0

SWEP.Attachments = {
	[1] = { offset = { 0, 0 }, atts = { "hl2r_ar2_legacy_is" }, order = 1 }
}

SWEP.HasCustomIdle = true

DEFINE_BASECLASS( "tfa_gun_base" )

function SWEP:ChooseShootAnim(ifp)
	ifp = ifp or IsFirstTimePredicted()
	if not self:VMIV() then return end

	if self:GetIronSights() and (self.Sights_Mode == TFA.Enum.LOCOMOTION_ANI or self.Sights_Mode == TFA.Enum.LOCOMOTION_HYBRID) and self:GetStat("IronAnimation.shoot") then
		if self.LuaShellEject and ifp then
			self:EventShell()
		end

		return self:PlayAnimation(self:GetStat("IronAnimation.shoot"))
	end

	if not self.BlowbackEnabled or (not self:GetIronSights() and self.Blowback_Only_Iron) then
		success = true

		if self.LuaShellEject and (ifp or game.SinglePlayer()) then
			self:EventShell()
		end

		if self:GetActivityEnabled(ACT_VM_PRIMARYATTACK_SILENCED) and self:GetSilenced() then
			typev, tanim = self:ChooseAnimation("shoot1_silenced")
		elseif self:Clip1() <= self.Primary.AmmoConsumption and self:GetActivityEnabled(ACT_VM_PRIMARYATTACK_EMPTY) and self.Primary.ClipSize >= 1 and not self.ForceEmptyFireOff then
			typev, tanim = self:ChooseAnimation("shoot1_last")
		elseif self:Ammo1() <= self.Primary.AmmoConsumption and self:GetActivityEnabled(ACT_VM_PRIMARYATTACK_EMPTY) and self.Primary.ClipSize < 1 and not self.ForceEmptyFireOff then
			typev, tanim = self:ChooseAnimation("shoot1_last")
		elseif self:Clip1() == 0 and self:GetActivityEnabled(ACT_VM_DRYFIRE) and not self.ForceDryFireOff then
			typev, tanim = self:ChooseAnimation("shoot1_empty")
		elseif self:GetStat("Akimbo") and self:GetActivityEnabled(ACT_VM_SECONDARYATTACK) and ((self.AnimCycle == 0 and not self.Akimbo_Inverted) or (self.AnimCycle == 1 and self.Akimbo_Inverted)) then
			typev, tanim = self:ChooseAnimation("shoot2")
		elseif self:GetIronSights() and self:Clip1() == 2 and self.Primary.ClipSize >= 1 then
			typev, tanim = self:ChooseAnimation("shoot1_is_midempty")
		elseif self:GetIronSights() and self:GetActivityEnabled(ACT_VM_PRIMARYATTACK_1) then
			typev, tanim = self:ChooseAnimation("shoot1_is")
		elseif self:Clip1() == 2 and self.Primary.ClipSize >= 1 then
			typev, tanim = self:ChooseAnimation("shoot1_midempty")
		else
			typev, tanim = self:ChooseAnimation("shoot1")
		end

		if typev ~= TFA.Enum.ANIMATION_SEQ then
			return self:SendViewModelAnim(tanim)
		else
			return self:SendViewModelSeq(tanim)
		end
	else
		if game.SinglePlayer() and SERVER then
			self:CallOnClient("BlowbackFull", "")
		end

		if ifp then
			self:BlowbackFull(ifp)
		end

		if ifp or game.SinglePlayer() then
			self:EventShell()
		end

		self:SendViewModelAnim(ACT_VM_BLOWBACK)

		return true, ACT_VM_IDLE
	end
end

function SWEP:ChooseIdleAnim()
	if not self:VMIV() then return end
	--if self.Idle_WithHeld then
	--	self.Idle_WithHeld = nil
	--	return
	--end
	if self.Idle_Mode ~= TFA.Enum.IDLE_BOTH and self.Idle_Mode ~= TFA.Enum.IDLE_ANI then return end

	--self:ResetEvents()
	if self:GetIronSights() then
		if self.Sights_Mode == TFA.Enum.LOCOMOTION_LUA then
			return self:ChooseFlatAnim()
		else
			return self:ChooseADSAnim()
		end
	elseif self:GetSprinting() and self.Sprint_Mode ~= TFA.Enum.LOCOMOTION_LUA then
		return self:ChooseSprintAnim()
	elseif self:GetWalking() and self.Walk_Mode ~= TFA.Enum.LOCOMOTION_LUA then
		return self:ChooseWalkAnim()
	end

	if self:GetActivityEnabled(ACT_VM_IDLE_SILENCED) and self:GetSilenced() then
		typev, tanim = self:ChooseAnimation("idle_silenced")
	elseif (self.Primary.ClipSize > 0 and self:Clip1() == 0) or (self.Primary.ClipSize <= 0 and self:Ammo1() == 0) then
		--self:GetActivityEnabled( ACT_VM_IDLE_EMPTY ) and (self:Clip1() == 0) then
		if self:GetActivityEnabled(ACT_VM_IDLE_EMPTY) or self.HasCustomIdle == true then
			typev, tanim = self:ChooseAnimation("idle_empty")
		else --if not self:GetActivityEnabled( ACT_VM_PRIMARYATTACK_EMPTY ) then
			typev, tanim = self:ChooseAnimation("idle")
		end
	elseif (self.Primary.ClipSize > 0 and self:Clip1() == 1) or (self.Primary.ClipSize <= 0 and self:Ammo1() == 1) then
		typev, tanim = self:ChooseAnimation("idle_midempty")
	else
		typev, tanim = self:ChooseAnimation("idle")
	end

	--else
	--	return
	--end
	if typev ~= TFA.Enum.ANIMATION_SEQ then
		return self:SendViewModelAnim(tanim)
	else
		return self:SendViewModelSeq(tanim)
	end
end

function SWEP:ChooseFlatAnim()
	if not self:VMIV() then return end
	--self:ResetEvents()
	typev, tanim = self:ChooseAnimation("idle")

	if self:GetActivityEnabled(ACT_VM_IDLE_SILENCED) and self:GetSilenced() then
		typev, tanim = self:ChooseAnimation("idle_silenced")
	elseif self:Clip1() == 0 then
		--self:GetActivityEnabled( ACT_VM_IDLE_EMPTY ) and (self:Clip1() == 0) then
		typev, tanim = self:ChooseAnimation("idle_empty")
	elseif (self.Primary.ClipSize > 0 and self:Clip1() == 1) or (self.Primary.ClipSize <= 0 and self:Ammo1() == 1) then
		typev, tanim = self:ChooseAnimation("idle_midempty")
	end

	if typev ~= TFA.Enum.ANIMATION_SEQ then
		return self:SendViewModelAnim(tanim, 0.000001)
	else
		return self:SendViewModelSeq(tanim, 0.000001)
	end
end

function SWEP:ChooseDrawAnim()
	if not self:VMIV() then return end
	--self:ResetEvents()
	tanim = ACT_VM_DRAW
	success = true

	if self.IsFirstDeploy and CurTime() > (self.LastDeployAnim or CurTime()) + 0.1 then
		self.IsFirstDeploy = false
	end

	if self:GetActivityEnabled(ACT_VM_DRAW_EMPTY) and (self:Clip1() == 0) then
		typev, tanim = self:ChooseAnimation("draw_empty")
	elseif (self:GetActivityEnabled(ACT_VM_DRAW_DEPLOYED) or self.FirstDeployEnabled) and self.IsFirstDeploy then
		typev, tanim = self:ChooseAnimation("draw_first")
	elseif self:GetActivityEnabled(ACT_VM_DRAW_SILENCED) and self:GetSilenced() then
		typev, tanim = self:ChooseAnimation("draw_silenced")
	elseif (self:Clip1() == 1) then
		typev, tanim = self:ChooseAnimation("draw_midempty")
	else
		typev, tanim = self:ChooseAnimation("draw")
	end

	self.LastDeployAnim = CurTime()

	if typev ~= TFA.Enum.ANIMATION_SEQ then
		return self:SendViewModelAnim(tanim)
	else
		return self:SendViewModelSeq(tanim)
	end
end

function SWEP:ChooseHolsterAnim()
	if not self:VMIV() then return end

	if self:GetActivityEnabled(ACT_VM_HOLSTER_SILENCED) and self:GetSilenced() then
		typev, tanim = self:ChooseAnimation("holster_silenced")
	elseif self:GetActivityEnabled(ACT_VM_HOLSTER_EMPTY) and (self:Clip1() == 0) then
		typev, tanim = self:ChooseAnimation("holster_empty")
	elseif (self:Clip1() == 1) then
		typev, tanim = self:ChooseAnimation("holster_midempty")
	elseif self:GetActivityEnabled(ACT_VM_HOLSTER) then
		typev, tanim = self:ChooseAnimation("holster")
	else
		local _
		_, tanim = self:ChooseIdleAnim()

		return false, tanim
	end

	if typev ~= TFA.Enum.ANIMATION_SEQ then
		return self:SendViewModelAnim(tanim)
	else
		return self:SendViewModelSeq(tanim)
	end
end

function SWEP:ChooseReloadAnim()
	if not self:VMIV() then return false, 0 end
	if self.ProceduralReloadEnabled then return false, 0 end
	
	if self:GetActivityEnabled(ACT_VM_RELOAD_SILENCED) and self:GetSilenced() then
		typev, tanim = self:ChooseAnimation("reload_silenced")
	elseif self:GetActivityEnabled(ACT_VM_RELOAD_EMPTY) and (self:Clip1() == 0 or self:IsJammed())and not self.Shotgun then
		typev, tanim = self:ChooseAnimation("reload_empty")
	elseif (self:Clip1() == 1) and (self:Ammo1() > 1) then
		typev, tanim = self:ChooseAnimation("reload_midempty")
	else
		typev, tanim = self:ChooseAnimation("reload")
	end
	
	if (self:Clip1() == 0 and self:Ammo1() == 1) then
		typev, tanim = self:ChooseAnimation("reload_lastcapsule")
	end

	local fac = 1

	if self.Shotgun and self.ShellTime then
		fac = self.ShellTime
	end

	self.AnimCycle = 0

	if SERVER and game.SinglePlayer() then
		self.SetNW2Int = self.SetNW2Int or self.SetNWInt
		self:SetNW2Int("AnimCycle", self.AnimCycle)
	end

	if typev ~= TFA.Enum.ANIMATION_SEQ then
		return self:SendViewModelAnim(tanim, fac, fac ~= 1)
	else
		return self:SendViewModelSeq(tanim, fac, fac ~= 1)
	end
end

function SWEP:ChooseInspectAnim()
	if not self:VMIV() then return end

	if self:GetActivityEnabled(ACT_VM_FIDGET_SILENCED) and self:GetSilenced() then
		typev, tanim = self:ChooseAnimation("inspect_silenced")
	elseif self:GetActivityEnabled(ACT_VM_FIDGET) and self.Primary.ClipSize > 0 and math.Round(self:Clip1()) == 0 then
		typev, tanim = self:ChooseAnimation("inspect_empty")
	elseif self.InspectionActions then
		tanim = self.InspectionActions[self:SharedRandom(1, #self.InspectionActions, "Inspect")]
	elseif self:GetActivityEnabled(ACT_VM_FIDGET) and self.Primary.ClipSize > 0 and (self:Clip1()  == 1) then
		typev, tanim = self:ChooseAnimation("inspect_midempty" .. math.random(1,2))
	elseif self:GetActivityEnabled(ACT_VM_FIDGET) then
		typev, tanim = self:ChooseAnimation("inspect")
	else
		typev, tanim = self:ChooseAnimation("idle")
		success = false
	end

	if typev ~= TFA.Enum.ANIMATION_SEQ then
		return self:SendViewModelAnim(tanim)
	else
		return self:SendViewModelSeq(tanim)
	end
end

function SWEP:PreDrawViewModel(...)
	local vm = self.Owner:GetViewModel()
		if self.Charging == true then
			vm:SetSkin( 1 )
		else
			vm:SetSkin( 0 )
		end
	return BaseClass.PreDrawViewModel(self,...)
end

function SWEP:ChooseChargeAnim( ifp )

	if !self:OwnerIsValid() then return end

	local tanim = "Shake"
	local success = true
	
	if self:Clip1() == 1 then
		tanim = "Shake_midempty"
	elseif self:Clip1() == 0 then
		tanim = "Shake_empty"
	else
		tanim = "Shake"
	end
	
	self:SendViewModelSeq(tanim)

	if game.SinglePlayer() then
		self:CallOnClient("AnimForce",tanim)
	end

	self.lastact = tanim
	return success, tanim

end

--[[

ResponseContext	=
TeamNum	=	0
ballcount	=	0
ballradius	=	20
ballrespawntime	=	0
bullseyename	=
classname	=	point_combine_ball_launcher
damagefilter	=
effects	=	0
friction	=	1
globalname	=
gravity	=	0
hammerid	=	0
health	=	0
launchconenoise	=	0
ltime	=	0
max_health	=	0
maxballbounces	=	0
maxspeed	=	0
minspeed	=	0
modelindex	=	0
parentname	=
renderfx	=	0
rendermode	=	0
shadowcastdist	=	0
spawnflags	=	0
speed	=	0
target	=
texframeindex	=	0
waterlevel	=	0

]]

function SWEP:CanSecondaryAttack()
	
	if self:Ammo2() < 1 then
		if not self.HasPlayedEmptyClick then
			self:EmitSound("Weapon_AR2.Empty")

			self.HasPlayedEmptyClick = true
		end
		return false
	end
	
	if self.FiresUnderwater == false and self:GetOwner():WaterLevel() >= 3 then
		self:SetNextSecondaryFire(CurTime() + 0.5)
		self:EmitSound("Weapon_AR2.Empty")
		return false
	else
		return true
	end
end

function SWEP:AltAttack()

	if CurTime()<self:GetNextSecondaryFire() then return end
	if self:Ammo2()<=0 then return end
	if not self:CanSecondaryAttack() then return end

	if !self:OwnerIsValid() then return end

	local succ,tanim = self:ChooseChargeAnim()
	local vm = self.Owner:GetViewModel()

	local chargedelay = vm:SequenceDuration( tanim )

	if IsFirstTimePredicted() then

		local fx = EffectData()
		fx:SetEntity(self)
		fx:SetAttachment(3)
		fx:SetOrigin(self.Owner:GetShootPos())
		fx:SetNormal(self.Owner:GetAimVector())
		util.Effect( self.ChargeMuzzleFlashEffect, fx )
	end

	if SERVER then
		timer.Simple(chargedelay,function()
			if IsValid(self) and self:OwnerIsValid() then
			
				local tanim = "fire_alt"
			
				if self:Clip1() == 1 then
					tanim = "fire_alt_midempty"
				elseif self:Clip1() == 0 then
					tanim = "fire_alt_empty"
				else
					tanim = "fire_alt"
				end
				
				self:SendViewModelSeq(tanim)

				self:EmitSound("TFA_HL2R_AR2.2")

				self:TakeSecondaryAmmo(1)

				local spawner = ents.Create("point_combine_ball_launcher")
				spawner:SetPos(self.Owner:GetShootPos())
				spawner:SetAngles(self.Owner:EyeAngles())
				spawner:SetOwner(self.Owner)

				spawner:SetKeyValue("speed",tostring(self.Secondary.Velocity))
				spawner:SetKeyValue("minspeed",tostring(self.Secondary.Velocity))
				spawner:SetKeyValue("maxspeed",tostring(self.Secondary.Velocity))
				spawner:SetKeyValue("maxballbounces","10")
				spawner:SetKeyValue("ltime","5")
				spawner:SetKeyValue("ballcount","0")

				self.Owner:ViewPunch(Angle(-self.Secondary.Recoil,self.Secondary.Recoil/4,self.Secondary.Recoil/6))

				spawner:Spawn()
				spawner:Activate()

    			spawner:Fire( "LaunchBall", "", 0 )
				
				SafeRemoveEntityDelayed(spawner,0.1)

				--[[
				local pBall = ents.Create( "prop_combine_ball" )
				pBall:SetOwner( self.Owner )
				pBall:SetPhysicsAttacker( self.Owner )
				pBall:SetPos( self.Owner:GetShootPos() )

				pBall:SetKeyValue("health","50")
				--pBall:SetKeyValue("speed",tostring(self.Secondary.Velocity))
				pBall:SetKeyValue("modelscale","1")

				pBall:SetVelocity( vel )
				pBall:Spawn()

				pBall:GetPhysicsObject():AddGameFlag( FVPHYSICS_DMG_DISSOLVE )
				pBall:GetPhysicsObject():AddGameFlag( FVPHYSICS_WAS_THROWN )
				pBall:GetPhysicsObject():SetVelocity( vel )
				pBall:EmitSound( "NPC_CombineBall.Launch" )
				pBall:SetModel( "models/Effects/combineball.mdl" )
				]]--

				local fx1 = EffectData()
				fx1:SetEntity(self)
				fx1:SetAttachment(3)
				fx1:SetOrigin(self.Owner:GetShootPos())
				fx1:SetNormal(self.Owner:GetAimVector())
				util.Effect( self.SecondaryMuzzleFlash, fx1 )

				self:SetNextIdleAnim( CurTime() + 1.8 )

			end
		end)
	end

	self:SetNextIdleAnim( CurTime() + chargedelay )

	self:SetNextPrimaryFire( CurTime() + 80/self.Secondary.RPM )
	self:SetNextSecondaryFire( CurTime() + 80/self.Secondary.RPM )
end

function SWEP:SetupDataTables()
	BaseClass.SetupDataTables( self )
	self:NetworkVar("Bool", 4, "ChargeAppear")
end

function SWEP:Initialize()
	BaseClass.Initialize( self )
	self:SetChargeAppear(true)
end

function SWEP:Think2()
	local nsfac = self:GetNW2Int("FireCount") + 1

	if self:GetStatus() == TFA.GetStatus("idle") then
		if not self.LastIdleTime then
			self.LastIdleTime = CurTime()
		elseif CurTime() > self.LastIdleTime + 0.1 then
			self:SetNW2Int("FireCount", 0)
		end
	else
		self.LastIdleTime = nil
	end

	BaseClass.Think2( self )
	
	if CLIENT then
	
		local chargebone = self:GetOwner():GetViewModel():LookupBone("chargemag")

		if self:GetChargeAppear() == false and chargebone ~= nil then
			self:GetOwner():GetViewModel():ManipulateBonePosition(chargebone, Vector(0,0,-5))
		elseif chargebone ~= nil then
			self:GetOwner():GetViewModel():ManipulateBonePosition(chargebone, Vector(0,0,0))
		end
	
	end
	
end