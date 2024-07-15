dw7 = {}
dw7.n = 'Toxic Vulture'
dw7.m = 'A Toxic Vulture approaches you'
dw7.m2 = ''
dw7.o = {'f:fight','r:run'}
dw7.f = dw7.o
dw7.i = image.getImage('Toxic_vulture')
dw7.inDialoge = false
dw7.option = false
dw7.Hp = 30
dw7.Atk = 375
dw7.Def = 65
dw7.friendly = "Enemy"
function dw7.draw()
	dw7.m = 'A Toxic Vulture approaches you'
	dw7.o = {'f:fight','r:run'}
	love.graphics.draw(dw7.i,60,40)
	love.graphics.print({{0,0,0},dw7.n},60,260)
	love.graphics.print({{0,0,0},dw7.m},60,280)
	love.graphics.print({{0,0,0},dw7.m2},60,300)
	drawOptions(dw7.o)
	drawstats(dw7)
end
function dw7.keypressed(key)
	if key == 'f' then
		if Atk >= 375 or math.random(1,20) == 5 then
			dw5.Hp = dw5.Hp - 1
			raiseAtk(40)
			raiseDef(13)
			raiseRep(140)
			raiseCash(140)
			Alert.new('Fought The Toxic Vulture','stat')
			Exp.add(555)
			gamestate = 'alert'
		else
			Hurt(390)
			Alert.new('Attacked by a Toxic Vulture','stat')
			gamestate = 'alert'
		end
	elseif key == 'r' then
		if Def >= 65 or math.random(1,20) == 5 then
			Alert.new('Ran Away','stat')
			Exp.add(555)
			gamestate = 'alert'
		else
			Hurt(390)
			Alert.new('Attacked by a Toxic Vulture\n\nWhile Running Away','stat')
			gamestate = 'alert'
		end
	end
end
D['wasteland'][7] = dw7