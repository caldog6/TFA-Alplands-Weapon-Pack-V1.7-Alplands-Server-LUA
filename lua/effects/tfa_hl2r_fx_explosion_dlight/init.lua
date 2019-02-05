function EFFECT:Init( data )

	local vOffset = data:GetOrigin()
	local ent = data:GetEntity()

	local dlight = DynamicLight( ent:EntIndex() )

	if ( dlight ) then

		dlight.Pos = vOffset
		--dlight.r = 255 --Source Code R
		--dlight.g = 220 --Source Code G
		--dlight.b = 128 --Source Code B
		--dlight.r = 255 --Manhack Hitwall R
		--dlight.g = 180 --Manhack Hitwall G
		--dlight.b = 100 --Manhack Hitwall B
		dlight.r = 255 --Muzzleflash R
		dlight.g = 192 --Muzzleflash G
		dlight.b = 64 --Muzzleflash B
		dlight.Brightness = 1
		dlight.Size = 255
		dlight.Decay = 200
		dlight.DieTime = CurTime() + 0.1

	end
end

function EFFECT:Think()
	return false
end

function EFFECT:Render()
end