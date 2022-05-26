dc9 = {}
dc9.n = 'Bus Driver'
dc9.m = '"Need a Lift"'
dc9.m2 = ''
dc9.o = {'t:talk','r:run','f:fight','s:steal'}
dc9.f = dc9.o
dc9.i = image:getImage('')
dc9.inDialoge = false
dc9.option = false
dc9.Hp = 3
dc9.soundOpts = {}
function dc9.draw()
	if Rep >= 0 and dc9.inDialoge == false then
		dc9.m = '"Need a Lift"'
		dc9.m2 = ''
		dc9.o = {'t:talk','r:run','f:fight','s:steal'}
	elseif Rep < 0 and dc9.inDialoge == false then
		dc9.m = '"Need a Lift"'
		dc9.m2 = ''
		dc9.o = {'t:talk','r:run','f:fight','s:steal'}
	end
	love.graphics.draw(dc9.i,60,40)
	love.graphics.print({{0,0,0},dc9.n},60,260)
	love.graphics.print({{0,0,0},dc9.m},60,280)
	love.graphics.print({{0,0,0},dc9.m2},60,300)
	drawOptions(dc9.o)
end
function dc9.keypressed(key)
	if Rep >= 0 then
		if not dc9.inDialoge then
			if key == 't' then
				dc9.inDialoge = true
				dc9.o = {'y:yes','l:leave'}
			elseif key == 'r' then
				Alert:new('Ran Away','stat')
				gamestate = 'alert'
			elseif key == 'f' then
				if Atk >= 30 or math.random(1,30) == 5 then
					dc9.Hp = dc9.Hp - 1
					lowerRep(100)
					raiseAtk(7)
					raiseCash(80)
					CrimeUpdate(2)
					Item:new("Tooth","Tooth",6,25)
					Alert:new('Fought The Bus Driver','stat')
					Exp:add(120)
					gamestate = 'alert'
				else
					Hurt(35)
					lowerRep(150)
					CrimeUpdate(1)
					Alert:new('Failed to beat The Bus Driver','stat')
					gamestate = 'alert'
				end
			elseif key == 's' then
				rob(35,100,'The Bus Driver',30,150)
			end
		else
			if key == 'y' then
				gamestate = 'map'
				dc9.inDialoge = false
			elseif key == 'l' then
				dc9.inDialoge = false
				dc9.o = {'t:talk','r:run','f:fight','s:steal'}
			end
		end
	else
		if not dc9.inDialoge then
			if key == 't' then
				dc9.inDialoge = true
				dc9.o = {'y:yes','l:leave'}
			elseif key == 'r' then
				Alert:new('Ran Away','stat')
				gamestate = 'alert'
			elseif key == 'f' then
				if Atk >= 30 or math.random(1,30) == 5 then
					dc9.Hp = dc9.Hp - 1
					lowerRep(100)
					raiseAtk(7)
					raiseCash(80)
					CrimeUpdate(2)
					Item:new("Tooth","Tooth",6,25)
					Alert:new('Fought The Bus Driver','stat')
					Exp:add(120)
					gamestate = 'alert'
				else
					Hurt(35)
					lowerRep(150)
					CrimeUpdate(1)
					Alert:new('Failed to beat The Bus Driver','stat')
					gamestate = 'alert'
				end
			elseif key == 's' then
				rob(35,100,'The Bus Driver',30,150)
			end
		else
			if key == 'y' then
				gamestate = 'map'
				dc9.inDialoge = false
			elseif key == 'l' then
				dc9.inDialoge = false
				dc9.o = {'t:talk','r:run','f:fight','s:steal'}
			end
		end
	end
end
D['city'][9] = dc9