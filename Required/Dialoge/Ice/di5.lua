di5 = {}
di5.n = 'Yeti'
di5.m = 'A Yeti Approaches You'
di5.m2 = ''
di5.o = {'f:fight','r:run'}
di5.f = di5.o
di5.i = image:getImage('')
di5.inDialoge = false
di5.option = false
di5.Hp = 3
function di5.draw()
	di5.m = 'A Yeti Approaches You'
	di5.o = {'f:fight','r:run'}
	love.graphics.draw(di5.i,60,40)
	love.graphics.print({{0,0,0},di5.n},60,260)
	love.graphics.print({{0,0,0},di5.m},60,280)
	love.graphics.print({{0,0,0},di5.m2},60,300)
	drawOptions(di5.o)
end
function di5.keypressed(key)
	if key == "f" then
		if Atk >= 500 or math.random(1,20) == 5 then
			di5.Hp = di5.Hp - 1
			raiseAtk(46)
			raiseDef(23)
			raiseRep(200)
			raiseCash(150)
			Alert:new('Fought The Yeti','stat')
			Exp:add(460)
			gamestate = 'alert'
		else
			Hurt(300)
			Alert:new('Attacked by a Yeti','stat')
			gamestate = 'alert'
		end
	elseif key == "r" then
		if Def >= 55 or math.random(1,20) == 5 then
			Alert:new('Ran Away','stat')
			Exp:add(375)
			gamestate = 'alert'
		else
			Hurt(250)
			Alert:new('Attacked by a Yeti \nWhile Running Away','stat')
			gamestate = 'alert'
		end
	end
end
D['icespikes'][5] = di5