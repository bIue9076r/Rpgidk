dd9 = {}
dd9.n = 'Baker'
dd9.m = '"Would you like to \n\nbuy some goods"'
dd9.m2 = ''
dd9.o = {'t:talk','r:run','f:fight','s:steal'}
dd9.f = dd9.o
dd9.i = image.getImage('Baker')
dd9.inDialoge = false
dd9.option = false
dd9.Hp = 10
dd9.Atk = 75
dd9.Def = 28
dd9.friendly = "Neutral"
function dd9.draw()
	if Rep >= 0 and dd9.inDialoge == false then
		dd9.m = '"Would you like to \n\nbuy some goods"'
		dd9.o = {'t:talk','r:run','f:fight','s:steal'}
	elseif Rep <= 0 and dd9.inDialoge == false then
		dd9.m = '"Would you like to \n\nbuy some goods"'
		dd9.o = {'t:talk','r:run','f:fight','s:steal'}
	end
	love.graphics.draw(dd9.i,60,40)
	love.graphics.print({{0,0,0},dd9.n},60,260)
	love.graphics.print({{0,0,0},dd9.m},60,280)
	love.graphics.print({{0,0,0},dd9.m2},60,300)
	drawOptions(dd9.o)
	drawstats(dd9)
	if dd9.option then
		food_menu_draw()
	end
end
function dd9.keypressed(key)
	if Rep >= 0 then
		if not dd9.inDialoge then
			if key == 't' then
				dd9.m = '"Want to take a look"'
				dd9.o = {'b:buy','s:steal','l:leave'}
				dd9.inDialoge = true
			elseif key == 'r' then
				Alert.new('Ran Away','stat')
				gamestate = 'alert'
			elseif key == 'f' then
				if Atk >= 75 or math.random(1,20) == 4 then
					dd9.Hp = dd9.Hp - 1
					lowerRep(90)
					raiseAtk(5)
					raiseCash(40)
					CrimeUpdate(2)
					Item.new("Tooth","Tooth",6,10)
					Alert.new('Fought the baker','stat')
					Exp.add(120)
					gamestate = 'alert'
				else
					lowerRep(50)
					Hurt(20)
					CrimeUpdate(1)
					Alert.new('Failed to beat \n\nthe baker','stat')
					gamestate = 'alert'
				end
			elseif key == 's' then
				rob(50,70,"The baker",20,100)
			end
		else
			if not dd9.option then
				if key == 'b' then
					dd9.option = true
				elseif key == 's' then
					if Atk >= 75 or math.random(1,20) == 4 then
						lowerRep(95)
						CrimeUpdate(2)
						Item.new("Mystery Food","Mystery",0,0)
						Alert.new('Stole the baker\'s item','stat')
						Exp.add(100)
						gamestate = 'alert'
						dd9.inDialoge = false
					else
						Hurt(20)
						lowerRep(55)
						CrimeUpdate(1)
						Alert.new('Failed to rob the baker','stat')
						gamestate = 'alert'
						dd9.inDialoge = false
					end
				elseif key == 'l' then
					dd9.o = {'t:talk','r:run','f:fight','s:steal'}
					dd9.inDialoge = false
				end
			else
				if key == "w" or key == "up" then
					if (Food_select - 1) > 0 then
						Food_select = Food_select - 1
					else
						Food_select = 3
					end
				elseif key == "s" or key == "down" then
					if (Food_select + 1) < 4 then
						Food_select = Food_select + 1
					else
						Food_select = 1
					end
				elseif key == "return" then
					if Food_select == 1 then
						if Cash >= 25 then
							Cash = Cash - 25
							Item.new('Cactus','Cactus',46)
							Alert.new('Bought Cactus','world')
							gamestate = 'alert'
						else
							Alert.new('Not enough cash','world')
							gamestate = 'alert'
						end
					elseif Food_select == 2 then
						if Cash >= 30 then
							Cash = Cash - 30
							Item.new('SandCake','Sand_cake',48)
							Alert.new('Bought a Sandcake','world')
							gamestate = 'alert'
						else
							Alert.new('Not enough cash','world')
							gamestate = 'alert'
						end
					elseif Food_select == 3 then
						if Cash >= 8 then
							Cash = Cash - 8
							Item.new('Tea','Tea',27)
							Alert.new('Bought some Tea','world')
							gamestate = 'alert'
						else
							Alert.new('Not enough cash','world')
							gamestate = 'alert'
						end
					end
				elseif key == "l" then
					dd9.option = false
				end
			end
		end
	else
		if not dd9.inDialoge then
			if key == 't' then
				dd9.m = '"Want to take a look"'
				dd9.o = {'b:buy','s:steal','l:leave'}
				dd9.inDialoge = true
			elseif key == 'r' then
				Alert.new('Ran Away','stat')
				gamestate = 'alert'
			elseif key == 'f' then
				if Atk >= 75 or math.random(1,15) == 4 then
					dd9.Hp = dd9.Hp - 1
					lowerRep(115)
					raiseAtk(5)
					raiseCash(40)
					CrimeUpdate(2)
					Item.new("Tooth","Tooth",6,15)
					Alert.new('Fought the baker','stat')
					Exp.add(120)
					gamestate = 'alert'
				else
					lowerRep(20)
					Hurt(10)
					CrimeUpdate(1)
					Alert.new('Failed to beat \n\nthe baker','stat')
					gamestate = 'alert'
				end
			elseif key == 's' then
				rob(50,70,"The baker",20,100)
			end
		else
			if not dd9.option then
				if key == 'b' then
					dd9.option = true
				elseif key == 's' then
					if Atk >= 75 or math.random(1,15) == 4 then
						lowerRep(115)
						CrimeUpdate(2)
						Item.new("Mystery Food","Mystery",0,0)
						Alert.new('Stole the baker\'s item','stat')
						Exp.add(120)
						gamestate = 'alert'
						dd9.inDialoge = false
					else
						Hurt(40)
						lowerRep(100)
						CrimeUpdate(1)
						Alert.new('Failed to rob the baker','stat')
						gamestate = 'alert'
						dd9.inDialoge = false
					end
				elseif key == 'l' then
					dd9.o = {'t:talk','r:run','f:fight','s:steal'}
					dd9.inDialoge = false
				end
			else
				if key == "w" then
					if (Food_select - 1) > 0 then
						Food_select = Food_select - 1
					else
						Food_select = 3
					end
				elseif key == "s" then
					if (Food_select + 1) < 4 then
						Food_select = Food_select + 1
					else
						Food_select = 1
					end
				elseif key == "return" then
					if Food_select == 1 then
						if Cash >= 25 then
							Cash = Cash - 25
							Item.new('Cactus','Cactus',46)
							Alert.new('Bought Cactus','world')
							gamestate = 'alert'
						else
							Alert.new('Not enough cash','world')
							gamestate = 'alert'
						end
					elseif Food_select == 2 then
						if Cash >= 30 then
							Cash = Cash - 30
							Item.new('SandCake','Sand_cake',48)
							Alert.new('Bought a Sandcake','world')
							gamestate = 'alert'
						else
							Alert.new('Not enough cash','world')
							gamestate = 'alert'
						end
					elseif Food_select == 3 then
						if Cash >= 8 then
							Cash = Cash - 8
							Item.new('Tea','Tea',27)
							Alert.new('Bought some Tea','world')
							gamestate = 'alert'
						else
							Alert.new('Not enough cash','world')
							gamestate = 'alert'
						end
					end
				elseif key == "l" then
					dd9.option = false
				end
			end
		end
	end
end
D['desert'][9] = dd9