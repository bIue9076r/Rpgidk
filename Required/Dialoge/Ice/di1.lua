di1 = {}
di1.n = 'Wild Penguin'
di1.m = 'A Wild Penguin approches you'
di1.m2 = ''
di1.o = {'f:fight','r:run'}
di1.f = di1.o
di1.i = image.getImage('Wild_penguin')
di1.inDialoge = false
di1.option = false
di1.Hp = 8
di1.Atk = 180
di1.Def = 37
di1.friendly = "Enemy"
function di1.draw()
	di1.m = 'A Wild Penguin approches you'
	di1.o = {'f:fight','r:run'}
	love.graphics.draw(di1.i,60,40)
	love.graphics.print({{0,0,0},di1.n},60,260)
	love.graphics.print({{0,0,0},di1.m},60,280)
	love.graphics.print({{0,0,0},di1.m2},60,300)
	drawOptions(di1.o)
	drawstats(di1)
end
function di1.keypressed(key)
	if key == 'f' then
		if Atk >= 180 or math.random(1,20) == 5 then
			di1.Hp = di1.Hp - 1
			raiseAtk(22)
			raiseDef(8)
			raiseRep(85)
			raiseCash(85)
			Alert.new('Fought The Penguin','stat')
			gamestate = 'alert'
			Exp.add(365)
		else
			Hurt(215)
			Alert.new('Attacked by a Penguin','stat')
			gamestate = 'alert'
		end
	elseif key == 'r' then
		if Def >= 37 or math.random(1,20) == 5 then
			Alert.new('Ran Away','stat')
			Exp.add(290)
			gamestate = 'alert'
		else
			Hurt(185)
			Alert.new('Attacked by a Penguin\n\nWhile Running Away','stat')
			gamestate = 'alert'
		end
	end
end
D['icespikes'][1] = di1