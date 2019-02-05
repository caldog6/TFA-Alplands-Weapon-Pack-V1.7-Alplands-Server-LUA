if SERVER then
    AddCSLuaFile()
end

ENT.Type = "anim"
ENT.Base = "tfa_ammo_base"
ENT.PrintName = "357 Magnum"
ENT.Category = "Alplands Ammunition"
ENT.Spawnable = true
ENT.AdminSpawnable = true
ENT.Class = ""
ENT.MyModel = "models/items/ammo/ammo_357.mdl"
ENT.ImpactSound = "Default.ImpactSoft"
ENT.AmmoCount = 12
ENT.AmmoType = "357 Magnum"
ENT.DrawText = true
ENT.TextColor = Color(225, 225, 225, 255)
ENT.TextPosition = Vector(2, 1.5, 4)
ENT.TextAngles = Vector(90, 90, 90)
ENT.ShouldDrawShadow = true
ENT.ImpactSound = "Default.ImpactSoft"
ENT.Damage = 40