if SERVER then AddCSLuaFile() end

ENT.Type = "anim"
function ENT:NW()
	self:SetNW2String("Baum", "Haus")
	self:SetNW2Int("Hi", 1)
end

function ENT:Initialize()
    self:SetModel("models/props_junk/PlasticCrate01a.mdl")
    self:NW()
end
