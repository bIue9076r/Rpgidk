--Game functions
--Put any functions that have no dependencies here

--Player stats
function Name_Stat()
	--Displays the Player's Name
	love.graphics.print({{0,0,0},"Name:"..name},60,290)
end

function Hp_Stat()
	--Displays the Player's Hp
	love.graphics.print({Hp_color,"Hp:"..Hp.."/"..Max_Hp},60,310)
end

function Rep_Stat()
	--Displays the Player's Rep
	love.graphics.print({RepColor,"Rep:"..Rep},60,370)
end

function Atk_Stat()
	--Displays the Player's Atk
	love.graphics.print({Atk_color,"Atk:"..Atk},60,390)
end

function Def_Stat()
	--Displays the Player's Def
	love.graphics.print({Def_color,"Def:"..Def.."/"..199},60,410)
end

function Cash_Stat()
	--Displays the Player's Cash
	love.graphics.print({Cash_color,"Cash:"..Cash},60,430)
end

function Level_Stat()
	--Displays the Player's Level
	love.graphics.print({{0,0,0},"Level:"..Exp:exportLevel()},60,330)
end

function Exp_Stat()
	--Displays the Player's Exp
	love.graphics.print({{0,0,0},"Exp:"..Exp:exportCount()},60,350)
end

--Player Inv

function Med_Stat()
	--Displays the Player's total Medkits
	love.graphics.print({{love.math.colorFromBytes(114,159,207)},"Medkits:"..item[0]},60,290)
end

function Pois_Stat()
	--Displays the Player's total Poison Potions
	love.graphics.print({{love.math.colorFromBytes(138,138,136,255)},"Poison Potions:"..item[1]},60,310)
end

function Ab_Stat()
	--Displays the Player's total Atk boosts
	love.graphics.print({Atk_color,"Atk:"..item[2]},60,330)
end

function Db_Stat()
	--Displays the Player's total Def boosts
	love.graphics.print({Def_color,"Def:"..item[3]},60,350)
end

--D commands
function Updatecommand(int)
	--Updates the Dialoge Table's command
	worldCmd = D.ChooseDialoge(int)
end

--Store Stats

function store_Med()
	--Displays the Store's total Medkits
	love.graphics.print({{love.math.colorFromBytes(114,159,207)},"Medkits:"..store_stock_med},60,290)
end

function store_Posion()
	--Displays the Store's total Poison Potions
	love.graphics.print({{love.math.colorFromBytes(218,218,216,255)},"Potion of Poison:"..store_stock_Posion},60,310)
end

function store_Atk()
	--Displays the Store's total Atk boost
	love.graphics.print({Atk_color,"Attack boost:"..store_stock_Atk},60,330)
end

function store_Def()
	--Displays the Store's total Def boost
	love.graphics.print({Def_color,"Defence boost:"..store_stock_Def},60,310)
end

--Display stats

function displayPlayerStats()
	Name_Stat()
	Hp_Stat()
	Rep_Stat()
	Atk_Stat()
	Def_Stat()
	Cash_Stat()
	Level_Stat()
	Exp_Stat()
end

function displayPlayerInv()
	Med_Stat()
	Pois_Stat()
	Ab_Stat()
	Db_Stat()
end

function displayPlayerInv_stuff()
	pcall(function()
	Inv_page = Inv_page or 1
	love.graphics.draw(image:getImage('Inv'),0,0)
	--collumn 1
	--13 max Chars
	Stuff = Item:display(Inv_page)
	love.graphics.print({{0,0,0},Stuff[1].name},95,290)
	love.graphics.draw(image:getImage(Stuff[1].icon),60,290)
	love.graphics.print({{0,0,0},Stuff[2].name},95,290+20)
	love.graphics.draw(image:getImage(Stuff[2].icon),60,290+20)
	love.graphics.print({{0,0,0},Stuff[3].name},95,290+(20*2))
	love.graphics.draw(image:getImage(Stuff[3].icon),60,290+(20*2))
	love.graphics.print({{0,0,0},Stuff[4].name},95,290+(20*3))
	love.graphics.draw(image:getImage(Stuff[4].icon),60,290+(20*3))
	love.graphics.print({{0,0,0},Stuff[5].name},95,290+(20*4))
	love.graphics.draw(image:getImage(Stuff[5].icon),60,290+(20*4))
	love.graphics.print({{0,0,0},Stuff[6].name},95,290+(20*5))
	love.graphics.draw(image:getImage(Stuff[6].icon),60,290+(20*5))
	love.graphics.print({{0,0,0},Stuff[7].name},95,290+(20*6))
	love.graphics.draw(image:getImage(Stuff[7].icon),60,290+(20*6))
	love.graphics.print({{0,0,0},Stuff[8].name},95,290+(20*7))
	love.graphics.draw(image:getImage(Stuff[8].icon),60,290+(20*7))
	--page
	love.graphics.print({{0,0,0},"Current Page:"..Inv_page},(60+70)*2,290+(20*6))
	end)
