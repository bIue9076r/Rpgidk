dch2 = {}
dch2.n = 'Janet Drew'
dch2.m = '"What do you need"'
dch2.m2 = ''
dch2.o = {'y:yes','r:run','f:fight','t:talk'}
dch2.f = dch2.o
dch2.ol = #dch2.o
dch2.i = image.getImage('Janet')
dch2.FirstOption = false
dch2.SecondOption = false
dch2.option = false
dch2.Hp = 1
-- 0/-1/-2: dead
-- -2: buffer
-- -3: quit her job
-- -4: fired
-- -5: uhh find out yourself
-- -6: at the libary
-- -7: other
dch2.select = 1
function dch2.draw()
	if not(dch2.FirstOption)then
		if Traitor then
			dch2.m = '"Please Dont kill me"'
			dch2.o = {
				"Reprint This for me",
				"Can you tell me a history fact",
				"Keep Beging for Your life",
				"(leave) ...",
			-----123456789012345678901234567890
			}
			dch2.ol = #dch2.o
		elseif AttemptedTraitor then
			dch2.m = '"Stop trying to kill my boss"'
			dch2.o = {
				"It was an accident",
				"Why should I",
				"Can you tell me a history fact",
				"(fight) fine i'll kill you",
				"(leave) ...",
			-----123456789012345678901234567890
			}
			dch2.ol = #dch2.o
		elseif dch2_stole then
			dch2.m = '"Hope you\'re happy"'
			dch2.o = {
				"I am",
				"I am not",
				"Can you tell me a history fact",
				"(leave) ...",
			-----123456789012345678901234567890
			}
			dch2.ol = #dch2.o
		elseif dch2_astole then
			dch2.m = '"Haven\'t you tried this"'
			dch2.o = {
				"yes",
				"(steal) no",
				"Can you tell me a history fact",
				"(leave) ...",
			-----123456789012345678901234567890
			}
			dch2.ol = #dch2.o
		elseif Janet_Annoyed then
			dch2.m = '"Shut up about history facts"'
			dch2.o = {
				"But i want to know more",
				"Can you tell me a history fact",
				"(fight) You dont control me",
				"(leave) ...",
			-----123456789012345678901234567890
			}
			dch2.ol = #dch2.o
		elseif Janet_Mild_Annoyed then
			dch2.m = '"Please Stop asking for facts"'
			dch2.o = {
				"But i want to know more",
				"Can you tell me a history fact",
				"(fight) please die then",
				"(leave) ...",
			-----123456789012345678901234567890
			}
			dch2.ol = #dch2.o
		elseif Rep >= 0 then
			dch2.m = '"What do you need"'
			dch2.o = {
				"Can you tell me a history fact",
				"Can i have a guide",
				"(fight) violence",
				"(steal) look over there",
				"(leave) ...",
			-----123456789012345678901234567890
			}
			dch2.ol = #dch2.o
		elseif Rep < 0 then
			dch2.m = '"Go away jerk"'
			dch2.o = {
				"Tell Me a history fact",
				"im sorry",
				"(fight) No",
				"(leave) ...",
			-----123456789012345678901234567890
			}
			dch2.ol = #dch2.o
		end
	end
	love.graphics.draw(dch2.i,60,40)
	love.graphics.print({{0,0,0},dch2.n},60,260)
	love.graphics.print({{0,0,0},dch2.m},60,280)
	love.graphics.print({{0,0,0},dch2.m2},60,300)
	AdvDrawOptions(dch2.o,dch2.select)
end
function dch2.keypressed(key)
	if key == 'w' or key == 'up' then
		if dch2.select - 1 > 0 then
			dch2.select = dch2.select - 1
		else
			dch2.select = dch2.ol
		end
	elseif key == 's' or key == 'down' then
		if dch2.select + 1 < dch2.ol + 1 then
			dch2.select = dch2.select + 1
		else
			dch2.select = 1
		end
	elseif key == 'return' then
		dch2.AdvKeyPress()
		dch2.select = 1
	end
