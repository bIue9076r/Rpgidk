di8 = {}
di8.n = 'Artic Fisherman'
di8.m = '"Want to buy some Ice"'
di8.m2 = ''
di8.o = {'t:talk','f:fight','s:steal','r:run'}
di8.f = di8.o
di8.i = image:getImage('')
di8.inDialoge = false
di8.option = false
di8.Hp = 3
function di8.draw()
	if di8.inDialoge == false then
		di8.m = '"Want to buy some Ice"'
		di8.o = {'t:talk','f:fight','s:steal','r:run'}
	end
	love.graphics.draw(di8.i,60,40)
	love.graphics.print({{0,0,0},di8.n},60,260)
	love.graphics.print({{0,0,0},di8.m},60,280)
	love.graphics.print({{0,0,0},di8.m2},60,300)
	drawOptions(di8.o)
end
function di8.keypressed(key)
	if not di8.inDialoge then
		if key == 't' then
			di8.inDialoge = true
			di8.m = '"25 a block"'
			di8.o = {'b:buy','l:leave'}
		elseif key == 'f' then
			if Atk >= 260 then
				di8.Hp = di8.Hp - 1
				raiseAtk(20)
				raiseDef(7)
				raiseRep(80)
				raiseCash(80)
				Alert:new('Fought The Artic Fox','stat')
				gamestate = 'alert'
				Exp:add(345)
			else
				Hurt(270)
				CrimeUpdate(1)
				Alert:new('Attacked by The Fisherman','stat')
				gamestate = 'alert'
			end
		elseif key == 's' then
			rob(100,90,"The Fisherman",20,100)
		elseif key == 'r' then
			Alert:new('Ran Away','stat')
			gamestate = 'alert'
		end
	else
		if key == 'b' then
			if Cash >= 25 then
				Cash = Cash - 25
				Alert:new('Bought Ice','stat')
				gamestate = 'alert'
				di8.inDialoge = false
			else
				Alert:new('Not enough Money','world')
				gamestate = 'alert'
			end
		elseif key == 'l' then
			di8.inDialoge = false
		end
	end
end
D['icespikes'][8] = di8