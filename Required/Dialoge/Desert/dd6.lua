dd6 = {}
dd6.n = 'Cactus'
dd6.m = '...'
dd6.m2 = ''
dd6.o = {'h:hug','r:run','t:talk'}
dd6.f = dd6.o
dd6.i = image:getImage('')
dd6.inDialoge = false
dd6.option = false
dd6.Hp = 30
dd6.Atk = 30
dd6.Def = 30
dd6.friendly = "cactus"
function dd6.draw()
	if dd6.inDialoge == false then
		dd6.m = '...'
		dd6.o = {'h:hug','r:run','t:talk','f:fight'}
	end
	love.graphics.draw(dd6.i,60,40)
	love.graphics.print({{0,0,0},dd6.n},60,260)
	love.graphics.print({{0,0,0},dd6.m},60,280)
	love.graphics.print({{0,0,0},dd6.m2},60,300)
	drawOptions(dd6.o)
	drawstats(dd6)
end
function dd6.keypressed(key)
	if not dd6.inDialoge then
		if key == 't' then
			dd6.m = '....'
			dd6.m2 = ''
			dd6.o = {'l:leave'}
			dd6.inDialoge = true
		elseif key == 'r' then
			Alert:new('Ran Away','stat')
			gamestate = 'alert'
		elseif key == 'f' then
			dd6.Hp = dd6.Hp - 1
			Hurt(80)
			Alert:new('What?','stat')
			gamestate = 'alert'
		elseif key == 'h' then
			Hurt(40)
			raiseAtk(2)
			raiseDef(2)
			Alert:new('Hugged a Cactus','stat')
			gamestate = 'alert'
		end
	else
		if not dd6.option then
			if key == 'b' then
				dd6.m = '"Cactus store!"'
				dd6.option = true
				dd6.o = {
					'm:medkit $20',
					'p:poison $50',
					'a:atk bst $30',
					'd:def bst $70',
					'l:leave'
				}
			elseif key == 'l' then
				dd6.inDialoge = false
			end
		else
			if key == 'm' then
				buyItem(Nitem[0],0,'world',20)
			elseif key == 'p' then
				buyItem(Nitem[0],0,'world',50)
			elseif key == 'a' then
				buyItem(Nitem[0],0,'world',30)
			elseif key == 'd' then
				buyItem(Nitem[0],0,'world',70)
			elseif key == 'l' then
				dd6.m = '....'
				dd6.o = {'l:leave'}
				dd6.option = false
			end
		end
	end
end
D['desert'][6] = dd6