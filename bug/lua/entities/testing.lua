if SERVER then AddCSLuaFile() end

ENT.Type = "anim"
function ENT:NW()
	for k=1, 32 do
		self:SetNW2String("Baum", "Haus")
	end

	self:SetNW2Int("Hi", 1)
end

function ENT:Initialize()
    self:SetModel("models/props_junk/PlasticCrate01a.mdl")
    self:NW()
end