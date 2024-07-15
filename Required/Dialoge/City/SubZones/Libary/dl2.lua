dl2 = {}
dl2.n = 'Libary Patron'
dl2.m = '"Hi"'
dl2.m2 = ''
dl2.o = {
	'(leave) ...',--30
-----123456789012345678901234567890
}
dl2.f = dl2.o
dl2.ol = #dl2.o
dl2.i = image.getImage('Libary_patron')
dl2.FirstOption = false
dl2.SecondOption = false
dl2.ThirdOption = false
dl2.Hp = 0--1
dl2.select = 1
function dl2.draw()
	if not(dl2.FirstOption)then
		if Rep >= 0 then
			dl2.m = '"Check out this cool book"'
			dl2.o = {
				'(leave) ...',
			-----123456789012345678901234567890
			}
			dl2.ol = #dl2.o
		elseif Rep < 0 then
			dl2.m = '"Uhh you want this book"'
			dl2.o = {
				'(leave) ...',
			-----123456789012345678901234567890
			}
			dl2.ol = #dl2.o
		end
	end
	love.graphics.draw(dl2.i,60,40)
	love.graphics.print({{0,0,0},dl2.n},60,260)
	love.graphics.print({{0,0,0},dl2.m},60,280)
	love.graphics.print({{0,0,0},dl2.m2},60,300)
	AdvDrawOptions(dl2.o,dl2.select)
end
function dl2.keypressed(key)
	if key == 'w' or key == 'up' then
		if dl2.select - 1 > 0 then
			dl2.select = dl2.select - 1
		else
			dl2.select = dl2.ol
		end
	elseif key == 's' or key == 'down' then
		if dl2.select + 1 < dl2.ol + 1 then
			dl2.select = dl2.select + 1
		else
			dl2.select = 1
		end
	elseif key == 'return' then
		dl2.AdvKeyPress()
		dl2.select = 1
	end
end
function dl2.AdvKeyPress()
	if Rep >= 0 then
		if not dl2.FirstOption then
			if dl2.select == 1 then
				Alert.new('Left','stat')
				gamestate = 'alert'
			end
		else
			if not dl2.SecondOption then
			
			else
				if not dl2.ThirdOption then
					
				else
					
				end
			end
		end
	elseif Rep < 0 then
		if not dl2.FirstOption then
			if dl2.select == 1 then
				Alert.new('Left','stat')
				gamestate = 'alert'
			end
		else
			if not dl2.SecondOption then
			
			else
				if not dl2.ThirdOption then
					
				else
					
				end
			end
		end
	end
end
D['Libary'][2] = dl2