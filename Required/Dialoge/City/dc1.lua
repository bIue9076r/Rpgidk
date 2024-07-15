dc1 = {}
dc1.n = 'Robber'
dc1.m = '"Give me your wallet"'
dc1.m2 = ''
dc1.o = {'y:yes','r:run','f:fight','t:talk'}
dc1.f = dc1.o
dc1.i = image.getImage('robber')
dc1.inDialoge = false
dc1.option = false
dc1.Hp = 20
dc1.Atk = 5
dc1.Def = 2
dc1.friendly = "Enemy"
function dc1.draw()
	if Rep >= 0 and dc1.inDialoge == false then
		dc1.friendly = "Enemy"
		dc1.m = '"Give me your wallet"'
		dc1.o = {'y:yes','r:run','f:fight','t:talk'}
		if Quest.Return('ashley') == false then
			Quest.SetFL('ashley') -- failed quest
		end
	elseif Rep < 0 and dc1.inDialoge == false then
		dc1.friendly = "Friend"
		dc1.m = '"need anything kiddo"'
		dc1.o = {'y:yes','n:no','f:fight','t:talk'}
	end
	love.graphics.draw(dc1.i,60,40)
	love.graphics.print({{0,0,0},dc1.n},60,260)
	love.graphics.print({{0,0,0},dc1.m},60,280)
	love.graphics.print({{0,0,0},dc1.m2},60,300)
	drawOptions(dc1.o)
	drawstats(dc1)
end
function dc1.keypressed(key)
	if Rep >= 0 then
		if not dc1.inDialoge then
			if key == 'y' then
				if Cash >= 10 then
					lowerCash(10)
					Alert.new('Gave the robber your wallet','stat')
					gamestate = 'alert'
				else
					Hurt(10)
					Alert.new('You got beat up','stat')
					gamestate = 'alert'
				end
			elseif key == 'r' then
				if Def >= 2 or math.random(1,5) == 2 then
					Alert.new('You got away','stat')
					Exp.add(10)
					gamestate = 'alert'
				else
					if Cash >= 10 then
						Hurt(10)
						lowerCash(10)
						Alert.new('You got beat up','stat')
						gamestate = 'alert'
					else
						Hurt(10)
						Alert.new('You got beat up','stat')
						gamestate = 'alert'
					end
				end
			elseif key == 'f' then
				if Atk >= 5 or math.random(1,10) == 5 then
					dc1.Hp = dc1.Hp - 1
					raiseCash(15)
					raiseRep(25)
					raiseAtk(2)
					Item.new("Tooth","Tooth",5,5)
					Alert.new('You beat up the robber','stat')
					Exp.add(50)
					gamestate = 'alert'
				else
					if Cash >= 10 then
						Hurt(10)
						lowerCash(10)
						Alert.new('You got beat up','stat')
						gamestate = 'alert'
					else
						Hurt(10)
						Alert.new('You got beat up','stat')
						gamestate = 'alert'
					end
				end
			elseif key == 't' then
				dc1.m = '"what do you want"'
				dc1.o = {"l:leave","h:help"}
				dc1.inDialoge = true
			end
		else
			if key == 'l' then
				dc1.m = '"Give me your wallet"'
				dc1.o = dc1.f
				dc1.inDialoge = false
			elseif key == 'h' then
				dc1.m = '"need anything kiddo"'
				dc1.o = {'y:yes','n:no','f:fight','t:talk'}
				dc1.inDialoge = false
				Rep = -10
				CrimeUpdate(1)
				Alert.new('You lost all your rep','stat')
				gamestate = 'alert'
			end
		end
	else
		if not dc1.inDialoge then
			if key == 'y' then
				n = math.random(0,3)
				sitem[n][0] = sitem[n][0] + 1
				Alert.new('Got a '..sNitem[0]..Nitem[n],'stat')
				gamestate = 'alert'
			elseif key == 'n' then
				Alert.new('Left location','stat')
				gamestate = 'alert'
			elseif key == 'f' then
				if Atk >= 5 or math.random(1,10) == 5 then
					dc1.Hp = dc1.Hp - 1
					raiseCash(15)
					raiseRep(25)
					raiseAtk(2)
					Item.new("Tooth","Tooth",5,5)
					Alert.new('You beat up the robber','stat')
					Exp.add(50)
					gamestate = 'alert'
				else
					if Cash >= 10 then
						Hurt(10)
						lowerCash(10)
						Alert.new('You got beat up','stat')
						gamestate = 'alert'
					else
						Hurt(10)
						Alert.new('You got beat up','stat')
						gamestate = 'alert'
					end
				end
			elseif key == 't' then
				dc1.m = '"Want to help out more"'
				dc1.o = {"l:leave","y:yes"}
				if Quest.Return('ashley') == true then
					dc1.m = '"Take this for your effort"'
					dc1.o = {"press return"}
				end
				if Quest.Return('ashley') == 0 then
					dc1.m = '"You\'re very helpful want to\n\nspread the word"'
					dc1.o = {"l:leave","y:yes"}
				end
				dc1.inDialoge = true
			end
		else
			if Quest.Return('ashley') == true then -- if quest was completed but no reward
				if key == 'return' then
					dc1.m = '"need anything kiddo"'
					dc1.o = dc1.f
					dc1.inDialoge = false
					Quest.SetNil('ashley')
					CrimeUpdate(2)
					raiseCash(200)
					Alert.new('You have been awarded $200','stat')
					Exp.add(200)
					gamestate = 'alert'
				end
			else
				if key == 'l' then
					dc1.m = '"need anything buddy"'
					dc1.o = dc1.f
					dc1.inDialoge = false
				elseif key == 'y' then
					dc1.m = '"i dont need your help right now"'
					--dc1.o = dc1.f
					--dc1.inDialoge = false
					if Quest.Return('ashley') == 1 then -- if quest is not started or it failed
						CrimeUpdate(1)
						Quest.SetF('ashley')
						Alert.new('New Quest: Check notes','stat')
						Note.new('Hit Details',23)
						--Alert.new('New Quest: Beat up Ashley','stat')
						gamestate = 'alert'
						dc1.inDialoge = false
					elseif Quest.Return('ashley') == 0 then -- if quest reward was claimed
						Rep = Rep - 100
						CrimeUpdate(3)
						Alert.new('Word Spread','stat')
						gamestate = 'alert'
						dc1.inDialoge = false
					end
				end
			end
		end
	end
end
D['city'][1] = dc1