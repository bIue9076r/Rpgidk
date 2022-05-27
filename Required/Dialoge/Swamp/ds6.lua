ds6 = {}
ds6.n = ''
ds6.m = '"?"'
ds6.m2 = ''
ds6.o = {'y:yes','r:run','f:fight','s:steal'}
ds6.f = ds6.o
ds6.i = image:getImage()
ds6.inDialoge = false
ds6.option = false
ds6.Hp = 100
function ds6.draw()
	if Rep >= 0 and ds6.inDialoge == false then
		ds6.m = '"?"'
		ds6.o = {'t:talk','r:run','f:fight','s:steal'}
	elseif Rep < 0 and ds6.inDialoge == false then
		ds6.m = '"?"'
		ds6.o = {'t:talk','r:run','f:fight','s:steal'}
	end
	love.graphics.draw(ds5.i,60,40)
	love.graphics.print({{0,0,0},ds6.n},60,260)
	love.graphics.print({{0,0,0},ds6.m},60,280)
	love.graphics.print({{0,0,0},ds6.m2},60,300)
	drawOptions(ds6.o)
end
function ds6.keypressed()
	if Rep >= 0 then
		if not ds6.inDialoge then
			
		else
			if not ds6.inDialoge then
				
			else

			end
		end
	else
		if not ds6.inDialoge then
			
		else
			if not ds6.inDialoge then
				
			else
				
			end
		end
	end
end
D['swamp'][6] = ds6