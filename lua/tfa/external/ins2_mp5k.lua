local path = "weapons/tfa_ins2/mp5k/"
local pref = "TFA_INS2.MP5K"
local hudcolor = Color(255, 80, 0, 191)

TFA.AddFireSound(pref .. ".1", path .. "mp5k_fp.wav", false, ")")
TFA.AddFireSound(pref .. ".2", path .. "mp5k_suppressed_fp.wav", false, ")")

TFA.AddWeaponSound(pref .. ".Boltback", path .. "mp5k_boltback.wav")
TFA.AddWeaponSound(pref .. ".Boltlock", path .. "mp5k_boltlock.wav")
TFA.AddWeaponSound(pref .. ".Boltrelease", path .. "mp5k_boltrelease.wav")
TFA.AddWeaponSound(pref .. ".Empty", path .. "mp5k_empty.wav")
TFA.AddWeaponSound(pref .. ".Magrelease", path .. "mp5k_magrelease.wav")
TFA.AddWeaponSound(pref .. ".Magout", path .. "mp5k_magout.wav")
TFA.AddWeaponSound(pref .. ".Magin", path .. "mp5k_magin.wav")
TFA.AddWeaponSound(pref .. ".ROF", path .. "mp5k_rof.wav")

if killicon and killicon.Add then
	killicon.Add("tfa_ins2_mp5k", "vgui/killicons/tfa_ins2_mp5k", hudcolor)
end