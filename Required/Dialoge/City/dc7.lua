dc7 = {}
dc7.n = 'Waiter'
dc7.m = '"Need a meal"'
dc7.m2 = ''
dc7.o = {'t:talk','r:run','f:fight','s:steal'}
dc7.f = dc7.o
dc7.i = image:getImage('Waiter')
dc7.inDialoge = false
dc7.option = false
dc7.Hp = 5
dc7.soundOpts = {}
function dc7.draw()
	if Rep >= 0 and dc7.inDialoge == false then
		dc7.m = '"Need a meal"'
		dc7.m2 = ''
		dc7.o = {'t:talk','r:run','f:fight','s:steal'}
	elseif Rep < 0 and dc7.inDialoge == false then
		dc7.m = '"Do you want a meal'
		dc7.m2 = 'or something"'
		dc7.o = {'t:talk','r:run','f:fight','s:steal'}
	end
	love.graphics.draw(dc7.i,60,40)
	love.graphics.print({{0,0,0},dc7.n},60,260)
	love.graphics.print({{0,0,0},dc7.m},60,280)
	love.graphics.print({{0,0,0},dc7.m2},60,300)
	drawOptions(dc7.o)
	if dc7.option then
		food_menu_draw()
	end
end
function dc7.keypressed(key)
	if Rep >= 0 then
		if not dc7.inDialoge then
			if key == 't' then
				dc7.o = {'b:buy','s:steal','l:leave'}
				dc7.inDialoge = true
			elseif key == 'r' then
				Alert:new('Ran Away','stat')
				gamestate = 'alert'
			elseif key == 'f' then
				if Atk >= 5 or math.random(1,5) == 4 then
					dc7.Hp = dc7.Hp - 1
					lowerRep(15)
					raiseAtk(1)
					raiseCash(20)
					CrimeUpdate(2)
					Item:new("Tooth","Tooth",6,5)
					Alert:new('Fought the Waiter','stat')
					Exp:add(20)
					gamestate = 'alert'
				else
					lowerRep(20)
					Hurt(10)
					CrimeUpdate(1)
					Alert:new('Failed to beat \nthe Waiter','stat')
					gamestate = 'alert'
				end
			elseif key == 's' then
				rob(5,20,"The Waiter",5,20)
			end
		else
			if not dc7.option then
				if key == 'b' then
					dc7.option = true
				elseif key == 's' then
					if Atk >= 5 or math.random(1,5) == 4 then
						lowerRep(15)
						CrimeUpdate(2)
						Item:new("Mystery Food","Mystery",0,0)
						Alert:new('Stole the Waiter\'s item','stat')
						Exp:add(20)
						gamestate = 'alert'
						dc7.inDialoge = false
					else
						Hurt(10)
						lowerRep(20)
						CrimeUpdate(1)
						Alert:new('Failed to rob the Waiter','stat')
						gamestate = 'alert'
						dc7.inDialoge = false
					end
				elseif key == 'l' then
					dc7.o = {'t:talk','r:run','f:fight','s:steal'}
					dc7.inDialoge = false
				end
			else
				if key == "w" or "up" then
					if (Food_select - 1) > 0 then
						Food_select = Food_select - 1
					end
				elseif key == "s" or "down" then
					if (Food_select + 1) < 4 then
						Food_select = Food_select + 1
					end
				elseif key == "return" then
					if Food_select == 1 then
						if Cash >= 20 then
							Cash = Cash - 20
							Item:new('Steak','placeholderIcon',21)
							Alert:new('Bought Steak','world')
							gamestate = 'alert'
						else
							Alert:new('Not enough cash','world')
							gamestate = 'alert'
						end
					elseif Food_select == 2 then
						if Cash >= 10 then
							Cash = Cash - 10
							Item:new('Salad','placeholderIcon',25)
							Alert:new('Bought Salad','world')
							gamestate = 'alert'
						else
							Alert:new('Not enough cash','world')
							gamestate = 'alert'
						end
					elseif Food_select == 3 then
						if Cash >= 5 then
							Cash = Cash - 5
							Item:new('Soda','placeholderIcon',23)
							Alert:new('Bought Soda','world')
							gamestate = 'alert'
						else
							Alert:new('Not enough cash','world')
							gamestate = 'alert'
						end
					end
				elseif key == "l" then
					dc7.option = false
				end
			end
		end
	else
		if not dc7.inDialoge then
			if key == 't' then
				dc7.o = {'b:buy','s:steal','l:leave'}
				dc7.inDialoge = true
			elseif key == 'r' then
				Alert:new('Ran Away','stat')
				gamestate = 'alert'
			elseif key == 'f' then
				if Atk >= 5 or math.random(1,5) == 4 then
					dc7.Hp = dc7.Hp - 1
					lowerRep(15)
					raiseAtk(1)
					raiseCash(20)
					CrimeUpdate(2)
					Item:new("Tooth","Tooth",6,5)
					Alert:new('Fought the Waiter','stat')
					Exp:add(20)
					gamestate = 'alert'
				else
					lowerRep(20)
					Hurt(10)
					CrimeUpdate(1)
					Alert:new('Failed to beat \nthe Waiter','stat')
					gamestate = 'alert'
				end
			elseif key == 's' then
				rob(5,20,"The Waiter",5,20)
			end
		else
			if not dc7.option then
				if key == 'b' then
					dc7.option = true
				elseif key == 's' then
					if Atk >= 5 or math.random(1,5) == 4 then
						lowerRep(15)
						CrimeUpdate(2)
						Item:new("Mystery Food","Mystery",0,0)
						Alert:new('Stole the Waiter\'s item','stat')
						Exp:add(20)
						gamestate = 'alert'
						dc7.inDialoge = false
					else
						Hurt(10)
						lowerRep(20)
						CrimeUpdate(1)
						Alert:new('Failed to rob the Waiter','stat')
						gamestate = 'alert'
						dc7.inDialoge = false
					end
				elseif key == 'l' then
					dc7.o = {'t:talk','r:run','f:fight','s:steal'}
					dc7.inDialoge = false
				end
			else
				if key == "w" or key == "up" then
					if (Food_select - 1) > 0 then
						Food_select = Food_select - 1
					end
				elseif key == "s" or key == "down" then
					if (Food_select + 1) < 4 then
						Food_select = Food_select + 1
					end
				elseif key == "return" then
					if Food_select == 1 then
						if Cash >= 20 then
							Cash = Cash - 20
							Item:new('Steak','placeholderIcon',21)
							Alert:new('Bought Steak','world')
							gamestate = 'alert'
						else
							Alert:new('Not enough cash','world')
							gamestate = 'alert'
						end
					elseif Food_select == 2 then
						if Cash >= 10 then
							Cash = Cash - 10
							Item:new('Salad','placeholderIcon',25)
							Alert:new('Bought Salad','world')
							gamestate = 'alert'
						else
							Alert:new('Not enough cash','world')
							gamestate = 'alert'
						end
					elseif Food_select == 3 then
						if Cash >= 5 then
							Cash = Cash - 5
							Item:new('Soda','placeholderIcon',23)
							Alert:new('Bought Soda','world')
							gamestate = 'alert'
						else
							Alert:new('Not enough cash','world')
							gamestate = 'alert'
						end
					end
				elseif key == "l" then
					dc7.option = false
				end
			end
		end
	end
end
D['city'][7] = dc7