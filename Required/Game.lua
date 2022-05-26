math.randomseed(os.time())
require("/Required/Modules/GameFunctions")
require("/Textures/LoadTexutres")
require("/Textures/LoadFonts")
require("/Audio/LoadAudio")
require("/Required/LoadModules")
require("/Required/Dialoge")
--system things
gamestate = 'start'
pev_gamestate = 'start'
gamesound = 'nil'
gamesfx = 'Alert'
sfxSource = sound:getSound(gamesfx)
soundSource = sound:getSound(gamesound)
effect = sound:getSound('effect')
effect2 = sound:getSound('BuyinStore')

--Base stats
loaded = false
Rep=0
Hp=100
Max_Hp=100
Atk=0
Def=0
Cash=0
Lck=1

RepColor={love.math.colorFromBytes(138,138,136,255)}
-- white (0-40) #EEEEEC 
-- red (-0) #EF2929 {239,41,41,255}
-- yellow (41-99) #FCE94F {232,203,79,255}
-- green (100+) #00BA13
Hp_color={love.math.colorFromBytes(114,159,207)}
-- blue (100-80) #729FCF - 114,159,207
-- green (79-50) #00BA13 - 0,186,19
-- yellow (49-30) #FCE94F {232,203,79,255}
-- red (-29) #EF2929 {239,41,41,255}
Atk_color={love.math.colorFromBytes(242,0,203,255)}-- pink #F200CB - constant
Def_color={love.math.colorFromBytes(0,181,189,255)}-- cyan #00B5BD - constant
Cash_color={love.math.colorFromBytes(0,186,19,255)}-- green #00BA13 - constant

death_cause="what the hell \ndid you even die from"

--Trading variables
item={}
Nitem={}
item[0]=0
Nitem[0]="Medkits"
item[1]=0
Nitem[1]="Poison potions"
item[2]=0
Nitem[2]="Attack boost"
item[3]=0
Nitem[3]="Defence boost"
store_stock_med=math.random(1,100)
store_stock_Posion=math.random(1,100)
store_stock_Atk=math.random(1,100)
store_stock_Def=math.random(1,100)
restock = 1000

_Medkits=0
_Posion=0
_Atkboost=0
_Defboost=0

--Game variables
name=""
debugmode=false
snitch=false
worldN = D.SetN()
worldCmd = nil
mapimg = 'MainMap'
selected = false
Subselected = false
TimeSinceLastCrime = 0
Kills = 0

--Quests
Quest:new('ashley')

