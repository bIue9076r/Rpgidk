ds9 = {}
ds9.n = 'Goo puddle'
ds9.m = 'You come across a Goo Puddle'
ds9.m2 = ''
ds9.o = {'d:drink','l:leave'}
ds9.f = ds9.o
ds9.i = image:getImage()
ds9.inDialoge = false
ds9.option = false
ds9.Hp = 100
function ds9.draw()
	Alert:new("Area Not finished",'stat')
	gamestate = 'alert'
	if Rep >= 0 and ds9.inDialoge == false then
		ds9.m = '""'
		ds9.o = {'key:desc'}
	elseif Rep < 0 and ds9.inDialoge == false then
		ds9.m = '""'
		ds9.o = {'key:desc'}
	end
	love.graphics.draw(ds9.i,60,40)
	love.graphics.print({{0,0,0},ds9.n},60,260)
	love.graphics.print({{0,0,0},ds9.m},60,280)
	love.graphics.print({{0,0,0},ds9.m2},60,300)
	drawOptions(ds9.o)
end
function ds9.keypressed(key)
	if key == 'd' then
		Hurt(50)
		raiseAtk(15)
		Alert:new('Drank from the pool','stat')
		gamestate = 'alert'
	elseif key == 'l' then
		Alert:new('left the Area','stat')
		gamestate = 'alert'
	end
end
D['swamp'][9] = ds9