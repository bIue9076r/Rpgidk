di1 = {}
di1.n = ''
di1.m = '""'
di1.m2 = ''
di1.o = {'key:desc'}
di1.f = di1.o
di1.i = image:getImage('')
di1.inDialoge = false
di1.option = false
di1.Hp = 100
function di1.draw()
	Alert:new("Area Not finished",'stat')
	gamestate = 'alert'
	if Rep >= 0 and di1.inDialoge == false then
		di1.m = '""'
		di1.o = {'key:desc'}
	elseif Rep < 0 and di1.inDialoge == false then
		di1.m = '""'
		di1.o = {'key:desc'}
	end
	love.graphics.draw(di1.i,60,40)
	love.graphics.print({{0,0,0},di1.n},60,260)
	love.graphics.print({{0,0,0},di1.m},60,280)
	love.graphics.print({{0,0,0},di1.m2},60,300)
	drawOptions(di1.o)
end
function di1.keypressed(key)
	if Rep >= 0 then
		if not di1.inDialoge then
			
		else
			if not di1.option then
				
			else

			end
		end
	else
		if not di1.inDialoge then
			
		else
			if not di1.option then
				
			else
				
			end
		end
	end
end
D['icespikes'][1] = di1