end

function displayPlayerNote_stuff()
	pcall(function()
	Note_Inv_page = Note_Inv_page or 1
	love.graphics.draw(image:getImage('Inv'),0,0)
	--collumn 1
	--13 max Chars
	Stuff = Note:display(Note_Inv_page)
	love.graphics.print({{0,0,0},Stuff[1].name},95,290)
	love.graphics.draw(image:getImage(Stuff[1].icon),60,290)
	love.graphics.print({{0,0,0},Stuff[2].name},95,290+20)
	love.graphics.draw(image:getImage(Stuff[2].icon),60,290+20)
	love.graphics.print({{0,0,0},Stuff[3].name},95,290+(20*2))
	love.graphics.draw(image:getImage(Stuff[3].icon),60,290+(20*2))
	love.graphics.print({{0,0,0},Stuff[4].name},95,290+(20*3))
	love.graphics.draw(image:getImage(Stuff[4].icon),60,290+(20*3))
	love.graphics.print({{0,0,0},Stuff[5].name},95,290+(20*4))
	love.graphics.draw(image:getImage(Stuff[5].icon),60,290+(20*4))
	love.graphics.print({{0,0,0},Stuff[6].name},95,290+(20*5))
	love.graphics.draw(image:getImage(Stuff[6].icon),60,290+(20*5))
	love.graphics.print({{0,0,0},Stuff[7].name},95,290+(20*6))
	love.graphics.draw(image:getImage(Stuff[7].icon),60,290+(20*6))
	love.graphics.print({{0,0,0},Stuff[8].name},95,290+(20*7))
	love.graphics.draw(image:getImage(Stuff[8].icon),60,290+(20*7))
	--page
	love.graphics.print({{0,0,0},"Current Page:"..Note_Inv_page},(60+70)*2,290+(20*6))
	end)
end

function displayFoodMenu(loc)
	if loc == 'city' then
		love.graphics.print({{0,0,0},"Steak $20"},95,290)
		love.graphics.draw(image:getImage("placeholderIcon"),60,290)
		love.graphics.print({{0,0,0},"Salad $10"},95,290+20)
		love.graphics.draw(image:getImage("placeholderIcon"),60,290+20)
		love.graphics.print({{0,0,0},"Soda $5"},95,290+(20*2))
		love.graphics.draw(image:getImage("placeholderIcon"),60,290+(20*2))
	elseif loc == 'desert' then
		love.graphics.print({{0,0,0},"Cactus $15"},95,290)
		love.graphics.draw(image:getImage("placeholderIcon"),60,290)
		love.graphics.print({{0,0,0},"Sand Cakes $20"},95,290+20)
		love.graphics.draw(image:getImage("placeholderIcon"),60,290+20)
		love.graphics.print({{0,0,0},"Tea $5"},95,290+(20*2))
		love.graphics.draw(image:getImage("placeholderIcon"),60,290+(20*2))
	elseif loc == 'swamp' then
		love.graphics.print({{0,0,0},"Coconut Slices $10"},95,290)
		love.graphics.draw(image:getImage("placeholderIcon"),60,290)
		love.graphics.print({{0,0,0},"Coconut Juice $10"},95,290+20)
		love.graphics.draw(image:getImage("placeholderIcon"),60,290+20)
		love.graphics.print({{0,0,0},"Swamp Water $0"},95,290+(20*2))
		love.graphics.draw(image:getImage("placeholderIcon"),60,290+(20*2))
	elseif loc == 'ice' then
		love.graphics.print({{0,0,0},"Cod $10"},95,290)
		love.graphics.draw(image:getImage("placeholderIcon"),60,290)
		love.graphics.print({{0,0,0},"Salmon $10"},95,290+20)
		love.graphics.draw(image:getImage("placeholderIcon"),60,290+20)
		love.graphics.print({{0,0,0},"Hot Coco $5"},95,290+(20*2))
		love.graphics.draw(image:getImage("placeholderIcon"),60,290+(20*2))
	elseif loc == 'waste' then
		love.graphics.print({{0,0,0},"Rosted Scorpion $20"},95,290)
		love.graphics.draw(image:getImage("placeholderIcon"),60,290)
		love.graphics.print({{0,0,0},"Wild Game $5"},95,290+20)
		love.graphics.draw(image:getImage("placeholderIcon"),60,290+20)
		love.graphics.print({{0,0,0},"Toxic Waste $30"},95,290+(20*2))
		love.graphics.draw(image:getImage("placeholderIcon"),60,290+(20*2))
	end
end

--Stat Check

