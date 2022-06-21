--21 to 30
function ItemUses.Steak()
	Hp = Hp + 30 
	Def = Def + 2
	Alert:new("Ate Some Steak",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[21] = ItemUses.Steak

function ItemUses.SuperSteak()
	Hp = Hp + 40 
	Def = Def + 7
	Max_Hp = Max_Hp + 1
	Alert:new("Ate Some Super Steak",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[22] = ItemUses.SuperSteak

function ItemUses.Soda()
	Atk = Atk + 1
	Alert:new("Drank a Soda",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[23] = ItemUses.Soda

function ItemUses.SuperSoda()
	Atk = Atk + 7
	Max_Hp = Max_Hp + 1
	Alert:new("Drank a Super Soda",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[24] = ItemUses.SuperSoda

function ItemUses.Salad()
	Hp = Hp + 20 
	Alert:new("Ate a Salad",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[25] = ItemUses.Salad

function ItemUses.SuperSalad()
	Hp = Hp + 40 
	Max_Hp = Max_Hp + 1
	Alert:new("Ate a Super Salad",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[26] = ItemUses.SuperSalad

function ItemUses.Tea()
	Atk = Atk + 2
	Alert:new("Drank a Tea",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[27] = ItemUses.Tea

function ItemUses.SuperTea()
	Atk = Atk + 8
	Max_Hp = Max_Hp + 1
	Alert:new("Drank a Super Tea",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[28] = ItemUses.SuperTea

function ItemUses.Cod()
	Hp = Hp + 25
	Alert:new("Ate Some Cod",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[29] = ItemUses.Cod

function ItemUses.SuperCod()
	Hp = Hp + 35 
	Def = Def + 3
	Max_Hp = Max_Hp + 1
	Alert:new("Ate Some Super Cod",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[30] = ItemUses.SuperCod
