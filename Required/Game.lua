math.randomseed(os.time())
require("/Required/aliases")
require("/Required/Modules/GameFunctions")
require("/Textures/LoadTexutres")
require("/Textures/LoadFonts")
require("/Audio/LoadAudio")
require("/Required/Dialoge")
require("/Required/debug")
require("/Required/LoadModules")
--system things
volume = 1/10
gamestate = 'start'
pev_gamestate = 'start'
effect = sound:getSound('effect')
trash = {}

--Base stats
loaded=false
Rep=0
Hp=100
Max_Hp=100
Infected=false
Atk=0
Def=0
Cash=0
Lck=1 -- moderatly unused

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

death_cause="something went\nhorribly wrong"

--Trading variables
item={}
sitem={}
Nitem={}
sNitem={}
tsNitem={}
item[0]=0
sitem[0]={[0]=(0),[1]=(0),[2]=(0),[3]=(0)}
Nitem[0]="Medkits"
sNitem[0]="Common "
tsNitem[0]="Cmn "
item[1]=0
sitem[1]={[0]=(0),[1]=(0),[2]=(0),[3]=(0)}
Nitem[1]="Poison potions"
sNitem[1]="Uncommon "
tsNitem[1]="Uncm "
item[2]=0
sitem[2]={[0]=(0),[1]=(0),[2]=(0),[3]=(0)}
Nitem[2]="Attack boost"
sNitem[2]="Rare "
tsNitem[2]="Rare "
item[3]=0
sitem[3]={[0]=(0),[1]=(0),[2]=(0),[3]=(0)}
Nitem[3]="Defence boost"
sNitem[3]="Legendary "
tsNitem[3]="Lgnd "
itemNm = ""
Rarity = 0
store_stock_med=math.random(1,100)
store_stock_Posion=math.random(1,100)
store_stock_Atk=math.random(1,100)
store_stock_Def=math.random(1,100)
r_store_stock_med={[0]=math.random(1,100),[1]=math.random(1,100),[2]=math.random(1,100),[3]=math.random(1,100)}
r_store_stock_Posion={[0]=math.random(1,100),[1]=math.random(1,100),[2]=math.random(1,100),[3]=math.random(1,100)}
r_store_stock_Atk={[0]=math.random(1,100),[1]=math.random(1,100),[2]=math.random(1,100),[3]=math.random(1,100)}
r_store_stock_Def={[0]=math.random(1,100),[1]=math.random(1,100),[2]=math.random(1,100),[3]=math.random(1,100)}
restock = 1000

_Medkits=0
_Posion=0
_Atkboost=0
_Defboost=0

--Game variables
name=""
debugmode= not false
snitch=false
worldN = D.SetN()
worldCmd = nil
mapimg = 'MainMap'
selected = false
Subselected = false
TimeSinceLastCrime = 0
Kills = 0
Arrests = 0

--Dialoge variables
yellowSnowEater = false
iceBaseFound = false
helpedResearcher = false

--Quests
Quest:new('ashley')

--Keys
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
	['-']='-',['=']='=',
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
	['-']='_',['=']='+',
	['space']=' ',['tab']='\t',['return']='return',
	['lshift']='not nil',['rshift']='not nil',
	['backspace']='not nil'
}

require("/Required/save")


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
	love.graphics.print({{0,0,0},"O = Options"},240,410)
	love.graphics.print({{0,0,0},"L = Leave"},240,430)
	--end)
end

function void_draw()
	local message = "welcome to the void\n\n".. 
					"enjoy your stay"
	love.graphics.print({{1,1,1},message},200,380)
	if debugmode == true then
		love.graphics.print({{1,1,1},"press '/' to go the debug menu"},90,460)
	end
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
	love.graphics.print({{0,0,0},"v: Voulme:"..tostring(volume)},60,310)
	love.graphics.print({{0,0,0},"esc = leave"},280,430)
	--end)
end

