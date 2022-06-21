ds6 = {}
ds6.n = 'Alligator'
ds6.m = '"An Alligator Aproches"'
ds6.m2 = ''
ds6.o = {'f:fight','r:run'}
ds6.f = ds6.o
ds6.i = image:getImage()
ds6.inDialoge = false
ds6.option = false
ds6.Hp = 30
function ds6.draw()
	ds6.m = '"An Alligator Aproches"'
	ds6.o = {'f:fight','r:run'}
	love.graphics.draw(ds6.i,60,40)
	love.graphics.print({{0,0,0},ds6.n},60,260)
	love.graphics.print({{0,0,0},ds6.m},60,280)
	love.graphics.print({{0,0,0},ds6.m2},60,300)
	drawOptions(ds6.o)
end
function ds6.keypressed(key)
	if key == 'f' then
		if Atk >= 155 or math.random(1,20) == 5 then
			ds6.Hp = ds6.Hp - 1
			raiseAtk(10)
			raiseDef(4)
			raiseRep(70)
			raiseCash(75)
			Alert:new('Fought The Alligator','stat')
			gamestate = 'alert'
			Exp:add(325)
		else
			Hurt(185)
			Alert:new('Attacked by an Alligator','stat')
			gamestate = 'alert'
		end
	elseif key == 'r' then
		if Def >= 27 or math.random(1,20) == 5 then
			Alert:new('Ran Away','stat')
			Exp:add(165)
			gamestate = 'alert'
		else
			Hurt(165)
			Alert:new('Attacked by an Alligator \nWhile Running Away','stat')
			gamestate = 'alert'
		end
	end
end
D['swamp'][6] = ds6