function save()
	--pcall(function()
	local itemTable = Item:get()
	local items = ""
	local noteTable = Note:get()
	local notes = ""
	local d = ""
	for _,i in ipairs(itemTable) do
		items= items.."Item:new('"..i.name..
		"','"..i.icon.."',"..i.int..","..i.arg..") ; "
	end
	for _,i in ipairs(noteTable) do
		notes= notes.."Note:new('"..i.name.."',"..i.int..") ; "
	end
	for _,i in ipairs(D.city) do
		d = d.."D.city[".._.."].Hp="..i.Hp.."; "
	end
	for _,i in ipairs(D.desert) do
		d = d.."D.desert[".._.."].Hp="..i.Hp.."; "
	end
	for _,i in ipairs(D.icespikes) do
		d = d.."D.icespikes[".._.."].Hp="..i.Hp.."; "
	end
	for _,i in ipairs(D.swamp) do
		d = d.."D.swamp[".._.."].Hp="..i.Hp.."; "
	end
	for _,i in ipairs(D.wasteland) do
		d = d.."D.wasteland[".._.."].Hp="..i.Hp.."; "
	end
	--Sub
	for _,i in ipairs(D.capitalHall) do
		d = d.."D.capitalHall[".._.."].Hp="..i.Hp.."; "
	end
	for _,i in ipairs(D.libary) do
		d = d.."D.libary[".._.."].Hp="..i.Hp.."; "
	end
	for _,i in ipairs(D.desertTown) do
		d = d.."D.desertTown[".._.."].Hp="..i.Hp.."; "
	end
	for _,i in ipairs(D.undergroundMarket) do
		d = d.."D.undergroundMarket[".._.."].Hp="..i.Hp.."; "
	end
	for _,i in ipairs(D.seaDock) do
		d = d.."D.seaDock[".._.."].Hp="..i.Hp.."; "
	end
	for _,i in ipairs(D.desertTemple) do
		d = d.."D.desertTemple[".._.."].Hp="..i.Hp.."; "
	end
	for _,i in ipairs(D.desertMine) do
		d = d.."D.desertMine[".._.."].Hp="..i.Hp.."; "
	end
	for _,i in ipairs(D.bigGreenLake) do
		d = d.."D.bigGreenLake[".._.."].Hp="..i.Hp.."; "
	end
	for _,i in ipairs(D.iceCave) do
		d = d.."D.iceCave[".._.."].Hp="..i.Hp.."; "
	end
	for _,i in ipairs(D.iglooTown) do
		d = d.."D.iglooTown[".._.."].Hp="..i.Hp.."; "
	end
	for _,i in ipairs(D.reactor) do
		d = d.."D.reactor[".._.."].Hp="..i.Hp.."; "
	end
	for _,i in ipairs(D.destroyedTown) do
		d = d.."D.destroyedTown[".._.."].Hp="..i.Hp.."; "
	end
	for _,i in ipairs(D.criminalBase) do
		d = d.."D.criminalBase[".._.."].Hp="..i.Hp.."; "
	end
	love.filesystem.createDirectory("/Save/")
	love.filesystem.write("/Save/.SaveFile",'item={}\nHp='..Hp..'\nRep='..Rep..'\nAtk='
		..Atk..'\nDef='..Def..'\nCash='..Cash..'\nLck='..Lck.."\nitem[0]="..item[0].."\nitem[1]="
		..item[1].."\nitem[2]="..item[2].."\nitem[3]="..item[3].."\n__CityEntryNote="..__CityEntryNote
		.."\n__DesertEntryNote="..__DesertEntryNote.."\n__IceEntryNote="..__IceEntryNote
		.."\n__SwampEntryNote="..__SwampEntryNote.."\n__WasteEntryNote="..__WasteEntryNote
		.."\n__CapitalHallEntryNote="..__CapitalHallEntryNote.."\n__LibaryEntryNote="..__LibaryEntryNote
		.."\n__UndergroundMarketEntryNote="..__UndergroundMarketEntryNote
		.."\n__DesertTownEntryNote="..__DesertTownEntryNote.."\n__DesertMineEntryNote="..__DesertMineEntryNote
		.."\n__DesertTempleEntryNote="..__DesertTempleEntryNote.."\n__SeaDockEntryNote="..__SeaDockEntryNote
		.."\n__BigGreenLakeEntryNote="..__BigGreenLakeEntryNote.."\n__IceCaveEntryNote="..__IceCaveEntryNote
		.."\n__IglooTownEntryNote="..__IglooTownEntryNote.."\n__ReactorEntryNote="..__ReactorEntryNote
		.."\n__DestroyedTownEntryNote="..__DestroyedTownEntryNote.."\n__CriminalBaseEntryNote="..__CriminalBaseEntryNote
		..'\nTimeSinceLastCrime='..TimeSinceLastCrime..'\nKills='..Kills..'\nname="'
		..name..'"\nQuest:set("ashley",'..Quest:Return("ashley")..')'
		..'\nD.location="'..D.location..'"\nAshley_Hp='..Ashley_Hp..'\nSally_Hp='
		..Sally_Hp..'\nGeorge_Hp='..George_Hp
		..'\nWillson_Hp='..Willson_Hp..'\nPenelope_Hp='..Penelope_Hp
		..'\nshopimg="'..shopimg..'"\ndebugmode='..tostring(debugmode)
		..'\nExp:HardOverride('..Exp:exportCount()..','
		..Exp:exportLevel()..')\n'..items..'\n'
		..notes..'\n'..d..'\nreturn 0')
	--end)
end

--love system functions
function menu_draw()
	--pcall(function()
	love.graphics.draw(image:getImage('MainMap'),0,0)
	love.graphics.print({{0,0,0},"Hi"},20,100)
	love.graphics.print({{0,0,0},"Press Enter to Begin"},25,120)
	--end)
end

function name_draw()
	--pcall(function()
	love.graphics.draw(image:getImage('MainMap'),0,0)
	love.graphics.print({{0,0,0},"Current Name: "..name},20,100)
	love.graphics.print({{0,0,0},"Press Enter to confirm"},25,120)
	--end)
end

