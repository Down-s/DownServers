AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

local MoneyAmount

function ENT:Initialize()
    self:SetModel("models/props_junk/PlasticCrate01a.mdl")

    self:SetModelScale(1.5)
    DarkRP.ValidatedPhysicsInit(self, SOLID_VPHYSICS)
    self:SetMoveType(MOVETYPE_VPHYSICS)
    self:SetUseType(SIMPLE_USE)
    self:SetSolid(SOLID_VPHYSICS)

    local phys = self:GetPhysicsObject()

    if phys:IsValid() then
        phys:Wake()
    end
end

function ENT:OnTakeDamage(dmg)
    self:TakePhysicsDamage(dmg)

    self.health = (self.health or 75) - dmg:GetDamage()
    print(self.health)
    if self.health <= 0 then
        self:Remove()
    end
end

function ENT:StartTouch(ent)
    if ent:isMoneyBag() then
        self:SetMoneyAmount(self:GetMoneyAmount() + ent:Getamount())
        ent:Remove()
    end
end

function ENT:Use(pl)
    MoneyAmount = self:GetMoneyAmount()
    if MoneyAmount <= 0 then return end
    pl:addMoney(MoneyAmount)
    self:SetMoneyAmount(0)
    DarkRP.notify(pl,0,4,"You just picked up "..DarkRP.formatMoney(MoneyAmount))
end
