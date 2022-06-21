ds9 = {}
ds9.n = 'Sea Dock Gate'
ds9.m = 'you come across the Sea Dock Gate'
ds9.m2 = ''
ds9.o = {'y:yes','n:no'}
ds9.f = ds9.o
ds9.i = image:getImage()
ds9.inDialoge = false
ds9.option = false
ds9.Hp = 100
function ds9.draw()
	if ds9.inDialoge == false then
		ds9.m = 'you come across the Sea Dock Gate'
		ds9.m2 = 'go inside:'
		ds9.o = {'y:yes','n:no'}
	end
	love.graphics.draw(ds9.i,60,40)
	love.graphics.print({{0,0,0},ds9.n},60,260)
	love.graphics.print({{0,0,0},ds9.m},60,280)
	love.graphics.print({{0,0,0},ds9.m2},60,300)
	drawOptions(ds9.o)
end
function ds9.keypressed(key)
	if key == 'y' then
		D.location = D.GetSubWorld(7)
		Alert:new('entering the Sea Dock','stat')
		gamestate = 'alert'
	elseif key == 'n' then
		Alert:new('left the Sea Dock','stat')
		gamestate = 'alert'
	end
end
D['swamp'][9] = ds9