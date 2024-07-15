--ice cave dialoge
D['Ice Cave'] = {}-- ???Atk to ???Atk
--[[

Not Completed File

]]

dic1 = {}
dic1.n = ''
dic1.m = '"."'
dic1.m2 = ''
dic1.o = {'y:yes','r:run','f:fight','t:talk'}
dic1.f = dic1.o
dic1.i = image.getImage('UNCOMPLETE_FILE_FIX_THIS')
dic1.FirstOption = false
dic1.SecondOption = false
dic1.option = false
dic1.Hp = 0
function dic1.draw()
	if Rep >= 0 and dic1.FirstOption == false then
	elseif Rep < 0 and dic1.FirstOption == false then
	end
	love.graphics.draw(dic1.i,60,40)
	love.graphics.print({{0,0,0},dic1.n},60,260)
	love.graphics.print({{0,0,0},dic1.m},60,280)
	love.graphics.print({{0,0,0},dic1.m2},60,300)
	drawOptions(dic1.o)
end
function dic1.keypressed(key)
	
end
D['Ice Cave'][1] = dic1