dc2 = {}
dc2.n = 'Citizen'
dc2.m = '"Hi dude"'
dc2.m2 = ''
dc2.o = {'t:talk','r:run','f:fight','s:steal'}
dc2.f = dc2.o
dc2.i = image:getImage('Citizen')
dc2.inDialoge = false
dc2.option = false
dc2.Hp = 100
dc2.Atk = 0
dc2.Def = 0
dc2.friendly = "Neutral"
dc2.soundOpts = {}
function dc2.draw()
	if Rep >= 0 and dc2.inDialoge == false then
		dc2.m = '"Hi dude"'
		dc2.m2 = ''
		dc2.o = {'t:talk','r:run','f:fight','s:steal'}
	elseif Rep < 0 and dc2.inDialoge == false then
		dc2.m = '"Hi dude..."'
		dc2.m2 = ''
	end
	love.graphics.draw(dc2.i,60,40)
	love.graphics.print({{0,0,0},dc2.n},60,260)
	love.graphics.print({{0,0,0},dc2.m},60,280)
	love.graphics.print({{0,0,0},dc2.m2},60,300)
	drawOptions(dc2.o)
	drawstats(dc2)
end
function dc2.keypressed(key)
	if Rep >= 0 then
		if not dc2.inDialoge then
			if key == 't' then
				dc2.m = '"Could you spare some Medkits'
				dc2.m2 = 'Ill try my best to pay you back"'
				dc2.o = {'l:leave','y:yes'}
				dc2.inDialoge = true
			elseif key == 'r' then
				Alert:new('Ran Away','stat')
				gamestate = 'alert'
			elseif key == 'f' then
				dc2.Hp = dc2.Hp - 1
				lowerRep(20)
				raiseAtk(1)
				raiseCash(10)
				CrimeUpdate(2)
				Item:new("Tooth","Tooth",6,5)
				Alert:new('Fought a Citizen','stat')
				Exp:add(25)
				gamestate = 'alert'
			elseif key == 's' then
				rob(-100,20,'a Citizen')
			end
		else
			if key == 'l' then
				dc2.m = '"..."'
				dc2.inDialoge = false
			elseif key == 'y' then
				dc2.m = '"..."'
				if sitem[0][0] > 0 then
					sitem[0][0] = sitem[0][0] - 1
					raiseCash(15)
					dc2.inDialoge = false
					Alert:new('Gave a Medkit','stat')
					Exp:add(10)
					gamestate = 'alert'
				else
					dc2.m = '"You dont have any Medkits..."'
					dc2.m2 = '...'
				end
			end
		end
	else
		if not dc2.inDialoge then
			if key == 't' then
				dc2.m = '"Hey uhh do you want anything'
				dc2.m2 = 'ill give you anything i have"'
				dc2.o = {'l:leave','y:yes'}
				dc2.inDialoge = true
			elseif key == 'r' then
				Alert:new('Ran Away','stat')
				gamestate = 'alert'
				dc2.inDialoge = false
			elseif key == 'f' then
				dc2.Hp = dc2.Hp - 1
				dc2.inDialoge = false
				lowerRep(20)
				raiseAtk(1)
				raiseCash(10)
				CrimeUpdate(2)
				Item:new("Tooth","Tooth",6,5)
				Alert:new('Fought a Citizen','stat')
				Exp:add(25)
				gamestate = 'alert'
			elseif key == 's' then
				rob(-100,20,'a Citizen')
				--imagine if you cant rob a citizen anymore
			end
		else
			if key == 'l' then
				dc2.m = '"..."'
				dc2.m2 = ''
				dc2.o = dc2.f
				dc2.inDialoge = false
			elseif key == 'y' then
				sitem[1][0] = sitem[1][0] + 1
				dc2.inDialoge = false
				dc2.o = dc2.f
				Alert:new('Got a '..sNitem[0]..'Potion of Poison','stat')
				gamestate = 'alert'
			end
		end
	end
end
D['city'][2] = dc2