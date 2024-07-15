--0
function ItemUses.null()
	Alert.new("That did nothing",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[0] = ItemUses.null

--1 to 10
function ItemUses.Intakill()
	death_cause = "you have died after\n consuming that item"
	Hp = 0
end
ItemUse[1] = ItemUses.Intakill

function ItemUses.Hurt(dam)
	death_cause="you took too much damage"
	Dam = dam-(dam*Def/100)
	Hp = Hp - Dam
	Alert.new("Got hurt",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[2] = ItemUses.Hurt

function ItemUses.Heal(n)
	Hp = Hp + n 
	Infected=false
	Alert.new("healed",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[3] = ItemUses.Heal

function ItemUses.fullHeal()
	Alert.new("healed",'inv_stuff_select')
	gamestate = 'alert'
	Hp = Max_Hp
	Infected=false
end
ItemUse[4] = ItemUses.fullHeal

function ItemUses.gainRep(n)
	Rep = Rep + n
	Alert.new("Rep gained",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[5] = ItemUses.gainRep

function ItemUses.loseRep(n)
	Rep = Rep - n
	Alert.new("Rep lost",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[6] = ItemUses.loseRep

function ItemUses.gainAtk(n)
	Atk = Atk + n
	Alert.new("Atk gained",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[7] = ItemUses.gainAtk

function ItemUses.loseAtk(n)
	Atk = Atk - n
	Alert.new("Atk lost",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[8] = ItemUses.loseAtk

function ItemUses.gainDef(n)
	Def = Def + n
	Alert.new("Def gained",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[9] = ItemUses.gainDef

function ItemUses.loseDef(n)
	Def = Def - n
	Alert.new("Def lost",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[10] = ItemUses.loseDef
