if SERVER then
    AddCSLuaFile()
end

ENT.Type = "anim"
ENT.Base = "tfa_ammo_base"
ENT.PrintName = "7.62x54mm"
ENT.Category = "Alplands Ammunition"
ENT.Spawnable = true
ENT.AdminSpawnable = true
ENT.Class = ""
ENT.MyModel = "models/items/sniper_round_box.mdl"
ENT.ImpactSound = "Default.ImpactSoft"
ENT.AmmoCount = 10
ENT.AmmoType = "7.62x54mm"
ENT.DrawText = true
ENT.TextColor = Color(225, 225, 225, 255)
ENT.TextPosition = Vector(2, 1.5, 8)
ENT.TextAngles = Vector(90, 90, 90)
ENT.ShouldDrawShadow = true
ENT.ImpactSound = "Default.ImpactSoft"
ENT.Damage = 50