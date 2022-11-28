--sea dock dialoge
D['Sea Dock'] = {}-- ???Atk to ???Atk
--[[

Not Completed File

]]

dsd1 = {}
dsd1.n = ''
dsd1.m = '"."'
dsd1.m2 = ''
dsd1.o = {'y:yes','r:run','f:fight','t:talk'}
dsd1.f = dsd1.o
dsd1.i = image:getImage('')
dsd1.FirstOption = false
dsd1.SecondOption = false
dsd1.option = false
dsd1.Hp = 0
function dsd1.draw()
	if Rep >= 0 and dsd1.FirstOption == false then
	elseif Rep < 0 and dsd1.FirstOption == false then
	end
	love.graphics.draw(dsd1.i,60,40)
	love.graphics.print({{0,0,0},dsd1.n},60,260)
	love.graphics.print({{0,0,0},dsd1.m},60,280)
	love.graphics.print({{0,0,0},dsd1.m2},60,300)
	drawOptions(dsd1.o)
end
function dsd1.keypressed(key)
	
end
D['Sea Dock'][1] = dsd1