function check_hp()
	if Hp <= 0 then
		dead = dead or false
		if dead == false then
			Alert:new(death_cause,'gameover')
			gamestate = 'alert'
			dead = true
		end
	elseif Hp > Max_Hp then
		Hp = Max_Hp
	end
	if Hp >= (80/100)*Max_Hp then
		Hp_color={love.math.colorFromBytes(114,159,207)}
	end
	if Hp < (80/100)*Max_Hp then
		Hp_color={love.math.colorFromBytes(0,186,19)}
	end
	if Hp < (60/100)*Max_Hp then
		Hp_color={love.math.colorFromBytes(232,203,79)}
	end
	if Hp < (30/100)*Max_Hp then
		Hp_color={love.math.colorFromBytes(239,41,41)}
	end
end

function check_Rep()
	if Rep < 0 then
		RepColor={love.math.colorFromBytes(239,41,41)}
	end
	if Rep >= 0 then
		RepColor={love.math.colorFromBytes(138,138,136)}
	end
	if Rep > 30 then
		RepColor={love.math.colorFromBytes(232,203,79)}
	end
	if Rep > 100 then
		RepColor={love.math.colorFromBytes(0,186,19)}
	end
	if Rep > 150 then
		RepColor={love.math.colorFromBytes(90,200,255)}
	end
end

function _check_Atk(n)
	if Atk < n then
		Alert:new("I cant attack them",'stat')
		gamestate = 'alert'
	end
end

function _check_Def(n)
	if Def < n then
		Alert:new("This is gonna hurt",'stat')
		gamestate = 'alert'
	end
end

function check_maxdef()
	if Def > 199 then
		Def = 199
	end
end

function check_maxlck()
	if Lck > 10 then
		Lck = 10
	end
end

function arrest()
	Alert:new("You have been arrested",'arrest')
	gamestate = 'alert'
end

function Restock(dt)
	restock = restock - dt
	if restock < 0 then
		store_stock_med=math.random(1,100)
		store_stock_Posion=math.random(1,100)
		store_stock_Atk=math.random(1,100)
		store_stock_Def=math.random(1,100)
		restock = 1000
	end
end

function CrimeUpdate(lvl)
	--3: 90 = min + min/half
	--2: 60 = min
	--1: 30 = min/half
	clvl = lvl or 1
	if clvl < 1 then clvl = 1 end
	TimeSinceLastCrime = TimeSinceLastCrime + clvl*30
end

function LowerCrime(dt)
	if TimeSinceLastCrime > 0 then
		TimeSinceLastCrime = TimeSinceLastCrime - dt
	end
end

function Chance(number)
	tnum = number - (Lck * 10)
	if tnum < 1 then return true end
	return math.random(1,tnum) == (tnum - 1)
end

--Stat Changers

function Pdead(name)
	death_cause = "you were killed by "..name
	Alert:new(death_cause,'gameover')
	gamestate = 'alert'
	Hp = 0
end

function Hurt(n)
	death_cause="you took too much damage"
	Dam= n-(n*Def/200)
	Hp = Hp - Dam
	Alert:new("Lost "..Dam.." Hp",'stat')
	gamestate = 'alert'
end

function Heal(n)
	Hp = Hp + n 
	Alert:new("Gained "..n.." Hp",'stat')
	gamestate = 'alert'
end

function fullHeal()
	Alert:new("Fully healed",'stat')
	gamestate = 'alert'
	Hp = Max_Hp
end

function raiseRep(n)
	Alert:new("Gained "..n.." Hp",'stat')
	gamestate = 'alert'
	Rep = Rep + n
end

function lowerRep(n)
	Alert:new("Lost "..n.." Rep",'stat')
	gamestate = 'alert'
	Rep = Rep - n
end

function raiseAtk(n)
	Alert:new("Gained "..n.." Atk",'stat')
	gamestate = 'alert'
	Atk = Atk + n
end

function lowerAtk(n)
	Alert:new("Lost "..n.." Atk",'stat')
	gamestate = 'alert'
	Atk = Atk - n
end

function raiseDef(n)
	Alert:new("Gained "..n.." Def",'stat')
	gamestate = 'alert'
	Def = Def + n
end

function lowerDef(n)
	Alert:new("Lost "..n.." Def",'stat')
	gamestate = 'alert'
	Def = Def - n
end

function raiseCash(n)
	Alert:new("Gained "..n.." Cash",'stat')
	gamestate = 'alert'
	Cash = Cash + n
end

function lowerCash(n)
	Alert:new("Lost "..n.." Cash",'stat')
	gamestate = 'alert'
	Cash = Cash - n
end

function raiseKills()
	Kills = Kills + 1
end

function useMed()
	if item[0] > 0 then
		Hp = Hp + 20 
		item[0] = item[0] - 1
		Alert:new("Used a medkit",'inv')
		gamestate = 'alert'
	else
		Alert:new("Not enough medkits",'inv')
		gamestate = 'alert'
	end
