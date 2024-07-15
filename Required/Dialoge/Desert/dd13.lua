dd13 = {}
dd13.n = 'Desert Temple Gate'
dd13.m = 'you come across a Temple Gate'
dd13.m2 = ''
dd13.o = {'y:yes','n:no'}
dd13.f = dd13.o
dd13.i = image.getImage('door')--'Desert_Temple_Gate')
dd13.inDialoge = false
dd13.option = false
dd13.Hp = 0--100
function dd13.draw()
	if dd13.inDialoge == false then
		dd13.m = 'you come across a Temple Gate'
		dd13.m2 = 'go inside:'
		dd13.o = {'y:yes','n:no'}
	end
	love.graphics.draw(dd13.i,60,40)
	love.graphics.print({{0,0,0},dd13.n},60,260)
	love.graphics.print({{0,0,0},dd13.m},60,280)
	love.graphics.print({{0,0,0},dd13.m2},60,300)
	drawOptions(dd13.o)
end
function dd13.keypressed(key)
	if key == 'y' then
		D.location = D.GetSubWorld(6)
		Subselected = true
		Alert.new('entering the Desert Temple','stat')
		gamestate = 'alert'
	elseif key == 'n' then
		Alert.new('left the Desert Temple','stat')
		gamestate = 'alert'
	end
end
D['desert'][13] = dd13