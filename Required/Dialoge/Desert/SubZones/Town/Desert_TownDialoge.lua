--desert town dialoge
D['Desert Town'] = {}-- ???Atk to ???Atk
--[[

Not Completed File

]]

ddt1 = {}
ddt1.n = ''
ddt1.m = '"."'
ddt1.m2 = ''
ddt1.o = {'y:yes','r:run','f:fight','t:talk'}
ddt1.f = ddt1.o
ddt1.i = image.getImage('UNCOMPLETE_FILE_FIX_THIS')
ddt1.FirstOption = false
ddt1.SecondOption = false
ddt1.option = false
ddt1.Hp = 0
function ddt1.draw()
	if Rep >= 0 and ddt1.FirstOption == false then
	elseif Rep < 0 and ddt1.FirstOption == false then
	end
	love.graphics.draw(ddt1.i,60,40)
	love.graphics.print({{0,0,0},ddt1.n},60,260)
	love.graphics.print({{0,0,0},ddt1.m},60,280)
	love.graphics.print({{0,0,0},ddt1.m2},60,300)
	drawOptions(ddt1.o)
end
function ddt1.keypressed(key)
	
end
D['Desert Town'][1] = ddt1