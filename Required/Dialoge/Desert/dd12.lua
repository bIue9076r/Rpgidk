dd12 = {}
dd12.n = 'Desert Mine door'
dd12.m = 'you come across the Desert Mine'
dd12.m2 = ''
dd12.o = {'y:yes','n:no'}
dd12.f = dd12.o
dd12.i = image.getImage('door')
dd12.inDialoge = false
dd12.option = false
dd12.Hp = 0--100
function dd12.draw()
	if dd12.inDialoge == false then
		dd12.m = 'you come across the Desert Mine'
		dd12.m2 = 'go inside:'
		dd12.o = {'y:yes','n:no'}
	end
	love.graphics.draw(dd12.i,60,40)
	love.graphics.print({{0,0,0},dd12.n},60,260)
	love.graphics.print({{0,0,0},dd12.m},60,280)
	love.graphics.print({{0,0,0},dd12.m2},60,300)
	drawOptions(dd12.o)
end
function dd12.keypressed(key)
	if key == 'y' then
		D.location = D.GetSubWorld(5)
		Subselected = true
		Alert.new('entering the Desert Mine','stat')
		gamestate = 'alert'
	elseif key == 'n' then
		Alert.new('left the Desert Mine','stat')
		gamestate = 'alert'
	end
end
D['desert'][12] = dd12