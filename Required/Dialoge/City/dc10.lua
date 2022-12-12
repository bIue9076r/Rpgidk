dc10 = {}
dc10.n = 'Police Officer'
dc10.m = '"Seen any Criminals lately?"'
dc10.m2 = ''
dc10.o = {'t:talk','r:run','f:fight','s:steal'}
dc10.f = dc10.o
dc10.i = image:getImage('Police')
dc10.inDialoge = false
dc10.option = false
dc10.Hp = 5
dc10.Atk = 60
dc10.Def = 28
dc10.friendly = "Neutral"
dc10.soundOpts = {}
function dc10.draw()
	if (Rep >= 0 and TimeSinceLastCrime < 10) and dc10.inDialoge == false then
		dc10.friendly = "Neutral"
		dc10.m = '"Seen any Criminals lately?"'
		dc10.m2 = ''
		dc10.o = {'t:talk','r:run','f:fight','s:steal'}
	elseif(Rep < 0 or TimeSinceLastCrime > 10) and dc10.inDialoge == false then
		dc10.friendly = "Enemy"
		dc10.m = '"Hands up Criminal Scum"'
		dc10.m2 = ''
		dc10.o = {'y:continue','r:run','f:fight','t:talk'}
	end
	love.graphics.draw(dc10.i,60,40)
	love.graphics.print({{0,0,0},dc10.n},60,260)
	love.graphics.print({{0,0,0},dc10.m},60,280)
	love.graphics.print({{0,0,0},dc10.m2},60,300)
	drawOptions(dc10.o)
	drawstats(dc10)
end
function dc10.keypressed(key)
	if Rep >= 0 and TimeSinceLastCrime < 10 then
		if not dc10.inDialoge then
			if key == 't' then
				dc10.inDialoge = true
				dc10.o = {'y:yes','l:leave'}
			elseif key == 'r' then
				Alert:new('Ran Away','stat')
				gamestate = 'alert'
			elseif key == 'f' then
				if Atk >= 60 or math.random(1,60) == 5 then
					dc10.Hp = dc10.Hp - 1
					lowerRep(200)
					raiseAtk(10)
					raiseDef(6)
					raiseCash(100)
					CrimeUpdate(2)
					Item:new("Police Hat","PoliceHat",6,45)
					----------1234567890 fits the 13 char limit
					Alert:new('Fought a Police Officer','stat')
					Exp:add(350)
					gamestate = 'alert'
				else
					Hurt(80)
					arrest()
				end
			elseif key == 's' then
				rob(60,200,'a Police Officer',100,350,true)
			end
		else
			if key == 'y' then
				if not snitch then
					raiseCash(25)
					raiseRep(200)
				else
					raiseCash(15)
					raiseRep(100)
				end
				Alert:new('Spilled Information','stat')
				gamestate = 'alert'
				dc10.inDialoge = false
				dc10.o = {'t:talk','r:run','f:fight','s:steal'}
			elseif key == 'l' then
				dc10.inDialoge = false
				dc10.o = {'t:talk','r:run','f:fight','s:steal'}
			end
		end
	else
		if not dc10.inDialoge then
			if key == 'y' then
				arrest()
			elseif key == 'r' then
				if Def >= 28 or math.random(1,20) == 5 then
					Alert:new('Ran Away','stat')
					gamestate = 'alert'
				else
					arrest()
				end
			elseif key == 'f' then
				if Atk >= 75 or math.random(1,20) == 5 then
					dc10.Hp = dc10.Hp - 1
					lowerRep(200)
					raiseAtk(10)
					raiseDef(6)
					raiseCash(100)
					CrimeUpdate(2)
					Item:new("Police Hat","PoliceHat",6,45)
					----------1234567890 fits the 13 char limit
					Alert:new('Fought a Police Officer','stat')
					Exp:add(350)
					gamestate = 'alert'
				else
					Hurt(95)
					arrest()
				end
			elseif key == 't' then
				dc10.m = '"Spill those Words Criminal"'
				dc10.o = {'b:bribe','l:leave'}
				dc10.inDialoge = true
			end
		else
			if key == 'b' then
				if math.random(0,1) == 1 then
					if Cash >= 50 then
						lowerCash(50)
						raiseRep(100)
						CrimeUpdate(1)
						dc10.inDialoge = false
						Alert:new('Bribed an Officer','stat')
						gamestate = 'alert'
					else
						dc10.inDialoge = false
						Alert:new('Failed to bribe an Officer','arrest')
						gamestate = 'alert'
					end
				else
					dc10.inDialoge = false
					Alert:new('Failed to bribe an Officer','arrest')
					gamestate = 'alert'
				end
			elseif key == 'l' then
				dc10.inDialoge = false
			end
		end
	end
end
D['city'][10] = dc10