end

function usePotion()
	if item[1] > 0 then
		Hp = Hp - 30 
		Atk = Atk + 10
		item[1] = item[1] - 1
		Alert:new("Used a potion",'inv')
		gamestate = 'alert'
	else
		Alert:new("Not enough potions",'inv')
		gamestate = 'alert'
	end
end

function useAtkBoost()
	if item[2] > 0 then
		Atk = Atk + 3
		item[2] = item[2] - 1
		Alert:new("Used an ATK boost",'inv')
		gamestate = 'alert'
	else
		Alert:new("Not enough ATK boost",'inv')
		gamestate = 'alert'
	end
end

function useDefBoost()
	if item[3] > 0 then
		Def = Def + 1
		item[3] = item[3] - 1
		Alert:new("Used a DEF boost",'inv')
		gamestate = 'alert'
	else
		Alert:new("Not enough Def boost",'inv')
		gamestate = 'alert'
	end
end

function rob(n,r,name,chance,expr,arrest) 
	-- n: hurt and atk lvl , r: rep and cash
	expr = expr or 50
	chance = chance or 20
	arrest = arrest or false
	if Atk > n or Chance(chance) then
		if name == 'Ashley' then
			if Ashley_Hp - 10 <= 0 then
				CrimeUpdate(3)
				raiseKills()
				Alert:new("The Ashley the Employee died",'stat')
				Ashley_Hp = Ashley_Hp - 10
				gamestate = 'alert'
			elseif Ashley_Hp - 10  < 70 then
				raiseCash(r)
				lowerRep(2*r)
				Exp:add(expr)
				CrimeUpdate(2)
				Ashley_Hp = Ashley_Hp - 10
				Alert:new("Robbed "..name.."...you monster",'stat')
				gamestate = 'alert'
			else
				raiseCash(r)
				lowerRep(r)
				Exp:add(expr)
				CrimeUpdate(2)
				Ashley_Hp = Ashley_Hp - 10
				Alert:new("Robbed "..name,'stat')
				gamestate = 'alert'
			end
		else
			raiseCash(r)
			lowerRep(r)
			CrimeUpdate(2)
			Exp:add(expr)
			Alert:new("Robbed "..name,'stat')
			gamestate = 'alert'
		end
	else
		if arrest == true then
			lowerRep(r+10)
			Hurt(n)
			arrest()
		else
			lowerRep(r+10)
			Hurt(n)
			CrimeUpdate(1)
			Alert:new("Falied to Rob\n"..name.." lmao",'stat')
			gamestate = 'alert'
		end
	end
end

function buyMed(loc,price)
	loc = loc or 'shop'
	price = price or 25
	if 0 <= (store_stock_med - 1) then
		if Cash > (price - 1) then
			lowerCash(price)
			item[0] = item[0] + 1
			store_stock_med = store_stock_med - 1
			Alert:new("Bought a medkit",loc)
			gamestate = 'alert'
		else
			Alert:new("Not enough cash",loc)
			gamestate = 'alert'
		end
	else
		Alert:new("Medkits are out of stock",loc)
		gamestate = 'alert'
	end
end

function buyPotion(loc,price)
	loc = loc or 'shop'
	price = price or 50
	if 0 <= (store_stock_Posion - 1) then
		if Cash > (price - 1) then
			lowerCash(50)
			item[1] = item[1] + 1
			store_stock_Posion = store_stock_Posion - 1
			Alert:new("Bought a potion",loc)
			gamestate = 'alert'
		else
			Alert:new("Not enough cash",loc)
			gamestate = 'alert'
		end
	else
		Alert:new("Potions are out of stock",loc)
		gamestate = 'alert'
	end
end

function buyAb(loc,price)
	loc = loc or 'shop'
	price = price or 20
	if 0 <= (store_stock_Atk - 1) then
		if Cash > (price - 1) then
			lowerCash(20)
			item[2] = item[2] + 1
			store_stock_Atk = store_stock_Atk - 1
			Alert:new("Bought an atk boost",loc)
			gamestate = 'alert'
		else
			Alert:new("Not enough cash",loc)
			gamestate = 'alert'
		end
	else
		Alert:new("atk boost are out of stock",loc)
		gamestate = 'alert'
	end
end

function buyDb(loc,price)
	loc = loc or 'shop'
	price = price or 20
	if 0 <= (store_stock_Def - 1) then
		if Cash > (price - 1) then
			lowerCash(20)
			item[3] = item[3] + 1
			store_stock_Def = store_stock_Def - 1
			Alert:new("Bought a def boost",loc)
			gamestate = 'alert'
		else
			Alert:new("Not enough cash",loc)
			gamestate = 'alert'
		end
	else
		Alert:new("def boost are out of stock",loc)
		gamestate = 'alert'
	end
end
