dc11 = {}
dc11.n = 'Libary door'
dc11.m = 'you come across the libary'
dc11.m2 = ''
dc11.o = {'y:yes','n:no'}
dc11.f = dc11.o
dc11.i = image.getImage('door')
dc11.inDialoge = false
dc11.option = false
dc11.Hp = 0--100
dc11.soundOpts = {}
function dc11.draw()
	if dc11.inDialoge == false then
		dc11.m = 'you come across the libary'
		dc11.m2 = 'go inside:'
		dc11.o = {'y:yes','n:no'}
	end
	love.graphics.draw(dc11.i,60,40)
	love.graphics.print({{0,0,0},dc11.n},60,260)
	love.graphics.print({{0,0,0},dc11.m},60,280)
	love.graphics.print({{0,0,0},dc11.m2},60,300)
	drawOptions(dc11.o)
end
function dc11.keypressed(key)
	if key == 'y' then
		D.location = D.GetSubWorld(1)
		Subselected = true
		Alert.new('entering the libary','stat')
		gamestate = 'alert'
	elseif key == 'n' then
		Alert.new('left the libary','stat')
		gamestate = 'alert'
	end
end
D['city'][11] = dc11