dd10 = {}
dd10.n = 'Recycling man'
dd10.m = '"Keep our Deserts Clean"'
dd10.m2 = ''
dd10.o = {'t:talk','r:run','f:fight','s:steal'}
dd10.f = dd10.o
dd10.i = image:getImage('')
dd10.inDialoge = false
dd10.option = false
dd10.Hp = 5
dd10.Atk = 60
dd10.Def = 24
dd10.friendly = "Neutral"
function dd10.draw()
	if Rep >= 0 and dd10.inDialoge == false then
		dd10.m = '"Keep our Deserts Clean"'
		dd10.o = {'t:talk','r:run','f:fight','s:steal'}
	elseif Rep <= 0 and dd10.inDialoge == false then
		dd10.m = '"Keep our Deserts Clean"'
		dd10.o = {'t:talk','r:run','f:fight','s:steal'}
	end
	love.graphics.draw(dd10.i,60,40)
	love.graphics.print({{0,0,0},dd10.n},60,260)
	love.graphics.print({{0,0,0},dd10.m},60,280)
	love.graphics.print({{0,0,0},dd10.m2},60,300)
	drawOptions(dd10.o)
	drawstats(dd10)
	if dd10.option then
		inv_draw_stuff_select()
	end
end
function dd10.keypressed(key)
	if Rep >= 0 then
		if not dd10.inDialoge then
			if key == 't' then
				dd10.inDialoge = true
				dd10.o = {'y:yes','l:leave'}
			elseif key == 'r' then
				Alert:new('Ran Away','stat')
				gamestate = 'alert'
			elseif key == 'f' then
				if Atk >= 60 or math.random(1,20) == 5 then
					dd10.Hp = dd10.Hp - 1
					lowerRep(120)
					raiseAtk(2)
					raiseCash(90)
					CrimeUpdate(2)
					Item:new("Tooth","Tooth",6,30)
					Alert:new('Fought the Recycling man','stat')
					Exp:add(40)
					gamestate = 'alert'
				else
					lowerRep(120)
					Hurt(45)
					CrimeUpdate(1)
					Alert:new('Failed to beat \n\nthe Recycling man','stat')
					gamestate = 'alert'
				end
			elseif key == 's' then
				rob(60,120,"The Recycling man",20,140)
			end
		else
			if not dd10.option then
				if key == 'y' then
					dd10.option = true
				elseif key == 'l' then
					dd10.inDialoge = false
					dd10.o = {'t:talk','r:run','f:fight','s:steal'}
				end
			else
				if key == "w" then
					if (Inv_select - 1) > 0 then
					Inv_select = Inv_select - 1
					end
				elseif key == "s" then
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
					dd10.option = false
				end
			end
		end
	else
		if not dd10.inDialoge then
			if key == 't' then
				dd10.inDialoge = true
				dd10.o = {'y:yes','l:leave'}
			elseif key == 'r' then
				Alert:new('Ran Away','stat')
				gamestate = 'alert'
			elseif key == 'f' then
				if Atk >= 60 or math.random(1,20) == 5 then
					dd10.Hp = dd10.Hp - 1
					lowerRep(120)
					raiseAtk(2)
					raiseCash(90)
					CrimeUpdate(2)
					Item:new("Tooth","Tooth",6,30)
					Alert:new('Fought the Recycling man','stat')
					Exp:add(140)
					gamestate = 'alert'
				else
					lowerRep(120)
					Hurt(45)
					CrimeUpdate(1)
					Alert:new('Failed to beat \n\nthe Recycling man','stat')
					gamestate = 'alert'
				end
			elseif key == 's' then
				rob(60,120,"The Recycling man",20,140)
			end
		else
			if not dd10.option then
				if key == 'y' then
				dd10.option = true
			elseif key == 'l' then
				dd10.inDialoge = false
				dd10.o = {'t:talk','r:run','f:fight','s:steal'}
				end
			else
				if key == "w" then
					if (Inv_select - 1) > 0 then
					Inv_select = Inv_select - 1
					end
				elseif key == "s" then
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
					dd10.option = false
				end
			end
		end
	end
end
D['desert'][10] = dd10