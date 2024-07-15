--11 to 20
function ItemUses.gainCash(n)
	Cash = Cash + n
	Alert.new("Cash gained",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[11] = ItemUses.gainCash

function ItemUses.loseCash(n)
	Cash = Cash - n
	Alert.new("Cash lost",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[12] = ItemUses.loseCash

function ItemUses.HealthVile()
	Hp = Hp + 10 
	Alert.new("Healed with a health vile",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[13] = ItemUses.HealthVile

function ItemUses.Stew()
	Hp = Hp - 30 
	Atk = Atk + 7
	Alert.new("Drank some Poisonous Stew",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[14] = ItemUses.Stew

function ItemUses.upAtk()
	Atk = Atk + 5
	Alert.new("Atk uped",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[15] = ItemUses.upAtk

function ItemUses.upDef()
	Def = Def + 1
	Alert.new("Def uped",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[16] = ItemUses.upDef

function ItemUses.findMed()
	sitem[0][0] = sitem[0][0] + 1
	Alert.new("Found a "..sNitem[0].." medkit",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[17] = ItemUses.findMed

function ItemUses.findPotion()
	sitem[0][1] = sitem[0][1] + 1
	Alert.new("Found a "..sNitem[0].." potion",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[18] = ItemUses.findPotion

function ItemUses.findAb()
	sitem[0][2] = sitem[0][2] + 1
	Alert.new("Found a "..sNitem[0].." atk boost",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[19] = ItemUses.findAb

function ItemUses.findDb()
	sitem[0][3] = sitem[0][3] + 1
	Alert.new("Found a "..sNitem[0].." def boost",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[20] = ItemUses.findDb
