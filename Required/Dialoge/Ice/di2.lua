di2 = {}
di2.n = 'Polar Bear'
di2.m = 'A Polar Bear approches you'
di2.m2 = ''
di2.o = {'f:fight','r:run'}
di2.f = di2.o
di2.i = image:getImage('')
di2.inDialoge = false
di2.option = false
di2.Hp = 5
function di2.draw()
	di2.m = 'A Polar Bear approches you'
	di2.o = {'f:fight','r:run'}
	love.graphics.draw(di2.i,60,40)
	love.graphics.print({{0,0,0},di2.n},60,260)
	love.graphics.print({{0,0,0},di2.m},60,280)
	love.graphics.print({{0,0,0},di2.m2},60,300)
	drawOptions(di2.o)
end
function di2.keypressed(key)
	if key == 'f' then
		if Atk >= 250 or math.random(1,20) == 5 then
			di1.Hp = di1.Hp - 1
			raiseAtk(30)
			raiseDef(10)
			raiseRep(95)
			raiseCash(95)
			Alert:new('Fought The Polar Bear','stat')
			Exp:add(435)
			gamestate = 'alert'
		else
			Hurt(275)
			Alert:new('Attacked by a Polar Bear','stat')
			gamestate = 'alert'
		end
	elseif key == 'r' then
		if Def >= 45 or math.random(1,20) == 5 then
			Alert:new('Ran Away','stat')
			Exp:add(355)
			gamestate = 'alert'
		else
			Hurt(205)
			Alert:new('Attacked by a Polar Bear \nWhile Running Away','stat')
			gamestate = 'alert'
		end
	end
end
D['icespikes'][2] = di2