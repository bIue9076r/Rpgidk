dw5 = {}
dw5.n = 'Toxic Scorpian'
dw5.m = 'A Toxic Scorpian approaches you'
dw5.m2 = ''
dw5.o = {'f:fight','r:run'}
dw5.f = dw5.o
dw5.i = image:getImage('')
dw5.inDialoge = false
dw5.option = false
dw5.Hp = 75
dw5.Atk = 350
dw5.Def = 50
dw5.friendly = "Enemy"
function dw5.draw()
	dw5.m = 'A Toxic Scorpian approaches you'
	dw5.o = {'f:fight','r:run'}
	love.graphics.draw(dw5.i,60,40)
	love.graphics.print({{0,0,0},dw5.n},60,260)
	love.graphics.print({{0,0,0},dw5.m},60,280)
	love.graphics.print({{0,0,0},dw5.m2},60,300)
	drawOptions(dw5.o)
	drawstats(dw5)
end
function dw5.keypressed(key)
	if key == 'f' then
		if Atk >= 350 or math.random(1,20) == 5 then
			dw5.Hp = dw5.Hp - 1
			raiseAtk(37)
			raiseDef(11)
			raiseRep(120)
			raiseCash(120)
			Alert:new('Fought The Toxic Scorpian','stat')
			Exp:add(495)
			gamestate = 'alert'
		else
			Hurt(320)
			Alert:new('Attacked by a Toxic Scorpian','stat')
			gamestate = 'alert'
		end
	elseif key == 'r' then
		if Def >= 50 or math.random(1,20) == 5 then
			Alert:new('Ran Away','stat')
			Exp:add(430)
			gamestate = 'alert'
		else
			Hurt(320)
			Alert:new('Attacked by a Toxic Scorpian\n\nWhile Running Away','stat')
			gamestate = 'alert'
		end
	end
end
D['wasteland'][5] = dw5