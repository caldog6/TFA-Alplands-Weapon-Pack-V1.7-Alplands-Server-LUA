local path = "/weapons/tfa_ins2/sandstorm_glock/"
local pref = "TFA_INS2.SandstormGlock"
local hudcolor = Color(255, 80, 0, 191)

TFA.AddFireSound(pref .. ".1", path .. "fp.wav", false, ")")
TFA.AddFireSound(pref .. ".2", path .. "fp_suppressed.wav", false, ")")

TFA.AddWeaponSound(pref .. ".Safety", path .. "safety.wav")
TFA.AddWeaponSound(pref .. ".Boltback", path .. "boltback.wav")
TFA.AddWeaponSound(pref .. ".Boltrelease", path .. "boltrelease.wav")
TFA.AddWeaponSound(pref .. ".Empty", path .. "empty.wav")
TFA.AddWeaponSound(pref .. ".Magrelease", path .. "magrelease.wav")
TFA.AddWeaponSound(pref .. ".Magout", path .. "magout.wav")
TFA.AddWeaponSound(pref .. ".Magin", path .. "magin.wav")
TFA.AddWeaponSound(pref .. ".MagHit", path .. "maghit.wav")
TFA.AddWeaponSound(pref .. ".Boltslap", path .. "boltslap.wav")