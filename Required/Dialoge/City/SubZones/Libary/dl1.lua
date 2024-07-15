dl1 = {}
dl1.n = 'Tracey Lind'
dl1.m = '"Keep it Quiet Loser"'
dl1.m2 = ''
dl1.o = {
	'(leave) ...',--30
-----123456789012345678901234567890
}
dl1.f = dl1.o
dl1.ol = #dl1.o
dl1.i = image.getImage('Tracey')
dl1.FirstOption = false
dl1.SecondOption = false
dl1.ThirdOption = false
dl1.Hp = 0--1
-- 0/-1/-2: dead
-- -2: buffer
-- -3: uhh find out yourself
-- -4: summoning
-- -5: at the capital
-- -6: other
dl1.select = 1
function dl1.draw()
	if not(dl1.FirstOption)then
		if Tracey_Unhelper then
			dl1.m = "Go away"
			dl1.o = {
				'im turning you in',
				'(fight) im stoping this',
				'(leave) ...',
			-----123456789012345678901234567890
			}
			dl1.ol = #dl1.o
		elseif Tracey_Helper then
			dl1.m = "Do you have the materials yet"
			dl1.o = {
				'yes',
				'no',
				'(leave) ...',
			-----123456789012345678901234567890
			}
			dl1.ol = #dl1.o
		elseif Traitor or AttemptedTraitor then
			dl1.m = "Wait dont kill me i can help"
			dl1.o = {
				'im not here to kill you',
				'(evil) sure why not',
				'(fight) i dont need help',
				'(leave) ...',
			-----123456789012345678901234567890
			}
			dl1.ol = #dl1.o
		elseif dl1_stole or dl1_astole then
			dl1.m = '"I wont call the cops if you help me"'
			dl1.o = {
				'sure',
				'id rather die',
				'(leave) ...',
			-----123456789012345678901234567890
			}
			dl1.ol = #dl1.o
		elseif Rep >= 0 then
			dl1.m = '"Why are you bothering me"'
			dl1.o = {
				'can i have a history paper',
				'do you need any help',
				'(leave) ...',
			-----123456789012345678901234567890
			}
			dl1.ol = #dl1.o
		elseif Rep < 0 then
			dl1.m = "just dont steal any books"
			dl1.o = {
				'wait',
				'(steal) i promise',
				'(fight) ill take what i want',
				'(leave) ...',
			-----123456789012345678901234567890
			}
			dl1.ol = #dl1.o
		end
	end
	love.graphics.draw(dl1.i,60,40)
	love.graphics.print({{0,0,0},dl1.n},60,260)
	love.graphics.print({{0,0,0},dl1.m},60,280)
	love.graphics.print({{0,0,0},dl1.m2},60,300)
	AdvDrawOptions(dl1.o,dl1.select)
end
function dl1.keypressed(key)
	if key == 'w' or key == 'up' then
		if dl1.select - 1 > 0 then
			dl1.select = dl1.select - 1
		else
			dl1.select = dl1.ol
		end
	elseif key == 's' or key == 'down' then
		if dl1.select + 1 < dl1.ol + 1 then
			dl1.select = dl1.select + 1
		else
			dl1.select = 1
		end
	elseif key == 'return' then
		dl1.AdvKeyPress()
		dl1.select = 1
	end
