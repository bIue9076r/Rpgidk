dch1 = {}
dch1.n = 'Security Guard'
dch1.m = '"Stay out of Trouble pal"'
dch1.m2 = ''
dch1.o = {
	'123456789012345678901234567890',--30
	'123456789012345678901234567890',
	'123456789012345678901234567890',
	'123456789012345678901234567890',
	'123456789012345678901234567890',
	'123456789012345678901234567890',
-----123456789012345678901234567890
}
dch1.f = dch1.o
dch1.ol = #dch1.o
dch1.i = image:getImage('')
dch1.FirstOption = false
dch1.SecondOption = false
dch1.ThirdOption = false
dch1.Hp = 0--10
dch1.select = 1
function dch1.draw()
	if not(dch1.FirstOption)then
		if Traitor or AttemptedTraitor then
			dch1.m = "Freeze Tratior"
		elseif dch1_kill then
			dch1.m = "Freeze Murderer"
		elseif dch1_stole then
			dch1.m = "Freeze Theif"
		elseif dch1_astole then
			dch1.m = "Freeze Criminal"
		elseif Rep >= 0 then
			dch1.m = '"Stay out of Trouble pal"'
			dch1.o = {
				'(leave) ...',--30
			-----123456789012345678901234567890
			}
			dch1.ol = #dch1.o
		elseif Rep < 0 then
			dch1.m = "where do you think you're going"
			dch1.o = {
				'the museum',--30
				'(fight) no where',
				'(leave) the exit',
			-----123456789012345678901234567890
			}
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
	end
end
function dch1.AdvKeyPress()
	if Traitor or AttemptedTraitor then
		if not dch1.FirstOption then
		
		else
			if not dch1.SecondOption then
			
			else
				if not dch1.ThirdOption then
					
				else
					
				end
			end
		end
	elseif dch1_kill then
		if not dch1.FirstOption then
		
		else
			if not dch1.SecondOption then
			
			else
				if not dch1.ThirdOption then
					
				else
					
				end
			end
		end
	elseif dch1_stole then
		if not dch1.FirstOption then
		
		else
			if not dch1.SecondOption then
			
			else
				if not dch1.ThirdOption then
					
				else
					
				end
			end
		end
	elseif dch1_astole then
		if not dch1.FirstOption then
		
		else
			if not dch1.SecondOption then
			
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
					arrest()
				elseif dch1_flag == 'fight' then
					if Atk >= 10 then
						dch1.FirstOption = false
						CrimeUpdate(3)
						Exp:add(15)
						Alert:new('Left','stat')
						gamestate = 'alert'
					else
						dch1.FirstOption = false
						arrest()
					end
				end
			else
				if not dch1.ThirdOption then
					
				else
					
				end
			end
		end
	end
end
D['Capital Hall'][1] = dch1