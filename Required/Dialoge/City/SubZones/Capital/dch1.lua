dch1 = {}
dch1.n = 'Security Guard'
dch1.m = '"Stay out of Trouble pal"'
dch1.m2 = ''
dch1.o = {
	'(leave) ...',--30
-----123456789012345678901234567890
}
dch1.f = dch1.o
dch1.ol = #dch1.o
dch1.i = image:getImage('')
dch1.FirstOption = false
dch1.SecondOption = false
dch1.ThirdOption = false
dch1.Hp = 10
dch1.select = 1
function dch1.draw()
	if not(dch1.FirstOption)then
		if Traitor or AttemptedTraitor then
			dch1.m = '"Freeze Tratior"'
			dch1.o = {
				"wait lets talk this out",
				"(fight) never",
				"(surrender) ...",
			-----123456789012345678901234567890
			}
			dch1.ol = #dch1.o
		elseif dch1_kill then
			dch1.m = '"Freeze Murderer"'
			if Exp:exportLevel() >= 15 then
				dch1.o = {
					"(leave)(+15) he went that way",
					"(fight) Want to be next",
					"(surrender) ...",
				-----123456789012345678901234567890
				}
			else
				dch1.o = {
					"("..Exp:exportLevel().."/15) pssh... could'nt be me",
				----"(13/15) that could'nt be me",
					"(fight) Want to be next",
					"(surrender) ...",
				-----123456789012345678901234567890
				}
			end
			dch1.ol = #dch1.o
		elseif Rep >= 0 then
			dch1.m = '"Stay out of Trouble pal"'
			dch1.o = {
				'(leave) ...',
			-----123456789012345678901234567890
			}
			dch1.ol = #dch1.o
		elseif Rep < 0 then
			dch1.m = '"where do you think you\'re going"'
			if Exp:exportLevel() >= 3 then
				dch1.o = {
					'(+3) the museum',
					'(fight) no where',
					'(leave) the exit',
					"(surrender) ...",
				-----123456789012345678901234567890
				}
			else
				dch1.o = {
					'('..Exp:exportLevel()..'/3) uhh i uhh...',
				----'(1/3) uhh i uhh...',
					'(fight) no where',
					'(leave) the exit',
					"(surrender) ...",
				-----123456789012345678901234567890
				}
			end
			dch1.ol = #dch1.o
		end
	end
	love.graphics.draw(dch1.i,60,40)
	love.graphics.print({{0,0,0},dch1.n},60,260)
	love.graphics.print({{0,0,0},dch1.m},60,280)
	love.graphics.print({{0,0,0},dch1.m2},60,300)
	AdvDrawOptions(dch1.o,dch1.select)
end
function dch1.keypressed(key)
	if key == 'w' or key == 'up' then
		if dch1.select - 1 > 0 then
			dch1.select = dch1.select - 1
		else
			dch1.select = dch1.ol
		end
	elseif key == 's' or key == 'down' then
		if dch1.select + 1 < dch1.ol + 1 then
			dch1.select = dch1.select + 1
		else
			dch1.select = 1
		end
	elseif key == 'return' then
		dch1.AdvKeyPress()
		dch1.select = 1
	end
