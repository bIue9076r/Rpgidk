dc6 = {}
dc6.n = 'Garbage Collector'
dc6.m = '"Got any trash?"'
dc6.m2 = ''
dc6.o = {'t:talk','r:run','f:fight','s:steal'}
dc6.f = dc6.o
dc6.i = image:getImage('GarbageCollector')
dc6.inDialoge = false
dc6.option = false
dc6.Hp = 7
dc6.Atk = 10
dc6.Def = 2
dc6.friendly = "Neutral"
dc6.soundOpts = {}
function dc6.draw()
	if Rep >= 0 and dc6.inDialoge == false then
		dc6.m = '"Got any trash?"'
		dc6.m2 = ''
		dc6.o = {'t:talk','r:run','f:fight','s:steal'}
	elseif Rep < 0 and dc6.inDialoge == false then
		dc6.m = '"Got any trash?"'
		dc6.m2 = ''
		dc6.o = {'t:talk','r:run','f:fight','s:steal'}
	end
	love.graphics.draw(dc6.i,60,40)
	love.graphics.print({{0,0,0},dc6.n},60,260)
	love.graphics.print({{0,0,0},dc6.m},60,280)
	love.graphics.print({{0,0,0},dc6.m2},60,300)
	drawOptions(dc6.o)
	drawstats(dc6)
	if dc6.option then
		inv_draw_stuff_select()
	end
end
function dc6.keypressed(key)
	if Rep >= 0 then
		if not dc6.inDialoge then
			if key == 't' then
				dc6.inDialoge = true
				dc6.o = {'y:yes','l:leave'}
			elseif key == 'r' then
				Alert:new('Ran Away','stat')
				gamestate = 'alert'
			elseif key == 'f' then
				if Atk >= 10 or math.random(1,10) == 5 then
					dc6.Hp = dc6.Hp - 1
					lowerRep(20)
					raiseAtk(2)
					raiseCash(20)
					CrimeUpdate(2)
					Item:new("Tooth","Tooth",6,10)
					Alert:new('Fought the Garbage Collector','stat')
					Exp:add(40)
					gamestate = 'alert'
				else
					lowerRep(100)
					Hurt(40)
					CrimeUpdate(1)
					Alert:new('Failed to beat \nthe Garbage Collector','stat')
					gamestate = 'alert'
				end
			elseif key == 's' then
				rob(10,20,"The Garbage Collector",10,40)
			end
		else
			if not dc6.option then
				if key == 'y' then
					dc6.option = true
				elseif key == 'l' then
					dc6.inDialoge = false
					dc6.o = {'t:talk','r:run','f:fight','s:steal'}
				end
			else
				if key == "w" or key == "up" then
					if (Inv_select - 1) > 0 then
						Inv_select = Inv_select - 1
					end
				elseif key == "s" or key == "down" then
					if (Inv_select + 1) < 9 then
						Inv_select = Inv_select + 1
					end
				elseif key == "return" then
					if(Item:isReal(Inv_select+((Inv_page-1)*8))) then
						Item:Remove(Inv_select+((Inv_page-1)*8))
						raiseCash(20)
						Alert:new('Removed Item','world')
						gamestate = 'alert'
					else
						Alert:new('No Item removed','world')
						gamestate = 'alert'
					end
				elseif key == "l" then
					dc6.option = false
				end
			end
		end
	else
		if not dc6.inDialoge then
			if key == 't' then
				dc6.inDialoge = true
				dc6.o = {'y:yes','l:leave'}
			elseif key == 'r' then
				Alert:new('Ran Away','stat')
				gamestate = 'alert'
			elseif key == 'f' then
				if Atk >= 10 then
					dc6.Hp = dc6.Hp - 1
					lowerRep(20)
					raiseAtk(2)
					raiseCash(20)
					CrimeUpdate(2)
					Item:new("Tooth","Tooth",6,10)
					Alert:new('Fought the Garbage Collector','stat')
					Exp:add(40)
					gamestate = 'alert'
				else
					lowerRep(100)
					Hurt(40)
					CrimeUpdate(1)
					Alert:new('Failed to beat \nthe Garbage Collector','stat')
					gamestate = 'alert'
				end
			elseif key == 's' then
				rob(10,20,"The Garbage Collector",10,40)
			end
		else
			if not dc6.option then
				if key == 'y' then
					dc6.option = true
				elseif key == 'l' then
					dc6.inDialoge = false
					dc6.o = {'t:talk','r:run','f:fight','s:steal'}
				end
			else
				if key == "w" or "up" then
					if (Inv_select - 1) > 0 then
					Inv_select = Inv_select - 1
					end
				elseif key == "s" or "down" then
					if (Inv_select + 1) < 9 then
					Inv_select = Inv_select + 1
					end
				elseif key == "return" then
					if(Item:isReal(Inv_select+((Inv_page-1)*8))) then
						Item:Remove(Inv_select+((Inv_page-1)*8))
						raiseCash(20)
						Alert:new('Removed Item','world')
						gamestate = 'alert'
					else
						Alert:new('No Item removed','world')
						gamestate = 'alert'
					end
				elseif key == "l" then
					dc6.option = false
				end
			end
		end
	end
end
D['city'][6] = dc6