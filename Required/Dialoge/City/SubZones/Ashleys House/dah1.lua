dah1 = {}
dah1.n = 'Ashley'
dah1.m = '"Welcome i guess"'
dah1.m2 = ''
dah1.o = {
	'(leave) ...',--30
-----123456789012345678901234567890
}
dah1.f = dah1.o
dah1.ol = #dah1.o
dah1.i = image:getImage('')
dah1.FirstOption = false
dah1.SecondOption = false
dah1.ThirdOption = false
dah1.Hp = 0--1
dah1.select = 1
function dah1.draw()
	if not(dah1.FirstOption)then
		if Traitor or AttemptedTraitor then
			dah1.m = "Freeze Tratior"
			dah1.o = { -- TODO: Fix when Done With Harley
				'(leave) ...',
			-----123456789012345678901234567890
			}
			dah1.ol = #dah1.o
		elseif Rep >= 0 then
			dah1.m = '"Stay out of Trouble pal"'
			dah1.o = {
				'(leave) ...',
			-----123456789012345678901234567890
			}
			dah1.ol = #dah1.o
		elseif Rep < 0 then
			dah1.m = "where do you think you're going"
			dah1.o = {
				'(+3) the museum',
				'(fight) no where',
				'(leave) ...',
			-----123456789012345678901234567890
			}
			dah1.ol = #dah1.o
		end
	end
	love.graphics.draw(dah1.i,60,40)
	love.graphics.print({{0,0,0},dah1.n},60,260)
	love.graphics.print({{0,0,0},dah1.m},60,280)
	love.graphics.print({{0,0,0},dah1.m2},60,300)
	AdvDrawOptions(dah1.o,dah1.select)
end
function dah1.keypressed(key)
	if key == 'w' or key == 'up' then
		if dah1.select - 1 > 0 then
			dah1.select = dah1.select - 1
		else
			dah1.select = dah1.ol
		end
	elseif key == 's' or key == 'down' then
		if dah1.select + 1 < dah1.ol + 1 then
			dah1.select = dah1.select + 1
		else
			dah1.select = 1
		end
	elseif key == 'return' then
		dah1.AdvKeyPress()
		dah1.select = 1
	end
end
function dah1.AdvKeyPress()
	if Traitor or AttemptedTraitor then
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
	elseif Rep >= 0 then
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
	elseif Rep < 0 then
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
	end
end
D['Ashleys House'][1] = dah1