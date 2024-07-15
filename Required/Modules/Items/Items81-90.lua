function ItemUses.rfindDb()
	sitem[2][3] = sitem[2][3] + 1
	Alert.new("Found a "..sNitem[2].." def boost",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[81] = ItemUses.rfindDb

function ItemUses.lfindMed()
	sitem[3][0] = sitem[3][0] + 1
	Alert.new("Found a "..sNitem[3].." medkit",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[82] = ItemUses.lfindMed

function ItemUses.lfindPotion()
	sitem[3][1] = sitem[3][1] + 1
	Alert.new("Found a "..sNitem[3].." potion",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[83] = ItemUses.lfindPotion

function ItemUses.lfindAb()
	sitem[3][2] = sitem[3][2] + 1
	Alert.new("Found a "..sNitem[3].." atk boost",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[84] = ItemUses.lfindAb

function ItemUses.lfindDb()
	sitem[3][3] = sitem[3][3] + 1
	Alert.new("Found a "..sNitem[3].." def boost",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[85] = ItemUses.lfindDb

function ItemUses.metal()
	Alert.new("This metal sheet did nothing",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[86] = ItemUses.metal

function ItemUses.Cake()
	Hp = Hp + 30
	Alert.new("Ate Some Cake",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[87] = ItemUses.Cake

function ItemUses.SuperCake()
	Hp = Hp + 45
	Def = Def + 3
	Max_Hp = Max_Hp + 2
	Alert.new("Ate Some Super Cake",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[88] = ItemUses.SuperCake