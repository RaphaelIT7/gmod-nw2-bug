if SERVER then AddCSLuaFile() end

ENT.Type = "anim"
ENT.Base = "testing"

function ENT:NW()
    self:SetNW2String("Test2", "NW2-Bug")
end