dw3 = {}
dw3.n = 'Sketcy Figure'
dw3.m = '"Need something?"'
dw3.m2 = ''
dw3.o = {'y:yes','r:run','f:fight'}
dw3.f = dw3.o
dw3.i = image.getImage('Sketcy_figure')
dw3.inDialoge = false
dw3.option = false
dw3.Hp = 10
dw3.Atk = 195
dw3.Def = 25
dw3.friendly = "Neutral"
function dw3.draw()
	if dw3.inDialoge == false then
		dw3.m = '"Need something?"'
		dw3.o = {'y:yes','r:run','f:fight'}
	end
	love.graphics.draw(dw3.i,60,40)
	love.graphics.print({{0,0,0},dw3.n},60,260)
	love.graphics.print({{0,0,0},dw3.m},60,280)
	love.graphics.print({{0,0,0},dw3.m2},60,300)
	drawOptions(dw3.o)
	drawstats(dw3)
end
function dw3.keypressed(key)
	if not dw3.inDialoge then
		if key == 'y' then
			dw3.o = {
				'm:medkit $60',
				'p:poison $120',
				'a:atk bst $70',
				'd:def bst $170',
				'l:leave'
			}
			dw3.inDialoge = true
		elseif key == 'r' then
			Alert.new('Ran away','stat')
			gamestate = 'alert'
		elseif key == 'f' then
			if Atk >= 195 or math.random(1,15) == 4 then
				dw3.Hp = dw3.Hp - 1
				raiseAtk(30)
				raiseDef(5)
				raiseCash(115)
				Item.new("Tooth","Tooth",0)
				Alert.new('Fought The Wanderer','stat')
				gamestate = 'alert'
				Exp.add(250)
			else
				Hurt(200)
				Alert.new('Falied to beat The Wanderer','stat')
				gamestate = 'alert'
			end
		end
	else
		if not dw3.option then
			if key == 'm' then
				buyItem(Nitem[0],1,'world',60)
			elseif key == 'p' then
				buyItem(Nitem[1],1,'world',120)
			elseif key == 'a' then
				buyItem(Nitem[2],1,'world',70)
			elseif key == 'd' then
				buyItem(Nitem[3],1,'world',170)
			elseif key == 'l' then
				dw3.o = dw3.f
				dw3.inDialoge = false
			end
		end
	end
end
D['wasteland'][3] = dw3