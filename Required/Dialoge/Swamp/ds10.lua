ds10 = {}
ds10.n = ''
ds10.m = '"?"'
ds10.m2 = ''
ds10.o = {'y:yes','r:run','f:fight','s:steal'}
ds10.f = ds10.o
ds10.i = image:getImage()
ds10.inDialoge = false
ds10.option = false
ds10.Hp = 100
function ds10.draw()
	if Rep >= 0 and ds10.inDialoge == false then
		ds10.m = '"?"'
		ds10.o = {'t:talk','r:run','f:fight','s:steal'}
	elseif Rep < 0 and ds10.inDialoge == false then
		ds10.m = '"?"'
		ds10.o = {'t:talk','r:run','f:fight','s:steal'}
	end
	love.graphics.draw(ds10.i,60,40)
	love.graphics.print({{0,0,0},ds10.n},60,260)
	love.graphics.print({{0,0,0},ds10.m},60,280)
	love.graphics.print({{0,0,0},ds10.m2},60,300)
	drawOptions(ds10.o)
end
function ds10.keypressed(key)
	if Rep >= 0 then
		if not ds10.inDialoge then
			
		else
			if not ds10.option then
				
			else

			end
		end
	else
		if not ds10.inDialoge then
			
		else
			if not ds10.option then
				
			else
				
			end
		end
	end
end
D['swamp'][10] = ds10