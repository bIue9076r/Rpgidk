dw9 = {}
dw9.n = 'Sand Monster'
dw9.m = 'A Sand Monster approaches you'
dw9.m2 = ''
dw9.o = {'f:fight','r:run'}
dw9.f = dw9.o
dw9.i = image:getImage('')
dw9.inDialoge = false
dw9.option = false
dw9.Hp = 10
function dw9.draw()
	dw9.m = 'A Sand Monster approaches you'
	dw9.o = {'f:fight','r:run'}
	love.graphics.draw(dw9.i,60,40)
	love.graphics.print({{0,0,0},dw9.n},60,260)
	love.graphics.print({{0,0,0},dw9.m},60,280)
	love.graphics.print({{0,0,0},dw9.m2},60,300)
	drawOptions(dw9.o)
end
function dw9.keypressed(key)
	if key == 'f' then
		if Atk >= 800 or math.random(1,20) == 5 then
			dw5.Hp = dw5.Hp - 1
			raiseAtk(45)
			raiseDef(15)
			raiseRep(150)
			raiseCash(150)
			Alert:new('Fought The Sand Monster','stat')
			Exp:add(600)
			gamestate = 'alert'
		else
			Hurt(450)
			Alert:new('Attacked by a Sand Monster','stat')
			gamestate = 'alert'
		end
	elseif key == 'r' then
		if Def >= 80 or math.random(1,20) == 5 then
			Alert:new('Ran Away','stat')
			Exp:add(600)
			gamestate = 'alert'
		else
			Hurt(450)
			Alert:new('Attacked by a Sand Monster \nWhile Running Away','stat')
			gamestate = 'alert'
		end
	end
end
D['wasteland'][9] = dw9