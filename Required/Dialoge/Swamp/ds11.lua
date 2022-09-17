ds11 = {}
ds11.n = 'Sea Dock Gate'
ds11.m = 'you come across the Sea Dock Gate'
ds11.m2 = ''
ds11.o = {'y:yes','n:no'}
ds11.f = ds11.o
ds11.i = image:getImage()
ds11.inDialoge = false
ds11.option = false
ds11.Hp = 100
function ds11.draw()
	if ds11.inDialoge == false then
		ds11.m = 'you come across the Sea Dock Gate'
		ds11.m2 = 'go inside:'
		ds11.o = {'y:yes','n:no'}
	end
	love.graphics.draw(ds11.i,60,40)
	love.graphics.print({{0,0,0},ds11.n},60,260)
	love.graphics.print({{0,0,0},ds11.m},60,280)
	love.graphics.print({{0,0,0},ds11.m2},60,300)
	drawOptions(ds11.o)
end
function ds11.keypressed(key)
	if key == 'y' then
		D.location = D.GetSubWorld(7)
		Alert:new('entering the Sea Dock','stat')
		gamestate = 'alert'
	elseif key == 'n' then
		Alert:new('left the Sea Dock','stat')
		gamestate = 'alert'
	end
end
D['swamp'][11] = ds11