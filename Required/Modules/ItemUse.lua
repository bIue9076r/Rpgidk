-- Item Use Function module
ItemUse={} -- Item use table /* Selection Table */
ItemUses = {} -- Item function  /* Function Table */


--Item Functions
function ItemUses.Intakill()
	death_cause = "you have died after\n consuming that item"
	Hp = 0
end
ItemUse[1] = ItemUses.Intakill

function ItemUses.Hurt(dam)
	death_cause="you took too much damage"
	Dam = dam-(dam*Def/100)
	Hp = Hp - Dam
	Alert:new("Got hurt",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[2] = ItemUses.Hurt

function ItemUses.Heal(n)
	Hp = Hp + n 
	Alert:new("healed",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[3] = ItemUses.Heal

function ItemUses.fullHeal()
	Alert:new("healed",'inv_stuff_select')
	gamestate = 'alert'
	Hp = Max_Hp
end
ItemUse[4] = ItemUses.fullHeal

function ItemUses.gainRep(n)
	Rep = Rep + n
	Alert:new("Rep gained",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[5] = ItemUses.gainRep

function ItemUses.loseRep(n)
	Rep = Rep - n
	Alert:new("Rep lost",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[6] = ItemUses.loseRep

function ItemUses.gainAtk(n)
	Atk = Atk + n
	Alert:new("Atk gained",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[7] = ItemUses.gainAtk

function ItemUses.loseAtk(n)
	Atk = Atk - n
	Alert:new("Atk lost",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[8] = ItemUses.loseAtk

function ItemUses.gainDef(n)
	Def = Def + n
	Alert:new("Def gained",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[9] = ItemUses.gainDef

function ItemUses.loseDef(n)
	Def = Def - n
	Alert:new("Def lost",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[10] = ItemUses.loseDef

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

function ItemUses.SuperSlipsOpotatoes()
	Hp = Hp + 40
	Atk = Atk + 3
	Alert:new("Ate Some Super Potato Chips",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[51] = ItemUses.SuperSlipsOpotatoes

function ItemUses.SlipsOcoconuts()
	Hp = Hp + 15
	Def = Def + 1
	Alert:new("Ate Some Coconut Chips",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[52] = ItemUses.SlipsOcoconuts

function ItemUses.SuperSlipsOcoconuts()
	Hp = Hp + 35
	Def = Def + 2
	Alert:new("Ate Some Super Coconut Chips",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[53] = ItemUses.SuperSlipsOcoconuts

function ItemUses.FishSticks()
	Hp = Hp + 15
	Atk = Atk + 1
	Alert:new("Ate Some Fish Sticks",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[54] = ItemUses.FishSticks

function ItemUses.SuperFishSticks()
	Hp = Hp + 15 
	Atk = Atk + 4
	Max_Hp = Max_Hp + 1
	Alert:new("Ate Some Super Fish Sticks",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[55] = ItemUses.SuperFishSticks

function ItemUses.CoolRock()
	Max_Hp = Max_Hp + 15
	Hp = Max_Hp
	Atk = Atk + 25
	Alert:new("you have been blessed",'inv_stuff_select','moyai')
	gamestate = 'alert'
end
ItemUse[56] = ItemUses.CoolRock

function ItemUses.PeanutButter()
	Hp = Hp + 10
	Atk = Atk + 1
	Alert:new("Ate Some Peanut Butter",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[57] = ItemUses.PeanutButter

function ItemUses.SuperPeanutButter()
	Hp = Hp + 15
	Atk = Atk + 10
	Max_Hp = Max_Hp + 4
	Alert:new("Ate Some Super Peanut Butter",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[58] = ItemUses.SuperPeanutButter

function ItemUses.Mayonaise()
	Hp = Hp + 5
	Atk = Atk + 1
	Alert:new("Ate Some Mayonaise",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[59] = ItemUses.Mayonaise

function ItemUses.SuperMayonaise()
	Hp = Hp + 10
	Def = Def + 3
	Max_Hp = Max_Hp + 2
	Alert:new("Ate Some Super Mayonaise",'inv_stuff_select')
	gamestate = 'alert'
end
ItemUse[60] = ItemUses.SuperMayonaise

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

--Item Selection Functions

function ItemUseRad() -- select a random Use
	n = math.random(1,#ItemUse)
	return ItemUse[n]
end

function ItemUseRadFood() -- select a random Use
	t = math.random(20,#ItemUse)
	if t == 20 then t = 15 end
	return ItemUse[t]
end

function ItemUseGet(n) -- select a use in the ItemUse table
	if n == nil or n <= -1 or n > #ItemUse then -- if n is -1 then select a random use
		return ItemUseRad()
	end
	if n == 0 then
		return ItemUseRadFood()
	end
	return ItemUse[n]
end