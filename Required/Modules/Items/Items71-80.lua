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
