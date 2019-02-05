local path = "weapons/tfa_ins2/mp7/"
local pref = "TFA_INS2.MP7"
local hudcolor = Color(255, 80, 0, 191)

TFA.AddFireSound(pref .. ".1", path .. "mp7_fp.wav", false, ")")
TFA.AddFireSound(pref .. ".2", path .. "mp7_suppressed_fp.wav", false, ")")

TFA.AddWeaponSound("TFA_INS2.BipodSwivel", { "weapons/tfa_ins2/uni/uni_bipod_swivel_01.wav", "weapons/tfa_ins2/uni/uni_bipod_swivel_02.wav", "weapons/tfa_ins2/uni/uni_bipod_swivel_03.wav", "weapons/tfa_ins2/uni/uni_bipod_swivel_04.wav", "weapons/tfa_ins2/uni/uni_bipod_swivel_05.wav" })

TFA.AddWeaponSound(pref .. ".Empty", path .. "mp7_empty.wav")
TFA.AddWeaponSound(pref .. ".Boltback", path .. "mp7_boltback.wav")
TFA.AddWeaponSound(pref .. ".Boltrelease", path .. "mp7_boltrelease.wav")
TFA.AddWeaponSound(pref .. ".Magrelease", path .. "mp7_magrelease.wav")
TFA.AddWeaponSound(pref .. ".Magout", path .. "mp7_magout.wav")
TFA.AddWeaponSound(pref .. ".Magin", path .. "mp7_magin.wav")
TFA.AddWeaponSound(pref .. ".ROF", path .. "mp7_rof.wav")

if killicon and killicon.Add then
	killicon.Add("tfa_ins2_mp7", "vgui/killicons/tfa_ins2_mp7", hudcolor)
end