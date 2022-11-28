dw10 = {}
dw10.n = 'Toxic Lizard'
dw10.m = 'A Toxic Lizard approaches you'
dw10.m2 = ''
dw10.o = {'f:fight','r:run'}
dw10.f = dw10.o
dw10.i = image:getImage('')
dw10.inDialoge = false
dw10.option = false
dw10.Hp = 100
dw10.Atk = 365
dw10.Def = 58
dw10.friendly = "Enemy"
function dw10.draw()
	dw10.m = 'A Toxic Lizard approaches you'
	dw10.o = {'f:fight','r:run'}
	love.graphics.draw(dw10.i,60,40)
	love.graphics.print({{0,0,0},dw10.n},60,260)
	love.graphics.print({{0,0,0},dw10.m},60,280)
	love.graphics.print({{0,0,0},dw10.m2},60,300)
	drawOptions(dw10.o)
	drawstats(dw10)
end
function dw10.keypressed(key)
	if key == 'f' then
		if Atk >= 365 or math.random(1,20) == 5 then
			dw5.Hp = dw5.Hp - 1
			raiseAtk(38)
			raiseDef(13)
			raiseRep(140)
			raiseCash(140)
			Alert:new('Fought The Toxic Lizard','stat')
			Exp:add(565)
			gamestate = 'alert'
		else
			Hurt(370)
			Alert:new('Attacked by a Toxic Lizard','stat')
			gamestate = 'alert'
		end
	elseif key == 'r' then
		if Def >= 58 or math.random(1,20) == 5 then
			Alert:new('Ran Away','stat')
			Exp:add(565)
			gamestate = 'alert'
		else
			Hurt(370)
			Alert:new('Attacked by a Toxic Lizard\n\nWhile Running Away','stat')
			gamestate = 'alert'
		end
	end
end
D['wasteland'][10] = dw10