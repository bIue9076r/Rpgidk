dw13 = {}
dw13.n = 'a Mysterious Entrance / the Criminal Base'
dw13.m = 'you come across the '
dw13.m2 = ''
dw13.o = {'y:yes','n:no'}
dw13.f = dw13.o
dw13.i = image:getImage('')
dw13.inDialoge = false
dw13.option = false
dw13.Hp = 0--100
function dw13.draw()
	if __CriminalBaseEntryNote > 2 then
		dw13.n = "a Mysterious Entrance"
	else
		dw13.n = "the Criminal Base"
	end
	if dw13.inDialoge == false then
		dw13.m = 'you come across the \n\n'..dw13.n..' go inside:'
		dw13.o = {'y:yes','n:no'}
	end
	
	love.graphics.draw(dw13.i,60,40)
	love.graphics.print({{0,0,0},dw13.n},60,260)
	love.graphics.print({{0,0,0},dw13.m},60,280)
	love.graphics.print({{0,0,0},dw13.m2},60,300)
	drawOptions(dw13.o)
end
function dw13.keypressed(key)
	if key == "y" then
		D.location = D.GetSubWorld(14)
		Alert:new('entering the '..dw13.n,'stat')
		gamestate = 'alert'
	elseif key == "n" then
		Alert:new('left the '..dw13.n,'stat')
		gamestate = 'alert'
	end
end
D['wasteland'][13] = dw13