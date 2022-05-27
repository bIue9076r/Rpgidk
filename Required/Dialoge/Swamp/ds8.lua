ds8 = {}
ds8.n = ''
ds8.m = '"?"'
ds8.m2 = ''
ds8.o = {'y:yes','r:run','f:fight','s:steal'}
ds8.f = ds8.o
ds8.i = image:getImage()
ds8.inDialoge = false
ds8.option = false
ds8.Hp = 100
function ds8.draw()
	if Rep >= 0 and ds8.inDialoge == false then
		ds8.m = '"?"'
		ds8.o = {'t:talk','r:run','f:fight','s:steal'}
	elseif Rep < 0 and ds8.inDialoge == false then
		ds8.m = '"?"'
		ds8.o = {'t:talk','r:run','f:fight','s:steal'}
	end
	love.graphics.draw(ds8.i,60,40)
	love.graphics.print({{0,0,0},ds8.n},60,260)
	love.graphics.print({{0,0,0},ds8.m},60,280)
	love.graphics.print({{0,0,0},ds8.m2},60,300)
	drawOptions(ds8.o)
end
function ds8.keypressed(key)
	if Rep >= 0 then
		if not ds8.inDialoge then
			
		else
			if not ds8.inDialoge then
				
			else

			end
		end
	else
		if not ds8.inDialoge then
			
		else
			if not ds8.inDialoge then
				
			else
				
			end
		end
	end
end
D['swamp'][8] = ds8