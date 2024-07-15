dw11 = {}
dw11.n = 'Reactor Entrance'
dw11.m = 'you come across the Reactor Entrance'
dw11.m2 = ''
dw11.o = {'y:yes','n:no'}
dw11.f = dw11.o
dw11.i = image.getImage('door')--'Reactor_entrance')
dw11.inDialoge = false
dw11.option = false
dw11.Hp = 0--100
function dw11.draw()
	if dw11.inDialoge == false then
		dw11.m = 'you come across the Reactor Entrance'
		dw11.m2 = 'go inside:'
		dw11.o = {'y:yes','n:no'}
	end
	love.graphics.draw(dw11.i,60,40)
	love.graphics.print({{0,0,0},dw11.n},60,260)
	love.graphics.print({{0,0,0},dw11.m},60,280)
	love.graphics.print({{0,0,0},dw11.m2},60,300)
	drawOptions(dw11.o)
end
function dw11.keypressed(key)
	if key == "y" then
		D.location = D.GetSubWorld(12)
		Subselected = true
		Alert.new('entering the Reactor','stat')
		gamestate = 'alert'
	elseif key == "n" then
		Alert.new('left the Reactor Entrance','stat')
		gamestate = 'alert'
	end
end
D['wasteland'][11] = dw11