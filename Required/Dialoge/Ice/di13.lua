di13 = {}
di13.n = 'Research Base Entrance'
di13.m = 'you come across a Research Base'
di13.m2 = ''
di13.o = {'key:desc'}
di13.f = di13.o
di13.i = image:getImage('')
di13.inDialoge = false
di13.option = false
di13.Hp = 0--100
function di13.draw()
	iceBaseFound = true
	if di13.inDialoge == false then
		di13.m = 'you come across a Research Base'
		di13.m2 = 'go inside:'
		di13.o = {'y:yes','n:no'}
	end
	love.graphics.draw(di13.i,60,40)
	love.graphics.print({{0,0,0},di13.n},60,260)
	love.graphics.print({{0,0,0},di13.m},60,280)
	love.graphics.print({{0,0,0},di13.m2},60,300)
	drawOptions(di13.o)
end
function di13.keypressed(key)
	if key == 'y' then
		D.location = D.GetSubWorld(11)
		Alert:new('entering the Research Base','stat')
		gamestate = 'alert'
	elseif key == 'n' then
		Alert:new('left the Research Base','stat')
		gamestate = 'alert'
	end
end
D['icespikes'][13] = di13