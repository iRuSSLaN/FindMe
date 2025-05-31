local Tank = {}
Tank.__index = Tank

export type Tank = typeof(setmetatable(
	{} :: {
		health: number,
		damage: number,
		speed: number,
	},
	Tank
))

function Tank.new(): Tank
    local self = {
        health = 100,
        damage = 10,
        speed = 5,
    }

    setmetatable(self, Tank)

    return self
end

function Tank.hit(self: Tank, damage: number): ()
    self.health -=damage
    print(`Tank was hit for {damage} damage!`)
end

function Tank.speedUp(self: Tank, additionalSpeed: number): ()
    self.speed += additionalSpeed
end
