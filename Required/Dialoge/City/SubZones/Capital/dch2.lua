dch2 = {}
dch2.n = 'Janet Drew'
dch2.m = '"."'
dch2.m2 = ''
dch2.o = {'y:yes','r:run','f:fight','t:talk'}
dch2.f = dch2.o
dch2.i = image:getImage('')
dch2.FirstOption = false
dch2.SecondOption = false
dch2.option = false
dch2.Hp = 0--1
function dch2.draw()
	if Rep >= 0 and dch2.FirstOption == false then
	elseif Rep < 0 and dch2.FirstOption == false then
	end
	love.graphics.draw(dch2.i,60,40)
	love.graphics.print({{0,0,0},dch2.n},60,260)
	love.graphics.print({{0,0,0},dch2.m},60,280)
	love.graphics.print({{0,0,0},dch2.m2},60,300)
	drawOptions(dch2.o)
end
function dch2.keypressed(key)
	
end
D['capitalHall'][2] = dch2