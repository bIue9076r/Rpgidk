--41 to 50
function ItemUses.Coconut()
	Hp = Hp + 20
	Alert:new("Ate Some Coconut Slices",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[41] = ItemUses.Coconut

function ItemUses.SuperCoconut()
	Hp = Hp + 35
	Def = Def + 3
	Max_Hp = Max_Hp + 1
	Alert:new("Ate Some Super Coconut Slices",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[42] = ItemUses.SuperCoconut

function ItemUses.SwampWater()
	Hp = Hp - 15
	Alert:new("Drank Some Swamp Water",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[43] = ItemUses.SwampWater

function ItemUses.WildMeat()
	Hp = Hp + 10
	Alert:new("Ate Some Wild Meat",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[44] = ItemUses.WildMeat

function ItemUses.ToxicWildMeat()
	Hp = Hp - 10
	Atk = Atk + 5
	Max_Hp = Max_Hp - 5
	Alert:new("Ate Some Toxic Wild Meat",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[45] = ItemUses.ToxicWildMeat

function ItemUses.Cactus()
	Hp = Hp + 15
	Def = Def + 3
	Alert:new("Ate Some Cactus",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[46] = ItemUses.Cactus

function ItemUses.SuperCactus()
	Hp = Hp + 25
	Def = Def + 6
	Max_Hp = Max_Hp + 1
	Alert:new("Ate Some Super Cactus",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[47] = ItemUses.SuperCactus

function ItemUses.SandCake()
	Hp = Hp + 25
	Alert:new("Ate Some Sand Cake",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[48] = ItemUses.SandCake

function ItemUses.SuperSandCake()
	Hp = Hp + 35
	Def = Def + 3
	Max_Hp = Max_Hp + 1
	Alert:new("Ate Some Super Sand Cake",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[49] = ItemUses.SuperSandCake

function ItemUses.SlipsOpotatoes()
	Hp = Hp + 25
	Atk = Atk + 1
	Alert:new("Ate Some Potato Chips",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[50] = ItemUses.SlipsOpotatoes
