dc3 = {}
dc3.n = 'Trader'
dc3.m = '"Do you have the falbeld'
dc3.m2 = 'Potion of Poison?"'
dc3.o = {'t:talk','r:run','f:fight','s:steal'}
dc3.f = dc3.o
dc3.i = image:getImage('Merchant')
dc3.inDialoge = false
dc3.option = false
dc3.Hp = 25
dc3.soundOpts = {}
function dc3.draw()
	dc3.n2 = dc3.n2 or math.random(0,3)
	dc3.b = dc3.b or math.random(0,3)
	if dc3.b == dc3.n2 then repeat dc3.b = math.random(0,3) until dc3.b ~= dc3.n2 end
	if Rep >= 0 and dc3.inDialoge == false then
		dc3.m = '"Do you want to trade\n'..Nitem[dc3.n2]..' for \n'..Nitem[dc3.b]..'?"'
		dc3.m2 = ''
		dc3.o = {'t:talk','r:run','f:fight','s:steal'}
	elseif Rep < 0 and dc3.inDialoge == false then
		dc3.m = '"Do you want to trade\n'..Nitem[dc3.n2]..' for \n'..Nitem[dc3.b]..'?"'
		dc3.m2 = ''
		dc3.o = {'t:talk','r:run','f:fight','s:steal'}
	end
	love.graphics.draw(dc3.i,60,40)
	love.graphics.print({{0,0,0},dc3.n},60,260)
	love.graphics.print({{0,0,0},dc3.m},60,280)
	love.graphics.print({{0,0,0},dc3.m2},60,300)
	drawOptions(dc3.o)
end
function dc3.keypressed(key)
	if Rep >= 0 then
		if not dc3.inDialoge then
			if key == 't' then
				dc3.inDialoge = true
				dc3.o = {'y:yes','l:leave'}
			elseif key == 'r' then
				Alert:new('Ran Away','stat')
				gamestate = 'alert'
			elseif key == 'f' then
				if Atk >= 30 or math.random(1,30) == 5 then
					dc3.Hp = dc3.Hp - 1
					lowerRep(150)
					raiseAtk(7)
					raiseDef(2)
					raiseCash(100)
					CrimeUpdate(2)
					Item:new("Trader Tooth","TraderTooth",6,15)
					----------123456789012 fits the 13 char limit
					Alert:new('Fought The Trader','stat')
					Exp:add(175)
					gamestate = 'alert'
				else
					Hurt(30)
					lowerRep(150)
					CrimeUpdate(1)
					Alert:new('Failed to beat The Trader','stat')
					gamestate = 'alert'
				end
			elseif key == 's' then
				rob(30,100,'The Trader',30,175)
			end
		else
			if key == 'y' then
				if item[dc3.n2] > 0 then
					item[dc3.n2] = item[dc3.n2] - 1
					item[dc3.b] = item[dc3.b] + 1
					dc3.inDialoge = false
					Alert:new('Gave a '..Nitem[dc3.n2],'stat')
					Exp:add(20)
					gamestate = 'alert'
					dc3.n2 = nil
					dc3.b = nil
				else
					dc3.m = '"You dont have any \n'..Nitem[dc3.n2]..'..."'
					dc3.m2 = '...'
				end
			elseif key == 'l' then
				dc3.inDialoge = false
			end
		end
	else
		if not dc3.inDialoge then
			if key == 't' then
				dc3.inDialoge = true
				dc3.o = {'y:yes','l:leave'}
			elseif key == 'r' then
				Alert:new('Ran Away','stat')
				gamestate = 'alert'
			elseif key == 'f' then
				if Atk >= 30 or math.random(1,30) == 5 then
					dc3.Hp = dc3.Hp - 1
					lowerRep(150)
					raiseAtk(7)
					raiseDef(2)
					raiseCash(100)
					CrimeUpdate(2)
					Item:new("Trader Tooth","TraderTooth",6,15)
					Alert:new('Fought The Trader','stat')
					Exp:add(175)
					gamestate = 'alert'
				else
					Hurt(30)
					lowerRep(150)
					CrimeUpdate(1)
					Alert:new('Failed to beat The Trader','stat')
					gamestate = 'alert'
				end
			elseif key == 's' then
				rob(30,100,'The Trader',30,175)
			end
		else
			if key == 'y' then
				if item[dc3.n2] > 0 then
					item[dc3.n2] = item[dc3.n2] - 1
					item[dc3.b] = item[dc3.b] + 1
					dc3.inDialoge = false
					Alert:new('Gave a '..Nitem[dc3.n2],'stat')
					Exp:add(20)
					gamestate = 'alert'
					dc3.n2 = nil
					dc3.b = nil
				else
					dc3.m = '"You dont have any \n'..Nitem[dc3.n2]..'..."'
					dc3.m2 = '...'
				end
			elseif key == 'l' then
				dc3.inDialoge = false
			end
		end
	end
end
D['city'][3] = dc3