function world_draw()
	--pcall(function()
	love.graphics.draw(image:getImage(D.location),0,0)
	love.graphics.draw(image:getImage('message'),0,0)
	worldCmd.draw()
	--end)
end

function stat_draw()
	--pcall(function()
	love.graphics.draw(image:getImage(D.location),0,0)
	love.graphics.draw(image:getImage('Stats'),0,0)
	displayPlayerStats()
	love.graphics.print({{0,0,0},"O = Options"},200,410)
	love.graphics.print({{0,0,0},"L = Leave"},200,430)
	--end)
end

function options_draw()
	love.graphics.draw(image:getImage(D.location),0,0)
	love.graphics.draw(image:getImage('Stats'),0,0)
	--200,310
	love.graphics.print({{0,0,0},"Options:"},60,310)
	--gameplay
	love.graphics.print({{0,0,0},"I = Inventory"},60,330)
	love.graphics.print({{0,0,0},"B = Buyin store"},60,350)
	love.graphics.print({{0,0,0},"M = Map"},60,370)
	love.graphics.print({{0,0,0},"N = Notes"},60,390)
	love.graphics.print({{0,0,0},"L = Leave"},60,430)
	--settings
	love.graphics.print({{0,0,0},"S = Save"},270,330)
	love.graphics.print({{0,0,0},"C = Config"},270,350)
	love.graphics.print({{0,0,0},"Q = Quit"},270,370)
end

function config_draw()
	--pcall(function()
	love.graphics.draw(image:getImage('config'),0,0)
	love.graphics.print({{0,0,0},"Debugmode:"..tostring(debugmode)},60,290)
	love.graphics.print({{0,0,0},"esc = leave"},280,430)
	--end)
end

function inv_draw()
	--pcall(function()
	love.graphics.draw(image:getImage(D.location),0,0)
	love.graphics.draw(image:getImage('Inv'),0,0)
	displayPlayerInv()
	love.graphics.print({{0,0,0},"Options:"},200,330)
	love.graphics.print({{0,0,0},"M = Medkits"},200,350)
	love.graphics.print({{0,0,0},"P = Posion Potion"},200,370)
	love.graphics.print({{0,0,0},"A = Attack boost"},200,390)
	love.graphics.print({{0,0,0},"D = Defence boost"},200,410)
	love.graphics.print({{0,0,0},"I = Collectors Inventory"},160,430)
	--end)
end

function inv_draw_stuff()
	--pcall(function()
	love.graphics.draw(image:getImage(D.location),0,0)
	love.graphics.draw(image:getImage('Inv'),0,0)
	displayPlayerInv_stuff()
	love.graphics.print({{0,0,0},"Options:"},(60+70)*2,330)
	love.graphics.print({{0,0,0},"L = Leave"},(60+70)*2,350)
	love.graphics.print({{0,0,0},"S = Select"},(60+70)*2,370)
	love.graphics.print({{0,0,0},"< a - d >"},(60+80)*2,290+(20*7))
	--end)
end

function inv_draw_stuff_select()
	--pcall(function()
	Inv_select = Inv_select or 1
	love.graphics.draw(image:getImage(D.location),0,0)
	love.graphics.draw(image:getImage('Inv'),0,0)
	displayPlayerInv_stuff()
	love.graphics.print({{0,0,0},"Options:"},(60+70)*2,330)
	love.graphics.print({{0,0,0},"W = Up"},(60+70)*2,350)
	love.graphics.print({{0,0,0},"S = Down"},(60+70)*2,370)
	love.graphics.print({{0,0,0},"Return = Select"},(60+70)*2,390)
	love.graphics.draw(image:getImage('Selected'),60,290+(20*(Inv_select-1)))
	--end)
end

function note_draw_stuff()
	--pcall(function()
	love.graphics.draw(image:getImage(D.location),0,0)
	love.graphics.draw(image:getImage('Inv'),0,0)
	displayPlayerNote_stuff()
	love.graphics.print({{0,0,0},"Options:"},(60+70)*2,330)
	love.graphics.print({{0,0,0},"L = Leave"},(60+70)*2,350)
	love.graphics.print({{0,0,0},"S = Select"},(60+70)*2,370)
	love.graphics.print({{0,0,0},"< a - d >"},(60+80)*2,290+(20*7))
	--end)
end

