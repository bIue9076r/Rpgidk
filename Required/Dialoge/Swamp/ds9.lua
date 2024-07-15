ds9 = {}
ds9.n = 'Goo puddle'
ds9.m = 'You come across a Goo Puddle'
ds9.m2 = ''
ds9.o = {'d:drink','l:leave'}
ds9.f = ds9.o
ds9.i = image.getImage("Goo_puddle")
ds9.inDialoge = false
ds9.option = false
ds9.Hp = 100
ds9.Atk = 50
ds9.Def = 50
ds9.friendly = "Neutral"
function ds9.draw()
	ds9.m = 'You come across a Goo Puddle'
	ds9.o = {'d:drink','s:splash','l:leave'}
	love.graphics.draw(ds9.i,60,40)
	love.graphics.print({{0,0,0},ds9.n},60,260)
	love.graphics.print({{0,0,0},ds9.m},60,280)
	love.graphics.print({{0,0,0},ds9.m2},60,300)
	drawOptions(ds9.o)
	drawstats(ds9)
end
function ds9.keypressed(key)
	if key == 'd' then
		ds9.Hp = ds9.Hp - 1
		Hurt(50)
		raiseAtk(15)
		Alert.new('Drank from the pool','stat')
		gamestate = 'alert'
	elseif key == 's' then
		ds9.Hp = ds9.Hp - 1
		Alert.new('Splashed the pool','stat')
		gamestate = 'alert'
	elseif key == 'l' then
		Alert.new('left the Area','stat')
		gamestate = 'alert'
	end
end
D['swamp'][9] = ds9