end
function dl1.AdvKeyPress()
	if Tracey_Unhelper then
		if not dl1.FirstOption then
			if dl1.select == 1 then
				Alert.new('Left','stat')
				gamestate = 'alert'
			end
		else
			if not dl1.SecondOption then
			
			else
				if not dl1.ThirdOption then
					
				else
					
				end
			end
		end
	elseif Tracey_Helper then
		if not dl1.FirstOption then
			if dl1.select == 1 then
				Alert.new('Left','stat')
				gamestate = 'alert'
			end
		else
			if not dl1.SecondOption then
			
			else
				if not dl1.ThirdOption then
					
				else
					
				end
			end
		end
	elseif Traitor or AttemptedTraitor then
		if not dl1.FirstOption then
			if dl1.select == 1 then
				Alert.new('Left','stat')
				gamestate = 'alert'
			end
		else
			if not dl1.SecondOption then
			
			else
				if not dl1.ThirdOption then
					
				else
					
				end
			end
		end
	elseif dl1_stole or dl1_astole then
		if not dl1.FirstOption then
			if dl1.select == 1 then
				Alert.new('Left','stat')
				gamestate = 'alert'
			end
		else
			if not dl1.SecondOption then
			
			else
				if not dl1.ThirdOption then
					
				else
					
				end
			end
		end
	elseif Rep >= 0 then
		if not dl1.FirstOption then
			if dl1.select == 1 then
				dl1.m = "let me print one"
				dl1.o = {
					'continue',
				-----123456789012345678901234567890
				}
				dl1.ol = #dl1.o
				dl1.FirstOption = true
				dl1_flag = "paper"
			elseif dl1.select == 2 then
				dl1.m = "are you sure"
				dl1.o = {
					'yes',
					'no',
				-----123456789012345678901234567890
				}
				dl1.ol = #dl1.o
				dl1.FirstOption = true
				dl1_flag = "help"
			elseif dl1.select == 3 then
				Alert.new('Left','stat')
				gamestate = 'alert'
			end
		else
			if not dl1.SecondOption then
				if dl1_flag == "help" then
					if dl1.select == 1 then
						dl1.m = "we are going to resurect the dead"
						dl1.o = {
							'yes we are',
							'on second thought nevermind',
						-----123456789012345678901234567890
						}
						dl1.ol = #dl1.o
						dl1.SecondOption = true
					elseif dl1.select == 2 then
						dl1.FirstOption = false
						Alert.new('Denied Helping Tracey','stat')
						gamestate = 'alert'
					end
				elseif dl1_flag == "paper" then
					dl1.FirstOption = false
					dl1_range = "8~11"
					dl1_itblu = Range.parse(dl1_range)
					dl1_n = math.random(1,#dl1_itblu)
					Note.new("A Guide",dl1_itblu[dl1_n])
					Alert.new('Got a Pamplet','stat')
					gamestate = 'alert'
				end
			else
				if dl1.select == 1 then
					Tracey_Helper = true
					dl1.SecondOption = false
					Note.new("What to do",-1)
					Alert.new('Helping Tracey','stat')
					gamestate = 'alert'
				elseif dl1.select == 2 then
					Tracey_Unhelper = true
					dl1.SecondOption = false
					Alert.new('Denied Helping Tracey','stat')
					gamestate = 'alert'
				end
			end
		end
	elseif Rep < 0 then
		if not dl1.FirstOption then
			if dl1.select == 1 then
				dl1.m = "yeah you could help me"
				dl1.o = {
					"what",
					"okay",
					"no thanks",
					"(leave) ..."
				-----123456789012345678901234567890
				}
				dl1.ol = #dl1.o
				dl1.FirstOption = true
				dl1_flag = "question"
			elseif dl1.select == 2 then
				dl1.m = "okay, be good then"
				dl1.o = {
					"continue"
				}
				dl1.ol = #dl1.o
				dl1.FirstOption = true
				dl1_flag = "steal"
			elseif dl1.select == 3 then
				dl1.m = "oh yeah?"
				dl1.o = {
					"continue"
				}
				dl1.ol = #dl1.o
				dl1.FirstOption = true
				dl1_flag = "fight"
			elseif dl1.select == 4 then
				Alert.new('Left','stat')
				gamestate = 'alert'
			end
		else
			if not dl1.SecondOption then
				if dl1_flag == "question" then
					if dl1.select == 1 then
						dl1.m = ""
						dl1.o = {
							"continue"
						}
						dl1.ol = #dl1.o
						dl1.SecondOption = true
						dl1_flag = "more"
					elseif dl1.select == 2 then
						dl1.m = ""
						dl1.o = {
							"continue"
						}
						dl1.ol = #dl1.o
						dl1.SecondOption = true
						dl1_flag = "accept"
					elseif dl1.select == 3 then
						dl1.m = ""
						dl1.o = {
							"continue"
						}
						dl1.ol = #dl1.o
						dl1.SecondOption = true
						dl1_flag = "refuse"
					elseif dl1.select == 4 then
						Alert.new('Left','stat')
						gamestate = 'alert'
					end
				elseif dl1_flag == "steal" then
					if Atk >= 20 then
						dl1.FirstOption = false
						-- Tracey doesnt care about stealing as much
						if math.random(1,51) % 51 == 0 then
							dl1_stole = true
						end
						raiseCash(10)
						CrimeUpdate(2)
						Exp.add(25)
						Alert.new('Stole from Tracey','stat')
						gamestate = 'alert'
					else
						dl1.FirstOption = false
						CrimeUpdate(1)
						lowerRep(50)
						Exp.add(20)
						dl1_astole = true
						Alert.new('Failed to Steal from\n\nTracey','stat')
						gamestate = 'alert'
					end
				elseif dl1_flag == "fight" then
					if Atk >= 25 then
						dl1.FirstOption = false
						dl1.Hp = dl1.Hp - 1
						CrimeUpdate(3)
						lowerRep(50)
						Exp.add(25)
						Alert.new('Beat Tracey','stat')
						gamestate = 'alert'
					else
						dl1.FirstOption = false
						Hurt(55)
						lowerRep(50)
						CrimeUpdate(2)
						Alert.new('Failed to Beat Tracey','stat')
						gamestate = 'alert'
					end
				end
			else
				if not dl1.ThirdOption then
					
				else
					
				end
			end
		end
	end
end
D['Libary'][1] = dl1