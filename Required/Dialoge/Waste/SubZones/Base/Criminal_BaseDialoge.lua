--criminal base dialoge
D['Criminal Base'] = {}-- ???Atk to ???Atk
--[[

Not Completed File

]]

dcb1 = {}
dcb1.n = ''
dcb1.m = '"."'
dcb1.m2 = ''
dcb1.o = {'y:yes','r:run','f:fight','t:talk'}
dcb1.f = dcb1.o
dcb1.i = image:getImage('')
dcb1.FirstOption = false
dcb1.SecondOption = false
dcb1.option = false
dcb1.Hp = 0
function dcb1.draw()
	if Rep >= 0 and dcb1.FirstOption == false then
	elseif Rep < 0 and dcb1.FirstOption == false then
	end
	love.graphics.draw(dcb1.i,60,40)
	love.graphics.print({{0,0,0},dcb1.n},60,260)
	love.graphics.print({{0,0,0},dcb1.m},60,280)
	love.graphics.print({{0,0,0},dcb1.m2},60,300)
	drawOptions(dcb1.o)
end
function dcb1.keypressed(key)
	
end
D['Criminal Base'][1] = dcb1