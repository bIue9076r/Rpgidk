dch3 = {}
dch3.n = 'President Harley'
dch3.m = '"."'
dch3.m2 = ''
dch3.o = {'y:yes','r:run','f:fight','t:talk'}
dch3.f = dch3.o
dch3.i = image:getImage('')
dch3.FirstOption = false
dch3.SecondOption = false
dch3.option = false
dch3.Hp = 0--1
function dch3.draw()
	if Rep >= 0 and dch3.FirstOption == false then
	elseif Rep < 0 and dch3.FirstOption == false then
	end
	love.graphics.draw(dch3.i,60,40)
	love.graphics.print({{0,0,0},dch3.n},60,260)
	love.graphics.print({{0,0,0},dch3.m},60,280)
	love.graphics.print({{0,0,0},dch3.m2},60,300)
	drawOptions(dch3.o)
end
function dch3.keypressed(key)
	
end
D['capitalHall'][1] = dch3