function note_draw_stuff_select()
	--pcall(function()
	Note_Inv_page = Note_Inv_page or 1
	Note_Inv_select = Note_Inv_select or 1
	love.graphics.draw(image:getImage(D.location),0,0)
	love.graphics.draw(image:getImage('Inv'),0,0)
	displayPlayerNote_stuff()
	love.graphics.print({{0,0,0},"Options:"},(60+70)*2,330)
	love.graphics.print({{0,0,0},"W = Up"},(60+70)*2,350)
	love.graphics.print({{0,0,0},"S = Down"},(60+70)*2,370)
	love.graphics.print({{0,0,0},"Return = Select"},(60+70)*2,390)
	love.graphics.draw(image:getImage('Selected'),60,290+(20*(Note_Inv_select-1)))
	--end)
end

function note_draw()
	local note = Note.count+((Note.page-1)*8)
	Note.Notes[note].use()
end

function food_menu_draw()
	--pcall(function()
	Food_select = Food_select or 1
	love.graphics.draw(image:getImage(D.location),0,0)
	love.graphics.draw(image:getImage('message'),0,0)
	displayFoodMenu(D.location)
	love.graphics.print({{0,0,0},"Options:"},(60+70)*2,330)
	love.graphics.print({{0,0,0},"W = Up"},(60+70)*2,350)
	love.graphics.print({{0,0,0},"S = Down"},(60+70)*2,370)
	love.graphics.print({{0,0,0},"Return = Select"},(60+70)*2,390)
	love.graphics.draw(image:getImage('Selected'),60,290+(20*(Food_select-1)))
	--end)
end

function alert_draw()
	--pcall(function()
	love.audio.pause(effect)
	love.audio.play(sfxSource)
	msg,img = Alert:Return()
	love.graphics.draw(image:getImage(D.location),0,0)
	love.graphics.draw(image:getImage('Alert'),0,0)
	love.graphics.draw(img,400,20)
	love.graphics.print({{0,0,0},msg},60,75)
	--end)
end

function quit_draw()
	--pcall(function()
	love.graphics.draw(image:getImage('MainMap'))
	love.graphics.draw(image:getImage('Alert'),0,0)
	love.graphics.print({{0,0,0},"Save? Y or N"},60,75)
	if Q_option == true then
		love.graphics.print({{0,0,0},"Saved!!!"},60,95)
		love.timer.sleep(5)
		love.event.quit()
	end
	--end)
end

function gameover_draw()
	--pcall(function()
	love.audio.play(sound:getSound('GameEnd'))
	love.graphics.draw(image:getImage('gameover'),0,0)
	--end)
end

function map_draw()
	--pcall(function()
	love.graphics.draw(image:getImage(mapimg),0,0)
	love.graphics.draw(image:getImage('MapSelect_Locations'),0,0)
	if selected == true then
		love.graphics.draw(image:getImage('Alert'),0,0)
		love.graphics.print({{0,0,0},"Are You sure?"},60,75)
		love.graphics.print({{0,0,0},"Enter or L"},60,95)
	end
	--end)
end

function arrest_draw()
	--pcall(function()
	love.graphics.draw(image:getImage('Jail'),0,0)
	love.graphics.draw(image:getImage('Alert'),0,0)
	love.graphics.print({{0,0,0},"you have been arrested"},60,75)
	--end)
end

function menu_keypressed(key)
	--pcall(function()
	if key == "return" then
		gamestate = 'name'
	end
	--end)
end

