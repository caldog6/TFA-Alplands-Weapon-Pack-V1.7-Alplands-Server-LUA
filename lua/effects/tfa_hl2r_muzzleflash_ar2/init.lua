local ang

EFFECT.ParticleName1 = "hl2r_muzzleflash_ar2"
EFFECT.ParticleName2 = "hl2r_muzzleflash_ar2_alt"
EFFECT.ParticleName3 = "hl2r_muzzleflash_ar2_alt2"
EFFECT.ParticleName4 = "hl2r_muzzleflash_ar2_punch"

function EFFECT:Init(data)
	self.WeaponEnt = data:GetEntity()
	if not IsValid(self.WeaponEnt) then return end
	self.Attachment = data:GetAttachment()
	self.Position = self:GetTracerShootPos(data:GetOrigin(), self.WeaponEnt, self.Attachment)
	
	local particlename = self.ParticleName1
	local randomnum = math.random(1,3)
	
	if randomnum == 1 then
		particlename = self.ParticleName1
	elseif randomnum == 2 then
		particlename = self.ParticleName2
	else
		particlename = self.ParticleName3
	end
	
	local own = self.WeaponEnt.Owner:GetViewModel()
	local att2 = own:LookupAttachment( "punch" )
	self.Position2 = self:GetTracerShootPos(data:GetOrigin(), self.WeaponEnt, att2 )

	if IsValid(self.WeaponEnt.Owner) then
		if self.WeaponEnt.Owner == LocalPlayer() then
			if not self.WeaponEnt:IsFirstPerson() then
				ang = self.WeaponEnt.Owner:EyeAngles()
				ang:Normalize()
				--ang.p = math.max(math.min(ang.p,55),-55)
				self.Forward = ang:Forward()
			else
				self.WeaponEnt = self.WeaponEnt.Owner:GetViewModel()
			end
			--ang.p = math.max(math.min(ang.p,55),-55)
		else
			ang = self.WeaponEnt.Owner:EyeAngles()
			ang:Normalize()
			self.Forward = ang:Forward()
		end
	end

	self.Forward = self.Forward or data:GetNormal()
	self.Angle = self.Forward:Angle()
	local dlight = DynamicLight(self.WeaponEnt:EntIndex())

	if (dlight) then
		dlight.pos = self.Position + self.Angle:Up() * 3 + self.Angle:Right() * 5
        dlight.r = 94
        dlight.g = 183
        dlight.b = 138
		dlight.brightness = 4.0
		dlight.Size = math.Rand(32, 64)
		dlight.Decay = math.Rand(32, 64) / 0.05
		dlight.DieTime = CurTime() + 0.05
	end

	local pcf = CreateParticleSystem(self.WeaponEnt, particlename, PATTACH_POINT_FOLLOW, self.Attachment)
	if IsValid(pcf) then
		pcf:StartEmission()
	end
	
	local pcf2 = CreateParticleSystem(self.WeaponEnt, self.ParticleName4, PATTACH_POINT_FOLLOW, att2)
	if IsValid(pcf2) then
		pcf2:StartEmission()
	end
	
	timer.Simple(3.0, function()
		if IsValid(pcf) then
			pcf:StopEmissionAndDestroyImmediately()
		end
		if IsValid(pcf2) then
			pcf2:StopEmissionAndDestroyImmediately()
		end
	end)
end

function EFFECT:Think()
	return false
end

function EFFECT:Render()
end