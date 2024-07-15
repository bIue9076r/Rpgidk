dd2 = {}
dd2.n = 'scorpion'
dd2.m = 'A Wild scorpion Aproaches you'
dd2.m2 = ''
dd2.o = {'f:fight','r:run'}
dd2.f = dd2.o
dd2.i = image.getImage('scorpion')
dd2.inDialoge = false
dd2.option = false
dd2.Hp = 70
dd2.Atk = 85
dd2.Def = 10
dd2.friendly = "Enemy"
function dd2.draw()
	dd2.m = 'A Wild scorpion Aproaches you'
	dd2.o = {'f:fight','r:run'}
	love.graphics.draw(dd2.i,60,40)
	love.graphics.print({{0,0,0},dd2.n},60,260)
	love.graphics.print({{0,0,0},dd2.m},60,280)
	love.graphics.print({{0,0,0},dd2.m2},60,300)
	drawOptions(dd2.o)
	drawstats(dd2)
end
function dd2.keypressed(key)
	if key == 'f' then
		if Atk >= 85 or math.random(1,20) == 4 then
			dd2.Hp = dd2.Hp - 1
			raiseAtk(7)
			raiseDef(1)
			raiseRep(25)
			raiseCash(30)
			Alert.new('Fought The scorpion','stat')
			gamestate = 'alert'
			Exp.add(40)
		else
			Hurt(50)
			Alert.new('Stung by scorpion','stat')
			gamestate = 'alert'
		end
	elseif key == 'r' then
		if Def >= 10 then
			Alert.new('Ran Away','stat')
			Exp.add(50)
			gamestate = 'alert'
		else
			Hurt(40)
			Alert.new('Stung by scorpion\n\nWhile Running Away','stat')
			gamestate = 'alert'
		end
	end
end
D['desert'][2] = dd2