ds5 = {}
ds5.n = 'Sailor'
ds5.m = '"Want to buy some stuff?"'
ds5.m2 = ''
ds5.o = {'y:yes','r:run','f:fight','t:talk'}
ds5.f = ds5.o
ds5.i = image.getImage('Sailor')
ds5.inDialoge = false
ds5.option = false
ds5.Hp = 15
ds5.Atk = 150
ds5.Def = 60
ds5.friendly = "Neutral"
function ds5.draw()
	--Food_select = Food_select or 1
	if Rep >= 0 and ds5.inDialoge == false then
		ds5.m = '"Want to buy some stuff?"'
		ds5.o = {'t:talk','r:run','f:fight','s:steal'}
	elseif Rep < 0 and ds5.inDialoge == false then
		ds5.m = '"Want to buy something...?"'
		ds5.o = {'t:talk','r:run','f:fight','s:steal'}
	end
	love.graphics.draw(ds5.i,60,40)
	love.graphics.print({{0,0,0},ds5.n},60,260)
	love.graphics.print({{0,0,0},ds5.m},60,280)
	love.graphics.print({{0,0,0},ds5.m2},60,300)
	drawOptions(ds5.o)
	drawstats(ds5)
	if ds5.option then
		food_menu_draw()
	end
end
function ds5.keypressed(key)
	if Rep >= 0 then
		if not ds5.inDialoge then
			if key == 't' then
				ds5.inDialoge = true
				ds5.o = {'y:yes','r:rob','l:leave'}
			elseif key == 'r' then
				Alert.new('Ran Away','stat')
				gamestate = 'alert'
			elseif key == 'f' then
				if Atk > 150 then
					ds5.Hp = ds5.Hp - 1
					lowerRep(150)
					raiseAtk(4)
					raiseCash(50)
					CrimeUpdate(3)
					Exp.add(170)
					Item.new("Tooth","Tooth",6,35)
					Alert.new('Beat The Sailor','stat')
					gamestate = 'alert'
				else
					Hurt(160)
					CrimeUpdate(1)
					Alert.new('Failed to beat\n\nThe Sailor','stat')
					gamestate = 'alert'
				end
			elseif key == 's' then
				rob(170,75,"The Sailor",20,170,false)
			end
		else
			if not ds5.option then
				if key == 'y' then
					ds5.option = true
				elseif key == 'r' then
					if Atk >= 150 or math.random(1,25) == 4 then
						lowerRep(175)
						CrimeUpdate(2)
						Item.new("Mystery Food","Mystery",0,0)
						Alert.new('Stole the Sailor\'s item','stat')
						Exp.add(200)
						gamestate = 'alert'
						ds5.inDialoge = false
					else
						Hurt(165)
						lowerRep(20)
						CrimeUpdate(1)
						Alert.new('Failed to rob the Sailor','stat')
						gamestate = 'alert'
						ds5.inDialoge = false
					end
				elseif key == 'l' then
					ds5.inDialoge = false
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
						if Cash >= 10 then
							Cash = Cash - 10
							Item.new('Coconut Slices','Coconut_slices',29)
							Alert.new('Bought Coconut Slices','world')
							gamestate = 'alert'
						else
							Alert.new('Not enough cash','world')
							gamestate = 'alert'
						end
					elseif Food_select == 2 then
						if Cash >= 10 then
							Cash = Cash - 10
							Item.new('Coconut Juice','Coconut_juice',37)
							Alert.new('Bought Coconut Juice','world')
							gamestate = 'alert'
						else
							Alert.new('Not enough cash','world')
							gamestate = 'alert'
						end
					elseif Food_select == 3 then
						if Cash >= 1 then
							Cash = Cash - 1
							Item.new('Swamp Water','Swamp_water',43)
							Alert.new('Bought Swamp Water','world')
							gamestate = 'alert'
						else
							Alert.new('Not enough cash','world')
							gamestate = 'alert'
						end
					end
				elseif key == "l" then
					ds5.option = false
				end
			end
		end
	else
		if not ds5.inDialoge then
			if key == 't' then
				ds5.inDialoge = true
				ds5.o = {'y:yes','r:rob','l:leave'}
			elseif key == 'r' then
				Alert.new('Ran Away','stat')
				gamestate = 'alert'
			elseif key == 'f' then
				if Atk > 170 then
					ds5.Hp = ds5.Hp - 1
					lowerRep(200)
					raiseAtk(5)
					raiseCash(55)
					CrimeUpdate(3)
					Exp.add(175)
					Item.new("Tooth","Tooth",6,45)
					Alert.new('Beat The Sailor','stat')
					gamestate = 'alert'
				else
					Hurt(180)
					CrimeUpdate(1)
					Alert.new('Failed to beat\n\nThe Sailor','stat')
					gamestate = 'alert'
				end
			elseif key == 's' then
				rob(175,80,"The Sailor",20,170,false)
			end
		else
			if not ds5.option then
				if key == 'y' then
					Alert.new('"Well i aint selling"','world')
					gamestate = 'alert'
				elseif key == 'r' then
					if Atk >= 170 or math.random(1,25) == 4 then
						lowerRep(195)
						CrimeUpdate(2)
						Item.new("Mystery Food","Mystery",0,0)
						Alert.new('Stole the Sailor\'s item','stat')
						Exp.add(250)
						gamestate = 'alert'
						ds5.inDialoge = false
					else
						Hurt(175)
						lowerRep(30)
						CrimeUpdate(1)
						Alert.new('Failed to rob the Sailor','stat')
						gamestate = 'alert'
						ds5.inDialoge = false
					end
				elseif key == 'l' then
					ds5.inDialoge = false
				end
			else
				ds5.option = false
			end
		end
	end
end
D['swamp'][5] = ds5