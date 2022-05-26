Ashley_Hp=100
Sally_Hp=100
George_Hp=100
Willson_Hp=100
Penelope_Hp=100
shopimg = 'shop'

function shop_draw()
	pcall(function()
		Store = sound:getSound('BuyinStore')
		Store:play()
		if D.location == 'city' then
			if Ashley_Hp <= 0 then
				shopimg = 'shopnoemp'
			elseif Ashley_Hp < 80 then
				shopimg = 'shophurtemp'
			end
			if Quest:Return('ashley') == 1 or Quest:Return('ashley') == true or Quest:Return('ashley') == 0 then
				love.graphics.draw(image:getImage(shopimg.."_"..D.location),0,0)
				love.graphics.draw(image:getImage('Alert'),0,0)
				if Ashley_Hp <= 10 then
					love.graphics.print({{0,0,0},"..."},60,75)
				elseif Ashley_Hp < 80 then
					love.graphics.print({{0,0,0},"Please Dont Hurt Me, I cant"},60,75)
					love.graphics.print({{0,0,0},"Afford to get Hurt anymore"},60,95)
				else
					love.graphics.print({{0,0,0},"Welcome to the Buyin' store"},60,75)
					love.graphics.print({{0,0,0},"what want buy?"},60,95)
				end
				love.graphics.print({{0,0,0},"M = Medkits"},50,400)
				love.graphics.print({{0,0,0},"P = Posion Potion"},50,420)
				love.graphics.print({{0,0,0},"A = Attack boost"},50,440)
				love.graphics.print({{0,0,0},"D = Defence boost"},50,460)
				--testing stat [[love.graphics.print({{0,0,0},"Ashley's health: "..Ashley_Hp},50,480)]]
			elseif Quest:Return('ashley') == false then
				love.graphics.draw(image:getImage(shopimg.."_"..D.location),0,0)
				love.graphics.draw(image:getImage('Alert'),0,0)
				love.graphics.print({{0,0,0},"I know why you're here"},60,75)
				love.graphics.print({{0,0,0},"just get it over with."},60,95)
				love.graphics.print({{0,0,0},"F = Fight"},50,400)
				--testing stat [[love.graphics.print({{0,0,0},"Ashley's health: "..Ashley_Hp},50,480)]]
			end
		elseif D.location == 'desert' then
			if Sally_Hp <= 0 then
				shopimg = 'shopnoemp'
			elseif Sally_Hp < 80 then
				shopimg = 'shophurtemp'
			end
			love.graphics.draw(image:getImage(shopimg.."_"..D.location),0,0)
			love.graphics.draw(image:getImage('Alert'),0,0)
			if Sally_Hp <= 10 then
				love.graphics.print({{0,0,0},"..."},60,75)
			elseif Sally_Hp < 80 then
				love.graphics.print({{0,0,0},"You're Not being very"},60,75)
				love.graphics.print({{0,0,0},"helpful right now"},60,95)
			else
				love.graphics.print({{0,0,0},"Welcome to the Buyin' store"},60,75)
				love.graphics.print({{0,0,0},"How may i assist you?"},60,95)
			end
			love.graphics.print({{0,0,0},"M = Medkits"},50,400)
			love.graphics.print({{0,0,0},"P = Posion Potion"},50,420)
			love.graphics.print({{0,0,0},"A = Attack boost"},50,440)
			love.graphics.print({{0,0,0},"D = Defence boost"},50,460)
			--testing stat [[love.graphics.print({{0,0,0},"Sally's health: "..Sally_Hp},50,480)]]
		elseif D.location == 'swamp' then
			if George_Hp <= 0 then
				shopimg = 'shopnoemp'
			elseif George_Hp < 80 then
				shopimg = 'shophurtemp'
			end
			love.graphics.draw(image:getImage(shopimg.."_"..D.location),0,0)
			love.graphics.draw(image:getImage('Alert'),0,0)
			if George_Hp <= 10 then
				love.graphics.print({{0,0,0},"..."},60,75)
			elseif George_Hp < 80 then
				love.graphics.print({{0,0,0},"Please dont be so rough"},60,75)
				love.graphics.print({{0,0,0},"im trying my best"},60,95)
			else
				love.graphics.print({{0,0,0},"Welcome to the Buyin' store"},60,75)
				love.graphics.print({{0,0,0},"need anything?"},60,95)
			end
			love.graphics.print({{0,0,0},"M = Medkits"},50,400)
			love.graphics.print({{0,0,0},"P = Posion Potion"},50,420)
			love.graphics.print({{0,0,0},"A = Attack boost"},50,440)
			love.graphics.print({{0,0,0},"D = Defence boost"},50,460)
			--testing stat [[love.graphics.print({{0,0,0},"George's health: "..George_Hp},50,480)]]
		elseif D.location == 'ice' then
			if Willson_Hp <= 0 then
				shopimg = 'shopnoemp'
			elseif Willson_Hp < 80 then
				shopimg = 'shophurtemp'
			end
			love.graphics.draw(image:getImage(shopimg.."_"..D.location),0,0)
			love.graphics.draw(image:getImage('Alert'),0,0)
			if Willson_Hp <= 10 then
				love.graphics.print({{0,0,0},"..."},60,75)
			elseif Willson_Hp < 80 then
				love.graphics.print({{0,0,0},"You're Not very"},60,75)
				love.graphics.print({{0,0,0},"Chill right now"},60,95)
			else
				love.graphics.print({{0,0,0},"Welcome to the Buyin' store"},60,75)
				love.graphics.print({{0,0,0},"Lovely Weather today?"},60,95)
			end
			love.graphics.print({{0,0,0},"M = Medkits"},50,400)
			love.graphics.print({{0,0,0},"P = Posion Potion"},50,420)
			love.graphics.print({{0,0,0},"A = Attack boost"},50,440)
			love.graphics.print({{0,0,0},"D = Defence boost"},50,460)
			--testing stat [[love.graphics.print({{0,0,0},"Willson's health: "..Willson_Hp},50,480)]]
		elseif D.location == 'waste' then
			if Penelope_Hp <= 0 then
				shopimg = 'shopnoemp'
			elseif Penelope_Hp < 80 then
				shopimg = 'shophurtemp'
			end
			love.graphics.draw(image:getImage(shopimg.."_"..D.location),0,0)
			love.graphics.draw(image:getImage('Alert'),0,0)
			if Penelope_Hp <= 10 then
				love.graphics.print({{0,0,0},"..."},60,75)
			elseif Penelope_Hp < 80 then
				love.graphics.print({{0,0,0},"You're Not being very"},60,75)
				love.graphics.print({{0,0,0},"helpful right now"},60,95)
			else
				love.graphics.print({{0,0,0},"Welcome to the Buyin' store"},60,75)
				love.graphics.print({{0,0,0},"Take a long look for what you \nwant"},60,95)
			end
			love.graphics.print({{0,0,0},"M = Medkits"},50,400)
			love.graphics.print({{0,0,0},"P = Posion Potion"},50,420)
			love.graphics.print({{0,0,0},"A = Attack boost"},50,440)
			love.graphics.print({{0,0,0},"D = Defence boost"},50,460)
			--testing stat [[love.graphics.print({{0,0,0},"Penelope's health: "..Penelope_Hp},50,480)]]
		end
	end)
