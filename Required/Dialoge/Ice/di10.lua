di10 = {}
di10.n = 'Artic Fox'
di10.m = 'An Artic Fox aproaches you'
di10.m2 = ''
di10.o = {'f:fight','r:run'}
di10.f = di10.o
di10.i = image:getImage('')
di10.inDialoge = false
di10.option = false
di10.Hp = 10
function di10.draw()
	di10.m = 'An Artic Fox aproaches you'
	di10.o = {'f:fight','r:run'}
	love.graphics.draw(di10.i,60,40)
	love.graphics.print({{0,0,0},di10.n},60,260)
	love.graphics.print({{0,0,0},di10.m},60,280)
	love.graphics.print({{0,0,0},di10.m2},60,300)
	drawOptions(di10.o)
end
function di10.keypressed(key)
	if key == "f" then
		if Atk >= 210 or math.random(1,20) == 5 then
			di10.Hp = di10.Hp - 1
			raiseAtk(25)
			raiseDef(9)
			raiseRep(95)
			raiseCash(95)
			Alert:new('Fought The Artic Fox','stat')
			gamestate = 'alert'
			Exp:add(385)
		else
			Hurt(225)
			Alert:new('Attacked by a Artic Fox','stat')
			gamestate = 'alert'
		end
	elseif key == "r" then
		if Def >= 39 or math.random(1,20) == 5 then
			Alert:new('Ran Away','stat')
			Exp:add(310)
			gamestate = 'alert'
		else
			Hurt(200)
			Alert:new('Attacked by a Artic Fox \nWhile Running Away','stat')
			gamestate = 'alert'
		end
	end
end
D['icespikes'][10] = di10