--big green lake dialoge
D['Big Green Lake'] = {}-- ???Atk to ???Atk
--[[

Not Completed File

]]

dbgl1 = {}
dbgl1.n = ''
dbgl1.m = '"."'
dbgl1.m2 = ''
dbgl1.o = {'y:yes','r:run','f:fight','t:talk'}
dbgl1.f = dbgl1.o
dbgl1.i = image.getImage('UNCOMPLETE_FILE_FIX_THIS')
dbgl1.FirstOption = false
dbgl1.SecondOption = false
dbgl1.option = false
dbgl1.Hp = 0
function dbgl1.draw()
	if Rep >= 0 and dbgl1.FirstOption == false then
	elseif Rep < 0 and dbgl1.FirstOption == false then
	end
	love.graphics.draw(dbgl1.i,60,40)
	love.graphics.print({{0,0,0},dbgl1.n},60,260)
	love.graphics.print({{0,0,0},dbgl1.m},60,280)
	love.graphics.print({{0,0,0},dbgl1.m2},60,300)
	drawOptions(dbgl1.o)
end
function dbgl1.keypressed(key)
	
end
D['Big Green Lake'][1] = dbgl1