function name_keypressed(key)
	--pcall(function()
	shiftkey = shiftkey or false
	legalChars = {
		['a']='a',['b']='b',['c']='c',['d']='d',['e']='e',
		['f']='f',['g']='g',['h']='h',['i']='i',['j']='j',
		['k']='k',['l']='l',['m']='m',['n']='n',['o']='o',
		['p']='p',['q']='q',['r']='r',['s']='s',['t']='t',
		['u']='u',['v']='v',['w']='w',['x']='x',['y']='y',
		['z']='z',['1']='1',['2']='2',['3']='3',['4']='4',
		['5']='5',['6']='6',['7']='7',['8']='8',['9']='9',
		['0']='0',[';']=';',["'"]="'",[',']=',',['.']='.',
		['/']='/',['`']='`',['[']='[',[']']=']',['\\']='\\',
		['space']=' ',['tab']='\t',['return']='return',
		['lshift']='not nil',['rshift']='not nil',
		['backspace']='not nil'
	}
	shiftLegalChars = {
		['a']='A',['b']='B',['c']='C',['d']='D',['e']='E',
		['f']='F',['g']='G',['h']='H',['i']='I',['j']='J',
		['k']='K',['l']='L',['m']='M',['n']='N',['o']='O',
		['p']='P',['q']='Q',['r']='R',['s']='S',['t']='T',
		['u']='U',['v']='V',['w']='W',['x']='X',['y']='Y',
		['z']='Z',['1']='!',['2']='@',['3']='#',['4']='$',
		['5']='%',['6']='^',['7']='&',['8']='*',['9']='(',
		['0']=')',[';']=':',["'"]='"',[',']='<',['.']='>',
		['/']='?',['`']='~',['[']='{',[']']='}',['\\']='|',
		['space']=' ',['tab']='\t',['return']='return',
		['lshift']='not nil',['rshift']='not nil',
		['backspace']='not nil'
	}
	if not shiftkey then
		if legalChars[key] ~= nil then
			if key == "backspace" then
				name = name:sub(1,-2)
			elseif key == 'lshift' or key == 'rshift' then
				shiftkey = true
			elseif key == "return" then
				gamestate = 'stat'
			else
				name = name..legalChars[key]
			end
		end
	else
		if shiftLegalChars[key] then
			if key == 'backspace' then
				name = name:sub(1,-2)
			elseif key == 'lshift' or key == 'rshift' then
				shiftkey = false
			elseif key == 'return' then
				gamestate = 'stat'
			else
				name = name..shiftLegalChars[key]
			end
			shiftkey = false
		end	
	end
	--end)
end

function world_keypressed(key)
	--pcall(function()
	worldCmd.keypressed(key)
	if key == 'escape' then
		gamestate = 'stat'
	end
	--end)
end

function stat_keypressed(key)
	--pcall(function()
	if key == "l" then
		gamestate = 'cmd'
	elseif key == "o" then
		gamestate = 'option'
	end
	--end)
end

function option_keypressed(key)
	--pcall(function()
	if key == "l" then
		gamestate = 'stat'
	elseif key == "b" then
		if not Subselected then
			Alert:new("entering the Buyin' store","shop")
		else
			Alert:new("Leave the Current location\nFirst","stat")
		end
		gamestate = 'alert'
	elseif key == "m" then
		gamestate = 'map'
	elseif key == "s" then
		Alert:new("Saved",'stat')
		gamestate = 'alert'
		save()
	elseif key == "i" then
		gamestate = 'inv'
	elseif key == "q" then
		gamestate = 'quit'
	elseif key == "n" then
		gamestate = 'note_stuff'
	elseif key == "c" then
		gamestate = 'config'
	end
	--end)
end

function config_keypressed(key)
	--pcall(function()
	if key == 'escape' then
		gamestate = 'option'
	end
	--end)
end

function inv_keypressed(key)
	--pcall(function()
	if key == "l" then
		gamestate = 'option'
	elseif key == 'i' then
		gamestate = 'inv_stuff'
	elseif key == "m" then
		useMed()
	elseif key == "p" then
		usePotion()
	elseif key == "a" then
		useAtkBoost()
	elseif key == "d" then
		useDefBoost()
	end
	--end)
end

function inv_stuff_keypressed(key)
	--pcall(function()
	if key == "l" then
		gamestate = 'inv'
	elseif key == "a" then
		if (Inv_page - 1) > 0 then
			Inv_page = Inv_page - 1
		end
	elseif key == "d" then
		Inv_page = Inv_page + 1
	elseif key == "s" then
		gamestate = 'inv_stuff_select'
	end
	--end)
end

function inv_stuff_select_keypressed(key)
	--pcall(function()
	if key == "w" or key == "up" then
		if (Inv_select - 1) > 0 then
			Inv_select = Inv_select - 1
		end
	elseif key == "s" or key == "down" then
		if (Inv_select + 1) < 9 then
			Inv_select = Inv_select + 1
		end
	elseif key == "return" then
		Inv_select = 1
		Item:use(Inv_page,Inv_select)
	elseif key == "l" then
		gamestate = 'inv_stuff'
	end
	--end)
end

