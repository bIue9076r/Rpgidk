ds8 = {}
ds8.n = 'Swamp Bear'
ds8.m = 'A Swamp Bear Apporoches'
ds8.m2 = ''
ds8.o = {'f:fight','r:run'}
ds8.f = ds8.o
ds8.i = image:getImage()
ds8.inDialoge = false
ds8.option = false
ds8.Hp = 25
function ds8.draw()
	ds8.m = 'A Swamp Bear Apporoches'
	ds8.o = {'f:fight','r:run'}
	love.graphics.draw(ds8.i,60,40)
	love.graphics.print({{0,0,0},ds8.n},60,260)
	love.graphics.print({{0,0,0},ds8.m},60,280)
	love.graphics.print({{0,0,0},ds8.m2},60,300)
	drawOptions(ds8.o)
end
function ds8.keypressed(key)
	if key == 'f' then
		if Atk >= 180 or math.random(1,20) then
			ds8.Hp = ds8.Hp - 1
			raiseAtk(20)
			raiseDef(7)
			raiseRep(75)
			raiseCash(80)
			Alert:new('Fought The Bear','stat')
			gamestate = 'alert'
			Exp:add(355)
		else
			Hurt(205)
			Alert:new('Attacked by a Bear','stat')
			gamestate = 'alert'
		end
	elseif key == 'r' then
		if Def >= 35 or math.random(1,20) == 5 then
			Alert:new('Ran Away','stat')
			Exp:add(275)
			gamestate = 'alert'
		else
			Hurt(175)
			Alert:new('Attacked by a Bear \nWhile Running Away','stat')
			gamestate = 'alert'
		end
	end
end
D['swamp'][8] = ds8