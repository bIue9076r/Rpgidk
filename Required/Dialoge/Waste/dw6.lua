dw6 = {}
dw6.n = 'Toxic Bore'
dw6.m = 'A Toxic Bore approaches you'
dw6.m2 = ''
dw6.o = {'f:fight','r:run'}
dw6.f = dw6.o
dw6.i = image:getImage('')
dw6.inDialoge = false
dw6.option = false
dw6.Hp = 60
dw6.Atk = 355
dw6.Def = 55
dw6.friendly = "Enemy"
function dw6.draw()
	dw6.m = 'A Toxic Bore approaches you'
	dw6.o = {'f:fight','r:run'}
	love.graphics.draw(dw6.i,60,40)
	love.graphics.print({{0,0,0},dw6.n},60,260)
	love.graphics.print({{0,0,0},dw6.m},60,280)
	love.graphics.print({{0,0,0},dw6.m2},60,300)
	drawOptions(dw6.o)
	drawstats(dw6)
end
function dw6.keypressed(key)
	if key == 'f' then
		if Atk >= 355 or math.random(1,20) == 5 then
			dw5.Hp = dw5.Hp - 1
			raiseAtk(38)
			raiseDef(12)
			raiseRep(130)
			raiseCash(130)
			Alert:new('Fought The Toxic Bore','stat')
			Exp:add(505)
			gamestate = 'alert'
		else
			Hurt(360)
			Alert:new('Attacked by a Toxic Bore','stat')
			gamestate = 'alert'
		end
	elseif key == 'r' then
		if Def >= 55 or math.random(1,20) == 5 then
			Alert:new('Ran Away','stat')
			Exp:add(470)
			gamestate = 'alert'
		else
			Hurt(360)
			Alert:new('Attacked by a Toxic Bore\n\nWhile Running Away','stat')
			gamestate = 'alert'
		end
	end
end
D['wasteland'][6] = dw6