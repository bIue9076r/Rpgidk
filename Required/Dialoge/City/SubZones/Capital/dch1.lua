dch1 = {}
dch1.n = 'Security Guard'
dch1.m = '"."'
dch1.m2 = ''
dch1.o = {'y:yes','r:run','f:fight','t:talk'}
dch1.f = dch1.o
dch1.i = image:getImage('')
dch1.FirstOption = false
dch1.SecondOption = false
dch1.option = false
dch1.Hp = 0--10
function dch1.draw()
	if Rep >= 0 and dch1.FirstOption == false then
	elseif Rep < 0 and dch1.FirstOption == false then
	end
	love.graphics.draw(dch1.i,60,40)
	love.graphics.print({{0,0,0},dch1.n},60,260)
	love.graphics.print({{0,0,0},dch1.m},60,280)
	love.graphics.print({{0,0,0},dch1.m2},60,300)
	drawOptions(dch1.o)
end
function dch1.keypressed(key)
	
end
D['capitalHall'][1] = dch1