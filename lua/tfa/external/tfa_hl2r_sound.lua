HL2RParticleFiles = {}
table.insert(HL2RParticleFiles, #HL2RParticleFiles, "tfa_hl2r_fx")

HL2RParticleEffects = {}
table.insert(HL2RParticleEffects, #HL2RParticleEffects, "hl2r_muzzleflash_ar2")
table.insert(HL2RParticleEffects, #HL2RParticleEffects, "hl2r_muzzleflash_ar2_alt")
table.insert(HL2RParticleEffects, #HL2RParticleEffects, "hl2r_muzzleflash_ar2_alt2")
table.insert(HL2RParticleEffects, #HL2RParticleEffects, "hl2r_muzzleflash_pistol")
table.insert(HL2RParticleEffects, #HL2RParticleEffects, "hl2r_muzzleflash_pistol_alt")
table.insert(HL2RParticleEffects, #HL2RParticleEffects, "hl2r_muzzleflash_smg1")
table.insert(HL2RParticleEffects, #HL2RParticleEffects, "hl2r_muzzleflash_smg1_alt")
table.insert(HL2RParticleEffects, #HL2RParticleEffects, "hl2r_muzzleflash_ar2_charge")
table.insert(HL2RParticleEffects, #HL2RParticleEffects, "hl2r_muzzleflash_ar2_secondary")
table.insert(HL2RParticleEffects, #HL2RParticleEffects, "hl2r_muzzleflash_smg1_grenade")
table.insert(HL2RParticleEffects, #HL2RParticleEffects, "hl2r_grenade_explosion_01")
table.insert(HL2RParticleEffects, #HL2RParticleEffects, "hl2r_explosion_grenade_noaftersmoke")

for k, v in pairs(HL2RParticleFiles) do
	game.AddParticles("particles/" .. v .. ".pcf")
end

for k, v in pairs(HL2RParticleEffects) do
	PrecacheParticleSystem(v)
end

TFA.AddFireSound("TFA_HL2R_Pistol.1", "weapons/tfa_hl2r/pistol/pistol-1.wav", false, "")

TFA.AddWeaponSound("TFA_HL2R_Pistol.Draw", "weapons/tfa_hl2r/pistol/pistol_draw.wav", "")
TFA.AddWeaponSound("TFA_HL2R_Pistol.Boltback", "weapons/tfa_hl2r/pistol/pistol_boltback1.wav", "")
TFA.AddWeaponSound("TFA_HL2R_Pistol.Slideback", "weapons/tfa_hl2r/pistol/pistol_slideback.wav", "")
TFA.AddWeaponSound("TFA_HL2R_Pistol.Maghit", "weapons/tfa_hl2r/pistol/pistol_maghit.wav", "")
TFA.AddWeaponSound("TFA_HL2R_Pistol.Magout", "weapons/tfa_hl2r/pistol/pistol_magout.wav", "")
TFA.AddWeaponSound("TFA_HL2R_Pistol.Magin", "weapons/tfa_hl2r/pistol/pistol_magin.wav", "")
TFA.AddWeaponSound("TFA_HL2R_Pistol.Empty", "weapons/tfa_hl2r/pistol/pistol_empty.wav", "")
--NEW MMOD BASED
TFA.AddWeaponSound("TFA_HL2R_Pistol.SlideRelease", "weapons/tfa_hl2r/pistol/pistol_boltback1.wav", "")
TFA.AddWeaponSound("TFA_HL2R_Pistol.SlidePull", "weapons/tfa_hl2r/pistol/pistol_slideback.wav", "")
TFA.AddWeaponSound("TFA_HL2R_Pistol.ClipHit", "weapons/tfa_hl2r/pistol/pistol_maghit.wav", "")
TFA.AddWeaponSound("TFA_HL2R_Pistol.ClipOut", "weapons/tfa_hl2r/pistol/pistol_magout.wav", "")
TFA.AddWeaponSound("TFA_HL2R_Pistol.ClipIn", "weapons/tfa_hl2r/pistol/pistol_magin.wav", "")

TFA.AddFireSound("TFA_HL2R_SMG1.1", "weapons/tfa_hl2r/smg1/smg1-1.wav", false, "")
TFA.AddFireSound("TFA_HL2R_SMG1.2", "weapons/tfa_hl2r/smg1/smg1-2.wav", false, "")

TFA.AddWeaponSound("TFA_HL2R_SMG1.Draw", "weapons/tfa_hl2r/smg1/smg1_draw1.wav", "")
TFA.AddWeaponSound("TFA_HL2R_SMG1.Empty", "weapons/tfa_hl2r/smg1/smg1_empty.wav", "")
TFA.AddWeaponSound("TFA_HL2R_SMG1.Maghit", "weapons/tfa_hl2r/smg1/smg1_magrelease.wav", "")
TFA.AddWeaponSound("TFA_HL2R_SMG1.Magout", "weapons/tfa_hl2r/smg1/smg1_magout.wav", "")
TFA.AddWeaponSound("TFA_HL2R_SMG1.Magin", "weapons/tfa_hl2r/smg1/smg1_magin.wav", "")
--NEW MMOD BASED
TFA.AddWeaponSound("TFA_HL2R_SMG1.ClipHit", "weapons/tfa_hl2r/smg1/smg1_maghit.wav", "")
TFA.AddWeaponSound("TFA_HL2R_SMG1.ClipOut", "weapons/tfa_hl2r/smg1/smg1_magout.wav", "")
TFA.AddWeaponSound("TFA_HL2R_SMG1.ClipIn", "weapons/tfa_hl2r/smg1/smg1_magin1.wav", "")
TFA.AddWeaponSound("TFA_HL2R_SMG1.BoltBack", "weapons/tfa_hl2r/smg1/smg1_slideback.wav", "")
TFA.AddWeaponSound("TFA_HL2R_SMG1.BoltForward", "weapons/tfa_hl2r/smg1/smg1_slideforward.wav", "")
TFA.AddWeaponSound("TFA_HL2R_SMG1.GripFold", "weapons/tfa_hl2r/smg1/smg1_gripfold.wav", "")
TFA.AddWeaponSound("TFA_HL2R_SMG1.GripUnfold", "weapons/tfa_hl2r/smg1/smg1_gripunfold.wav", "")

sound.Add(
{
	name = "TFA_HL2R_BaseGrenade.Explode",
	channel = CHAN_WEAPON,
	level = 140,
	sound = { "weapons/tfa_hl2r/smg1/ar2_grenade_detonate_01a.wav",
	"weapons/tfa_hl2r/smg1/ar2_grenade_detonate_02a.wav",
	"weapons/tfa_hl2r/smg1/ar2_grenade_detonate_03a.wav",
	"weapons/tfa_hl2r/smg1/ar2_grenade_detonate_04a.wav"}
} )


TFA.AddWeaponSound("TFA_HL2R_Universal.PistolDrawFirst", "weapons/tfa_hl2r/uni/uni_weapon_draw_01.wav", "")
TFA.AddWeaponSound("TFA_HL2R_Universal.PistolDraw", "weapons/tfa_hl2r/uni/pistol_draw.wav", "")
TFA.AddWeaponSound("TFA_HL2R_Universal.Draw", "weapons/tfa_hl2r/uni/smg1_draw.wav", "")

TFA.AddFireSound("TFA_HL2R_AR2.1", "weapons/tfa_hl2r/ar2/fire1.wav", "fire2.wav", "fire3.wav", false, "")
TFA.AddFireSound("TFA_HL2R_AR2.2", "weapons/tfa_hl2r/ar2/ar2_secondary_fire.wav", false, "")

TFA.AddWeaponSound("TFA_HL2R_AR2.Draw", "weapons/tfa_hl2r/ar2/ar2_deploy.wav", "")
TFA.AddWeaponSound("TFA_HL2R_AR2.Charge", "weapons/tfa_hl2r/ar2/ar2_charge_beep.wav", "")
TFA.AddWeaponSound("TFA_HL2R_AR2.FidgetPush", "weapons/tfa_hl2r/ar2/ar2_push.wav", "")
TFA.AddWeaponSound("TFA_HL2R_AR2.FidgetRotate", "weapons/tfa_hl2r/ar2/ar2_rotate.wav", "")
TFA.AddWeaponSound("TFA_HL2R_AR2.BoltPull", "weapons/tfa_hl2r/ar2/ar2_boltpull.wav", "")
TFA.AddWeaponSound("TFA_HL2R_AR2.Reload_Rotate", "weapons/tfa_hl2r/ar2/ar2_reload_rotate.wav", "")
TFA.AddWeaponSound("TFA_HL2R_AR2.Reload_Push", "weapons/tfa_hl2r/ar2/ar2_reload_push.wav", "")
TFA.AddWeaponSound("TFA_HL2R_AR2.MagOut", "weapons/tfa_hl2r/ar2/ar2_magout.wav", "")
TFA.AddWeaponSound("TFA_HL2R_AR2.Magin", "weapons/tfa_hl2r/ar2/ar2_magin.wav", "")
TFA.AddWeaponSound("TFA_HL2R_AR2.Movement1", "weapons/tfa_hl2r/ar2/weapon_movement1.wav", "")
TFA.AddWeaponSound("TFA_HL2R_AR2.Movement2", "weapons/tfa_hl2r/ar2/weapon_movement2.wav", "")
TFA.AddWeaponSound("TFA_HL2R_AR2.Movement3", "weapons/tfa_hl2r/ar2/weapon_movement3.wav", "")
TFA.AddWeaponSound("TFA_HL2R_AR2.Movement4", "weapons/tfa_hl2r/ar2/weapon_movement4.wav", "")
TFA.AddWeaponSound("TFA_HL2R_AR2.Movement5", "weapons/tfa_hl2r/ar2/weapon_movement5.wav", "")
TFA.AddWeaponSound("TFA_HL2R_AR2.Movement6", "weapons/tfa_hl2r/ar2/weapon_movement6.wav", "")

local hudcolor = Color(255, 80, 0, 191)

if killicon and killicon.Add then
	killicon.AddFont( "hl2r_grenade_ar2", "HL2MPTypeDeath", "7", hudcolor )
	killicon.AddFont( "tfa_hl2r_smg", "HL2MPTypeDeath", "/", hudcolor )
	killicon.AddFont( "tfa_hl2r_ar2", "HL2MPTypeDeath", "2", hudcolor )
	killicon.AddFont( "tfa_hl2r_pistol", "HL2MPTypeDeath", "-", hudcolor )
end

function VectorNormalize( v )
	local l = v:Length();
	if (l != 0.0) then
		v = v / l;
	else
		// FIXME:
		// Just copying the existing implemenation; shouldn't res.z == 0?
		v.x = 0.0;
		v.y = 0.0; v.z = 1.0;
	end
	return v;
end

function CrossProduct(a, b)
	return Vector( a.y*b.z - a.z*b.y, a.z*b.x - a.x*b.z, a.x*b.y - a.y*b.x );
end