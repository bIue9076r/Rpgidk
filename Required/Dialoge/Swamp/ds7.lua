ds7 = {}
ds7.n = ''
ds7.m = '"?"'
ds7.m2 = ''
ds7.o = {'y:yes','r:run','f:fight','s:steal'}
ds7.f = ds7.o
ds7.i = image:getImage()
ds7.inDialoge = false
ds7.option = false
ds7.Hp = 100
function ds7.draw()
	if Rep >= 0 and ds7.inDialoge == false then
		ds7.m = '"?"'
		ds7.o = {'t:talk','r:run','f:fight','s:steal'}
	elseif Rep < 0 and ds7.inDialoge == false then
		ds7.m = '"?"'
		ds7.o = {'t:talk','r:run','f:fight','s:steal'}
	end
	love.graphics.draw(ds7.i,60,40)
	love.graphics.print({{0,0,0},ds7.n},60,260)
	love.graphics.print({{0,0,0},ds7.m},60,280)
	love.graphics.print({{0,0,0},ds7.m2},60,300)
	drawOptions(ds7.o)
end
function ds7.keypressed(key)
	if Rep >= 0 then
		if not ds7.inDialoge then
			
		else
			if not ds7.option then
				
			else

			end
		end
	else
		if not ds7.inDialoge then
			
		else
			if not ds7.option then
				
			else
				
			end
		end
	end
end
D['swamp'][7] = ds7