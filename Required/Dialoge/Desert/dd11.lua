dd11 = {}
dd11.n = 'Desert Town Gate'
dd11.m = 'you come across the Desert Town'
dd11.m2 = ''
dd11.o = {'y:yes','n:no'}
dd11.f = dd11.o
dd11.i = image:getImage('gate')
dd11.inDialoge = false
dd11.option = false
dd11.Hp = 100
function dd11.draw()
	if dd11.inDialoge == false then
		dd11.m = 'you come across the Desert Town'
		dd11.m2 = 'go inside:'
		dd11.o = {'y:yes','n:no'}
	end
	love.graphics.draw(dd11.i,60,40)
	love.graphics.print({{0,0,0},dd11.n},60,260)
	love.graphics.print({{0,0,0},dd11.m},60,280)
	love.graphics.print({{0,0,0},dd11.m2},60,300)
	drawOptions(dd11.o)
end
function dd11.keypressed(key)
	if key == 'y' then
		D.location = D.GetSubWorld(4)
		Alert:new('entering the Desert Town','stat')
		gamestate = 'alert'
	elseif key == 'n' then
		Alert:new('left the Desert Town','stat')
		gamestate = 'alert'
	end
end
D['desert'][11] = dd11