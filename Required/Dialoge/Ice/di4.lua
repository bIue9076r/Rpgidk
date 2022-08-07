di4 = {}
di4.n = 'Snow demon'
di4.m = 'A Snow demon crawls out of the Snow'
di4.m2 = ''
di4.o = {'f:fight','r:run'}
di4.f = di4.o
di4.i = image:getImage('')
di4.inDialoge = false
di4.option = false
di4.Hp = 5
function di4.draw()
	di4.m = 'A Snow demon crawls out of the Snow'
	di4.o = {'f:fight','r:run'}
	love.graphics.draw(di4.i,60,40)
	love.graphics.print({{0,0,0},di4.n},60,260)
	love.graphics.print({{0,0,0},di4.m},60,280)
	love.graphics.print({{0,0,0},di4.m2},60,300)
	drawOptions(di4.o)
end
function di4.keypressed(key)
	if key == "f" then
		if Atk >= 350 then
			di4.Hp = di4.Hp - 1
			raiseAtk(37)
			raiseDef(13)
			raiseRep(150)
			raiseCash(150)
			Alert:new('Fought The Snow demon','stat')
			Exp:add(500)
			gamestate = 'alert'
		else
			Hurt(350)
			Alert:new('Attacked by a Snow demon','stat')
			gamestate = 'alert'
		end
	elseif key == "r" then
		if Def >= 10  then
			Alert:new('Ran Away','stat')
			Exp:add(75)
			gamestate = 'alert'
		else
			Hurt(320)
			Alert:new('Attacked by a Snow demon \nWhile Running Away','stat')
			gamestate = 'alert'
		end
	end
end
D['icespikes'][4] = di4