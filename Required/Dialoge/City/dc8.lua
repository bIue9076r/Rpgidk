dc8 = {}
dc8.n = 'Street Lamp'
dc8.m = '...'
dc8.m2 = '...'
dc8.o = {'t:talk','r:run','f:fight','s:steal'}
dc8.f = dc8.o
dc8.i = image:getImage('StreetLamp')
dc8.inDialoge = false
dc8.option = false
dc8.Hp = 30
dc8.soundOpts = {}
function dc8.draw()
	if Rep >= 0 and dc8.inDialoge == false then
		dc8.m = '...'
		dc8.m2 = '...'
		dc8.o = {'t:talk','r:run','f:fight','s:steal'}
	elseif Rep < 0 and dc8.inDialoge == false then
		dc8.m = '...'
		dc8.m2 = '...'
		dc8.o = {'t:talk','r:run','f:fight','s:steal'}
	end
	love.graphics.draw(dc8.i,60,40)
	love.graphics.print({{0,0,0},dc8.n},60,260)
	love.graphics.print({{0,0,0},dc8.m},60,280)
	love.graphics.print({{0,0,0},dc8.m2},60,300)
	drawOptions(dc8.o)
end
function dc8.keypressed(key)
	if Rep >= 0 then
		if not dc8.inDialoge then
			if key == 't' then
				dc8.m = '....'
				dc8.m2 = ''
				dc8.o = {'b:buy','l:leave'}
				dc8.inDialoge = true
			elseif key == 'r' then
				Alert:new('Ran Away','stat')
				gamestate = 'alert'
			elseif key == 'f' then
				dc8.Hp = dc8.Hp - 1
				Alert:new('Dude what are you doing','world')
				gamestate = 'alert'
			elseif key == 's' then
				Alert:new('Dude what are you doing','world')
				gamestate = 'alert'
			end
		else
			if not dc8.option then
				if key == 'b' then
					dc8.option = true
					dc8.o = {'m:medkit $20','p:poison $25','a:atk bst $15','d:def bst $15','l:leave'}
				elseif key == 'l' then
					dc8.inDialoge = false
				end
			else
				if key == 'm' then
					buyMed('world',20)
				elseif key == 'p' then
					buyPotion('world',25)
				elseif key == 'a' then
					buyAb('world',15)
				elseif key == 'd' then
					buyDb('world',15)
				elseif key == 'l' then
					dc8.o = {'b:buy','l:leave'}
					dc8.option = false
				end
			end
		end
	else
		if not dc8.inDialoge then
			if key == 't' then
				dc8.m = '....'
				dc8.m2 = ''
				dc8.o = {'b:buy','l:leave'}
				dc8.inDialoge = true
			elseif key == 'r' then
				Alert:new('Ran Away','stat')
				gamestate = 'alert'
			elseif key == 'f' then
				dc8.Hp = dc8.Hp - 1
				Alert:new('Dude what are you doing','world')
				gamestate = 'alert'
			elseif key == 's' then
				Alert:new('Dude what are you doing','world')
				gamestate = 'alert'
			end
		else
			if not dc8.option then
				if key == 'b' then
					dc8.option = true
					dc8.o = {'m:medkit $30','p:poison $35','a:atk bst $25','d:def bst $25','l:leave'}
				elseif key == 'l' then
					dc8.inDialoge = false
				end
			else
				if key == 'm' then
					buyMed('world',30)
				elseif key == 'p' then
					buyPotion('world',35)
				elseif key == 'a' then
					buyAb('world',25)
				elseif key == 'd' then
					buyDb('world',25)
				elseif key == 'l' then
					dc8.o = {'b:buy','l:leave'}
					dc8.option = false
				end
			end
		end
	end
end
D['city'][8] = dc8