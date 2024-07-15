dch5 = {}
dch5.n = 'Robot Sectetary'
dch5.m = '"What do you need"'
dch5.m2 = ''
dch5.o = {'y:yes','r:run','f:fight','t:talk'}
dch5.f = dch5.o
dch5.ol = #dch5.o
dch5.i = image.getImage('Robot_sectetary')
dch5.FirstOption = false
dch5.SecondOption = false
dch5.option = false
dch5.Hp = 10
dch5.select = 1
function dch5.draw()
	if not(dch5.FirstOption)then
		dch5.m = '"What do you need"'
		dch5.o = {
			"Can you tell me a history fact",
			"Can i have a guide",
			"(fight) violence",
			"(steal) look over there",
			"(leave) ...",
		-----123456789012345678901234567890
		}
		dch5.ol = #dch5.o
	end
	love.graphics.draw(dch5.i,60,40)
	love.graphics.print({{0,0,0},dch5.n},60,260)
	love.graphics.print({{0,0,0},dch5.m},60,280)
	love.graphics.print({{0,0,0},dch5.m2},60,300)
	AdvDrawOptions(dch5.o,dch5.select)
end
function dch5.keypressed(key)
	if key == 'w' or key == 'up' then
		if dch5.select - 1 > 0 then
			dch5.select = dch5.select - 1
		else
			dch5.select = dch5.ol
		end
	elseif key == 's' or key == 'down' then
		if dch5.select + 1 < dch5.ol + 1 then
			dch5.select = dch5.select + 1
		else
			dch5.select = 1
		end
	elseif key == 'return' then
		dch5.AdvKeyPress()
		dch5.select = 1
	end
end
function dch5.AdvKeyPress()
	if not dch5.FirstOption then
		if dch5.select == 1 then
			dch5.m = '"TODO: history facts"'
			dch5.o = {
				"continue"
			}
			dch5.ol = #dch5.o
			dch5.FirstOption = true
			dch5_flag = "fact"
		elseif dch5.select == 2 then
			dch5.m = '"Printing Printing"'
			dch5.o = {
				"continue"
			}
			dch5.ol = #dch5.o
			dch5.FirstOption = true
			dch5_flag = "print"
		elseif dch5.select == 3 then
			dch5.m = '"Lethal Force Engaged"'
			dch5.o = {
				"continue"
			}
			dch5.ol = #dch5.o
			dch5.FirstOption = true
			dch5_flag = "fight"
		elseif dch5.select == 4 then
			dch5.m = '"Scaning Direction"'
			dch5.o = {
				"continue"
			}
			dch5.ol = #dch5.o
			dch5.FirstOption = true
			dch5_flag = "steal"
		elseif dch5.select == 5 then
			Alert.new('Left','stat')
			gamestate = 'alert'
		end
	else
		if dch5_flag == "fact" then
			dch5.FirstOption = false
		elseif dch5_flag == "print" then
			dch5.FirstOption = false
			dch5_range = "8~11"
			dch5_itblu = Range.parse(dch5_range)
			dch5_n = math.random(1,#dch5_itblu)
			Note.new("A Guide",dch5_itblu[dch5_n])
			Alert.new('Guide given','stat')
			gamestate = 'alert'
		elseif dch5_flag == "fight" then
			if Atk >= 100 then
				dch5.FirstOption = false
				dch5.Hp = dch5.Hp - 1
				CrimeUpdate(3)
				lowerRep(50)
				Exp.add(2500)
				Alert.new('Beat The Robot','stat')
				gamestate = 'alert'
			else
				dch5.FirstOption = false
				Hurt(200)
				lowerRep(50)
				CrimeUpdate(2)
				Alert.new('Failed To Beat The Robot','stat')
				gamestate = 'alert'
			end
		elseif dch5_flag == "steal" then
			if Atk >= 80 then
				dch5.FirstOption = false
				raiseCash(250)
				CrimeUpdate(2)
				Exp.add(2000)
				Alert.new('Stole from The Robot','stat')
				gamestate = 'alert'
			else
				dch5.FirstOption = false
				CrimeUpdate(1)
				lowerRep(50)
				dch5_astole = true
				Alert.new('Failed to Steal from\n\nThe Robot','stat')
				gamestate = 'alert'
			end
		end
	end
end
D['Capital Hall'][5] = dch5