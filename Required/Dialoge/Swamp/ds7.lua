ds7 = {}
ds7.n = 'Swamp Ranger'
ds7.m = '"What are you doing this far south?"'
ds7.m2 = ''
ds7.o = {'t:talk','r:run','f:fight','s:steal'}
ds7.f = ds7.o
ds7.i = image:getImage()
ds7.inDialoge = false
ds7.option = false
ds7.Hp = 10
ds7.Atk = 160
ds7.Def = 30
ds7.friendly = "Neutral"
function ds7.draw()
	if Rep >= -50 and ds7.inDialoge == false then
		ds7.m = '"What are you doing this far\n\nsouth?"'
		ds7.o = {'t:talk','r:run','f:fight','s:steal'}
	elseif Rep < 0 and ds7.inDialoge == false then
		ds7.m = '"You better come with me"'
		ds7.o = {'enter:continue','t:talk','f:fight'}
		ds7.friendly = "Enemy"
	end
	love.graphics.draw(ds7.i,60,40)
	love.graphics.print({{0,0,0},ds7.n},60,260)
	love.graphics.print({{0,0,0},ds7.m},60,280)
	love.graphics.print({{0,0,0},ds7.m2},60,300)
	drawOptions(ds7.o)
	drawstats(ds7)
end
function ds7.keypressed(key)
	if Rep >= -50 then
		if not ds7.inDialoge then
			if key == 't' then
				ds7.m = '"Do you want a ride to the\n\ncity?"'
				ds7.o = {'y:yes','n:no','l:leave'}
				ds7.inDialoge = true
			elseif key == 'r' then
				Alert:new('Ran away from the\n\nSwamp Ranger','stat')
				gamestate = 'alert'
			elseif key == 'f' then
				if Atk >= 160 then
					ds7.Hp = ds7.Hp - 1
					lowerRep(160)
					raiseAtk(15)
					raiseDef(5)
					raiseCash(65)
					CrimeUpdate(3)
					Exp:add(180)
					Item:new("Tooth","Tooth",6,55)
					Alert:new('Beat The\n\nSwamp Ranger','stat')
					gamestate = 'alert'
				else
					Hurt(195)
					CrimeUpdate(1)
					Alert:new('Failed to beat\n\nThe Swamp Ranger','stat')
					gamestate = 'alert'
				end
			elseif key == 's' then
				rob(180,85,"The Swamp Ranger",20,195,true)
			end
		else
			if key == 'y' then
				ds7.inDialoge = false
				D.location = 'city'
				gamestate = 'stat'
			elseif key == 'n' then
				ds7.inDialoge = false
				gamestate = 'stat'
			elseif key == 'l' then
				ds7.m = '"What are you doing this far\n\nsouth?"'
				ds7.o = { 't:talk', 'r:run', 'f:fight', 's:steal' }
				ds7.inDialoge = false
			end
		end
	else
		if not ds7.inDialoge then
			if key == 'return' then
				Alert:new('Arrested by the\n\nSwamp Ranger','arrest')
				gamestate = 'alert'
			elseif key == 'r' then
				if Def >= 30 then
					Alert:new('Ran away from the\n\nSwamp Ranger','stat')
					gamestate = 'alert'
				else
					Alert:new('Failed to escape','arrest')
					gamestate = 'alert'
				end
			elseif key == 't' then
				ds7.m = '"..."'
				ds7.inDialoge = true
				ds7.o = {'b:bribe','l:leave'}
			elseif key == 'f' then
				if Atk >= 165 then
					ds7.Hp = ds7.Hp - 1
					lowerRep(165)
					raiseAtk(15)
					raiseDef(5)
					raiseCash(65)
					CrimeUpdate(3)
					Exp:add(180)
					Alert:new('Beat The\n\nSwamp Ranger','stat')
					gamestate = 'alert'
				else
					Hurt(200)
					Alert:new('Failed to beat\n\nThe Swamp Ranger','arrest')
					gamestate = 'alert'
				end
			end
		else
			if key == 'b' then
				if Cash >= 50 and (math.random(0,1) == 1) then
					lowerCash(50)
					raiseRep(100)
					CrimeUpdate(1)
					ds7.inDialoge = false
					Alert:new('Bribed the\n\nSwamp Ranger','stat')
					gamestate = 'alert'
				else
					D.location = 'city'
					ds7.inDialoge = false
					Alert:new('Arrested by the\n\nSwamp Ranger','arrest')
					gamestate = 'alert'
				end
			elseif key == 'l' then
				ds7.m = '"You better come with me"'
				ds7.o = { 't:talk', 'r:run', 'f:fight', 's:steal' }
				ds7.inDialoge = false
			end
		end
	end
end
D['swamp'][7] = ds7