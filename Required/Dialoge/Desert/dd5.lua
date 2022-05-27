dd5 = {} --100% done
dd5.n = 'Sand Statue'
dd5.m = 'A Massive Statue of \nSand Aproaches you'
dd5.m2 = ''
dd5.o = {'enter:continue'}
dd5.f = dd5.o
dd5.i = image:getImage('')
dd5.inDialoge = false
dd5.option = false
dd5.Hp = 5
function dd5.draw()
	if Rep >= 0 and dd5.inDialoge == false then
		dd5.m = 'A Massive Statue of \nSand Aproaches you'
		dd5.o = {'enter:continue'}
	elseif Rep <= 0 and dd5.inDialoge == false then
		dd5.m = 'A Massive Statue of Sand Aproaches you'
		dd5.o = {'f:fight','r:run'}
	end
	love.graphics.draw(dd5.i,60,40)
	love.graphics.print({{0,0,0},dd5.n},60,260)
	love.graphics.print({{0,0,0},dd5.m},60,280)
	love.graphics.print({{0,0,0},dd5.m2},60,300)
	drawOptions(dd5.o)
end
function dd5.keypressed(key)
	if Rep >= 0 then
		if not dd5.inDialoge then
			if key == 'return' then
				dd5.inDialoge = true
				dd5.m = 'He gives a pat on the head \nand spares you'
			end
		else
			if key == 'return' then
				dd5.inDialoge = false
				raiseRep(10)
				Alert:new('Spared by a Sand Statue','stat')
				gamestate = 'alert'
			end
		end
	else
		if key == 'f' then
			if Atk >= 120 then
				dd5.Hp = dd5.Hp - 5
				raiseAtk(15)
				raiseDef(4)
				raiseRep(-175)
				raiseCash(50)
				CrimeUpdate(2)
				Alert:new('Fought The Sand Statue','stat')
				gamestate = 'alert'
				Exp:add(140)
			else
				Hurt(95)
				Alert:new('Beat by a Sand Statue','stat')
				gamestate = 'alert'
			end
		elseif key == 'r' then
			if Def >= 25 then
				Alert:new('Ran Away','stat')
				Exp:add(70)
				gamestate = 'alert'
			else
				Hurt(75)
				Alert:new('Beaten by Sand Statue \nWhile Running Away','stat')
				gamestate = 'alert'
			end
		end
	end
end
D['desert'][5] = dd5