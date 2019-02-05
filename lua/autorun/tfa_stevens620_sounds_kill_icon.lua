local icol = Color( 255, 255, 255, 255 ) 
if CLIENT then
       killicon.Add(  "tfa_nam_stevens620",		"vgui/hud/tfa_nam_stevens620", icol  )

end

sound.Add(
{
name = "Weapon_Stevens620.BoltBack",
channel = CHAN_ITEM,
volume = VOL_NORM,
soundlevel = SNDLVL_NORM,
sound = "weapons/tfa_nam_stevens620/stevens620_pumpback.wav"
} )
sound.Add(
{
name = "Weapon_Stevens620.Boltrelease",
channel = CHAN_ITEM,
volume = VOL_NORM,
soundlevel = SNDLVL_NORM,
sound = "weapons/tfa_nam_stevens620/stevens620_pumpforward.wav"
} )
sound.Add(
{
name = "Weapon_Stevens620.Empty",
channel = CHAN_ITEM,
volume = VOL_NORM,
soundlevel = SNDLVL_NORM,
sound = "weapons/tfa_nam_stevens620/stevens620_empty.wav"
} )
sound.Add(
{
name = "Weapon_Stevens620.ShellInsert",
channel = CHAN_ITEM,
volume = VOL_NORM,
soundlevel = SNDLVL_NORM,
sound = "weapons/tfa_nam_stevens620/stevens620_shell_insert_1.wav"
} )
sound.Add(
{
name = "Weapon_Stevens620.ShellInsertSingle",
channel = CHAN_ITEM,
volume = VOL_NORM,
soundlevel = SNDLVL_NORM,
sound = "weapons/tfa_nam_stevens620/stevens620_single_shell_insert_1.wav"
} )