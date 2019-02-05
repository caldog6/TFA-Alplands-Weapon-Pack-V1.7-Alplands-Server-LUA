if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Snubnose"
ATTACHMENT.Description = {
	TFA.AttachmentColors["+"], "A compact barrel variant with a spurless hammer",
	TFA.AttachmentColors["+"], "Decreases weight of the weapon",
	TFA.AttachmentColors["-"], "Increases vertical recoil by 15%"
}
ATTACHMENT.Icon = "entities/tfa_ins2_swmodel10snub.png"
ATTACHMENT.ShortName = "SNUB"

ATTACHMENT.WeaponTable = {
	["Bodygroups_V"] = {[1] = 1},
	["Bodygroups_W"] = {[0] = 1},
	["Primary"] = {
		["KickUp"] = function( wep, stat ) return stat * 1.5 end,
		["KickDown"] = function( wep, stat ) return stat * 1.25 end,
	},
	["MoveSpeed"] = function( wep, stat ) return stat * 1.05 end,
	["IronSightsMoveSpeed"] = function( wep, stat ) return stat * 1.15 end,
}

function ATTACHMENT:Attach(wep)
end

function ATTACHMENT:Detach(wep)
end

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
