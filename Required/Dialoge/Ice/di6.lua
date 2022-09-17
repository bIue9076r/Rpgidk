di6 = {}
di6.n = 'Lost Researcher'
di6.m = '"Have you seen a base nearby"'
di6.m2 = ''
di6.o = {'t:tell','l:lie','f:fight','r:run'}
di6.f = di6.o
di6.i = image:getImage('')
di6.inDialoge = false
di6.option = false
di6.Hp = 1
function di6.draw()
	if di6.inDialoge == false then
		di6.m = '"Have you seen a base nearby"'
		di6.o = {'t:tell','l:lie','f:fight','r:run'}
	end
	love.graphics.draw(di6.i,60,40)
	love.graphics.print({{0,0,0},di6.n},60,260)
	love.graphics.print({{0,0,0},di6.m},60,280)
	love.graphics.print({{0,0,0},di6.m2},60,300)
	drawOptions(di6.o)
end
function di6.keypressed(key)
	if key == 't' then
		if iceBaseFound == true then
			di6.Hp = di6.Hp - 1
			helpedResearcher = true
			raiseRep(10)
			Alert:new('Gave directions','stat')
			gamestate = 'alert'
		else
			di6.Hp = di6.Hp - 1
			lowerRep(10)
			Alert:new('Lied to The Researcher','stat')
			gamestate = 'alert'
		end
	elseif key == 'l' then
		di6.Hp = di6.Hp - 1
		lowerRep(10)
		Alert:new('Lied to The Researcher','stat')
		gamestate = 'alert'
	elseif key == 'f' then
		if Atk >= 45 or math.random(1,20) == 5 then
			di6.Hp = di6.Hp - 1
			raiseAtk(4)
			raiseDef(1)
			lowerRep(100)
			CrimeUpdate(3)
			Alert:new('Fought The Researcher','stat')
			Exp:add(50)
			gamestate = 'alert'
		else
			Hurt(50)
			CrimeUpdate(1)
			Alert:new('Attacked by The Researcher','stat')
			gamestate = 'alert'
		end
	elseif key == 'r' then
		Alert:new('Ran Away','stat')
		gamestate = 'alert'
	end
end
D['icespikes'][6] = di6