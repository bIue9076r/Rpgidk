dc5 = {}
dc5.n = 'Buisness Man'
dc5.m = '"I got Something to sell you"'
dc5.m2 = ''
dc5.o = {'t:talk','r:run','f:fight','s:steal'}
dc5.f = dc5.o
dc5.i = image:getImage('BuisnessMan')
dc5.inDialoge = false
dc5.option = false
dc5.Hp = 15
dc5.Atk = 40
dc5.Def = 18
dc5.friendly = "Neutral"
dc5.soundOpts = {}
function dc5.draw()
	if Rep >= 0 and dc5.inDialoge == false then
		dc5.m = '"I got Something to sell you"'
		dc5.m2 = ''
		dc5.o = {'t:talk','r:run','f:fight','s:steal'}
	elseif Rep < 0 and dc5.inDialoge == false then
		dc5.m = '"I got Something to sell you'
		dc5.m2 = 'for a price..."'
		dc5.o = {'t:talk','r:run','f:fight','s:steal'}
	end
	love.graphics.draw(dc5.i,60,40)
	love.graphics.print({{0,0,0},dc5.n},60,260)
	love.graphics.print({{0,0,0},dc5.m},60,280)
	love.graphics.print({{0,0,0},dc5.m2},60,300)
	drawOptions(dc5.o)
	drawstats(dc5)
end
function dc5.keypressed(key)
	if Rep >= 0 then
		if not dc5.inDialoge then
			if key == 't' then
				dc5.inDialoge = true
				dc5.o = {'b:buy','s:steal','l:leave'}
			elseif key == 'r' then
				Alert:new('Ran Away','stat')
				gamestate = 'alert'
			elseif key == 'f' then
				if Atk >= 40 or math.random(1,25) == 5 then
					dc5.Hp = dc5.Hp - 1
					lowerRep(100)
					raiseAtk(9)
					raiseDef(4)
					raiseCash(40)
					CrimeUpdate(2)
					Item:new("Tooth","Tooth",6,15)
					Alert:new('Fought the Buisness Man','stat')
					Exp:add(80)
					gamestate = 'alert'
				else
					lowerRep(125)
					lowerCash(40)
					Hurt(40)
					CrimeUpdate(1)
					Alert:new('Failed to beat \nthe Buisness Man','stat')
					gamestate = 'alert'
				end
			elseif key == 's' then
				rob(40,120,"The Buisness Man",25,80)
			end
		else
			if key == 'b' then
				if Cash >= 50 then
					lowerCash(50)
					Item:RanNew()
					dc5.inDialoge = false
				else
					dc5.m = '"You dont have any money..."'
				end
			elseif key == 's' then
				if Atk >= 25 or math.random(1,25) == 5 then
					lowerRep(120)
					Item:RanNew()
					CrimeUpdate(2)
					Alert:new('Stole the Buisness Mans item\'','stat')
					Exp:add(80)
					gamestate = 'alert'
					dc5.inDialoge = false
				else
					Hurt(40)
					lowerRep(125)
					CrimeUpdate(1)
					Alert:new('Failed to rob \nthe Buisness Man','stat')
					gamestate = 'alert'
					dc5.inDialoge = false
				end
			elseif key == 'l' then
				dc5.inDialoge = false
				dc5.o = {'t:talk','r:run','f:fight','s:steal'}
			end
		end
	else
		if not dc5.inDialoge then
			if key == 't' then
				dc5.inDialoge = true
				dc5.o = {'b:buy','s:steal','l:leave'}
			elseif key == 'r' then
				Alert:new('Ran Away','stat')
				gamestate = 'alert'
			elseif key == 'f' then
				if Atk >= 50 or math.random(1,25) == 5 then
					dc5.Hp = dc5.Hp - 1
					lowerRep(140)
					raiseAtk(9)
					raiseDef(4)
					raiseCash(20)
					CrimeUpdate(2)
					Item:new("Tooth","Tooth",6,15)
					Alert:new('Fought the Buisness Man','stat')
					Exp:add(90)
					gamestate = 'alert'
				else
					lowerRep(130)
					lowerCash(60)
					Hurt(45)
					CrimeUpdate(1)
					Alert:new('Failed to beat \nthe Buisness Man','stat')
					gamestate = 'alert'
				end
			elseif key == 's' then
				rob(50,120,"The Buisness Man",30,90)
			end
		else
			if key == 'b' then
				if Cash >= 75 then
					lowerCash(75)
					Item:RanNew()
					dc5.inDialoge = false
				else
					dc5.m = '"You dont have any money..."'
					dc5.m2 = ''
				end
			elseif key == 's' then
				if Atk >= 30 or math.random(1,25) == 5 then
					dc5.Hp = dc5.Hp - 1
					lowerRep(140)
					Item:RanNew()
					CrimeUpdate(2)
					Alert:new('Stole the Buisness Mans item\'','stat')
					Exp:add(90)
					gamestate = 'alert'
					dc5.inDialoge = false
				else
					Hurt(45)
					lowerRep(130)
					CrimeUpdate(1)
					Alert:new('Failed to rob \nthe Buisness Man','stat')
					gamestate = 'alert'
					dc5.inDialoge = false
				end
			elseif key == 'l' then
				dc5.inDialoge = false
				dc5.o = {'t:talk','r:run','f:fight','s:steal'}
			end
		end
	end
end
D['city'][5] = dc5