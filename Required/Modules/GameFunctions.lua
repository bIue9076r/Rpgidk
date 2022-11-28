--Game functions
--Put any functions that have no dependencies here

--Player stats
function Name_Stat()
	--Displays the Player's Name
	love.graphics.print({{0,0,0},"Name:"..name},60,290)
end

function Hp_Stat()
	--Displays the Player's Hp
	if not Infected then
		love.graphics.print({Hp_color,"Hp:"..Hp.."/"..Max_Hp},60,310)
	else
		love.graphics.print({Hp_color,"Hp:"..Hp.."/"..Max_Hp.."\tInfected"},60,310)
	end
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
	love.graphics.print({Def_color,"Def:"..Def},60,410)
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
	love.graphics.print({{0,0,0},"Exp:"..Exp:exportCount().."/"..(Exp:exportLevel()*120)},60,350)
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

function r_Med_Stat()
	--Displays the Player's total Medkits + Rarity
	_mdt = _mdt or 0
	msc = {love.math.colorFromBytes(114,159,207)}
	if _mdt >= 0 and _mdt <= (1 * 150) then
		love.graphics.print({msc,tsNitem[0].."Medkits:"..sitem[0][0]},60,290)
	elseif _mdt > (1 * 150) and _mdt <= (2 * 150) then
		love.graphics.print({msc,tsNitem[1].."Medkits:"..sitem[0][1]},60,290)
	elseif _mdt > (2 * 150) and _mdt <= (3 * 150) then
		love.graphics.print({msc,tsNitem[2].."Medkits:"..sitem[0][2]},60,290)
	elseif _mdt > (3 * 150) and _mdt <= (4 * 150) then
		love.graphics.print({msc,tsNitem[3].."Medkits:"..sitem[0][3]},60,290)
	else
		love.graphics.print({msc,tsNitem[3].."Medkits:"..sitem[0][3]},60,290)
		_mdt = 0
	end
	
	_mdt = _mdt + 1;
end

function r_Pois_Stat()
	--Displays the Player's total Poison Potions + Rarity
	_pdt = _pdt or 0
	psc = {love.math.colorFromBytes(138,138,136,255)}
	if _pdt >= 0 and _pdt <= (1 * 150) then
		love.graphics.print({psc,tsNitem[0].."Poison Potions:"..sitem[1][0]},60,310)
	elseif _pdt > (1 * 150) and _pdt <= (2 * 150) then
		love.graphics.print({psc,tsNitem[1].."Poison Potions:"..sitem[1][1]},60,310)
	elseif _pdt > (2 * 150) and _pdt <= (3 * 150) then
		love.graphics.print({psc,tsNitem[2].."Poison Potions:"..sitem[1][2]},60,310)
	elseif _pdt > (3 * 150) and _pdt <= (4 * 150) then
		love.graphics.print({psc,tsNitem[3].."Poison Potions:"..sitem[1][3]},60,310)
	else
		love.graphics.print({psc,tsNitem[3].."Poison Potions:"..sitem[1][3]},60,310)
		_pdt = 0
	end
	
	_pdt = _pdt + 1;
end

function r_Ab_Stat()
	--Displays the Player's total Atk boosts + Rarity
	_adt = _adt or 0
	if _adt >= 0 and _adt <= (1 * 150) then
		love.graphics.print({Atk_color,tsNitem[0].."Atk:"..sitem[2][0]},60,330)
	elseif _adt > (1 * 150) and _adt <= (2 * 150) then
		love.graphics.print({Atk_color,tsNitem[1].."Atk:"..sitem[2][1]},60,330)
	elseif _adt > (2 * 150) and _adt <= (3 * 150) then
		love.graphics.print({Atk_color,tsNitem[2].."Atk:"..sitem[2][2]},60,330)
	elseif _adt > (3 * 150) and _adt <= (4 * 150) then
		love.graphics.print({Atk_color,tsNitem[3].."Atk:"..sitem[2][3]},60,330)
	else
		love.graphics.print({Atk_color,tsNitem[3].."Atk:"..sitem[2][3]},60,330)
		_adt = 0
	end
	
	_adt = _adt + 1;
end

