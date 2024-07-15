ds12 = {}
ds12.n = 'Big Green Lake Fence'
ds12.m = 'you come across the Big Green Lake Fence'
ds12.m2 = ''
ds12.o = {'y:yes','n:no'}
ds12.f = ds12.o
ds12.i = image.getImage('door')--"Big_green_lake_fence")
ds12.inDialoge = false
ds12.option = false
ds12.Hp = 0--100
function ds12.draw()
	if ds12.inDialoge == false then
		ds12.m = 'you come across the Lake Fence'
		ds12.m2 = 'go inside:'
		ds12.o = {'y:yes','n:no'}
	end
	love.graphics.draw(ds12.i,60,40)
	love.graphics.print({{0,0,0},ds12.n},60,260)
	love.graphics.print({{0,0,0},ds12.m},60,280)
	love.graphics.print({{0,0,0},ds12.m2},60,300)
	drawOptions(ds12.o)
end
function ds12.keypressed(key)
	if key == 'y' then
		D.location = D.GetSubWorld(8)
		Subselected = true
		Alert.new('entering the Big Green Lake','stat')
		gamestate = 'alert'
	elseif key == 'n' then
		Alert.new('left the Big Green Lake','stat')
		gamestate = 'alert'
	end
end
D['swamp'][12] = ds12