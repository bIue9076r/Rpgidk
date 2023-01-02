dch3 = {}
dch3.n = 'President Harley'
dch3.m = '"im busy right now"'
dch3.m2 = ''
dch3.o = {
	'(leave) ...',
-----123456789012345678901234567890
}
dch3.ol = #dch3.o
dch3.f = dch3.o
dch3.i = image:getImage('')
dch3.FirstOption = false
dch3.SecondOption = false
dch3.option = false
dch3.Hp = 1
dch3.select = 1
function dch3.draw()
	if not(dch3.FirstOption)then
		if AttemptedTraitor then
			dch3.m = '"Back so soon"'
			dch3.o = {
				'can we still settle things',
				'(fight) fuck you',
				'(leave) ...',
			-----123456789012345678901234567890
			}
			dch3.ol = #dch3.o
		elseif dch3_stole then
			dch3.m = '"Pockets not full enough"'
			dch3.o = {
				'do you want it back',
				'(steal) yes',
				'(leave) ...',
			-----123456789012345678901234567890
			}
			dch3.ol = #dch3.o
		elseif dch3_astole then
			dch3.m = '"Ready to try again"'
			dch3.o = {
				'no',
				'(steal) yes',
				'(leave) ...',
			}
			dch3.ol = #dch3.o
		elseif Rep >= 0 then
			dch3.m = '"im busy right now"'
			dch3.o = {
				'(fight) not to busy to die',
				'(steal) look behind you',
				'(leave) ...',
			-----123456789012345678901234567890
			}
			dch3.ol = #dch3.o
		elseif Rep < 0 then
			dch3.m = '"why did you come here"'
			dch3.o = {
				'I just wanted to meet you',
				'Can i get a pardon',
				'(fight) violence',
				'(leave) ...',
			-----123456789012345678901234567890
			}
			dch3.ol = #dch3.o
		end
	end
	love.graphics.draw(dch3.i,60,40)
	love.graphics.print({{0,0,0},dch3.n},60,260)
	love.graphics.print({{0,0,0},dch3.m},60,280)
	love.graphics.print({{0,0,0},dch3.m2},60,300)
	AdvDrawOptions(dch3.o,dch3.select)
end
function dch3.keypressed(key)
	if key == 'w' or key == 'up' then
		if dch3.select - 1 > 0 then
			dch3.select = dch3.select - 1
		else
			dch3.select = dch3.ol
		end
	elseif key == 's' or key == 'down' then
		if dch3.select + 1 < dch3.ol + 1 then
			dch3.select = dch3.select + 1
		else
			dch3.select = 1
		end
	elseif key == 'return' then
		dch3.AdvKeyPress()
		dch3.select = 1
	end