function r_Db_Stat()
	--Displays the Player's total Def boosts + Rarity
	_ddt = _ddt or 0
	if _ddt >= 0 and _ddt <= (1 * 150) then
		love.graphics.print({Def_color,tsNitem[0].."Def:"..sitem[3][0]},60,350)
	elseif _ddt > (1 * 150) and _ddt <= (2 * 150) then
		love.graphics.print({Def_color,tsNitem[1].."Def:"..sitem[3][1]},60,350)
	elseif _ddt > (2 * 150) and _ddt <= (3 * 150) then
		love.graphics.print({Def_color,tsNitem[2].."Def:"..sitem[3][2]},60,350)
	elseif _ddt > (3 * 150) and _ddt <= (4 * 150) then
		love.graphics.print({Def_color,tsNitem[3].."Def:"..sitem[3][3]},60,350)
	else
		love.graphics.print({Def_color,tsNitem[3].."Def:"..sitem[3][3]},60,350)
		_ddt = 0
	end
	
	_ddt = _ddt + 1;
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
	r_Med_Stat()
	r_Pois_Stat()
	r_Ab_Stat()
	r_Db_Stat()
end

function displayPlayerInv_stuff()
	--pcall(function()
	Inv_page = Inv_page or 1
	love.graphics.draw(image:getImage('Inv'),0,0)
	--collumn 1
	--13 max Chars
	Stuff = Item:display(Inv_page)
	if(Stuff[1])then
		love.graphics.print({{0,0,0},Stuff[1].name},95,290)
		love.graphics.draw(image:getImage(Stuff[1].icon),60,290)
	end
	if(Stuff[2])then
		love.graphics.print({{0,0,0},Stuff[2].name},95,290+20)
		love.graphics.draw(image:getImage(Stuff[2].icon),60,290+20)
	end
	if(Stuff[3])then
		love.graphics.print({{0,0,0},Stuff[3].name},95,290+(20*2))
		love.graphics.draw(image:getImage(Stuff[3].icon),60,290+(20*2))
	end
	if(Stuff[4])then
		love.graphics.print({{0,0,0},Stuff[4].name},95,290+(20*3))
		love.graphics.draw(image:getImage(Stuff[4].icon),60,290+(20*3))
	end
	if(Stuff[5])then
		love.graphics.print({{0,0,0},Stuff[5].name},95,290+(20*4))
		love.graphics.draw(image:getImage(Stuff[5].icon),60,290+(20*4))
	end
	if(Stuff[6])then
		love.graphics.print({{0,0,0},Stuff[6].name},95,290+(20*5))
		love.graphics.draw(image:getImage(Stuff[6].icon),60,290+(20*5))
	end
	if(Stuff[7])then
		love.graphics.print({{0,0,0},Stuff[7].name},95,290+(20*6))
		love.graphics.draw(image:getImage(Stuff[7].icon),60,290+(20*6))
	end
	if(Stuff[8])then
		love.graphics.print({{0,0,0},Stuff[8].name},95,290+(20*7))
		love.graphics.draw(image:getImage(Stuff[8].icon),60,290+(20*7))
	end
	--page
	love.graphics.print({{0,0,0},"Current Page:"..Inv_page},(60+70)*2,290+(20*6))
	--end)
end

