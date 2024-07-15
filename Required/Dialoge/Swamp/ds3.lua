ds3 = {}
ds3.n = 'Giant Fly'
ds3.m = 'A Giant Fly approches you'
ds3.m2 = ''
ds3.o = {'f:fight','r:run'}
ds3.f = ds3.o
ds3.i = image.getImage('Giant_fly')
ds3.inDialoge = false
ds3.option = false
ds3.Hp = 110
ds3.Atk = 140
ds3.Def = 38
ds3.friendly = "Enemy"
function ds3.draw()
	ds3.m = 'A Giant Fly Aproaches you'
	ds3.o = {'f:fight','r:run'}
	love.graphics.draw(ds3.i,60,40)
	love.graphics.print({{0,0,0},ds3.n},60,260)
	love.graphics.print({{0,0,0},ds3.m},60,280)
	love.graphics.print({{0,0,0},ds3.m2},60,300)
	drawOptions(ds3.o)
	drawstats(ds3)
end
function ds3.keypressed(key)
	if key == 'f' then
		if Atk >= 140 or math.random(1,30) == 5 then
			ds3.Hp = ds3.Hp - 1
			raiseAtk(10)
			raiseDef(3)
			raiseRep(45)
			raiseCash(65)
			Alert.new('Fought The Fly','stat')
			gamestate = 'alert'
			Exp.add(365)
		else
			Hurt(175)
			Alert.new('Stung by a Fly','stat')
			gamestate = 'alert'
		end
	elseif key == 'r' then
		if Def >= 38 or math.random(1,30) == 5 then
			Alert.new('Ran Away','stat')
			Exp.add(185)
			gamestate = 'alert'
		else
			Hurt(165)
			Alert.new('Stung by a Fly\n\nWhile Running Away','stat')
			gamestate = 'alert'
		end
	end
end
D['swamp'][3] = ds3