--31 to 40
function ItemUses.HotCoco()
	Atk = Atk + 2
	Alert:new("Drank Some Hot Coco",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[31] = ItemUses.HotCoco

function ItemUses.SuperHotCoco()
	Atk = Atk + 8
	Max_Hp = Max_Hp + 1
	Alert:new("Drank Some Super Hot Coco",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[32] = ItemUses.SuperHotCoco

function ItemUses.RostedScorpion()
	Hp = Hp + 10 
	Atk = Atk + 3
	Alert:new("Ate Some Rosted Scorpion",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[33] = ItemUses.RostedScorpion

function ItemUses.SuperRostedScorpion()
	Hp = Hp + 25 
	Atk = Atk + 6
	Max_Hp = Max_Hp + 1
	Alert:new("Ate Some Super Rosted Scorpion",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[34] = ItemUses.SuperRostedScorpion

function ItemUses.ToxicWaste()
	Hp = Hp - 10 
	Max_Hp = Max_Hp - 5
	Atk = Atk + 9
	Alert:new("Drank Some Toxic Waste",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[35] = ItemUses.ToxicWaste

function ItemUses.SuperToxicWaste()
	Hp = Hp - 30 
	Atk = Atk + 15
	Max_Hp = Max_Hp - 15
	Alert:new("Drank Some Super Toxic Waste",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[36] = ItemUses.SuperToxicWaste

function ItemUses.Salmon()
	Hp = Hp + 25
	Alert:new("Ate Some Salmon",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[37] = ItemUses.Salmon

function ItemUses.SuperSalmon()
	Hp = Hp + 35 
	Def = Def + 3
	Max_Hp = Max_Hp + 1
	Alert:new("Ate Some Super Salmon",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[38] = ItemUses.SuperSalmond

function ItemUses.CoconutJuice()
	Hp = Hp + 5
	Alert:new("Drank Some Coconut Juice",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[39] = ItemUses.CoconutJuice

function ItemUses.SuperCoconutJuice()
	Hp = Hp + 15
	Def = Def + 3
	Max_Hp = Max_Hp + 1
	Alert:new("Drank Some Super Coconut Juice",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[40] = ItemUses.SuperCoconutJuice
