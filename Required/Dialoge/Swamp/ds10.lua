ds10 = {}
ds10.n = 'Wild Turtle'
ds10.m = 'A Wild Turtle approches you'
ds10.m2 = ''
ds10.o = {'f:fight','r:run'}
ds10.f = ds10.o
ds10.i = image.getImage('Wild_turtle')
ds10.inDialoge = false
ds10.option = false
ds10.Hp = 50
ds10.Atk = 130
ds10.Def = 24
ds10.friendly = "Enemy"
function ds10.draw()
	ds10.m = 'A Wild Turtle Aproaches you'
	ds10.o = {'f:fight','r:run'}
	love.graphics.draw(ds10.i,60,40)
	love.graphics.print({{0,0,0},ds10.n},60,260)
	love.graphics.print({{0,0,0},ds10.m},60,280)
	love.graphics.print({{0,0,0},ds10.m2},60,300)
	drawOptions(ds10.o)
	drawstats(ds10)
end
function ds10.keypressed(key)
	if key == 'f' then
		if Atk >= 130 or math.random(1,20) == 5 then
			ds10.Hp = ds10.Hp - 1
			raiseAtk(10)
			raiseDef(4)
			raiseRep(35)
			raiseCash(65)
			Alert.new('Fought The Turtle','stat')
			gamestate = 'alert'
			Exp.add(335)
		else
			Hurt(155)
			Alert.new('Biten by a Turtle','stat')
			gamestate = 'alert'
		end
	elseif key == 'r' then
		if Def >= 24 or math.random(1,20) == 5 then
			Alert.new('Ran Away','stat')
			Exp.add(185)
			gamestate = 'alert'
		else
			Hurt(120)
			Alert.new('Biten by a Turtle\n\nWhile Running Away','stat')
			gamestate = 'alert'
		end
	end
end
D['swamp'][10] = ds10