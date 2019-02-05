local path = "weapons/tfa_ins2/akp/ak74/" --AK-74

TFA.AddFireSound("TFA_INS2_AK74.1", path .. "ak74_fp.wav", true, ")" )
TFA.AddFireSound("TFA_INS2_AK74.2", path .. "ak74_suppressed_fp.wav", true, ")" )

TFA.AddWeaponSound("TFA_INS2_AK74.Empty", path .. "ak74_empty.wav")
TFA.AddWeaponSound("TFA_INS2_AK74.ROF", { path .. "ak74_fireselect_1.wav", path .. "ak74_fireselect_2.wav" } )

TFA.AddWeaponSound("TFA_INS2_AK74.MagRelease", path .. "ak74_magrelease.wav")
TFA.AddWeaponSound("TFA_INS2_AK74.Magout", path .. "ak74_magout.wav")
TFA.AddWeaponSound("TFA_INS2_AK74.Rattle", path .. "ak74_rattle.wav")
TFA.AddWeaponSound("TFA_INS2_AK74.Magin", path .. "ak74_magin.wav")
TFA.AddWeaponSound("TFA_INS2_AK74.Boltback", path .. "ak74_boltback.wav")
TFA.AddWeaponSound("TFA_INS2_AK74.Boltrelease", path .. "ak74_boltrelease.wav")

path = "weapons/tfa_ins2/akp/ak47/" --AKM

TFA.AddFireSound("TFA_INS2_AK47.1", path .. "ak47_fp.wav", true, ")" )
TFA.AddFireSound("TFA_INS2_AK47.2", path .. "ak47_suppressed_fp.wav", true, ")" )

TFA.AddWeaponSound("TFA_INS2_AK47.Empty", path .. "ak47_empty.wav")
TFA.AddWeaponSound("TFA_INS2_AK47.ROF", { path .. "ak47_fireselect_1.wav", path .. "ak47_fireselect_2.wav" } )

TFA.AddWeaponSound("TFA_INS2_AK47.MagRelease", path .. "ak47_magrelease.wav")
TFA.AddWeaponSound("TFA_INS2_AK47.Magout", path .. "ak47_magout.wav")
TFA.AddWeaponSound("TFA_INS2_AK47.Rattle", path .. "ak47_rattle.wav")
TFA.AddWeaponSound("TFA_INS2_AK47.Magin", path .. "ak47_magin.wav")
TFA.AddWeaponSound("TFA_INS2_AK47.Boltback", path .. "ak47_boltback.wav")
TFA.AddWeaponSound("TFA_INS2_AK47.Boltrelease", path .. "ak47_boltrelease.wav")

path = "weapons/tfa_ins2/akp/aks74u/" --AKS74U

TFA.AddFireSound("TFA_INS2_AKS.1", path .. "aks_fp.wav", true, ")" )
TFA.AddFireSound("TFA_INS2_AKS.2", path .. "aks_suppressed_fp.wav", true, ")" )

TFA.AddWeaponSound("TFA_INS2_AKS.Empty", path .. "aks_empty.wav")
TFA.AddWeaponSound("TFA_INS2_AKS.ROF", { path .. "aks_fireselect_1.wav", path .. "aks_fireselect_2.wav" } )

TFA.AddWeaponSound("TFA_INS2_AKS.MagRelease", path .. "aks_magrelease.wav")
TFA.AddWeaponSound("TFA_INS2_AKS.Magout", path .. "aks_magout.wav")
TFA.AddWeaponSound("TFA_INS2_AKS.Rattle", path .. "aks_rattle.wav")
TFA.AddWeaponSound("TFA_INS2_AKS.Magin", path .. "aks_magin.wav")
TFA.AddWeaponSound("TFA_INS2_AKS.Boltback", path .. "aks_boltback.wav")
TFA.AddWeaponSound("TFA_INS2_AKS.Boltrelease", path .. "aks_boltrelease.wav")

path = "weapons/tfa_ins2/akp/rpk/" --RPK

TFA.AddFireSound("TFA_INS2_RPK.1", path .. "rpk_fp.wav", true, ")" )
TFA.AddFireSound("TFA_INS2_RPK.2", path .. "rpk_suppressed_fp.wav", true, ")" )

TFA.AddWeaponSound("TFA_INS2_RPK.Empty", path .. "rpk_empty.wav")
TFA.AddWeaponSound("TFA_INS2_RPK.ROF", path .. "rpk_fireselect_1.wav" )

TFA.AddWeaponSound("TFA_INS2_RPK.MagRelease", path .. "rpk_magrelease.wav")
TFA.AddWeaponSound("TFA_INS2_RPK.Magout", path .. "rpk_magout.wav")
TFA.AddWeaponSound("TFA_INS2_RPK.Rattle", path .. "rpk_rattle.wav")
TFA.AddWeaponSound("TFA_INS2_RPK.Magin", path .. "rpk_magin.wav")
TFA.AddWeaponSound("TFA_INS2_RPK.Boltback", path .. "rpk_boltback.wav")
TFA.AddWeaponSound("TFA_INS2_RPK.Boltrelease", path .. "rpk_boltrelease.wav")

local hudcolor = Color(255, 80, 0, 191)
if killicon and killicon.Add then
	killicon.Add("tfa_ins2_ak74_r", "vgui/killicons/tfa_ins2_ak74_r", hudcolor)
	killicon.Add("tfa_ins2_akm_r", "vgui/killicons/tfa_ins2_akm_r", hudcolor)
	killicon.Add("tfa_ins2_aks_r", "vgui/killicons/tfa_ins2_aks_r", hudcolor)
	killicon.Add("tfa_ins2_rpk_r", "vgui/killicons/tfa_ins2_rpk_r", hudcolor)
end