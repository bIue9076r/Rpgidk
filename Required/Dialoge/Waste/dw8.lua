dw8 = {}
dw8.n = 'Police / Military'
dw8.m = 'What are you doing out here / Surrender Now'
dw8.m2 = ''
dw8.o = {'t:talk','r:run','f:fight'}
dw8.f = dw8.o
dw8.i = image.getImage('Police') -- / image.getImage('Military')
dw8.inDialoge = false
dw8.option = false
dw8.Hp = 50
dw8.mode = 1
dw8.Atk = (150 * 5)
dw8.Def = 100
dw8.friendly = "Neutral"
function dw8.draw()
	if dw8.Hp < 25 then
		dw8.mode = 2
	end
	if dw8.mode == 1 then
		dw8.n = 'Police'
		if dw8.inDialoge == false then
			if Rep >= 0 then
				dw8.Atk = (150 * 5)
				dw8.m = '"What are you doing out here"'
				dw8.o = {'t:talk','r:run','f:fight'}
			else
				dw8.Atk = (150 * 5)
				dw8.friendly = "Enemy"
				dw8.m = '"Surrender Now Criminal"'
				dw8.o = {'t:talk','r:run','f:fight'}
			end
		end
	elseif dw8.mode == 2 then
		dw8.n = 'Military'
		if dw8.inDialoge == false then
			if Rep >= 0 then
				dw8.Atk = (175 * 5)
				dw8.friendly = "Enemy"
				dw8.m = '"Surrender Now Citizen"'
				dw8.o = {'t:talk','r:run','f:fight'}
			else
				dw8.Atk = (175 * 5)
				dw8.friendly = "Enemy"
				dw8.m = '"Surrender Now Criminal"'
				dw8.o = {'t:talk','r:run','f:fight'}
			end
		end
	end
	love.graphics.draw(dw8.i,60,40)
	love.graphics.print({{0,0,0},dw8.n},60,260)
	love.graphics.print({{0,0,0},dw8.m},60,280)
	love.graphics.print({{0,0,0},dw8.m2},60,300)
	drawOptions(dw8.o)
	drawstats(dw8)
end
function dw8.keypressed(key)
	if dw8.mode == 1 then
		if Rep >= 0 then
			if not dw8.inDialoge then
				if key == 't' then
					dw8.inDialoge = true
					dw8.m = 'Lets stay in a safer area'
					dw8.o = {'y:ok','l:leave'}
				elseif key == 'r' then
					Alert.new('Ran Away','stat')
					gamestate = 'alert'
				elseif key == 'f' then
					if Atk >= (150 * 5) then
						dw8.Hp = dw8.Hp - 1
						lowerRep(1000)
						raiseAtk(100)
						raiseDef(20)
						raiseCash(650)
						CrimeUpdate(5)
						Exp.add(150 * 5)
						for i = 1,5 do
							Item.new("Tooth","Tooth",6,50)
						end
						Alert.new('Fought A Police Squad','stat')
						gamestate = 'alert'
					else
						Hurt(500)
						D.location = 'city'
						Alert.new('Failed to beat the Police Squad','arrest')
						gamestate = 'alert'
					end
				end
			else
				if key == 'y' then
					dw8.inDialoge = false
					D.location = 'city'
					gamestate = 'stat'
				elseif key == 'n' then
					dw8.inDialoge = false
					gamestate = 'stat'
				elseif key == 'l' then
					dw8.inDialoge = false
					dw8.m = 'What are you doing out here'
					dw8.o = {'t:talk','r:run','f:fight'}
				end
			end
		else
			if key == 't' then
				D.location = 'city'
				Alert.new('Arrested by the Police Squad','arrest')
				gamestate = 'alert'
			elseif key == 'r' then
				if Def >= 100 then
					CrimeUpdate(2)
					Alert.new('Ran Away','stat')
					gamestate = 'alert'
				else
					Hurt(450)
					D.location = 'city'
					Alert.new('Failed to evade the Police Squad','arrest')
					gamestate = 'alert'
				end
			elseif key == 'f' then
				if Atk >= (150 * 5) then
					dw8.Hp = dw8.Hp - 1
					lowerRep(1100)
					raiseAtk(100)
					raiseDef(20)
					raiseCash(650)
					CrimeUpdate(5)
					Exp.add(150 * 5)
					for i = 1,5 do
						Item.new("Tooth","Tooth",6,50)
					end
					Alert.new('Fought A Police Squad','stat')
					gamestate = 'alert'
				else
					Hurt(500)
					D.location = 'city'
					Alert.new('Failed to beat the Police Squad','arrest')
					gamestate = 'alert'
				end
			end
		end
	elseif dw8.mode == 2 then
		if Rep >= 0 then
			if not dw8.inDialoge then
				if key == 't' then
					dw8.inDialoge = true
					dw8.m = 'Get Out of Here'
					dw8.o = {'y:ok','l:leave'}
				elseif key == 'r' then
					Alert.new('Ran Away','stat')
					gamestate = 'alert'
				elseif key == 'f' then
					if Atk >= (175 * 5) then
						dw8.Hp = dw8.Hp - 1
						lowerRep(1500)
						raiseAtk(105)
						raiseDef(20)
						raiseCash(650)
						CrimeUpdate(10)
						Exp.add(175 * 5)
						for i = 1,5 do
							Item.new("Tooth","Tooth",6,55)
						end
						Alert.new('Fought A Squad','stat')
						gamestate = 'alert'
					else
						Hurt(600)
						D.location = 'city'
						Alert.new('Failed to beat the Squad','arrest')
						gamestate = 'alert'
					end
				end
			else
				if key == 'y' then
					dw8.inDialoge = false
					D.location = 'city'
					gamestate = 'stat'
				elseif key == 'n' then
					dw8.inDialoge = false
					gamestate = 'stat'
				elseif key == 'l' then
					dw8.inDialoge = false
					dw8.m = '"Surrender Now Citizen"'
					dw8.o = {'t:talk','r:run','f:fight'}
				end
			end
		else
			if key == 't' then
				D.location = 'city'
				Alert.new('Arrested by the Squad','arrest')
				gamestate = 'alert'
			elseif key == 'r' then
				if Def >= 100 then
					CrimeUpdate(3)
					Alert.new('Ran Away','stat')
					gamestate = 'alert'
				else
					Hurt(550)
					D.location = 'city'
					Alert.new('Failed to evade the Squad','arrest')
					gamestate = 'alert'
				end
			elseif key == 'f' then
				if Atk >= (175 * 5) then
					dw8.Hp = dw8.Hp - 1
					lowerRep(1500)
					raiseAtk(105)
					raiseDef(20)
					raiseCash(650)
					CrimeUpdate(10)
					Exp.add(175 * 5)
					for i = 1,5 do
						Item.new("Tooth","Tooth",6,55)
					end
					Alert.new('Fought A Squad','stat')
					gamestate = 'alert'
				else
					Hurt(600)
					D.location = 'city'
					Alert.new('Failed to beat the Squad','arrest')
					gamestate = 'alert'
				end
			end
		end
	end
end
D['wasteland'][8] = dw8