function note_stuff_keypressed(key)
	--pcall(function()
	Note_Inv_page = Note_Inv_page or 1
	if key == "l" then
		gamestate = 'option'
	elseif key == "a" then
		if (Note_Inv_page - 1) > 0 then
			Note_Inv_page = Note_Inv_page - 1
		end
	elseif key == "d" then
		Note_Inv_page = Note_Inv_page + 1
	elseif key == "s" then
		gamestate = 'note_stuff_select'
	end
	--end)
end

function note_stuff_select_keypressed(key)
	--pcall(function()
	if key == "w" or key == "up" then
		if (Note_Inv_select - 1) > 0 then
			Note_Inv_select = Note_Inv_select - 1
		end
	elseif key == "s" or key == "down" then
		if (Note_Inv_select + 1) < 9 then
			Note_Inv_select = Note_Inv_select + 1
		end
	elseif key == "return" then
		Note_Inv_select = 1
		Note:use(Note_Inv_page,Note_Inv_select)
	elseif key == "l" then
		gamestate = 'note_stuff'
	end
	--end)
end

function note_keypressed(key)
	--pcall(function()
	if key == "return" then
		gamestate = pev_gamestate
	end
	--end)
end

function alert_keypressed(key)
	--pcall(function()
	if key == 'return' then
		sfxSource:seek(0)
		love.audio.pause(sfxSource)
		gamestate = Alert:ReturnNex()
	end
	--end)
end

function map_keypressed(key)
	--pcall(function()
	if selected == false then
		if key == '1' then
			mapimg = 'MapSelect_City'
			selected = true
			worldLoc = 'city'
		elseif key == '2' then
			mapimg = 'MapSelect_Desert'
			selected = true
			worldLoc = 'desert'
		elseif key == '3' then
			mapimg = 'MapSelect_Ice'
			selected = true
			worldLoc = 'ice'
		elseif key == '4' then
			mapimg = 'MapSelect_Swamp'
			selected = true
			worldLoc = 'swamp'
		elseif key == '5' then
			mapimg = 'MapSelect_Waste'
			selected = true
			worldLoc = 'waste'
		elseif key == 'l' then
			gamestate = 'stat'
		end
	else
		if key == 'return' then
			D.SetLoc(worldLoc)
			gamestate = 'stat'
			selected = false
			Subselected = false
			mapimg = 'MainMap'
		elseif key == 'l' then
			selected = false
			mapimg = 'MainMap'
		end
	end
	--end)
end

function gameover_keypressed(key)
	--pcall(function()
	if key == key then
		love.timer.sleep(1)
		love.event.quit()
	end
	--end)
end

function quit_keypressed(key)
	--pcall(function()
	if Q_option == false then
		if key == 'y' then
			save()
			love.timer.sleep(1)
			Q_option = true
		elseif key == 'n' then
			love.timer.sleep(1)
			love.event.quit()
		end
	end
	--end)
end

function arrest_keypressed()
	--pcall(function()
	love.timer.sleep(5)
	Rep = 0
	gamestate = 'stat'
	--end)
end

--Game module
Game = {}

function Game.load()
	--pcall(function()
	Save = love.filesystem.getInfo("/Save/.SaveFile")
	--[[
	--Goodbye Legacy code you will be missed o7
	if Save ~= nil then
		print("load SaveFile?")
		print("yes/no?")
		res = io.read()
		if res == "yes" then
			file = love.filesystem.load("/Save/.SaveFile")
			file()
			loaded = true
			gamestate = 'cmd'
			print("\nStarting up...")
		elseif res == "no" then
			print("\nDelete SaveFile?")
			print("yes/no?")
			res = io.read()
			if res == "yes" then
				love.filesystem.remove("/Save/.SaveFile")
				print("\nStarting up...")
			elseif res == 'no' then
				print("\nStarting up...")
			else
				print("\nStarting up...")
			end
		else
			print("\nStarting up...")
		end
	elseif Save == nil then
		loaded = false
	end
	]]
	Exp:new()
	option1 = false
	Q_option = false
	start_draw = function()
		if Save ~= nil then
			love.graphics.print({{1,1,1},"load SaveFile?"},150,150)
			love.graphics.print({{1,1,1},"Y or N"},150,170)
			if option1 == true then
				love.graphics.print({{1,1,1},"Delete SaveFile?"},150,190)
				love.graphics.print({{1,1,1},"Y or N"},150,210)
			end
		else
			raiseCash(100)
			gamestate = 'menu'
			Note:new("Welcome",1)
		end
	end
	
	start_keypressed = function(key)
		if Save ~= nil then
			if not option1 then
				if key == 'n' then
					option1 = true
				elseif key == 'y' then
					file = love.filesystem.load("/Save/.SaveFile")
					file()
					loaded = true
					gamestate = 'cmd'
				else
					raiseCash(100)
					gamestate = 'menu'
					Note:new("Welcome",1)
				end
			else
				if key == 'n' then
					raiseCash(100)
					gamestate = 'menu'
					Note:new("Welcome",1)
				elseif key == 'y' then
					raiseCash(100)
					love.filesystem.remove("/Save/.SaveFile")
					gamestate = 'menu'
					Note:new("Welcome",1)
				else
					raiseCash(100)
					gamestate = 'menu'
					Note:new("Welcome",1)
				end
			end
		end
	end
	
	love.graphics.setFont(font:getFont('main'))
	--end)
