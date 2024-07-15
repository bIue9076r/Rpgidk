dd3 = {}
dd3.n = 'Wild Boar'
dd3.m = 'A Wild Boar Aproaches you'
dd3.m2 = ''
dd3.o = {'f:fight','r:run'}
dd3.f = dd3.o
dd3.i = image.getImage('Wild_boar')
dd3.inDialoge = false
dd3.option = false
dd3.Hp = 80
dd3.Atk = 65
dd3.Def = 7
dd3.friendly = "Enemy"
function dd3.draw()
	dd3.m = 'A Wild Boar Aproaches you'
	dd3.o = {'f:fight','r:run'}
	love.graphics.draw(dd3.i,60,40)
	love.graphics.print({{0,0,0},dd3.n},60,260)
	love.graphics.print({{0,0,0},dd3.m},60,280)
	love.graphics.print({{0,0,0},dd3.m2},60,300)
	drawOptions(dd3.o)
	drawstats(dd3)
end
function dd3.keypressed(key)
	if key == 'f' then
		if Atk >= 65 or math.random(1,10) == 5 then
			dd3.Hp = dd3.Hp - 1
			raiseAtk(5)
			raiseDef(1)
			raiseRep(20)
			raiseCash(25)
			Alert.new('Fought The Boar','stat')
			gamestate = 'alert'
			Exp.add(30)
		else
			Hurt(45)
			Alert.new('Bitten by a Boar','stat')
			gamestate = 'alert'
		end
	elseif key == 'r' then
		if Def >= 7 or math.random(1,10) == 5 then
			Alert.new('Ran Away','stat')
			Exp.add(50)
			gamestate = 'alert'
		else
			Hurt(30)
			Alert.new('Bitten by a Boar\n\nWhile Running Away','stat')
			gamestate = 'alert'
		end
	end
end
D['desert'][3] = dd3