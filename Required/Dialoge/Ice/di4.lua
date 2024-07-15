di4 = {}
di4.n = 'Snow demon'
di4.m = 'A demon crawls out of the Snow'
di4.m2 = ''
di4.o = {'f:fight','r:run'}
di4.f = di4.o
di4.i = image.getImage('Snow_demon')
di4.inDialoge = false
di4.option = false
di4.Hp = 5
di4.Atk = 550
di4.Def = 10
di4.friendly = "Enemy"
function di4.draw()
	di4.m = 'A demon crawls out of the Snow'
	di4.o = {'f:fight','r:run'}
	love.graphics.draw(di4.i,60,40)
	love.graphics.print({{0,0,0},di4.n},60,260)
	love.graphics.print({{0,0,0},di4.m},60,280)
	love.graphics.print({{0,0,0},di4.m2},60,300)
	drawOptions(di4.o)
	drawstats(di4)
end
function di4.keypressed(key)
	if key == "f" then
		if Atk >= 550 then
			di4.Hp = di4.Hp - 1
			raiseAtk(57)
			raiseDef(30)
			raiseRep(350)
			raiseCash(200)
			Alert.new('Fought The Snow demon','stat')
			Exp.add(500)
			gamestate = 'alert'
		else
			Hurt(350)
			Alert.new('Attacked by a Snow demon','stat')
			gamestate = 'alert'
		end
	elseif key == "r" then
		if Def >= 10  then
			Alert.new('Ran Away','stat')
			Exp.add(75)
			gamestate = 'alert'
		else
			Hurt(400)
			Alert.new('Attacked by a Snow demon\n\nWhile Running Away','stat')
			gamestate = 'alert'
		end
	end
end
D['icespikes'][4] = di4