end

function Game.update(dt)
	--pcall(function()
	sfxSource = sound:getSound(gamesfx)
	soundSource = sound:getSound(gamesound)
	check_hp()
	check_Rep()
	Restock(dt)
	LowerCrime(dt)
	if gamestate == 'cmd' then
		worldN = D.SetN()
		Updatecommand(worldN)
		gamestate = 'world'
	end
	function love.keypressed(key, scan_code, is_repeat)
		if gamestate == 'start' then
			start_keypressed(key)
		elseif gamestate == 'menu' then
			menu_keypressed(key)
		elseif gamestate == 'name' then
			name_keypressed(key)
		elseif gamestate == 'arrest' then
			arrest_keypressed()
		elseif gamestate == 'world' then
			world_keypressed(key)
		elseif gamestate == 'stat' then
			stat_keypressed(key)
		elseif gamestate == 'config' then
			config_keypressed(key)
		elseif gamestate == 'option' then
			option_keypressed(key)
		elseif gamestate == 'alert' then
			alert_keypressed(key)
		elseif gamestate == 'quit' then
			quit_keypressed(key)
		elseif gamestate == 'inv' then
			inv_keypressed(key)
		elseif gamestate == 'inv_stuff' then
			inv_stuff_keypressed(key)
		elseif gamestate == 'inv_stuff_select' then
			inv_stuff_select_keypressed(key)
		elseif gamestate == 'note_stuff' then
			note_stuff_keypressed(key)
		elseif gamestate == 'note_stuff_select' then
			note_stuff_select_keypressed(key)
		elseif gamestate == 'note' then
			note_keypressed(key)
		elseif gamestate == 'shop' then
			shop_keypressed(key)
		elseif gamestate == 'gameover' then
			gameover_keypressed(key)
		elseif gamestate == 'map' then
			map_keypressed(key)
		end
		effect:seek(0)
		effect:play()
	end
	--sound:loadSound(effect,1)
	sound:update(dt)
	--end)
end

--[[ testing only ]]--
function test() end

for i = 1,20 do
	--Item:new("moyai","",56,10,false,10)]]
	Note:new("lib note"..i,i)
end

function Game.draw()
	--pcall(function()
	if gamestate == 'start' then
		start_draw()
	elseif gamestate == 'menu' then
		menu_draw()
	elseif gamestate == 'name' then
		name_draw()
	elseif gamestate == 'arrest' then
		arrest_draw()
	elseif gamestate == 'world' then
		world_draw()
	elseif gamestate == 'map' then
		map_draw()
	elseif gamestate == 'stat' then
		stat_draw()
	elseif gamestate == 'option' then
		options_draw()
	elseif gamestate == 'config' then
		config_draw()
	elseif gamestate == 'alert' then
		alert_draw()
	elseif gamestate == 'inv' then
		inv_draw()
	elseif gamestate == 'inv_stuff' then
		inv_draw_stuff()
	elseif gamestate == 'inv_stuff_select' then
		inv_draw_stuff_select()
	elseif gamestate == 'note_stuff' then
		note_draw_stuff()
	elseif gamestate == 'note_stuff_select' then
		note_draw_stuff_select()
	elseif gamestate == 'note' then
		note_draw()
	elseif gamestate == 'shop' then
		shop_draw()
	elseif gamestate == 'quit' then
		quit_draw()
	elseif gamestate == 'gameover' then
		gameover_draw()
	elseif gamestate == 'test' then
		test()
	end
	--end)
end