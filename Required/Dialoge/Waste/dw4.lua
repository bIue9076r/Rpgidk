dw4 = {}
dw4.n = 'Hunter'
dw4.m = '"Want some food?"'
dw4.m2 = ''
dw4.o = {'y:yes','r:run','f:fight'}
dw4.f = dw4.o
dw4.i = image:getImage('')
dw4.inDialoge = false
dw4.option = false
dw4.Hp = 25
function dw4.draw()
	if dw4.inDialoge == false then
		dw4.m = '"Want some food?"'
		dw4.o = {'y:yes','r:run','f:fight'}
	end
	love.graphics.draw(dw4.i,60,40)
	love.graphics.print({{0,0,0},dw4.n},60,260)
	love.graphics.print({{0,0,0},dw4.m},60,280)
	love.graphics.print({{0,0,0},dw4.m2},60,300)
	drawOptions(dw4.o)
	if dw4.option then
		food_menu_draw()
	end
end
function dw4.keypressed(key)
	if not dw4.inDialoge then
		if key == 't' then
			dw4.m = '"Want to take a look"'
			dw4.o = {'b:buy','s:steal','l:leave'}
			dw4.inDialoge = true
		elseif key == 'r' then
			Alert:new('Ran Away','stat')
			gamestate = 'alert'
		elseif key == 'f' then
			if Atk >= 200 or math.random(1,20) == 4 then
				dw4.Hp = dw4.Hp - 1
				lowerRep(190)
				raiseAtk(10)
				raiseDef(10)
				raiseCash(400)
				CrimeUpdate(3)
				Item:new("Tooth","Tooth",6,50)
				Alert:new('Fought the Hunter','stat')
				Exp:add(300)
				gamestate = 'alert'
			else
				lowerRep(210)
				Hurt(250)
				CrimeUpdate(1)
				Alert:new('Failed to beat \nthe Hunter','stat')
				gamestate = 'alert'
			end
		end
	else
		if not dw4.option then
			if key == 'b' then
				dw4.option = true
			elseif key == 's' then
				if Atk >= 175 or math.random(1,20) == 4 then
					lowerRep(105)
					CrimeUpdate(2)
					Item:new("Mystery Food","Mystery",0,0)
					Alert:new('Stole the Hunter\'s item','stat')
					Exp:add(100)
					gamestate = 'alert'
					dw4.inDialoge = false
				else
					Hurt(150)
					lowerRep(255)
					CrimeUpdate(1)
					Alert:new('Failed to rob the Hunter','stat')
					gamestate = 'alert'
					dw4.inDialoge = false
				end
			elseif key == 'l' then
				dw4.o = {'t:talk','r:run','f:fight','s:steal'}
				dw4.inDialoge = false
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
					if Cash >= 25 then
						Cash = Cash - 25
						Item:new('Cactus','placeholderIcon',46)
						Alert:new('Bought Cactus','world')
						gamestate = 'alert'
					else
						Alert:new('Not enough cash','world')
						gamestate = 'alert'
					end
				elseif Food_select == 2 then
					if Cash >= 30 then
						Cash = Cash - 30
						Item:new('SandCake','placeholderIcon',48)
						Alert:new('Bought a Sandcake','world')
						gamestate = 'alert'
					else
						Alert:new('Not enough cash','world')
						gamestate = 'alert'
					end
				elseif Food_select == 3 then
					if Cash >= 8 then
						Cash = Cash - 8
						Item:new('Tea','placeholderIcon',27)
						Alert:new('Bought some Tea','world')
						gamestate = 'alert'
					else
						Alert:new('Not enough cash','world')
						gamestate = 'alert'
					end
				end
			elseif key == "l" then
				dw4.option = false
			end
		end
	end
end
D['wasteland'][4] = dw4