end
function dch1.AdvKeyPress()
	if Traitor or AttemptedTraitor then
		if not dch1.FirstOption then
			if dch1.select == 1 then
				dch1.m = "Hands in the air"
				dch1.o = {
					'continue'
				}
				dch1.ol = #dch1.o
				dch1.FirstOption = true
				dch1_flag = 'talk'
			elseif dch1.select == 2 then
				dch1.m = '"Good luck with that"'
				dch1.o = {
					"continue",
				}
				dch1.ol = #dch1.o
				dch1.FirstOption = true
				dch1_flag = 'fight'
			elseif dch1.select == 3 then
				dch1.m = "Hands in the air"
				dch1.o = {
					'continue'
				}
				dch1.ol = #dch1.o
				dch1.FirstOption = true
				dch1_flag = 'surrend'
			end
		else
			if dch1_flag == 'talk' then
				dch1.FirstOption = false
				D.location = 'city'
				arrest()
			elseif dch1_flag == 'fight' then
				if Atk >= 20 then
					dch1_kill = true
					dch1.Hp = dch1.Hp - 1
					dch1.FirstOption = false
					CrimeUpdate(3)
					Exp:add(20)
					Alert:new('Left','stat')
					gamestate = 'alert'
				else
					Hurt(20)
					dch1.FirstOption = false
					D.location = 'city'
					arrest()
				end
			elseif dch1_flag == 'surrend' then
				dch1.FirstOption = false
				D.location = 'city'
				arrest()
			end
		end
	elseif dch1_kill then
		if not dch1.FirstOption then
			if dch1.select == 1 then
				if Exp:exportLevel() >= 15 then
					dch1.FirstOption = true
					dch1.m = "Keep on going"
					dch1.o = {
						'continue'
					}
					dch1.ol = #dch1.o
					dch1_flag = 'lie_s'
				else
					dch1.FirstOption = true
					dch1.m = "Hands in the air"
					dch1.o = {
						'continue'
					}
					dch1.ol = #dch1.o
					dch1_flag = 'lie_f'
				end
			elseif dch1.select == 2 then
				dch1.FirstOption = true
				dch1.m = "Lets Boogie"
				dch1.o = {
					'continue'
				}
				dch1.ol = #dch1.o
				dch1_flag = 'fight'
			elseif dch1.select == 3 then
				dch1.FirstOption = true
				dch1.m = "Stay Right there"
				dch1.o = {
					'continue'
				}
				dch1.ol = #dch1.o
				dch1_flag = 'surrend'
			end
		else
			if not dch1.SecondOption then
				if dch1_flag == 'lie_s' then
					dch1.FirstOption = false
					Exp:add(15)
					Alert:new('Left','stat')
					gamestate = 'alert'
				elseif dch1_flag == 'lie_f' then
					dch1.FirstOption = false
					D.location = 'city'
					arrest()
				elseif dch1_flag == 'fight' then
					if Atk >= 20 then
						dch1_kill = true
						dch1.Hp = dch1.Hp - 1
						dch1.FirstOption = false
						CrimeUpdate(3)
						Exp:add(20)
						Alert:new('Left','stat')
						gamestate = 'alert'
					else
						Hurt(20)
						dch1.FirstOption = false
						D.location = 'city'
						arrest()
					end
				elseif dch1_flag == 'surrend' then
					dch1.FirstOption = false
					D.location = 'city'
					arrest()
				end
			else
				if not dch1.ThirdOption then
					
				else
					
				end
			end
		end
	elseif Rep >= 0 then
		if dch1.select == 1 then
			Alert:new('Left','stat')
			gamestate = 'alert'
		end
	elseif Rep < 0 then
		if not dch1.FirstOption then
			if dch1.select == 1 then
				if Exp:exportLevel() >= 3 then
					dch1.FirstOption = true
					dch1.m = "Carry on"
					dch1.o = {
						'continue'
					}
					dch1.ol = #dch1.o
					dch1_flag = 'lie_s'
				else
					dch1.FirstOption = true
					dch1.m = "Stay Right there"
					dch1.o = {
						'continue'
					}
					dch1.ol = #dch1.o
					dch1_flag = 'lie_f'
				end
			elseif dch1.select == 2 then
				dch1.FirstOption = true
				dch1.m = "Stay Right there"
				dch1.o = {
					'continue'
				}
				dch1.ol = #dch1.o
				dch1_flag = 'fight'
			elseif dch1.select == 3 then
				D.location = 'city'
				Alert:new('Left','stat')
				gamestate = 'alert'
			elseif dch1.select == 4 then
				dch1.FirstOption = true
				dch1.m = "Stay Right there"
				dch1.o = {
					'continue'
				}
				dch1.ol = #dch1.o
				dch1_flag = 'surrend'
			end
		else
			if not dch1.SecondOption then
				if dch1_flag == 'lie_s' then
					dch1.FirstOption = false
					Exp:add(10)
					Alert:new('Left','stat')
					gamestate = 'alert'
				elseif dch1_flag == 'lie_f' then
					dch1.FirstOption = false
					D.location = 'city'
					arrest()
				elseif dch1_flag == 'fight' then
					if Atk >= 10 then
						dch1_kill = true
						dch1.Hp = dch1.Hp - 1
						dch1.FirstOption = false
						CrimeUpdate(3)
						Exp:add(15)
						Alert:new('Left','stat')
						gamestate = 'alert'
					else
						Hurt(15)
						dch1.FirstOption = false
						D.location = 'city'
						arrest()
					end
				elseif dch1_flag == 'surrend' then
					dch1.FirstOption = false
					D.location = 'city'
					arrest()
				end
			end
		end
	end
end
D['Capital Hall'][1] = dch1