dd1 = {}
dd1.n = 'Raider'
dd1.m = '"Give me Your money"'
dd1.m2 = ''
dd1.o = {'y:yes','r:run','f:fight','t:talk'}
dd1.f = dd1.o
dd1.i = image.getImage('Raider')
dd1.inDialoge = false
dd1.option = false
dd1.Hp = 20
dd1.Atk = 75
dd1.Def = 20
dd1.friendly = "Enemy"
dd1.soundOpts = {}
function dd1.draw()
	dd1.n2 = dd1.n2 or math.random(0,3)
	dd1.b = dd1.b or math.random(0,3)
	if dd1.b == dd1.n2 then repeat dd1.b = math.random(0,3) until dd1.b ~= dd1.n2 end
	if Rep >= -50 and dd1.inDialoge == false then
		dd1.friendly = "Enemy"
		dd1.m = '"Give me Your money"'
		dd1.m2 = ''
		dd1.o = {'y:yes','r:run','f:fight','t:talk'}
	elseif Rep < -50 and dd1.inDialoge == false then
		dd1.friendly = "Friend"
		dd1.m = '"Do you want to trade"'
		dd1.m2 = ''
		dd1.o = {'y:yes','r:run','f:fight'}
	end
	love.graphics.draw(dd1.i,60,40)
	love.graphics.print({{0,0,0},dd1.n},60,260)
	love.graphics.print({{0,0,0},dd1.m},60,280)
	love.graphics.print({{0,0,0},dd1.m2},60,300)
	drawOptions(dd1.o)
	drawstats(dd1)
end
function dd1.keypressed(key)
	if Rep >= -50 then
		if not dd1.inDialoge then
			if key == 't' then
				dd1.inDialoge = true
				dd1.m = 'Are you out your mind'
				dd1.m2 = 'Give me your money'
				dd1.o = {'h:help','l:leave'}
			elseif key == 'y' then
				if Cash >= 30 then
					lowerCash(30)
				end
				Alert.new('Gave your money','stat')
				gamestate = 'alert'
			elseif key == 'r' then
				if Def >= 20 or math.random(1,20) == 5 then
					Alert.new('Ran Away','stat')
					Exp.add(50)
					gamestate = 'alert'
				else
					Hurt(25)
					Alert.new('Failed to Run Away','stat')
					gamestate = 'alert'
				end
			elseif key == 'f' then
				if Atk >= 75 or math.random(1,25) == 4 then
					dd1.Hp = dd1.Hp - 1
					raiseAtk(10)
					raiseDef(2)
					raiseCash(35)
					raiseRep(50)
					Item.new("Tooth","Tooth",5,25)
					Alert.new('Beat the Raider','stat')
					Exp.add(150)
					gamestate = 'alert'
				else
					if Cash >= 30 then
						lowerCash(30)
					end
					Hurt(45)
					Alert.new('Failed to Beat the Raider','stat')
					gamestate = 'alert'
				end
			end
		else
			if not dd1.option then
				if key == 'l' then
					dd1.inDialoge = false
					dd1.o = {'y:yes','r:run','f:fight','t:talk'}
				elseif key == 'h' then
					Rep = -100
					dd1.inDialoge = false
					Alert.new('You lost all your rep','stat')
					gamestate = 'alert'
				end
			else
				dd1.option = true
			end
		end
	else
		if not dd1.inDialoge then
			if key == 'y' then
				dd1.inDialoge = true
				dd1.o = {'t:trade','l:leave'}
				dd1.m = '"'..sNitem[1]..Nitem[dd1.n2]..' for \n\n'..sNitem[1]..Nitem[dd1.b]..'"'
			elseif key == 'r' then
				Alert.new('Ran Away','stat')
				Exp.add(50)
				gamestate = 'alert'
			elseif key == 'f' then
				if Atk >= 75 or math.random(1,25) == 4 then
					dd1.Hp = dd1.Hp - 1
					raiseAtk(10)
					raiseDef(2)
					raiseCash(35)
					raiseRep(50)
					Item.new("Tooth","Tooth",5,25)
					Alert.new('Beat the Raider','stat')
					Exp.add(150)
					gamestate = 'alert'
				else
					if Cash >= 30 then
						lowerCash(30)
					end
					Hurt(45)
					Alert.new('Failed to Beat the Raider','stat')
					gamestate = 'alert'
				end
			end
		else
			if not dd1.option then
				if key == 't' then
					if sitem[1][dd1.n2] > 0 then
						sitem[1][dd1.n2] = sitem[1][dd1.n2] - 1
						sitem[1][dd1.b] = sitem[1][dd1.b] + 1
						Alert.new('Successful Trade','stat')
						Exp.add(20)
						gamestate = 'alert'
						dd1.n2 = nil
						dd1.b = nil
						dd1.inDialoge = false
					else
						dd1.m = "you dont have any\n\n"..sNitem[1]..Nitem[dd1.n2]
					end
				elseif key == 'l' then
					dd1.inDialoge = false
				end
			end
		end	
	end
end
D['desert'][1] = dd1