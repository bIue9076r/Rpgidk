di12 = {}
di12.n = 'Igloo Town Gate'
di12.m = 'you come across the Igloo Town'
di12.m2 = ''
di12.o = {'key:desc'}
di12.f = di12.o
di12.i = image:getImage('')
di12.inDialoge = false
di12.option = false
di12.Hp = 100
function di12.draw()
	if di12.inDialoge == false then
		di12.m = 'you come across the Igloo Town Gate'
		di12.m2 = 'go inside:'
		di12.o = {'y:yes','n:no'}
	end
	love.graphics.draw(di12.i,60,40)
	love.graphics.print({{0,0,0},di12.n},60,260)
	love.graphics.print({{0,0,0},di12.m},60,280)
	love.graphics.print({{0,0,0},di12.m2},60,300)
	drawOptions(di12.o)
end
function di12.keypressed(key)
	if key == 'y' then
		D.location = D.GetSubWorld(10)
		Alert:new('entering the Igloo Town','stat')
		gamestate = 'alert'
	elseif key == 'n' then
		Alert:new('left the Igloo Town','stat')
		gamestate = 'alert'
	end
end
D['icespikes'][12] = di12