B_Valary = Boss.new("Valary","",100,1) -- Attacker / Final Boss-ish
B_Valary.vars.select = 1
B_Valary.vars.opt = {"Rest","Block","Attack"}
B_Valary.vars.did = "Valary jumps at you"
				----12345678901234567890123
B_Valary.vars.says = {
	'"I loathe ants like you"',
	'"I am going to crush you"',
	'"Long Live the Empress"',
	'"Viva la pointes de glace"',
	'"You should give up"',
}
B_Valary.vars.say = B_Valary.vars.says[1]

function B_Valary.actOn(c)
	if c == MOVES.RST then
		FHp = FHp + math.random(1,25)
	elseif c == MOVES.BLK then
		FDef = FDef + math.random(1,2)
		FAtk = FAtk + math.random(1,5)
	elseif c == MOVES.ATK then
		Dam = (FAtk+2)-math.ceil((log2(fight.npc.Def+(1*((FAtk+2)^2)))*(fight.npc.Def))/(20))
		if (Dam > fight.npc.Hp) then Dam = fight.npc.Hp end
		fight.npc.Hp = fight.npc.Hp - Dam
	end
	
	if fight.npc.Hp > fight.npc.MaxHp then
		fight.npc.Hp = fight.npc.MaxHp
	end
	if fight.npc.Hp <= 0 then
		B_Valary:sstop()
		Alert:new("Beat\n\n"..fight.npc.name,'stat')
		gamestate = 'alert'
	end
end

function B_Valary.actTo(c)
	if c == MOVES.RST then
		fight.npc.Hp = fight.npc.Hp + math.random(1,25)
	elseif c == MOVES.BLK then
		fight.npc.Def = fight.npc.Def + math.random(1,2)
		fight.npc.Atk = fight.npc.Atk + math.random(1,5)
	elseif c == MOVES.ATK then
		Dam = fight.npc.Atk-math.ceil((log2(FDef+(1*(fight.npc.Atk^2)))*(FDef))/(20))
		if (Dam > FHp) then Dam = FHp end
		FHp = FHp - Dam
	end
	
	if FHp > Max_Hp then
		FHp = Max_Hp
	end
	if FHp <= 0 then
		-- she kills you
		B_Valary:sstop()
		Hp = 0
		Alert:new("You fainted",'stat')
		gamestate = 'alert'
	end
	
	local n = math.random(1,#B_Valary.vars.says)
	B_Valary.vars.say = B_Valary.vars.says[n]
end

function B_Valary:update(key)
	if key == "w" then
		if self.vars.select - 1 > 0 then
			self.vars.select = self.vars.select - 1
		else
			self.vars.select = #self.vars.opt
		end
	elseif key == "s" then
		if self.vars.select + 1 <= #self.vars.opt then
			self.vars.select = self.vars.select + 1
		else
			self.vars.select = 1
		end
	end
	
	if key == "return" then
		local acts = {MOVES.RST,MOVES.BLK,MOVES.ATK}
		fight.process(acts[self.vars.select])
	end
end

function B_Valary:draw()
	B_Valary:splay()
	love.graphics.draw(image:getImage(B_Valary.img),60,40)
	love.graphics.print({{0,0,0},"Hp:"..fight.npc.Hp},340,300+(0*20))
	love.graphics.print({Atk_color,"Atk:"..fight.npc.Atk},340,300+(1*20))
	love.graphics.print({Def_color,"Def:"..fight.npc.Def},340,300+(2*20))
	love.graphics.print({Hp_color,"Hp:"..FHp},340,300+(4*20))
	love.graphics.print({Atk_color,"Atk:"..FAtk},340,300+(5*20))
	love.graphics.print({Def_color,"Def:"..FDef},340,300+(6*20))
	love.graphics.print({{0,0,0},B_Valary.name},60,260)
	love.graphics.print({{0,0,0},B_Valary.vars.say},60,280)
	
	local did = fight.getLast()
	if did == MOVES.NOP then
		B_Valary.vars.did = "Valary glares at you"
	elseif did == MOVES.RST then
		B_Valary.vars.did = "Valary Rested"
	elseif did == MOVES.BLK then
		B_Valary.vars.did = "Valary Blocked"
	elseif did == MOVES.ATK then
		B_Valary.vars.did = "Valary Attacked"
	end
	love.graphics.print({{0,0,0},B_Valary.vars.did},60,320)
	
	for i,v in pairs(B_Valary.vars.opt) do
		love.graphics.print({{0,0,0},v},85,330+(i*20))
	end
	love.graphics.draw(image:getImage("Selected"),60,330+(B_Valary.vars.select*20))
end
