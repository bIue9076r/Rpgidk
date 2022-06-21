--11 to 20
function ItemUses.gainCash(n)
	Cash = Cash + n
	Alert:new("Cash gained",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[11] = ItemUses.gainCash

function ItemUses.loseCash(n)
	Cash = Cash - n
	Alert:new("Cash lost",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[12] = ItemUses.loseCash

function ItemUses.HealthVile()
	Hp = Hp + 10 
	Alert:new("Healed with a health vile",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[13] = ItemUses.HealthVile

function ItemUses.Stew()
	Hp = Hp - 30 
	Atk = Atk + 10
	Alert:new("Drank some Poisonous Stew",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[14] = ItemUses.Stew

function ItemUses.upAtk()
	Atk = Atk + 5
	Alert:new("Atk uped",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[15] = ItemUses.upAtk

function ItemUses.upDef()
	Def = Def + 5
	Alert:new("Def uped",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[16] = ItemUses.upDef

function ItemUses.findMed()
	item[0] = item[0] + 1
	Alert:new("Found a medkit",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[17] = ItemUses.findMed

function ItemUses.findPotion()
	item[1] = item[1] + 1
	Alert:new("Found a potion",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[18] = ItemUses.findPotion

function ItemUses.findAb()
	item[2] = item[2] + 1
	Alert:new("Found an atk boost",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[19] = ItemUses.findAb

function ItemUses.findDb()
	item[3] = item[3] + 1
	Alert:new("Found a def boost",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[20] = ItemUses.findDb
