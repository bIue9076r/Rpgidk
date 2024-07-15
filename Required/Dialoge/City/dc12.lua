dc12 = {}
dc12.n = 'Capital Hall door'
dc12.m = 'you come across the Capital Hall'
dc12.m2 = ''
dc12.o = {'y:yes','n:no'}
dc12.f = dc12.o
dc12.i = image.getImage('door')
dc12.inDialoge = false
dc12.option = false
dc12.Hp = 0--100
dc12.soundOpts = {}
function dc12.draw()
	if dc12.inDialoge == false then
		dc12.m = 'you come across the Capital Hall'
		dc12.m2 = 'go inside:'
		dc12.o = {'y:yes','n:no'}
	end
	love.graphics.draw(dc12.i,60,40)
	love.graphics.print({{0,0,0},dc12.n},60,260)
	love.graphics.print({{0,0,0},dc12.m},60,280)
	love.graphics.print({{0,0,0},dc12.m2},60,300)
	drawOptions(dc12.o)
end
function dc12.keypressed(key)
	if key == 'y' then
		D.location = D.GetSubWorld(2)
		Subselected = true
		Alert.new('entering the Capital Hall','stat')
		gamestate = 'alert'
	elseif key == 'n' then
		Alert.new('left the Capital Hall','stat')
		gamestate = 'alert'
	end
end
D['city'][12] = dc12