function displayPlayerNote_stuff()
	--pcall(function()
	Note_Inv_page = Note_Inv_page or 1
	love.graphics.draw(image:getImage('Inv'),0,0)
	--collumn 1
	--13 max Chars
	Stuff = Note:display(Note_Inv_page)
	if(Stuff[1])then
		love.graphics.print({{0,0,0},Stuff[1].name},95,290)
		love.graphics.draw(image:getImage(Stuff[1].icon),60,290)
	end
	if(Stuff[2])then
		love.graphics.print({{0,0,0},Stuff[2].name},95,290+20)
		love.graphics.draw(image:getImage(Stuff[2].icon),60,290+20)
	end
	if(Stuff[3])then
		love.graphics.print({{0,0,0},Stuff[3].name},95,290+(20*2))
		love.graphics.draw(image:getImage(Stuff[3].icon),60,290+(20*2))
	end
	if(Stuff[4])then
		love.graphics.print({{0,0,0},Stuff[4].name},95,290+(20*3))
		love.graphics.draw(image:getImage(Stuff[4].icon),60,290+(20*3))
	end
	if(Stuff[5])then
		love.graphics.print({{0,0,0},Stuff[5].name},95,290+(20*4))
		love.graphics.draw(image:getImage(Stuff[5].icon),60,290+(20*4))
	end
	if(Stuff[6])then
		love.graphics.print({{0,0,0},Stuff[6].name},95,290+(20*5))
		love.graphics.draw(image:getImage(Stuff[6].icon),60,290+(20*5))
	end
	if(Stuff[7])then
		love.graphics.print({{0,0,0},Stuff[7].name},95,290+(20*6))
		love.graphics.draw(image:getImage(Stuff[7].icon),60,290+(20*6))
	end
	if(Stuff[8])then
		love.graphics.print({{0,0,0},Stuff[8].name},95,290+(20*7))
		love.graphics.draw(image:getImage(Stuff[8].icon),60,290+(20*7))
	end
	--page
	love.graphics.print({{0,0,0},"Current Page:"..Note_Inv_page},(60+70)*2,290+(20*6))
	--end)
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
		love.graphics.print({{0,0,0},"Cactus $25"},95,290)
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
		love.graphics.print({{0,0,0},"Water $0"},95,290+(20*2))
		love.graphics.draw(image:getImage("placeholderIcon"),60,290+(20*2))
	elseif loc == 'ice' then
		love.graphics.print({{0,0,0},"Cod $10"},95,290)
		love.graphics.draw(image:getImage("placeholderIcon"),60,290)
		love.graphics.print({{0,0,0},"Salmon $10"},95,290+20)
		love.graphics.draw(image:getImage("placeholderIcon"),60,290+20)
		love.graphics.print({{0,0,0},"Hot Coco $5"},95,290+(20*2))
		love.graphics.draw(image:getImage("placeholderIcon"),60,290+(20*2))
	elseif loc == 'wasteland' then
		love.graphics.print({{0,0,0},"Rosted Scorpion $20"},95,290)
		love.graphics.draw(image:getImage("placeholderIcon"),60,290)
		love.graphics.print({{0,0,0},"Wild Game $5"},95,290+20)
		love.graphics.draw(image:getImage("placeholderIcon"),60,290+20)
		love.graphics.print({{0,0,0},"Waste $30"},95,290+(20*2))
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
	if(Infected == true) then
		death_cause = 'died from an infection'
		if(math.random(1,500) == 1) then
			Hp = Hp - math.ceil(0.05 * Hp)
		end
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
	if Def > 250 then
		Def = 250
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
		r_store_stock_med={[0]=math.random(1,100),
			[1]=math.random(1,100),
			[2]=math.random(1,100),
			[3]=math.random(1,100)
		}
		r_store_stock_Posion={[0]=math.random(1,100),
			[1]=math.random(1,100),
			[2]=math.random(1,100),
			[3]=math.random(1,100)
		}
		r_store_stock_Atk={[0]=math.random(1,100),
			[1]=math.random(1,100),
			[2]=math.random(1,100),
			[3]=math.random(1,100)
		}
		r_store_stock_Def={[0]=math.random(1,100),
			[1]=math.random(1,100),
			[2]=math.random(1,100),
			[3]=math.random(1,100)
		}
		restock = 1000
	end
end

function CrimeUpdate(lvl)
	--10: 300 = 5min
	--5: 150 = 2min + min/half 
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
	--Dam= n-(n*Def/200) --max Def: 199
	--Testing
	Dam = n - math.ceil((log2(Def + (1 * (n^2))) * (Def)) / (20)) --max Def: inf
	if (Dam > Hp) then Dam = Hp end
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

function useItem(name,rarity)
	if (rarity >= 0 and rarity <= 3) then
		if name == Nitem[0] then
			if sitem[0][rarity] > 0 then
				Hp = Hp + (20 + (rarity * 20)) -- Max = Hp + 50
				sitem[0][rarity] = sitem[0][rarity] - 1
				Alert:new("Used a "..sNitem[rarity].."medkit",'inv_item')
				gamestate = 'alert'
			else
				Alert:new("Not enough "..sNitem[rarity].."medkits",'inv_item')
				gamestate = 'alert'
			end
		elseif name == Nitem[1] then
			if sitem[1][rarity] > 0 then
				death_cause = "you took too much damage"
				Hp = Hp - (30 + (rarity * 30)) -- Max = Hp - 120 
				Atk = Atk + 10 + (rarity * 10) -- Max = Atk + 40
				sitem[1][rarity] = sitem[1][rarity] - 1
				Alert:new("Used a "..sNitem[rarity].."potion",'inv_item')
				gamestate = 'alert'
			else
				Alert:new("Not enough "..sNitem[rarity].."potion",'inv_item')
				gamestate = 'alert'
			end
		elseif name == Nitem[2] then
			if sitem[2][rarity] > 0 then
				Atk = Atk + 3 + (rarity * 9) -- Max = Atk + 30
				sitem[2][rarity] = sitem[2][rarity] - 1
				Alert:new("Used a "..sNitem[rarity].."ATK boost",'inv_item')
				gamestate = 'alert'
			else
				Alert:new("Not enough "..sNitem[rarity].."Atk boost",'inv_item')
				gamestate = 'alert'
			end	
		elseif name == Nitem[3] then
			if sitem[3][rarity] > 0 then
				Def = Def + 1 + (rarity * 1) -- Max = Def + 4
				sitem[3][rarity] = sitem[3][rarity] - 1
				Alert:new("Used a "..sNitem[rarity].."DEF boost",'inv_item')
				gamestate = 'alert'
			else
				Alert:new("Not enough "..sNitem[rarity].."Def boost",'inv_item')
				gamestate = 'alert'
			end
		end
	end
