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
dc8.Atk = 45
dc8.Def = 20
dc8.friendly = "Neutral"
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
	drawstats(dc8)
end
function dc8.keypressed(key)
	if Rep >= 0 then
		if not dc8.inDialoge then
			if key == 't' then
				dc8.m = '....'
				dc8.m2 = ''
				dc8.o = {'l:leave'}
				dc8.inDialoge = true
			elseif key == 'r' then
				Alert:new('Ran Away','stat')
				gamestate = 'alert'
			elseif key == 'f' then
				dc8.Hp = dc8.Hp - 1
				Alert:new('Dude what are you doing','stat')
				gamestate = 'alert'
			elseif key == 's' then
				dc8.Hp = dc8.Hp - 1
				Alert:new('Dude what are you doing','stat')
				gamestate = 'alert'
			end
		else
			if not dc8.option then
				if key == 'b' then
					dc8.option = true
					dc8.m = '"Secret Store"'
					dc8.o = {
						'm:medkit $20',
						'p:poison $50',
						'a:atk bst $30',
						'd:def bst $70',
						'l:leave'
					}
				elseif key == 'l' then
					dc8.inDialoge = false
				end
			else
				if key == 'm' then
					--buyMed('world',20)
					buyItem(Nitem[0],0,'world',20)
				elseif key == 'p' then
					--buyPotion('world',45)
					buyItem(Nitem[1],0,'world',50)
				elseif key == 'a' then
					--buyAb('world',25)
					buyItem(Nitem[2],0,'world',30)
				elseif key == 'd' then
					--buyDb('world',65)
					buyItem(Nitem[3],0,'world',70)
				elseif key == 'l' then
					dc8.o = {'l:leave'}
					dc8.m = '....'
					dc8.option = false
				end
			end
		end
	else
		if not dc8.inDialoge then
			if key == 't' then
				dc8.m = '....'
				dc8.m2 = ''
				dc8.o = {'l:leave'}
				dc8.inDialoge = true
			elseif key == 'r' then
				Alert:new('Ran Away','stat')
				gamestate = 'alert'
			elseif key == 'f' then
				dc8.Hp = dc8.Hp - 1
				Alert:new('Dude what are you doing','stat')
				gamestate = 'alert'
			elseif key == 's' then
				dc8.Hp = dc8.Hp - 1
				Alert:new('Dude what are you doing','stat')
				gamestate = 'alert'
			end
		else
			if not dc8.option then
				if key == 'b' then
					dc8.option = true
					dc8.m = '"Secret Store"'
					dc8.o = {
						'm:medkit $20',
						'p:poison $50',
						'a:atk bst $30',
						'd:def bst $70',
						'l:leave'
					}
				elseif key == 'l' then
					dc8.inDialoge = false
				end
			else
				if key == 'm' then
					buyItem(Nitem[0],0,'world',20)
				elseif key == 'p' then
					buyItem(Nitem[1],0,'world',50)
				elseif key == 'a' then
					buyItem(Nitem[2],0,'world',30)
				elseif key == 'd' then
					buyItem(Nitem[3],0,'world',70)
				elseif key == 'l' then
					dc8.o = {'l:leave'}
					dc8.m = '....'
					dc8.option = false
				end
			end
		end
	end
end
D['city'][8] = dc8