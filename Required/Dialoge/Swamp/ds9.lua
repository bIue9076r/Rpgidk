ds9 = {}
ds9.n = ''
ds9.m = '"?"'
ds9.m2 = ''
ds9.o = {'y:yes','r:run','f:fight','s:steal'}
ds9.f = ds9.o
ds9.i = image:getImage()
ds9.inDialoge = false
ds9.option = false
ds9.Hp = 100
function ds9.draw()
	if Rep >= 0 and ds9.inDialoge == false then
		ds9.m = '"?"'
		ds9.o = {'t:talk','r:run','f:fight','s:steal'}
	elseif Rep < 0 and ds9.inDialoge == false then
		ds9.m = '"?"'
		ds9.o = {'t:talk','r:run','f:fight','s:steal'}
	end
	love.graphics.draw(ds9.i,60,40)
	love.graphics.print({{0,0,0},ds9.n},60,260)
	love.graphics.print({{0,0,0},ds9.m},60,280)
	love.graphics.print({{0,0,0},ds9.m2},60,300)
	drawOptions(ds9.o)
end
function ds9.keypressed(key)
	if Rep >= 0 then
		if not ds9.inDialoge then
			
		else
			if not ds9.option then
				
			else

			end
		end
	else
		if not ds9.inDialoge then
			
		else
			if not ds9.option then
				
			else
				
			end
		end
	end
end
D['swamp'][9] = ds9