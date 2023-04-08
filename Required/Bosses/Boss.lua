-- Boss Module
Boss = {}
CBoss = {}

function Boss.new(name,image,lvl,typ,song)
	local tbl = {
		name = name or "",
		img = image or "",
		lvl = lvl or 1,
		typ = typ or 0,
		song = song or sound:getSound("bgroov"),
		vars = {},
	}
	
	local mt = {
		__index = Boss,
		__call = Boss.Load,
	}
	
	return setmetatable(tbl,mt)
end

function Boss.actOn(act)
	
end

function Boss.actTo(act)
	
end

function Boss:draw()
	
end

function Boss:update(key)
	fight.process(MOVES.NOP)
end

function Boss:splay()
	self.song:seek(0)
	self.song:play()
end

function Boss:sstop()
	self.song:seek(0)
	self.song:stop()
end

function Boss:Load()
	fight.new(
		self.name,
		self.image,
		self.lvl,
		self.typ,
		self.actOn,
		self.actTo
	)
	
	FAtk = Atk
	FDef = Def
	FHp = Hp
end

function Boss:Global()
	CBoss = self
end
