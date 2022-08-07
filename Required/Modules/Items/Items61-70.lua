--61 to 70
function ItemUses.HotSauce()
	Hp = Hp - 15
	Atk = Atk + 3
	Alert:new("Ate Some Hot Sauce",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[61] = ItemUses.HotSauce

function ItemUses.SuperHotSauce()
	Hp = Hp - 25
	Atk = Atk + 10
	Alert:new("Ate Some Super Hot Sauce",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[62] = ItemUses.SuperHotSauce

function ItemUses.IceBlock()
	Hp = Hp + 15
	Atk = Atk + 1
	Alert:new("Ate A Block of Ice",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[63] = ItemUses.IceBlock

function ItemUses.Mustard()
	Hp = Hp + 15
	Atk = Atk + 1
	Alert:new("Ate Some Mustard",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[64] = ItemUses.Mustard

function ItemUses.SuperMustard()
	Hp = Hp + 15
	Atk = Atk + 1
	Alert:new("Ate Some Super Mustard",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[65] = ItemUses.SuperMustard

function ItemUses.StarCandy()
	Max_Hp = Max_Hp + 10
	Hp = Hp + 50
	Atk = Atk + 20
	Alert:new("Ate Some Star Candy",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[66] = ItemUses.StarCandy

function ItemUses.SuperStarCandy()
	Max_Hp = Max_Hp + 35
	Hp = Max_Hp
	Atk = Atk + 30
	Alert:new("Ate Some Super Star Candy",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[67] = ItemUses.SuperStarCandy

function ItemUses.Moss()
	Max_Hp = Max_Hp + 5
	Hp = Hp - 5
	Atk = Atk + 5
	Alert:new("Ate Some Moss",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[68] = ItemUses.Moss

function ItemUses._item()
	Max_Hp = Max_Hp + 500
	Hp = Hp + 500
	Atk = Atk + 500
	Alert:new("Ate Some [place holder item]",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[69] = ItemUses._item


function ItemUses.Carrot()
	Hp = Hp + 15
	Atk = Atk + 1
	Alert:new("Ate A Carrot",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[70] = ItemUses.Carrot
