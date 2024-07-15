dd7 = {}
dd7.n = 'Bounty Hunter'
dd7.m = '"Have you seen any Outlaws\n\nlately"'
dd7.m2 = ''
dd7.o = {'r:run','f:fight','t:talk'}
dd7.f = dd7.o
dd7.i = image.getImage('Bounty_hunter')
dd7.inDialoge = false
dd7.option = false
dd7.Hp = 10
dd7.Atk = 100
dd7.Def = 40
dd7.friendly = "Neutral"
function dd7.draw()
	if Rep >= 100 and dd7.inDialoge == false then
		dd7.friendly = "Neutral"
		dd7.m = '"Have you seen any Outlaws\n\nlately"'
		dd7.o = {'r:run','f:fight','t:talk'}
	elseif (Rep < -50 or TimeSinceLastCrime > 10) and dd7.inDialoge == false then
		dd5.friendly = "Enemy"
		dd7.m = '"Hands Up Outlaw"'
		dd7.o = {'enter:continue','t:talk'}
	elseif Rep >= -50 and dd7.inDialoge == false then
		dd7.friendly = "Neutral"
		dd7.m = '"Carry On stranger"'
		dd7.o = {'enter:continue'}
	end
	love.graphics.draw(dd7.i,60,40)
	love.graphics.print({{0,0,0},dd7.n},60,260)
	love.graphics.print({{0,0,0},dd7.m},60,280)
	love.graphics.print({{0,0,0},dd7.m2},60,300)
	drawOptions(dd7.o)
	drawstats(dd7)
end
function dd7.keypressed(key)
	if Rep >= 100 then
		if not dd7.inDialoge then
			if key == 't' then
				dd7.inDialoge = true
				dd7.o = {'y:yes','l:leave'}
			elseif key == 'r' then
				Alert.new('Ran Away','stat')
				gamestate = 'alert'
			elseif key == 'f' then
				if Atk >= 100 or math.random(1,20) == 5 then
					dd7.Hp = dd7.Hp - 1
					lowerRep(300)
					raiseAtk(15)
					raiseDef(6)
					raiseCash(200)
					CrimeUpdate(2)
					Item.new("Bounty Hat","BountyHat",6,45)
					Item.new("Tooth","Tooth",6,45)
					----------1234567890 fits the 13 char limit
					Alert.new('Fought a Bounty Hunter','stat')
					Exp.add(550)
					gamestate = 'alert'
				else
					Hurt(95)
					arrest()
				end
			end
		else
			if not dd7.option then
				if key == 'y' then
					dd7.inDialoge = false
					raiseRep(300)
					Alert.new('Spilled Information','stat')
					gamestate = 'alert'
				elseif key == 'l' then
					dd7.inDialoge = false
				end
			else
				dd7.option = false
			end
		end
	else
		if Rep >= -50 and TimeSinceLastCrime < 10 then
			if not dd7.inDialoge then
				if key == 'return' then
					Alert.new('Let go','stat')
					gamestate = 'alert'
				end
			else
				if not dd7.option then
					dd7.inDialoge = false
				else
					dd7.option = false
				end
			end
		else
			if not dd7.inDialoge then
				if key == 'return' then
					arrest()
				elseif key == 'f' then
					if Atk >= 100 or math.random(1,20) == 5 then
						dd7.Hp = dd7.Hp - 1
						lowerRep(300)
						raiseAtk(15)
						raiseDef(6)
						raiseCash(200)
						CrimeUpdate(2)
						Item.new("Bounty Hat","BountyHat",6,45)
						Item.new("Tooth","Tooth",6,45)
						----------1234567890 fits the 13 char limit
						Alert.new('Fought a Bounty Hunter','stat')
						Exp.add(550)
						gamestate = 'alert'
					else
						Hurt(95)
						arrest()
					end
				elseif key == 'r' then
					if Def >= 40 or math.random(1,20) == 5 then
						Alert.new('Ran Away','stat')
						gamestate = 'alert'
					else
						arrest()
					end
				elseif key == 't' then
					dd7.m = '"..."'
					dd7.o = {'b:bribe','l:leave'}
					dd7.inDialoge = true
				end
			else
				if key == 'b' then
					if math.random(0,1) == 1 then
						if Cash >= 50 then
							lowerCash(50)
							raiseRep(100)
							CrimeUpdate(1)
							dd7.inDialoge = false
							Alert.new('Bribed The Bounty Hunter','stat')
							gamestate = 'alert'
						else
							dd7.inDialoge = false
							Alert.new('Failed to bribe \n\nThe Bounty Hunter','arrest')
							gamestate = 'alert'
						end
					else
						dd7.inDialoge = false
						Alert.new('Failed to bribe \n\nThe Bounty Hunter','arrest')
						gamestate = 'alert'
					end
				elseif key == 'l' then
					dd7.inDialoge = false
				end
			end
		end
	end
end
D['desert'][7] = dd7