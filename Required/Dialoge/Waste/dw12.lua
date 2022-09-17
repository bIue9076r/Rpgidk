dw12 = {}
dw12.n = 'Destroyed Town Gate'
dw12.m = 'you come across the Destroyed Town Gate'
dw12.m2 = ''
dw12.o = {'y:yes','n:no'}
dw12.f = dw12.o
dw12.i = image:getImage('')
dw12.inDialoge = false
dw12.option = false
dw12.Hp = 100
function dw12.draw()
	if dw12.inDialoge == false then
		dw12.m = 'you come across the Destroyed Town Gate'
		dw12.m2 = 'go inside:'
		dw12.o = {'y:yes','n:no'}
	end
	love.graphics.draw(dw12.i,60,40)
	love.graphics.print({{0,0,0},dw12.n},60,260)
	love.graphics.print({{0,0,0},dw12.m},60,280)
	love.graphics.print({{0,0,0},dw12.m2},60,300)
	drawOptions(dw12.o)
end
function dw12.keypressed(key)
	if key == "y" then
		D.location = D.GetSubWorld(13)
		Alert:new('entering the Destroyed Town','stat')
		gamestate = 'alert'
	elseif key == "n" then
		Alert:new('left the Destroyed Town Gate','stat')
		gamestate = 'alert'
	end
end
D['wasteland'][12] = dw12