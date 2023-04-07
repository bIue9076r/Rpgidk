dc13 = {}
dc13.n = 'Underground Market door'
dc13.m = 'you come across the Underground Market'
dc13.m2 = ''
dc13.o = {'y:yes','n:no'}
dc13.f = dc13.o
dc13.i = image:getImage('door')
dc13.inDialoge = false
dc13.option = false
dc13.Hp = 0--100
dc13.soundOpts = {}
function dc13.draw()
	if dc13.inDialoge == false then
		dc13.m = 'you come across the Underground\n\nMarket go inside:'
		dc13.m2 = ''
		dc13.o = {'y:yes','n:no'}
	end
	love.graphics.draw(dc13.i,60,40)
	love.graphics.print({{0,0,0},dc13.n},60,260)
	love.graphics.print({{0,0,0},dc13.m},60,280)
	love.graphics.print({{0,0,0},dc13.m2},60,300)
	drawOptions(dc13.o)
end
function dc13.keypressed(key)
	if key == 'y' then
		D.location = D.GetSubWorld(3)
		Subselected = true
		Alert:new('entering the Underground Market','stat')
		gamestate = 'alert'
	elseif key == 'n' then
		Alert:new('left the Underground Market','stat')
		gamestate = 'alert'
	end
end
D['city'][13] = dc13