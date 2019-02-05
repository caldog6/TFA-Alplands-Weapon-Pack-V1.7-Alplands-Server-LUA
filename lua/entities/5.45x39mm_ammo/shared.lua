if SERVER then
    AddCSLuaFile()
end

ENT.Type = "anim"
ENT.Base = "tfa_ammo_base"
ENT.PrintName = "5.45x39mm"
ENT.Category = "Alplands Ammunition"
ENT.Spawnable = true
ENT.AdminSpawnable = true
ENT.Class = ""
ENT.MyModel = "models/items/magazines/rif_ak47_mag.mdl"
ENT.ImpactSound = "Default.ImpactSoft"
ENT.AmmoCount = 30
ENT.AmmoType = "5.45x39mm"
ENT.DrawText = true
ENT.TextColor = Color(225, 225, 225, 255)
ENT.TextPosition = Vector(-3, 8, -3)
ENT.TextAngles = Vector(130, 360, 0)
ENT.ShouldDrawShadow = true
ENT.ImpactSound = "Default.ImpactSoft"
ENT.Damage = 50