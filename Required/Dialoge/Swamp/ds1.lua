ds1 = {}
ds1.n = 'Wild Goose'
ds1.m = 'A wild Goose approches you'
ds1.m2 = ''
ds1.o = {'f:fight','r:run'}
ds1.f = ds1.o
ds1.i = image:getImage('')
ds1.inDialoge = false
ds1.option = false
ds1.Hp = 50
ds1.Atk = 120
ds1.Def = 21
ds1.friendly = "Enemy"
function ds1.draw()
	ds1.m = 'A Wild Goose Aproaches you'
	ds1.o = {'f:fight','r:run'}
	love.graphics.draw(ds1.i,60,40)
	love.graphics.print({{0,0,0},ds1.n},60,260)
	love.graphics.print({{0,0,0},ds1.m},60,280)
	love.graphics.print({{0,0,0},ds1.m2},60,300)
	drawOptions(ds1.o)
	drawstats(ds1)
end
function ds1.keypressed(key)
	if key == 'f' then
		if Atk >= 120 or math.random(1,20) == 5 then
			ds1.Hp = ds1.Hp - 1
			raiseAtk(9)
			raiseDef(3)
			raiseRep(30)
			raiseCash(55)
			Alert:new('Fought The Goose','stat')
			gamestate = 'alert'
			Exp:add(325)
		else
			Hurt(145)
			Alert:new('Pecked by a Goose','stat')
			gamestate = 'alert'
		end
	elseif key == 'r' then
		if Def >= 21 or math.random(1,20) == 5 then
			Alert:new('Ran Away','stat')
			Exp:add(175)
			gamestate = 'alert'
		else
			Hurt(110)
			Alert:new('Pecked by a Goose\n\nWhile Running Away','stat')
			gamestate = 'alert'
		end
	end
end
D['swamp'][1] = ds1