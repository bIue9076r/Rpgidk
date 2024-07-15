--desert mine dialoge
D['Desert Mine'] = {}-- ???Atk to ???Atk
--[[

Not Completed File

]]

ddm1 = {}
ddm1.n = ''
ddm1.m = '"."'
ddm1.m2 = ''
ddm1.o = {'y:yes','r:run','f:fight','t:talk'}
ddm1.f = ddm1.o
ddm1.i = image.getImage('UNCOMPLETE_FILE_FIX_THIS')
ddm1.FirstOption = false
ddm1.SecondOption = false
ddm1.option = false
ddm1.Hp = 0
function ddm1.draw()
	if Rep >= 0 and ddm1.FirstOption == false then
	elseif Rep < 0 and ddm1.FirstOption == false then
	end
	love.graphics.draw(ddm1.i,60,40)
	love.graphics.print({{0,0,0},ddm1.n},60,260)
	love.graphics.print({{0,0,0},ddm1.m},60,280)
	love.graphics.print({{0,0,0},ddm1.m2},60,300)
	drawOptions(ddm1.o)
end
function ddm1.keypressed(key)
	
end
D['Desert Mine'][1] = ddm1