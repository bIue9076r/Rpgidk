B_Mol = Boss.new("Monster of The Lake","",1,3,sound:getSound("motd"))
B_Mol.vars.select = 1
B_Mol.vars.opt = {"Rest","Block","Attack"}
B_Mol.vars.did = "The Creature Appears"

function B_Mol.actOn(c)
	if c == MOVES.RST then
		FHp = FHp + 10
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
		B_Mol:sstop()
		Alert:new("Beat\n\n"..fight.npc.name,'stat')
		gamestate = 'alert'
	end
end

function B_Mol.actTo(c)
	if c == MOVES.RST then
		fight.npc.Hp = fight.npc.Hp +10
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
		B_Mol:sstop()
		Alert:new("You fainted",'stat')
		gamestate = 'alert'
	end
end

function B_Mol:update(key)
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

function B_Mol:draw()
	B_Mol:splay()
	love.graphics.draw(image:getImage(B_Mol.img),60,40)
	love.graphics.print({{0,0,0},"Hp:"..fight.npc.Hp},340,300+(0*20))
	love.graphics.print({Atk_color,"Atk:"..fight.npc.Atk},340,300+(1*20))
	love.graphics.print({Def_color,"Def:"..fight.npc.Def},340,300+(2*20))
	love.graphics.print({Hp_color,"Hp:"..FHp},340,300+(4*20))
	love.graphics.print({Atk_color,"Atk:"..FAtk},340,300+(5*20))
	love.graphics.print({Def_color,"Def:"..FDef},340,300+(6*20))
	love.graphics.print({{0,0,0},B_Mol.name},60,260)
	love.graphics.print({{0,0,0},'""'},60,280)
	
	local did = fight.getLast()
	if did == MOVES.NOP then
		B_Mol.vars.did = "The Creature Waited"
	elseif did == MOVES.RST then
		B_Mol.vars.did = "The Creature Rested"
	elseif did == MOVES.BLK then
		B_Mol.vars.did = "The Creature Blocked"
	elseif did == MOVES.ATK then
		B_Mol.vars.did = "The Creature Attacked"
	end
	love.graphics.print({{0,0,0},B_Mol.vars.did},60,320)
	
	for i,v in pairs(B_Mol.vars.opt) do
		love.graphics.print({{0,0,0},v},85,330+(i*20))
	end
	love.graphics.draw(image:getImage("Selected"),60,330+(B_Mol.vars.select*20))
end
