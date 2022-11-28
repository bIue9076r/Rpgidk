function ItemUses.Goo()
	Hp = Hp - 20
	Max_Hp = Max_Hp + 5
	Alert:new("Drank some Goo",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[71] = ItemUses.Goo

function ItemUses.YellowSnow()
	Hp = Hp - 20
	Max_Hp = Max_Hp + 5
	yellowSnowEater = true
	Alert:new("Ate Some Yellow Snow",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[72] = ItemUses.YellowSnow

function ItemUses.Snow()
	Hp = Hp + 20
	Max_Hp = Max_Hp + 5
	Alert:new("Ate Some Snow",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[73] = ItemUses.Snow

function ItemUses.ufindMed()
	sitem[1][0] = sitem[1][0] + 1
	Alert:new("Found a "..sNitem[1].." medkit",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[74] = ItemUses.ufindMed

function ItemUses.ufindPotion()
	sitem[1][1] = sitem[1][1] + 1
	Alert:new("Found a "..sNitem[1].." potion",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[75] = ItemUses.ufindPotion

function ItemUses.ufindAb()
	sitem[1][2] = sitem[1][2] + 1
	Alert:new("Found a "..sNitem[1].." atk boost",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[76] = ItemUses.ufindAb

function ItemUses.ufindDb()
	sitem[1][3] = sitem[1][3] + 1
	Alert:new("Found a "..sNitem[1].." def boost",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[77] = ItemUses.ufindDb

function ItemUses.rfindMed()
	sitem[2][0] = sitem[2][0] + 1
	Alert:new("Found a "..sNitem[2].." medkit",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[78] = ItemUses.rfindMed

function ItemUses.rfindPotion()
	sitem[2][1] = sitem[2][1] + 1
	Alert:new("Found a "..sNitem[2].." potion",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[79] = ItemUses.rfindPotion

function ItemUses.findAb()
	sitem[2][2] = sitem[2][2] + 1
	Alert:new("Found a "..sNitem[2].." atk boost",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[80] = ItemUses.rfindAb
