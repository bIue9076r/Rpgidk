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
dl1.i = image:getImage('')
dl1.FirstOption = false
dl1.SecondOption = false
dl1.ThirdOption = false
dl1.Hp = 0--1
dl1.select = 1
function dl1.draw()
	if not(dl1.FirstOption)then
		if Traitor or AttemptedTraitor then
			dl1.m = "Wait dont kill me i can help"
			dl1.o = {
				'im not here to kill you'
				'(evil) sure why not'
				'(fight) i dont need help',
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
	if Traitor or AttemptedTraitor then
		if not dl1.FirstOption then
			if dl1.select == 1 then
				Alert:new('Left','stat')
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
				Alert:new('Left','stat')
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
	elseif Rep < 0 then
		if not dl1.FirstOption then
			if dl1.select == 1 then
				Alert:new('Left','stat')
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
	end
end
D['Libary'][1] = dl1