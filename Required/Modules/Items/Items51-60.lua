--51 to 60
function ItemUses.SuperSlipsOpotatoes()
	Hp = Hp + 40
	Atk = Atk + 3
	Alert.new("Ate Some Super Potato Chips",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[51] = ItemUses.SuperSlipsOpotatoes

function ItemUses.SlipsOcoconuts()
	Hp = Hp + 15
	Def = Def + 1
	Alert.new("Ate Some Coconut Chips",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[52] = ItemUses.SlipsOcoconuts

function ItemUses.SuperSlipsOcoconuts()
	Hp = Hp + 35
	Def = Def + 2
	Alert.new("Ate Some Super Coconut Chips",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[53] = ItemUses.SuperSlipsOcoconuts

function ItemUses.FishSticks()
	Hp = Hp + 15
	Atk = Atk + 1
	Alert.new("Ate Some Fish Sticks",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[54] = ItemUses.FishSticks

function ItemUses.SuperFishSticks()
	Hp = Hp + 15 
	Atk = Atk + 4
	Max_Hp = Max_Hp + 1
	Alert.new("Ate Some Super Fish Sticks",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[55] = ItemUses.SuperFishSticks

function ItemUses.CoolRock()
	Max_Hp = Max_Hp + 15
	Hp = Max_Hp
	Atk = Atk + 25
	Alert.new("you have been blessed",'inv_stuff_select','moyai')
	gamestate = 'alert'
end
ItemUse[56] = ItemUses.CoolRock

function ItemUses.PeanutButter()
	Hp = Hp + 10
	Atk = Atk + 1
	Alert.new("Ate Some Peanut Butter",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[57] = ItemUses.PeanutButter

function ItemUses.SuperPeanutButter()
	Hp = Hp + 15
	Atk = Atk + 10
	Max_Hp = Max_Hp + 4
	Alert.new("Ate Some Super Peanut Butter",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[58] = ItemUses.SuperPeanutButter

function ItemUses.Mayonaise()
	Hp = Hp + 5
	Atk = Atk + 1
	Alert.new("Ate Some Mayonaise",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[59] = ItemUses.Mayonaise

function ItemUses.SuperMayonaise()
	Hp = Hp + 10
	Def = Def + 3
	Max_Hp = Max_Hp + 2
	Alert.new("Ate Some Super Mayonaise",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[60] = ItemUses.SuperMayonaise