_ddx = 200
function debug_draw()
	--pcall(function()
	out = console.getoutput()
	love.graphics.draw(image:getImage('console'),0,0)
	local index = 0
	for i = console.up,console.down do
		if out[i] then
			love.graphics.print({{0,1,0},out[i]},47,90 + ((index - 1) * 40))
			index = index + 1
		end
	end
	--_ddx = _ddx or 50
	love.graphics.setFont(love.graphics.newFont(14))
	cintextlen = #console.intext
	maxlen = 42
	if(_ddx > 100)then
		if(cintextlen < 30)then
			love.graphics.print({{0,1,0},"~$:"..console.intext.."_"},47,445)
		else
			love.graphics.print({{0,1,0},"~$:"..console.intext:sub(-maxlen, -1).."_"},47,445)
		end
		_ddx = _ddx - 5
	elseif(_ddx > 0)then
		--:sub(cintextlen-30,cintextlen)
		if(cintextlen < maxlen)then
			love.graphics.print({{0,1,0},"~$:"..console.intext},47,445)
		else
			love.graphics.print({{0,1,0},"~$:"..console.intext:sub(-maxlen, -1).."_"},47,445)
		end
		_ddx = _ddx - 5
	else
		if(cintextlen < maxlen)then
			love.graphics.print({{0,1,0},"~$:"..console.intext},47,445)
		else
			love.graphics.print({{0,1,0},"~$:"..console.intext:sub(-maxlen, -1).."_"},47,445)
		end
		_ddx = 200
	end
	--end)
end

function inv_draw()
	--pcall(function()
	love.graphics.draw(image:getImage(D.location),0,0)
	love.graphics.draw(image:getImage('Inv'),0,0)
	displayPlayerInv()
	love.graphics.print({{0,0,0},"Options:"},240,330)
	love.graphics.print({{0,0,0},"M = Medkits"},240,350)
	love.graphics.print({{0,0,0},"P = Posion Potion"},240,370)
	love.graphics.print({{0,0,0},"A = Attack boost"},240,390)
	love.graphics.print({{0,0,0},"D = Defence boost"},240,410)
	love.graphics.print({{0,0,0},"I = Collectors Inventory"},160,430)
	--end)
end

