ds4 = {}
ds4.n = 'Tourist'
ds4.m = '"Any traveling tips?"'
ds4.m2 = ''
ds4.o = {'y:yes','r:run','f:fight','t:talk'}
ds4.f = ds4.o
ds4.i = image:getImage('')
ds4.inDialoge = false
ds4.option = false
ds4.Hp = 15
function ds4.draw()
	if Rep >= 0 and ds4.inDialoge == false then
		ds4.m = '"Any traveling tips?"'
		ds4.o = {'t:talk','r:run','f:fight','s:steal'}
	elseif Rep < 0 and ds4.inDialoge == false then
		ds4.m = '"Any traveling tips...?"'
		ds4.o = {'t:talk','r:run','f:fight','s:steal'}
	end
	love.graphics.draw(ds4.i,60,40)
	love.graphics.print({{0,0,0},ds4.n},60,260)
	love.graphics.print({{0,0,0},ds4.m},60,280)
	love.graphics.print({{0,0,0},ds4.m2},60,300)
	drawOptions(ds4.o)
end
function ds4.keypressed(key)
	if not ds4.inDialoge then
		if key == 't' then
			ds4.inDialoge = true
			ds4.o = {'p:point','t:talk','l:leave'}
		elseif key == 'r' then
			Alert:new('Ran Away','stat')
			gamestate = 'alert'
		elseif key == 'f' then
			if Atk > 20 then
				LowerRep(50)
				if Rep < 0 then
					LowerRep(10)
				end
				raiseAtk(2)
				raiseCash(20)
				CrimeUpdate(3)
				Exp:add(90)
				Alert:new('Beat The Tourist','stat')
				gamestate = 'alert'
			else
				Hurt(30)
				CrimeUpdate(1)
				Alert:new('Failed to beat\nThe Tourist','stat')
				gamestate = 'alert'
			end
		elseif key == 's' then
			if Rep <= 0 then
				rob(20,25,"The Tourist",20,90,true)
			else
				rob(25,30,"The Tourist",20,90,true)
			end
		end
	else
		if key == 'p' then
			raiseRep(25)
			Exp:add(100)
			if Rep < 0 then
				raiseRep(20)
			end
			Alert:new('Pointed at a\nlandmark','stat')
			gamestate = 'alert'
		elseif key == 't' then
			raiseRep(25)
			Exp:add(100)
			if Rep < 0 then
				raiseRep(20)
			end
			Alert:new('Gave directions to\n a landmark','stat')
			gamestate = 'alert'
		elseif key == 'l' then
			ds4.inDialoge = false
		end
	end
end
D['swamp'][4] = ds4