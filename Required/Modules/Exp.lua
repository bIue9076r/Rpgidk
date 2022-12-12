--Exp module
Exp = {} -- sets the Exp table

function Exp:new() -- Sets a new Exp value
	self.count = 0
	self.level = 1
end

function Exp:exportCount() -- Returns The Exp count /* For Saving Purposes Only */
	return self.count
end

function Exp:exportLevel() -- Returns The Exp level /* For Saving Purposes Only */
	return self.level
end	

function Exp:add(n) -- Adds n amount of Exp to Exp.count
	self.count = self.count + math.ceil(n * math.log(self.level + 1))
	if (self.level*120) < self.count then
		-- If 120 times the current level is Crossed raise Exp.level
		self.count = self.count - (self.level * 120)
		self.level = self.level + 1
		raiseAtk(5)
		raiseDef(5)
		fullHeal()
		Exp:add(0)
		Alert:new('You Leveled up','stat',nil,'level')
		gamestate = 'alert'
	end
end

function Exp:HardOverride(c,l) -- Sets c as the Exp.count and l as Exp.level
	self.count = c
	self.level = l
end