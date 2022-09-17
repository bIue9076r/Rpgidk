di9 = {}
di9.n = 'Reindeer'
di9.m = 'A Reindeer Aproaches You'
di9.m2 = ''
di9.o = {'f:fight','r:run'}
di9.f = di9.o
di9.i = image:getImage('')
di9.inDialoge = false
di9.option = false
di9.Hp = 25
function di9.draw()
	if di9.inDialoge == false then
		di9.m = 'A Reindeer Aproaches You'
		di9.o = {'f:fight','r:run'}
	end
	love.graphics.draw(di9.i,60,40)
	love.graphics.print({{0,0,0},di9.n},60,260)
	love.graphics.print({{0,0,0},di9.m},60,280)
	love.graphics.print({{0,0,0},di9.m2},60,300)
	drawOptions(di9.o)
end
function di9.keypressed(key)
	if key == 'f' then
		if Atk >= 160 then
			di9.Hp = di9.Hp - 1
			raiseAtk(12)
			raiseDef(4)
			raiseRep(45)
			raiseCash(45)
			Alert:new('Fought The Reindeer','stat')
			Exp:add(165)
			gamestate = 'alert'
		else
			Hurt(95)
			Alert:new('Failed to Beat \nThe Reindeer','stat')
			gamestate = 'alert'
		end
	elseif key == 'r' then
		Alert:new('Ran Away','stat')
		gamestate = 'alert'
	end
end
D['icespikes'][9] = di9