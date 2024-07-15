--igloo town dialoge
D['Igloo Town'] = {}-- ???Atk to ???Atk
--[[

Not Completed File

]]

dit1 = {}
dit1.n = ''
dit1.m = '"."'
dit1.m2 = ''
dit1.o = {'y:yes','r:run','f:fight','t:talk'}
dit1.f = dit1.o
dit1.i = image.getImage('UNCOMPLETE_FILE_FIX_THIS')
dit1.FirstOption = false
dit1.SecondOption = false
dit1.option = false
dit1.Hp = 0
function dit1.draw()
	if Rep >= 0 and dit1.FirstOption == false then
	elseif Rep < 0 and dit1.FirstOption == false then
	end
	love.graphics.draw(dit1.i,60,40)
	love.graphics.print({{0,0,0},dit1.n},60,260)
	love.graphics.print({{0,0,0},dit1.m},60,280)
	love.graphics.print({{0,0,0},dit1.m2},60,300)
	drawOptions(dit1.o)
end
function dit1.keypressed(key)
	
end
D['Igloo Town'][1] = dit1