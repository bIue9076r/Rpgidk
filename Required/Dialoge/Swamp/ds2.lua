ds2 = {}
ds2.n = 'Giant Frog'
ds2.m = 'A Giant Frog approches you'
ds2.m2 = ''
ds2.o = {'f:fight','r:run'}
ds2.f = ds2.o
ds2.i = image:getImage('')
ds2.inDialoge = false
ds2.option = false
ds2.Hp = 100
function ds2.draw()
	ds2.m = 'A Giant Frog Aproaches you'
	ds2.o = {'f:fight','r:run'}
	love.graphics.draw(ds2.i,60,40)
	love.graphics.print({{0,0,0},ds2.n},60,260)
	love.graphics.print({{0,0,0},ds2.m},60,280)
	love.graphics.print({{0,0,0},ds2.m2},60,300)
	drawOptions(ds2.o)
end
function ds2.keypressed(key)
	if key == 'f' then
		if Atk >= 130 or math.random(1,25) == 5 then
			ds2.Hp = ds2.Hp - 1
			raiseAtk(9)
			raiseDef(3)
			raiseRep(35)
			raiseCash(60)
			Alert:new('Fought The Frog','stat')
			gamestate = 'alert'
			Exp:add(345)
		else
			Hurt(155)
			Alert:new('Slaped by a Frog','stat')
			gamestate = 'alert'
		end
	elseif key == 'r' then
		if Def >= 31 or math.random(1,25) == 5 then
			Alert:new('Ran Away','stat')
			Exp:add(175)
			gamestate = 'alert'
		else
			Hurt(120)
			Alert:new('Slaped by a Frog \nWhile Running Away','stat')
			gamestate = 'alert'
		end
	end
end
D['swamp'][2] = ds2