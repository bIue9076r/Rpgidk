di3 = {}
di3.n = 'Snowman'
di3.m = 'You come across a Snowman'
di3.m2 = ''
di3.o = {'d:defile','k:kick','t:talk','s:steal','l:leave'}
di3.f = di3.o
di3.i = image.getImage('Snowman')
di3.inDialoge = false
di3.option = false
di3.Hp = 30
di3.Atk = 0
di3.Def = 0
di3.friendly = "Neutral"
function di3.draw()
	if di3.inDialoge == false then
		di3.m = 'You come across a Snowman'
		di3.o = {'d:defile','k:kick','t:talk','s:steal','l:leave'}
	end
	love.graphics.draw(di3.i,60,40)
	love.graphics.print({{0,0,0},di3.n},60,260)
	love.graphics.print({{0,0,0},di3.m},60,280)
	love.graphics.print({{0,0,0},di3.m2},60,300)
	drawOptions(di3.o)
	drawstats(di3)
	if di3.option then
		food_menu_draw()
	end
end
function di3.keypressed(key)
	if not di3.inDialoge then
		if key == 'd' then
			di3.Hp = di3.Hp - 1
			Item.new('Yellow Snow','YellowSnow',72)
			Alert.new('Defiled The Snowman\n\nAnd got yellow snow','stat')
			gamestate = 'alert'
		elseif key == 'k' then
			di3.Hp = di3.Hp - 1
			Item.new('Carrot','Carrot',70)
			Alert.new('Kicked The Snowman','stat')
			gamestate = 'alert'
		elseif key == 't' then
			di3.m = '"Hi what do you want"'
			di3.o = {'b:buy','s:snow','l:leave'}
			di3.inDialoge = true
		elseif key == 's' then
			rob(-1,70,'The Snowman',20,100)
		elseif key == 'l' then
			Alert.new('Left the area','stat')
			gamestate = 'alert'
		end
	else
		if not di3.option then
			if key == 'b' then
				di3.option = true
			elseif key == 's' then
				di3.Hp = di3.Hp - 1
				di3.inDialoge = false
				Item.new('Snow','Snow',73)
				Alert.new('Stole The Snowman\n\nAnd got snow','stat')
				gamestate = 'alert'
			elseif key == 'l' then
				di3.m = 'You come across a Snowman'
				di3.o = {'d:defile','k:kick','t:talk','s:steal','l:leave'}
				di3.inDialoge = false
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
						Item.new('Cod','Cod',46)
						Alert.new('Bought Cod','world')
						gamestate = 'alert'
					else
						Alert.new('Not enough cash','world')
						gamestate = 'alert'
					end
				elseif Food_select == 2 then
					if Cash >= 10 then
						Cash = Cash - 10
						Item.new('Salmon','Salmon',48)
						Alert.new('Bought a Salmon','world')
						gamestate = 'alert'
					else
						Alert.new('Not enough cash','world')
						gamestate = 'alert'
					end
				elseif Food_select == 3 then
					if Cash >= 5 then
						Cash = Cash - 5
						Item.new('Hot Coco','Hot_coco',27)
						Alert.new('Bought some Hot Coco','world')
						gamestate = 'alert'
					else
						Alert.new('Not enough cash','world')
						gamestate = 'alert'
					end
				end
			elseif key == "l" then
				di3.option = false
			end
		end
	end
end
D['icespikes'][3] = di3