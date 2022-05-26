dd6 = {} --100% done
dd6.n = 'Cactus'
dd6.m = '...'
dd6.m2 = ''
dd6.o = {'h:hug','r:run','t:talk'}
dd6.f = dd6.o
dd6.i = image:getImage('')
dd6.inDialoge = false
dd6.option = false
dd6.Hp = 30
function dd6.draw()
	if Rep >= 0 and dd6.inDialoge == false then
		dd6.m = '...'
		dd6.o = {'h:hug','r:run','t:talk'}
	elseif Rep <= 0 and dd6.inDialoge == false then
		dd6.m = '...'
		dd6.o = {'h:hug','r:run','t:talk'}
	end
	love.graphics.draw(dd6.i,60,40)
	love.graphics.print({{0,0,0},dd6.n},60,260)
	love.graphics.print({{0,0,0},dd6.m},60,280)
	love.graphics.print({{0,0,0},dd6.m2},60,300)
	drawOptions(dd6.o)
end
function dd6.keypressed(key)
	if not dd6.inDialoge then
		if key == 't' then
			dd6.m = '....'
			dd6.m2 = ''
			dd6.o = {'b:buy','l:leave'}
			dd6.inDialoge = true
		elseif key == 'r' then
			Alert:new('Ran Away','stat')
			gamestate = 'alert'
		elseif key == 'h' then
			Hurt(20)
			lowerAtk(2)
			raiseDef(2)
			Alert:new('Hugged a Cactus','stat')
			gamestate = 'alert'
		end
	else
		if not dd6.option then
			if key == 'b' then
				dd6.option = true
				dd6.o = {
					'm:medkit $25',
					'p:poison $60',
					'a:atk bst $35',
					'd:def bst $35',
					'l:leave'
				}
			elseif key == 'l' then
				dd6.inDialoge = false
			end
		else
			if key == 'm' then
				buyMed('world',25)
			elseif key == 'p' then
				buyPotion('world',60)
			elseif key == 'a' then
				buyAb('world',35)
			elseif key == 'd' then
				buyDb('world',35)
			elseif key == 'l' then
				dd6.o = {'b:buy','l:leave'}
				dd6.option = false
			end
		end
	end
end
D['desert'][6] = dd6