end

function rob(n,r,name,chance,expr,arst) 
	-- n: hurt and atk lvl , r: rep and cash
	expr = expr or 50
	chance = chance or 20
	arst = arst or false
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
		if arst == true then
			lowerRep(r+10)
			Hurt(n)
			arrest()
		else
			lowerRep(r+10)
			Hurt(n)
			CrimeUpdate(1)
			Alert:new("Falied to Rob\n\n"..name.." lmao",'stat')
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
			lowerCash(price)
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
			lowerCash(price)
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
			lowerCash(price)
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

function buyItem(name,rarity,loc,price)
	if (rarity >= 0 and rarity <= 3) then
		if name == Nitem[0] then
			loc = loc or 'shop'
			price = price or 30
			if 0 <= (r_store_stock_med[rarity] - 1) then
				if Cash > (price - 1) then
					lowerCash(price)
					sitem[0][rarity] = sitem[0][rarity] + 1
					r_store_stock_med[rarity] = r_store_stock_med[rarity] - 1
					Alert:new("Bought a "..sNitem[rarity].."medkit",loc)
					gamestate = 'alert'
				else
					Alert:new("Not enough cash",loc)
					gamestate = 'alert'
				end
			else
				Alert:new(sNitem[rarity].."Medkits are out of stock",loc)
				gamestate = 'alert'
			end
		elseif name == Nitem[1] then
			loc = loc or 'shop'
			price = price or 65
			if 0 <= (r_store_stock_Posion[rarity] - 1) then
				if Cash > (price - 1) then
					lowerCash(price)
					sitem[1][rarity] = sitem[1][rarity] + 1
					r_store_stock_Posion[rarity] = r_store_stock_Posion[rarity] - 1
					Alert:new("Bought a "..sNitem[rarity].."potion",loc)
					gamestate = 'alert'
				else
					Alert:new("Not enough cash",loc)
					gamestate = 'alert'
				end
			else
				Alert:new(sNitem[rarity].."Potions are out of stock",loc)
				gamestate = 'alert'
			end
		elseif name == Nitem[2] then
			loc = loc or 'shop'
			price = price or 45
			if 0 <= (r_store_stock_Atk[rarity] - 1) then
				if Cash > (price - 1) then
					lowerCash(price)
					sitem[2][rarity] = sitem[2][rarity] + 1
					r_store_stock_Atk[rarity] = r_store_stock_Atk[rarity] - 1
					Alert:new("Bought a "..sNitem[rarity].."atk boost",loc)
					gamestate = 'alert'
				else
					Alert:new("Not enough cash",loc)
					gamestate = 'alert'
				end
			else
				Alert:new(sNitem[rarity].."atk boost are out of stock",loc)
				gamestate = 'alert'
			end
		elseif name == Nitem[3] then
			loc = loc or 'shop'
			price = price or 105
			if 0 <= (r_store_stock_Def[rarity] - 1) then
				if Cash > (price - 1) then
					lowerCash(price)
					sitem[3][rarity] = sitem[3][rarity] + 1
					r_store_stock_Def[rarity] = r_store_stock_Def[rarity] - 1
					Alert:new("Bought a "..sNitem[rarity].."def boost",loc)
					gamestate = 'alert'
				else
					Alert:new("Not enough cash",loc)
					gamestate = 'alert'
				end
			else
				Alert:new(sNitem[rarity].."def boost are out of stock",loc)
				gamestate = 'alert'
			end
		end
	end
end
