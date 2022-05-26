dc4 = {}
dc4.n = 'Taxi Driver'
dc4.m = '"Need a Lift?"'
dc4.m2 = ''
dc4.o = {'t:talk','r:run','f:fight','s:steal'}
dc4.f = dc4.o
dc4.i = image:getImage('TaxiDriver')
dc4.inDialoge = false
dc4.option = false
dc4.Hp = 10
dc4.soundOpts = {}
function dc4.draw()
	if Rep >= 0 and dc4.inDialoge == false then
		dc4.m = '"Need a Lift?"'
		dc4.m2 = ''
		dc4.o = {'t:talk','r:run','f:fight','s:steal'}
	elseif Rep < 0 and dc4.inDialoge == false then
		dc4.m = '"Need a Lift?..."'
		dc4.m2 = ''
		dc4.o = {'t:talk','r:run','f:fight','s:steal'}
	end
	love.graphics.draw(dc4.i,60,40)
	love.graphics.print({{0,0,0},dc4.n},60,260)
	love.graphics.print({{0,0,0},dc4.m},60,280)
	love.graphics.print({{0,0,0},dc4.m2},60,300)
	drawOptions(dc4.o)
end
function dc4.keypressed(key)
	if Rep >= 0 then
		if not dc4.inDialoge then
			if key == 't' then
				dc4.inDialoge = true
				dc4.o = {'y:yes','l:leave'}
			elseif key == 'r' then
				Alert:new('Ran Away','stat')
				gamestate = 'alert'
			elseif key == 'f' then
				if Atk >= 20 or math.random(1,20) == 5 then
					dc4.Hp = dc4.Hp - 1
					lowerRep(75)
					raiseAtk(5)
					raiseDef(1)
					raiseCash(70)
					CrimeUpdate(2)
					Item:new("Tooth","Tooth",6,15)
					Alert:new('Fought The Taxi Driver','stat')
					Exp:add(100)
					gamestate = 'alert'
				else
					Hurt(25)
					lowerRep(100)
					CrimeUpdate(1)
					Alert:new('Failed to beat The Taxi Driver','stat')
					gamestate = 'alert'
				end
			elseif key == 's' then
				rob(20,100,'The Taxi Driver',50,100)
			end
		else
			if key == 'y' then
				gamestate = 'map'
				dc4.inDialoge = false
			elseif key == 'l' then
				dc4.inDialoge = false
				dc4.o = {'t:talk','r:run','f:fight','s:steal'}
			end
		end
	else
		if not dc4.inDialoge then
			if key == 't' then
				dc4.inDialoge = true
				dc4.o = {'y:yes','l:leave'}
			elseif key == 'r' then
				Alert:new('Ran Away','stat')
				gamestate = 'alert'
			elseif key == 'f' then
				if Atk >= 20 or math.random(1,20) == 5 then
					dc4.Hp = dc4.Hp - 1
					lowerRep(75)
					raiseAtk(5)
					raiseDef(1)
					raiseCash(70)
					CrimeUpdate(2)
					Item:new("Tooth","Tooth",6,15)
					Alert:new('Fought The Taxi Driver','stat')
					Exp:add(100)
					gamestate = 'alert'
				else
					Hurt(25)
					lowerRep(100)
					CrimeUpdate(1)
					Alert:new('Failed to beat The Taxi Driver','stat')
					gamestate = 'alert'
				end
			elseif key == 's' then
				rob(20,100,'The Taxi Driver',50,100)
			end
		else
			if key == 'y' then
				gamestate = 'map'
				dc4.inDialoge = false
			elseif key == 'l' then
				dc4.inDialoge = false
				dc4.o = {'t:talk','r:run','f:fight','s:steal'}
			end
		end
	end
end
D['city'][4] = dc4