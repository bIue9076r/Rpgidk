--reactor dialoge
D['Reactor'] = {}-- ???Atk to ???Atk
--[[

Not Completed File

]]

dr1 = {}
dr1.n = ''
dr1.m = '"."'
dr1.m2 = ''
dr1.o = {'y:yes','r:run','f:fight','t:talk'}
dr1.f = dr1.o
dr1.i = image.getImage('UNCOMPLETE_FILE_FIX_THIS')
dr1.FirstOption = false
dr1.SecondOption = false
dr1.option = false
dr1.Hp = 0
function dr1.draw()
	if Rep >= 0 and dr1.FirstOption == false then
	elseif Rep < 0 and dr1.FirstOption == false then
	end
	love.graphics.draw(dr1.i,60,40)
	love.graphics.print({{0,0,0},dr1.n},60,260)
	love.graphics.print({{0,0,0},dr1.m},60,280)
	love.graphics.print({{0,0,0},dr1.m2},60,300)
	drawOptions(dr1.o)
end
function dr1.keypressed(key)
	
end
D['Reactor'][1] = dr1