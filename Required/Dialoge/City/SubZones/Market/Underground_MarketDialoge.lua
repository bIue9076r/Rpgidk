--undeground market dialoge
D['Underground Market'] = {}-- ???Atk to ???Atk
--[[

Not Completed File

]]

dum1 = {}
dum1.n = ''
dum1.m = '"."'
dum1.m2 = ''
dum1.o = {'y:yes','r:run','f:fight','t:talk'}
dum1.f = dum1.o
dum1.i = image:getImage('')
dum1.FirstOption = false
dum1.SecondOption = false
dum1.option = false
dum1.Hp = 0
function dum1.draw()
	if Rep >= 0 and dum1.FirstOption == false then
	elseif Rep < 0 and dum1.FirstOption == false then
	end
	love.graphics.draw(dum1.i,60,40)
	love.graphics.print({{0,0,0},dum1.n},60,260)
	love.graphics.print({{0,0,0},dum1.m},60,280)
	love.graphics.print({{0,0,0},dum1.m2},60,300)
	drawOptions(dum1.o)
end
function dum1.keypressed(key)
	
end
D['Underground Market'][1] = dum1