function inv_item_draw()
	--pcall(function()
	love.graphics.draw(image:getImage(D.location),0,0)
	love.graphics.draw(image:getImage('Inv'),0,0)
	displayPlayerInv()
	love.graphics.print({{0,0,0},"Options:"},240,330)
	love.graphics.print({{0,0,0},"C = Common"},240,350)
	love.graphics.print({{0,0,0},"U = Uncommon"},240,370)
	love.graphics.print({{0,0,0},"R = Rare"},240,390)
	love.graphics.print({{0,0,0},"M = Legendary"},240,410)
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
	msg,img,aud = Alert:Return()
	love.audio.pause(effect)
	love.audio.play(aud)
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
	local aud = 'GameEnd'
	if Rep >= 500 then aud = 'GameEnd+rep' end
	love.audio.play(sound:getSound(aud))
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
	TimeSinceLastCrime = 0
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
	if debugmode == true then
		if key == 'escape' then
			gamestate = 'stat'
		elseif key == shiftLegalChars['='] then
			
		elseif key == shiftLegalChars['-'] then
			
		end
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

function void_keypressed(key)
	--pcall(function()
	-- incase the failsafe fails go to the stat menu
	pev_gamestate = pev_gamestate or 'stat'
	if key == "q" then -- secret exit code
		gamestate = pev_gamestate
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
	elseif key == 'v' then
		volume = volume + (1/10);
		if volume > 1 then
			volume = 1/10
		end
		love.audio.setVolume(volume)
	end
	--end)
end

function debug_keypressed(key)
	--pcall(function()
	shiftkey = shiftkey or false
	if(key == "escape")then
		gamestate = 'stat'
	elseif(key == "up") or (key == "lctrl")then
		console.historyoffset = console.historyoffset + 1
		if(console.historyoffset > (#console.history - 1))then
			console.historyoffset = #console.history - 1
		end
		console.intext = console.history[1 + console.historyoffset]
	elseif(key == "down") or (key == "rctrl")then
		console.historyoffset = console.historyoffset - 1
		if(console.historyoffset < 0)then
			console.historyoffset = 0
		end
		console.intext = console.history[1 + console.historyoffset]
	end
	if not shiftkey then
		if legalChars[key] ~= nil then
			if key == "backspace" then
				console.intext = console.intext:sub(1,-2)
			elseif key == 'lshift' or key == 'rshift' then
				shiftkey = true
			elseif key == "return" then
				console.run(console.intext)
				console.intext = ''
				console.historyoffset = 0
			else
				console.intext = console.intext..legalChars[key]
			end
		end
	else
		if shiftLegalChars[key] then
			if key == 'backspace' then
				console.intext = console.intext:sub(1,-2)
			elseif key == 'lshift' or key == 'rshift' then
				shiftkey = false
			elseif key == 'return' then
				console.run(console.intext)
				console.intext = ''
				console.historyoffset = 0
			else
				console.intext = console.intext..shiftLegalChars[key]
			end
			shiftkey = false
		end	
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
		--useMed()
		itemNm = Nitem[0]
		gamestate = 'inv_item'
	elseif key == "p" then
		--usePotion()
		itemNm = Nitem[1]
		gamestate = 'inv_item'
	elseif key == "a" then
		--useAtkBoost()
		itemNm = Nitem[2]
		gamestate = 'inv_item'
	elseif key == "d" then
		--useDefBoost()
		itemNm = Nitem[3]
		gamestate = 'inv_item'
	end
	--end)
end

function inv_item_keypressed(key)
	--pcall(function()
	if key == "l" then
		gamestate = 'inv'
	elseif key == 'c' then
		Rarity = 0
		useItem(itemNm,Rarity)
	elseif key == "u" then
		Rarity = 1
		useItem(itemNm,Rarity)
	elseif key == "r" then
		Rarity = 2
		useItem(itemNm,Rarity)
	elseif key == "m" then
		Rarity = 3
		useItem(itemNm,Rarity)
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
		else
			Inv_select = 8
		end
	elseif key == "s" or key == "down" then
		if (Inv_select + 1) < 9 then
			Inv_select = Inv_select + 1
		else
			Inv_select = 1
		end
	elseif key == "return" then
		Item:use(Inv_page,Inv_select)
		Inv_select = 1
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
		Note:use(Note_Inv_page,Note_Inv_select)
		Note_Inv_select = 1
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
		aud:seek(0)
		love.audio.pause(aud)
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
			worldLoc = 'icespikes'
		elseif key == '4' then
			mapimg = 'MapSelect_Swamp'
			selected = true
			worldLoc = 'swamp'
		elseif key == '5' then
			mapimg = 'MapSelect_Waste'
			selected = true
			worldLoc = 'wasteland'
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
	Arrests = Arrests + 1
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
				--else
					--raiseCash(100)
					--gamestate = 'menu'
					--Note:new("Welcome",1)
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
				--else
					--raiseCash(100)
					--gamestate = 'menu'
					--Note:new("Welcome",1)
				end
			end
		end
	end
	
	--font:newFont('main','/Textures/Fonts/Quinq.ttf',10)
	love.graphics.setFont(font:getFont('main'))
	--love.audio.setVolume(1)
	love.audio.setVolume(volume)
	--end)
end

function Game.update(dt)
	--pcall(function()
	check_hp()
	check_Rep()
	Restock(dt)
	LowerCrime(dt)
	
	--check_maxdef()
	if gamestate == 'cmd' then
		worldN = D.SetN()
		Updatecommand(worldN)
		gamestate = 'world'
	end
	function love.keypressed(key, scan_code, is_repeat)
		if(debugmode == true and key == '/') then
			gamestate = 'debug'
		end
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
		elseif gamestate == 'debug' then
			debug_keypressed(key)
		elseif gamestate == 'option' then
			option_keypressed(key)
		elseif gamestate == 'alert' then
			alert_keypressed(key)
		elseif gamestate == 'quit' then
			quit_keypressed(key)
		elseif gamestate == 'inv' then
			inv_keypressed(key)
		elseif gamestate == 'inv_item' then
			inv_item_keypressed(key)
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
		else
			void_keypressed(key)
		end
		effect:seek(0)
		effect:play()
	end
	--sound:loadSound(effect,1)
	love.graphics.setFont(font:getFont('main'))
	sound:update(dt)
	--end)
end

--[[ testing only ]]--
function test() end

--for i = 1,21 do
--	Note:new("lib note"..i,i);
--end
--gamestate = 'void'
Item:new("item",-1)

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
	elseif gamestate == 'debug' then
		debug_draw()
	elseif gamestate == 'alert' then
		alert_draw()
	elseif gamestate == 'inv' then
		inv_draw()
	elseif gamestate == 'inv_item' then
		inv_item_draw()
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
	else
		void_draw()
	end
	if debugmode == true then
		love.graphics.print({{1,1,1},"Debug Mode"},9,9)
		love.graphics.print({{0,0,0},"Debug Mode"},10,10)
	end
	--end)
end