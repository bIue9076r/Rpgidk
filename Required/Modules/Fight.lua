fight = {}
fight.npc = nil;
MOVES = {NOP = 0,RST = 1,BLK = 2,ATK = 3}
NtoTYPES = {[0] = "NET","AGR","RST","BLK","HYB"}
TYPES = {NET = 0,AGR = 1,RST = 2,BLK = 3,HYB = 4}
WEIGHTS = {
	[0] = {0.5,0.5,0.5},
	[1] = {0.125,0.35,0.75},
	[2] = {0.75,0.65,0.125},
	[3] = {0.65,0.75,0.125},
	[5] = {0.5,0.5,0.5}, -- these change
}

function fight.new(name,image,lvl,typ,actOn,actTo)
	name = name or ""
	image = image or ""
	lvl = lvl or 0
	typ = typ or 0
	
	fight.npc = {
		name = name,
		img = image,
		lvl = lvl,
		Hp = 100 + math.ceil(25 * (lvl - 1)),
		Def = 2 + math.ceil(0.75 * (lvl - 1)),
		Atk = 5 + math.ceil(3 * (lvl - 1)),
		MaxHp = Hp,
		prev = nil,
		curr = MOVES.NOP,
		next = MOVES.NOP,
		typ = TYPES[NtoTYPES[typ]],
		actOn = actOn,
		actTo = actTo,
		patk = nil,
		pdef = nil,
	}
end

function fight.get()
	return fight.npc
end

function fight.getLast()
	return fight.npc.prev
end

function fight.process(input)
	fight.npc.actOn(input)
	fight.npc.actTo(fight.npc.curr)
	
	fight.nextmove()
	fight.npc.prev = fight.npc.curr
	fight.npc.curr = fight.npc.next
	
	if fight.npc.curr == MOVES.ATK then
		print("IM GONNA ATTACK")
	elseif fight.npc.curr == MOVES.BLK then
		print("IM GONNA BLOCK")
	elseif fight.npc.curr == MOVES.RST then
		print("IM GONNA REST")
	else
		print("WHAT AM I DOING?!")
	end
end

function fight.nextmove()
	weights = WEIGHTS[fight.npc.typ]
	if fight.npc.typ == 4 then
		for i = 1,3 do weights[i] = math.random() end
	end
	
	n1 = weights[1] * math.random(0,100)
	n2 = weights[2] * math.random(0,100)
	n3 = weights[3] * math.random(0,100)
	mn = math.max(n1,n2,n3)
	
	if n1 == mn then
		fight.npc.next = MOVES.RST
	elseif n2 == mn then
		fight.npc.next = MOVES.BLK
	elseif n3 == mn then
		fight.npc.next = MOVES.ATK
	end
end
