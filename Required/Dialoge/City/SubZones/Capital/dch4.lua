dch4 = {}
dch4.n = 'Door'
dch4.m = 'You come across the exit to Capital Hall'
dch4.m2 = ''
dch4.o = {'y:yes','r:run','f:fight','t:talk'}
dch4.f = dch4.o
dch4.i = image:getImage('')
dch4.FirstOption = false
dch4.SecondOption = false
dch4.option = false
dch4.Hp = 0
function dch4.draw()
	if Rep >= 0 and dch4.FirstOption == false then
	elseif Rep < 0 and dch4.FirstOption == false then
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
		Alert:new('Leaving the Capital Hall','stat')
		gamestate = 'alert'
	elseif key == 'n' then
		Alert:new('Staying in the Capital Hall','stat')
		gamestate = 'alert'
	end
end
D['Capital Hall'][4] = dch4