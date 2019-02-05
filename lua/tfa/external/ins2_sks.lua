local path = "weapons/tfa_ins2/sks/"

TFA.AddFireSound("TFA_INS2_SKS.1", path .. "sks_fp.wav", false, ")" )
TFA.AddFireSound("TFA_INS2_SKS.2", path .. "sks_suppressed_fp.wav", false, ")" )

TFA.AddWeaponSound("Weapon_SKS.Empty", path .. "sks_empty.wav")

TFA.AddWeaponSound("Weapon_SKS.Magout", path .. "sks_magout.wav")
TFA.AddWeaponSound("Weapon_SKS.Magin", path .. "sks_magin.wav")
TFA.AddWeaponSound("Weapon_SKS.Magrelease", path .. "sks_magrelease.wav")
TFA.AddWeaponSound("Weapon_SKS.Boltback", path .. "sks_boltback.wav")
TFA.AddWeaponSound("Weapon_SKS.Boltrelease", path .. "sks_boltrelease.wav")

local hudcolor = Color(255, 80, 0, 191)
if killicon and killicon.Add then
	killicon.Add("tfa_ins2_sks", "vgui/killicons/tfa_ins2_sks", hudcolor)
end

