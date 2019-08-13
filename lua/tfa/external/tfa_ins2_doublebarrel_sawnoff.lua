local path = "weapons/tfa_ins2/doublebarrel_sawnoff/"

TFA.AddFireSound("TFA_INS2_DOUBLEBARRELSAWN.1", path .. "doublebarrelsawn_fire.wav")
TFA.AddFireSound("TFA_INS2_DOUBLEBARRELSAWN.2", path .. "doublebarrelsawn_suppressed.wav")

TFA.AddWeaponSound("Weapon_DOUBLEBARREL.Empty", path .. "doublebarrelsawn_empty.wav")

TFA.AddWeaponSound("Weapon_DOUBLEBARREL.Magout", path .. "doublebarrelsawn_magout.wav")
TFA.AddWeaponSound("Weapon_Doublebarrel.Shellinsert", { path .. "shellinsert1sawn.wav", path .. "shellinsert2sawn.wav" } )
TFA.AddWeaponSound("Weapon_Doublebarrel.Ejectshell", path .. "shelleject1sawn.wav")
TFA.AddWeaponSound("doublebarrel.Draw", path .. "doublebarrelsawn_draw.wav")
TFA.AddWeaponSound("Weapon_Doublebarrel.Ejectshells", path .. "shellsejectsawn.wav")
TFA.AddWeaponSound("Weapon_Doublebarrel.Openbarrel", path .. "breakopensawn.wav")
TFA.AddWeaponSound("Weapon_Doublebarrel.Closebarrel", path .. "breakclosesawn.wav")
TFA.AddWeaponSound("doublebarrel.Holster", path .. "doublebarrelsawn_draw.wav")