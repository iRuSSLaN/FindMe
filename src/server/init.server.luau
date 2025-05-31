local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Tank = require(ReplicatedStorage.Shared.Classes.Tank)

local armyTank = Tank.new()
armyTank:hit(25)