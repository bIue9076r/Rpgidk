dw1 = {}
dw1.n = 'Zombie'
dw1.m = 'A Zombie approaches you'
dw1.m2 = ''
dw1.o = {'f:fight','r:run'}
dw1.f = dw1.o
dw1.i = image:getImage('')
dw1.inDialoge = false
dw1.option = false
dw1.Hp = 250
dw1.Atk = 325
dw1.Def = 49
dw1.friendly = "Enemy"
function dw1.draw()
	dw1.m = 'A Zombie approaches you'
	dw1.o = {'f:fight','r:run'}
	love.graphics.draw(dw1.i,60,40)
	love.graphics.print({{0,0,0},dw1.n},60,260)
	love.graphics.print({{0,0,0},dw1.m},60,280)
	love.graphics.print({{0,0,0},dw1.m2},60,300)
	drawOptions(dw1.o)
	drawstats(dw1)
end
function dw1.keypressed(key)
	if key == 'f' then
		if Atk >= 325 or math.random(1,20) == 5 then
			dw1.Hp = dw1.Hp - 1
			raiseAtk(32)
			raiseDef(11)
			raiseRep(110)
			raiseCash(100)
			Alert:new('Fought The Zombie','stat')
			Exp:add(465)
			gamestate = 'alert'
		else
			Hurt(300)
			Infected = true
			Alert:new('Infected by a Zombie','stat')
			gamestate = 'alert'
		end
	elseif key == 'r' then
		if Def >= 49 or math.random(1,20) == 5 then
			Alert:new('Ran Away','stat')
			Exp:add(400)
			gamestate = 'alert'
		else
			Hurt(300)
			Alert:new('Infected by a Zombie\n\nWhile Running Away','stat')
			gamestate = 'alert'
		end
	end
end
D['wasteland'][1] = dw1