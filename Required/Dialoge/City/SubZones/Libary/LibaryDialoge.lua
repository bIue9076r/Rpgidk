--libary dialoge
D['libary'] = {}-- -10Atk to 30Atk
--[[

Not Completed File

]]

dl1 = {}
dl1.n = ''
dl1.m = '"."'
dl1.m2 = ''
dl1.o = {'y:yes','r:run','f:fight','t:talk'}
dl1.f = dl1.o
dl1.i = image:getImage('')
dl1.FirstOption = false
dl1.SecondOption = false
dl1.option = false
dl1.Hp = 0
function dl1.draw()
	if Rep >= 0 and dl1.FirstOption == false then
	elseif Rep < 0 and dl1.FirstOption == false then
	end
	love.graphics.draw(dl1.i,60,40)
	love.graphics.print({{0,0,0},dl1.n},60,260)
	love.graphics.print({{0,0,0},dl1.m},60,280)
	love.graphics.print({{0,0,0},dl1.m2},60,300)
	drawOptions(dl1.o)
end
function dl1.keypressed(key)
	
end
D['libary'][1] = dl1