end
function dch3.AdvKeyPress()
	if AttemptedTraitor then
		if not dch3.FirstOption then
			if dch3.select == 1 then
				Alert:new('Left','stat')
				gamestate = 'alert'
			end
		else
			if not dch3.SecondOption then
			
			else
				if not dch3.ThirdOption then
					
				else
					
				end
			end
		end
	elseif dch3_stole then
		if not dch3.FirstOption then
			if dch3.select == 1 then
				dch3.FirstOption = true
				dch3.m = '"keep it i dont care"'
				dch3.o = {
					'continue'
				}
				dch3.ol = #dch3.o
				dch3_flag = 'ignore'
			elseif dch3.select == 2 then
				Alert:new('Left','stat')
				gamestate = 'alert'
			elseif dch3.select == 3 then
				Alert:new('Left','stat')
				gamestate = 'alert'
			end
		else
			if not dch3.SecondOption then
				if dch3_flag == 'ignore' then
					dch3.FirstOption = false
					Alert:new('Harley leaves','stat')
					gamestate = 'alert'
				end
			else
				if not dch3.ThirdOption then
					
				else
					
				end
			end
		end
	elseif dch3_astole then
		if not dch3.FirstOption then
			if dch3.select == 1 then
				dch3.FirstOption = true
				dch3.m = '"Whatever you say"'
				dch3.o = {
					'continue'
				}
				dch3.ol = #dch3.o
				dch3_flag = 'ignore'
			elseif dch3.select == 2 then
				dch3.FirstOption = true
				dch3.m = '"I\'m right infront of you"'
				dch3.o = {
					'...'
				}
				dch3.ol = #dch3.o
				dch3_flag = 'talk'
			elseif dch3.select == 3 then
				Alert:new('Left','stat')
				gamestate = 'alert'
			end
		else
			if not dch3.SecondOption then
				if dch3_flag == 'ignore' then
					dch3.FirstOption = false
					Alert:new('Harley leaves','stat')
					gamestate = 'alert'
				elseif dch3_flag == 'talk' then
					dch3.m = '"do you want to talk about why"'
					dch3.o = {
						'sure',
						'(leave) no',
					}
					dch3.ol = #dch3.o
					dch3.SecondOption = true
				end
			else
				if not dch3.ThirdOption then
					if dch3.select == 1 then
						dch3.m = '"to each their own i guess"'
						dch3.o = {
							'continue',
						}
						dch3.ol = #dch3.o
						dch3.ThirdOption = true
						Alert:new('Spoke with Harley','world')
						gamestate = 'alert'
					elseif dch3.select == 2 then
						dch3.FirstOption = false
						dch3.SecondOption = false
						Alert:new('Left','stat')
						gamestate = 'alert'
					end
				else
					dch3.FirstOption = false
					dch3.SecondOption = false
					dch3.ThirdOption = false
					dch3_astole = false
					Alert:new('Left','stat')
					gamestate = 'alert'
				end
			end
		end
	elseif Rep >= 0 then
		if not dch3.FirstOption then
			if dch3.select == 1 then
				dch3.FirstOption = true
				dch3.m = '"i\'m in fact too busy"'
				dch3.o = {
					'continue'
				}
				dch3.ol = #dch3.o
				dch3_flag = 'fight'
			elseif dch3.select == 2 then
				dch3.FirstOption = true
				dch3.m = '"what"'
				dch3.o = {
					'continue'
				}
				dch3.ol = #dch3.o
				dch3_flag = 'steal'
			elseif dch3.select == 3 then
				Alert:new('Left','stat')
				gamestate = 'alert'
			end
		else
			if not dch3.SecondOption then
				if dch3_flag == 'fight' then
					if Atk >= 15 then
						Traitor = true
						dch3.Hp = dch3.Hp - 1
						dch3.FirstOption = false
						CrimeUpdate(10)
						Exp:add(20)
						Alert:new('Beat Harley','stat')
						gamestate = 'alert'
					else
						AttemptedTraitor = true
						-- you're gonna have a bad time
						Hurt(50)
						dch3.FirstOption = false
						Alert:new('Failed to Beat Harley','stat')
						gamestate = 'alert'
					end
				elseif dch3_flag == 'steal' then
					if Atk >= 10 then
						if math.random(1,10) % 2 == 1 then
							dch3_stole = true
						end
						dch3.FirstOption = false
						raiseCash(25)
						Exp:add(20)
						Alert:new('Stole from Harley','stat')
						gamestate = 'alert'
					else
						dch3_astole = true
						CrimeUpdate(3)
						lowerRep(50)
						dch3.FirstOption = false
						D.location = 'city'
						arrest()
					end
				end
			end
		end
	elseif Rep < 0 then
		if not dch3.FirstOption then
			if dch3.select == 1 then
				dch3.FirstOption = true
				dch3.m = '"okay i guess"'
				dch3.o = {
					'continue'
				}
				dch3.ol = #dch3.o
				dch3_flag = 'thanks'
			elseif dch3.select == 2 then
				dch3.FirstOption = true
				dch3.m = '"Well since you asked"'
				dch3.o = {
					'continue'
				}
				dch3.ol = #dch3.o
				dch3_flag = 'pardon'
			elseif dch3.select == 3 then
				dch3.FirstOption = true
				dch3.m = '"good greif get a life"'
				dch3.o = {
					'continue'
				}
				dch3.ol = #dch3.o
				dch3_flag = 'fight'
			elseif dch3.select == 4 then
				Alert:new('Left','stat')
				gamestate = 'alert'
			end
		else
			if not dch3.SecondOption then
				if dch3_flag == 'thanks' then
					raiseRep(15)
					Alert:new('Left','stat')
					gamestate = 'alert'
				elseif dch3_flag == 'pardon' then
					Rep = 1
					Alert:new('Pardoned','stat')
					gamestate = 'alert'
				elseif dch3_flag == 'fight' then
					if Atk >= 25 then
						Traitor = true
						dch3.Hp = dch3.Hp - 1 -- she's dead lol
						dch3.FirstOption = false
						CrimeUpdate(10)
						Exp:add(20)
						Alert:new('Beat Harley','stat')
						gamestate = 'alert'
					else
						AttemptedTraitor = true
						-- you're gonna have a bad time
						Hurt(50)
						dch3.FirstOption = false
						Alert:new('Failed to Beat Harley','stat')
						gamestate = 'alert'
					end
				end
			end
		end
	end
end
D['Capital Hall'][3] = dch3