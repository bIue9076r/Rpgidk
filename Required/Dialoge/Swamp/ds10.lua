ds10 = {}
ds10.n = 'Big Green Lake Fence'
ds10.m = 'you come across the Big Green Lake Fence'
ds10.m2 = ''
ds10.o = {'y:yes','n:no'}
ds10.f = ds10.o
ds10.i = image:getImage()
ds10.inDialoge = false
ds10.option = false
ds10.Hp = 100
function ds10.draw()
	if ds10.inDialoge == false then
		ds10.m = 'you come across the Big Green Lake Fence'
		ds10.m2 = 'go inside:'
		ds10.o = {'y:yes','n:no'}
	end
	love.graphics.draw(ds10.i,60,40)
	love.graphics.print({{0,0,0},ds10.n},60,260)
	love.graphics.print({{0,0,0},ds10.m},60,280)
	love.graphics.print({{0,0,0},ds10.m2},60,300)
	drawOptions(ds10.o)
end
function ds10.keypressed(key)
	if key == 'y' then
		D.location = D.GetSubWorld(8)
		Alert:new('entering the Big Green Lake','stat')
		gamestate = 'alert'
	elseif key == 'n' then
		Alert:new('left the Big Green Lake','stat')
		gamestate = 'alert'
	end
end
D['swamp'][10] = ds10