end
function shop_keypressed(key)
	pcall(function()
	if D.location == 'city' then
		if Quest:Return('ashley') == 1 
		or Quest:Return('ashley') == true 
		or Quest:Return('ashley') == 0 then
			if key == 'l' then
				Store:seek(0)
				love.audio.pause(Store)
				gamestate = 'stat'
				if math.random(1,5) == 4 then 
					Ashley_Hp = Ashley_Hp + 10 
				end
			elseif key == 'r' then
				Store:seek(0)
				love.audio.pause(Store)
				rob(10,25,"Ashley")
			elseif key == 'm' then
				buyMed()
			elseif key == 'p' then
				buyPotion()
			elseif key == "a" then
				buyAb()
			elseif key == "d" then
				buyDb()
			end
		elseif Quest:Return('ashley') == false then
			if key == 'f' then
				if Atk > 10 then
					Store:seek(0)
					love.audio.pause(Store)
					Ashley_Hp = Ashley_Hp - 60
					Quest:SetT('ashley')
					Alert:new('Beat up Ashley','stat')
					Exp:add(60)
					gamestate = 'alert'
				else
					Hurt(40)
					Alert:new('Ashley beat you up','stat')
					gamestate = 'alert'
				end
			elseif key == 'l' then
				Store:seek(0)
				love.audio.pause(Store)
				gamestate = 'stat'
				if math.random(1,5) == 4 then 
					Ashley_Hp = Ashley_Hp + 10 
				end
			end
		end
	elseif D.location == 'desert' then
		if key == 'l' then
			Store:seek(0)
			love.audio.pause(Store)
			gamestate = 'stat'
			if math.random(1,5) == 4 then 
				Sally_Hp = Sally_Hp + 10 
			end
		elseif key == 'r' then
			Store:seek(0)
			love.audio.pause(Store)
			rob(70,225,"Sally",50,300)
		elseif key == 'm' then
			buyMed('shop',30)
		elseif key == 'p' then
			buyPotion('shop',65)
		elseif key == "a" then
			buyAb('shop',25)
		elseif key == "d" then
			buyDb('shop',25)
		end
	elseif D.location == 'swamp' then
		if key == 'l' then
			Store:seek(0)
			love.audio.pause(Store)
			gamestate = 'stat'
			if math.random(1,5) == 4 then 
				George_Hp = George_Hp + 10 
			end
		elseif key == 'r' then
			Store:seek(0)
			love.audio.pause(Store)
			rob(70,225,"George",50,300)
		elseif key == 'm' then
			buyMed('shop',30)
		elseif key == 'p' then
			buyPotion('shop',55)
		elseif key == "a" then
			buyAb()
		elseif key == "d" then
			buyDb()
		end
	elseif D.location == 'ice' then
		if key == 'l' then
			Store:seek(0)
			love.audio.pause(Store)
			gamestate = 'stat'
			if math.random(1,5) == 4 then 
				Willson_Hp = Willson_Hp + 10 
			end
		elseif key == 'r' then
			Store:seek(0)
			love.audio.pause(Store)
			rob(70,225,"Willson",50,300)
		elseif key == 'm' then
			buyMed()
		elseif key == 'p' then
			buyPotion('shop',55)
		elseif key == "a" then
			buyAb()
		elseif key == "d" then
			buyDb('shop',30)
		end
	elseif D.location == 'waste' then
		if key == 'l' then
			Store:seek(0)
			love.audio.pause(Store)
			gamestate = 'stat'
			if math.random(1,5) == 4 then 
				Penelope_Hp = Penelope_Hp + 10 
			end
		elseif key == 'r' then
			Store:seek(0)
			love.audio.pause(Store)
			rob(70,225,"Penelope",50,300)
		elseif key == 'm' then
			buyMed('shop',40)
		elseif key == 'p' then
			buyPotion()
		elseif key == "a" then
			buyAb('shop',30)
		elseif key == "d" then
			buyDb('shop',30)
		end
	end
	end)
end