dch4 = {}
dch4.n = 'Door'
dch4.m = 'You come across the\n\nexit'
dch4.m2 = ''
dch4.o = {'y:yes','n:no'}
dch4.f = dch4.o
dch4.i = image:getImage('')
dch4.FirstOption = false
dch4.SecondOption = false
dch4.option = false
dch4.Hp = 100
function dch4.draw()
	if dch4.inDialoge == false then
		dch4.m = 'You come across the\n\nexit'
		dch4.o = {'y:yes','n:no'}
	end
	love.graphics.draw(dch4.i,60,40)
	love.graphics.print({{0,0,0},dch4.n},60,260)
	love.graphics.print({{0,0,0},dch4.m},60,280)
	love.graphics.print({{0,0,0},dch4.m2},60,300)
	drawOptions(dch4.o)
end
function dch4.keypressed(key)
	if key == 'y' then
		D.SetLoc('city')
		Alert:new('Left the Capital Hall','stat')
		gamestate = 'alert'
	elseif key == 'n' then
		Alert:new('Stayed in the Capital Hall','stat')
		gamestate = 'alert'
	end
end
D['Capital Hall'][4] = dch4