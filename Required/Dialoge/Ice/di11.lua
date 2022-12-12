di11 = {}
di11.n = 'Ice Cave Entrance'
di11.m = 'you come across the Ice Cave'
di11.m2 = ''
di11.o = {'key:desc'}
di11.f = di11.o
di11.i = image:getImage('')
di11.inDialoge = false
di11.option = false
di11.Hp = 0--100
function di11.draw()
	if di11.inDialoge == false then
		di11.m = 'you come across the Ice Cave'
		di11.m2 = 'go inside:'
		di11.o = {'y:yes','n:no'}
	end
	love.graphics.draw(di11.i,60,40)
	love.graphics.print({{0,0,0},di11.n},60,260)
	love.graphics.print({{0,0,0},di11.m},60,280)
	love.graphics.print({{0,0,0},di11.m2},60,300)
	drawOptions(di11.o)
end
function di11.keypressed(key)
	if key == 'y' then
		D.location = D.GetSubWorld(9)
		Alert:new('entering the Ice Cave','stat')
		gamestate = 'alert'
	elseif key == 'n' then
		Alert:new('left the Ice Cave','stat')
		gamestate = 'alert'
	end
end
D['icespikes'][11] = di11