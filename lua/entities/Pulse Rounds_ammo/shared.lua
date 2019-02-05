if SERVER then
    AddCSLuaFile()
end

ENT.Type = "anim"
ENT.Base = "tfa_ammo_base"
ENT.PrintName = "Pulse Rounds"
ENT.Category = "Alplands Ammunition"
ENT.Spawnable = true
ENT.AdminSpawnable = true
ENT.Class = ""
ENT.MyModel = "models/Items/combine_rifle_cartridge01.mdl"
ENT.ImpactSound = "Default.ImpactSoft"
ENT.AmmoCount = 30
ENT.AmmoType = "Pulse Rounds"
ENT.DrawText = true
ENT.TextColor = Color(225, 225, 225, 255)
ENT.TextPosition = Vector(4, 1.5, -1)
ENT.TextAngles = Vector(90, 360, 90)
ENT.ShouldDrawShadow = true
ENT.ImpactSound = "Default.ImpactSoft"
ENT.Damage = 50