end
function dch2.AdvKeyPress()
	if Traitor then
		if not dch2.FirstOption then
			if dch2.select == 1 then
				dch2.m = '"Please leave me alone"'
				dch2.o = {
					"continue"
				}
				dch2.ol = #dch2.o
				dch2.FirstOption = true
				dch2_flag = "print"
			elseif dch2.select == 2 then
				dch2.m = '"Please leave me alone"'
				dch2.o = {
					"continue"
				}
				dch2.ol = #dch2.o
				dch2.FirstOption = true
				dch2_flag = "beg"
			elseif dch2.select == 3 then
				dch2.m = '"Please i want to live"'
				dch2.o = {
					"continue"
				}
				dch2.ol = #dch2.o
				dch2.FirstOption = true
				dch2_flag = "beg"
			elseif dch2.select == 4 then
				Alert.new('Left','stat')
				gamestate = 'alert'
			end
		else
			if dch2_flag == "beg" then
				dch2.FirstOption = false
				Alert.new('She begs for her life','stat')
				gamestate = 'alert'
			elseif dch2_flag == "print" then
				if Valary then
					-- Note 14 = Valary edition
					dch2.FirstOption = false
					Alert.new('Guide Reprinted','stat')
					gamestate = 'alert'
				else
					-- Note 14 = Non Valary edition
					dch2.FirstOption = false
					Alert.new('Guide Reprinted','stat')
					gamestate = 'alert'
				end
			end
		end
	elseif AttemptedTraitor then
		if not dch2.FirstOption then
			if dch2.select == 1 then
				dch2.m = '"Sure an accident"'
				dch2.o = {
					"continue"
				}
				dch2.ol = #dch2.o
				dch2.FirstOption = true
			elseif dch2.select == 2 then
				dch2.m = '"Well i like my job"'
				dch2.o = {
					"continue"
				}
				dch2.ol = #dch2.o
				dch2.FirstOption = true
			elseif dch2.select == 3 then
				dch2.m = '"Sure let me do something for a sec"'
				dch2.o = {
					"continue"
				}
				dch2.ol = #dch2.o
				dch2.FirstOption = true
			elseif dch2.select == 4 then
				if Atk >= 25 then
					dch2.FirstOption = false
					dch2.Hp = dch2.Hp - 1
					CrimeUpdate(3)
					lowerRep(50)
					Exp.add(20)
					Alert.new('Beat Janet','stat')
					gamestate = 'alert'
				else
					dch2.FirstOption = false
					Hurt(45)
					lowerRep(50)
					CrimeUpdate(2)
					Alert.new('Failed To Beat Janet','stat')
					gamestate = 'alert'
				end
			elseif dch2.select == 5 then
				Alert.new('Left','stat')
				gamestate = 'alert'
			end
		else
			dch2.FirstOption = false
			Alert.new('Janet ignores you','stat')
			gamestate = 'alert'
		end
	elseif dch2_stole then
		if not dch2.FirstOption then
			if dch2.select == 1 then
				dch2.m = '"Good for you"'
				dch2.o = {
					"continue"
				}
				dch2.ol = #dch2.o
				dch2.FirstOption = true
				dch2_flag = "ignore"
			elseif dch2.select == 2 then
				dch2.m = '"Ok give it back then"'
				dch2.o = {
					"no",
					"yes",
					"(leave) ...",
				-----123456789012345678901234567890
				}
				dch2.ol = #dch2.o
				dch2.FirstOption = true
				dch2_flag = "giveit"
			elseif dch2.select == 3 then
				dch2.m = "Fuck you"
				dch2.o = {
					"continue"
				}
				dch2.ol = #dch2.o
				dch2.FirstOption = true
				dch2_flag = "ignore"
			elseif dch2.select == 4 then
				Alert.new('Left','stat')
				gamestate = 'alert'
			end
		else
			if not dch2.SecondOption then
				if dch2_flag == 'ignore' then
					dch2.FirstOption = false
					Alert.new('Janet ignores you','stat')
					gamestate = 'alert'
				elseif dch2_flag == 'giveit' then
					if dch2.select == 1 then
						dch2.m = '"Couldn\'t expect anything else"'
						dch2.o = {
							"continue"
						}
						dch2.ol = #dch2.o
						dch2.SecondOption = true
						dch2_flag = "cont"
					elseif dch2.select == 2 then
						dch2.m = '"Well thats unexpected"'
						dch2.o = {
							"continue"
						}
						dch2.ol = #dch2.o
						dch2.SecondOption = true
						dch2_flag = "give"
					elseif dch2.select == 3 then
						dch2.FirstOption = false
						Alert.new('Left','stat')
						gamestate = 'alert'
					end
				end
			else
				if dch2_flag == 'cont' then
					dch2.FirstOption = false
					dch2.SecondOption = false
					Alert.new('Janet ignores you','stat')
					gamestate = 'alert'
				elseif dch2_flag == 'give' then
					dch2.FirstOption = false
					dch2.SecondOption = false
					if Cash >= 25 then
						Cash = Cash - 25
					else
						Cash = 0
					end
					dch2_stole = false
					dch2_astole = false
					Alert.new('Gave The Money back','stat')
					gamestate = 'alert'
				end
			end
		end
	elseif dch2_astole then
		if not dch2.FirstOption then
			if dch2.select == 1 then
				dch2.m = '"Ok then leave me alone"'
				dch2.o = {
					"continue"
				}
				dch2.ol = #dch2.o
				dch2.FirstOption = true
				dch2_flag = "ignore"
			elseif dch2.select == 2 then
				dch2.m = '"You\'re a dumbass"'
				dch2.o = {
					"continue"
				}
				dch2.ol = #dch2.o
				dch2.FirstOption = true
				dch2_flag = "leave"
			elseif dch2.select == 3 then
				dch2.m = '"get out before i hit you"'
				dch2.o = {
					"continue"
				}
				dch2.ol = #dch2.o
				dch2.FirstOption = true
				dch2_flag = "leave"
			elseif dch2.select == 4 then
				Alert.new('Left','stat')
				gamestate = 'alert'
			end
		else
			if dch2_flag == "ignore" then
				dch2.FirstOption = false
				Alert.new('Janet ignores you','stat')
				gamestate = 'alert'
			elseif dch2_flag == "leave" then
				dch2.FirstOption = false
				Alert.new('Left','stat')
				gamestate = 'alert'
			end
			
		end
	elseif Janet_Annoyed then
		if not dch2.FirstOption then
			if dch2.select == 1 then
				dch2.m = '"Shut the fuck up"'
				dch2.o = {
					"no",
					"ok",
					"(leave) ...",
				}
				dch2.ol = #dch2.o
				dch2.FirstOption = true
				dch2_flag = "more"
			elseif dch2.select == 2 then
				dch2.m = '"Fucking Stop it already"'
				dch2.o = {
					"i dont want to",
					"ok fine",
					"(leave) ...",
				}
				dch2.ol = #dch2.o
				dch2.FirstOption = true
				dch2_flag = "troll"
			elseif dch2.select == 3 then
				if Atk >= 20 then
					dch2.FirstOption = false
					dch2.Hp = dch2.Hp - 1
					CrimeUpdate(3)
					lowerRep(50)
					Exp.add(20)
					Alert.new('Beat Janet','stat')
					gamestate = 'alert'
				else
					dch2.FirstOption = false
					Hurt(45)
					lowerRep(50)
					CrimeUpdate(2)
					Alert.new('Failed To Beat Janet','stat')
					gamestate = 'alert'
				end
			elseif dch2.select == 4 then
				Alert.new('Left','stat')
				gamestate = 'alert'
			end
		else
			if not dch2.SecondOption then
				if dch2_flag == "more" then
					if dch2.select == 1 then
						dch2_historyCount = dch2_historyCount + 1
						if dch2_historyCount > 30 then
							dch2.SecondOption = true
							dch2.m = '"Thats it I quit, I hate this job"'
							dch2.o = {
								"continue",
							}
							dch2.ol = #dch2.o
							dch2_flag = "quit"
						else
							dch2.FirstOption = false
							Alert.new('Janet ignores you','stat')
							gamestate = 'alert'
						end
					elseif dch2.select == 2 then
						dch2_historyCount = dch2_historyCount - 1
						if dch2_historyCount < 20 then
							Janet_Annoyed = false
						end
						dch2.FirstOption = false
						Alert.new('Janet ignores you','stat')
						gamestate = 'alert'
					elseif dch2.select == 3 then
						dch2.FirstOption = false
						Alert.new('Left','stat')
						gamestate = 'alert'
					end
				elseif dch2_flag == "troll" then
					if dch2.select == 1 then
						dch2_historyCount = dch2_historyCount + 1
						if dch2_historyCount > 30 then
							dch2.SecondOption = true
							dch2.m = '"I\'ve Fucking had it with you"'
							dch2.o = {
								"continue",
							}
							dch2.ol = #dch2.o
							dch2_flag = "fight"
						else
							dch2.FirstOption = false
							Alert.new('Janet ignores you','stat')
							gamestate = 'alert'
						end
					elseif dch2.select == 2 then
						dch2_historyCount = dch2_historyCount - 1
						if dch2_historyCount < 20 then
							Janet_Annoyed = false
						end
						dch2.FirstOption = false
						Alert.new('Janet ignores you','stat')
						gamestate = 'alert'
					elseif dch2.select == 3 then
						dch2.FirstOption = false
						Alert.new('Left','stat')
						gamestate = 'alert'
					end
				end
			else
				if dch2_flag == "quit" then
					dch2.Hp = -3
					dch2.FirstOption = false
					dch2.SecondOption = false
					Alert.new('Janet quit her job','stat')
					gamestate = 'alert'
				elseif dch2_flag == "fight" then
					dch2.Hp = -4
					dch2.FirstOption = false
					dch2.SecondOption = false
					Janet_Inform = true
					-- boss fight
					B_Janet:Load()
					B_Janet:Global()
					gamestate = 'fight'
				end
			end
		end
	elseif Janet_Mild_Annoyed then
		if not dch2.FirstOption then
			if dch2.select == 1 then
				dch2.m = "Go bother the libary instead"
				dch2.o = {
					"continue"
				}
				dch2.ol = #dch2.o
				dch2.FirstOption = true
				dch2_flag = "more"
			elseif dch2.select == 2 then
				dch2.m = "You're trying to piss me off"
				dch2.o = {
					"no?",
					"yes",
					"(leave) ...",
				}
				dch2.ol = #dch2.o
				dch2.FirstOption = true
				dch2_flag = "troll"
			elseif dch2.select == 3 then
				if Atk >= 20 then
					dch2.FirstOption = false
					dch2.Hp = dch2.Hp - 1
					CrimeUpdate(3)
					lowerRep(50)
					Exp.add(20)
					Alert.new('Beat Janet','stat')
					gamestate = 'alert'
				else
					dch2.FirstOption = false
					Hurt(45)
					lowerRep(50)
					CrimeUpdate(2)
					Alert.new('Failed To Beat Janet','stat')
					gamestate = 'alert'
				end
			elseif dch2.select == 4 then
				Alert.new('Left','stat')
				gamestate = 'alert'
			end
		else
			if dch2_flag == "more" then
				dch2.FirstOption = false
				Alert.new('Janet ignores you','stat')
				gamestate = 'alert'
			elseif dch2_flag == "troll" then
				if dch2.select == 1 then
					dch2_historyCount = dch2_historyCount - 1
					if dch2_historyCount < 2 then
						Janet_Mild_Annoyed = false
					end
					dch2.FirstOption = false
					Alert.new('Janet ignores you','stat')
					gamestate = 'alert'
				elseif dch2.select == 2 then
					dch2_historyCount = dch2_historyCount + 1
					if dch2_historyCount > 25 then
						Janet_Annoyed = true
					end
					dch2.FirstOption = false
					Alert.new('Janet ignores you','stat')
					gamestate = 'alert'
				elseif dch2.select == 3 then
					dch2.FirstOption = false
					Alert.new('Left','stat')
					gamestate = 'alert'
				end
			end
		end
	elseif Rep >= 0 then
		if not dch2.FirstOption then
			if dch2.select == 1 then
				dch2.m = "TODO: history facts"
				dch2.o = {
					"continue"
				}
				dch2.ol = #dch2.o
				dch2.FirstOption = true
				dch2_flag = "fact"
			elseif dch2.select == 2 then
				dch2.m = "Let me print one really quickly"
				dch2.o = {
					"continue"
				}
				dch2.ol = #dch2.o
				dch2.FirstOption = true
				dch2_flag = "print"
			elseif dch2.select == 3 then
				dch2.m = "You think you're the shit"
				dch2.o = {
					"continue"
				}
				dch2.ol = #dch2.o
				dch2.FirstOption = true
				dch2_flag = "fight"
			elseif dch2.select == 4 then
				dch2.m = "Whats so intresting?"
				dch2.o = {
					"continue"
				}
				dch2.ol = #dch2.o
				dch2.FirstOption = true
				dch2_flag = "steal"
			elseif dch2.select == 5 then
				Alert.new('Left','stat')
				gamestate = 'alert'
			end
		else
			if dch2_flag == "fact" then
				dch2_historyCount = dch2_historyCount or 1
				dch2_historyCount = dch2_historyCount + 1
				dch2.FirstOption = false
				if dch2_historyCount > 20 then
					Janet_Mild_Annoyed = true
				end
			elseif dch2_flag == "print" then
				dch2.FirstOption = false
				dch2_range = "8~11"
				dch2_itblu = Range.parse(dch2_range)
				dch2_n = math.random(1,#dch2_itblu)
				Note.new("A Guide",dch2_itblu[dch2_n])
				Alert.new('Guide given','stat')
				gamestate = 'alert'
			elseif dch2_flag == "fight" then
				if Atk >= 20 then
					dch2.FirstOption = false
					dch2.Hp = dch2.Hp - 1
					CrimeUpdate(3)
					lowerRep(50)
					Exp.add(20)
					Alert.new('Beat Janet','stat')
					gamestate = 'alert'
				else
					dch2.FirstOption = false
					Hurt(45)
					lowerRep(50)
					CrimeUpdate(2)
					Alert.new('Failed To Beat Janet','stat')
					gamestate = 'alert'
				end
			elseif dch2_flag == "steal" then
				if Atk >= 15 then
					dch2.FirstOption = false
					if math.random(1,10) % 2 == 1 then
						dch2_stole = true
					end
					raiseCash(25)
					CrimeUpdate(2)
					Exp.add(20)
					Alert.new('Stole from Janet','stat')
					gamestate = 'alert'
				else
					dch2.FirstOption = false
					CrimeUpdate(1)
					lowerRep(50)
					Exp.add(20)
					dch2_astole = true
					Alert.new('Failed to Steal from\n\nJanet','stat')
					gamestate = 'alert'
				end
			end
		end
	elseif Rep < 0 then
		if not dch2.FirstOption then
			if dch2.select == 1 then
				dch2.m = "Fuck off"
				dch2.o = {
					"continue"
				}
				dch2.ol = #dch2.o
				dch2.FirstOption = true
				dch2_flag = "ignore"
			elseif dch2.select == 2 then
				dch2.m = "What a half-assed apology"
				dch2.o = {
					"continue"
				}
				dch2.ol = #dch2.o
				dch2.FirstOption = true
				dch2_flag = "ignore"
			elseif dch2.select == 3 then
				dch2.m = "Ok stay there then"
				dch2.o = {
					"continue"
				}
				dch2.ol = #dch2.o
				dch2.FirstOption = true
				dch2_flag = "fight"
			elseif dch2.select == 4 then
				Alert.new('Left','stat')
				gamestate = 'alert'
			end
		else
			if dch2_flag == "ignore" then
				dch2.FirstOption = false
				Alert.new('Janet ignores you','stat')
				gamestate = 'alert'
			elseif dch2_flag == "fight" then
				if Atk >= 25 then
					dch2.FirstOption = false
					dch2.Hp = dch2.Hp - 1
					CrimeUpdate(3)
					lowerRep(50)
					Exp.add(25)
					Alert.new('Beat Janet','stat')
					gamestate = 'alert'
				else
					dch2.FirstOption = false
					Hurt(55)
					lowerRep(50)
					CrimeUpdate(2)
					Alert.new('Failed To Beat Janet','stat')
					gamestate = 'alert'
				end
			end
		end
	end
end
D['Capital Hall'][2] = dch2