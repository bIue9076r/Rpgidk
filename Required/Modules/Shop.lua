Ashley_Hp=100
Sally_Hp=100
George_Hp=100
Willson_Hp=100
Penelope_Hp=100
shopimg = 'shop'

function shop_draw()
	--pcall(function()
		Store = sound:getSound('BuyinStore')
		Store:play()
		if D.location == 'city' then
			if Ashley_Hp <= 0 or dah1.Hp > 0 then
				shopimg = 'shopnoemp'
			elseif Ashley_Hp < 80 then
				shopimg = 'shophurtemp'
			end
			if Quest:Return('ashley') --[[== 1 or Quest:Return('ashley') == true or Quest:Return('ashley') == 0 ]]then
				love.graphics.draw(image:getImage(shopimg.."_"..D.location),0,0)
				love.graphics.draw(image:getImage('Alert'),0,0)
				if Ashley_Hp <= 10 or dah1.Hp > 0 then
					love.graphics.print({{0,0,0},"..."},60,75)
				elseif Ashley_Hp < 80 then
					love.graphics.print({{0,0,0},"Please Dont Hurt Me, I cant"},60,75)
					love.graphics.print({{0,0,0},"Afford to get Hurt anymore"},60,95)
				else
					love.graphics.print({{0,0,0},"Welcome to the Buyin' store"},60,75)
					love.graphics.print({{0,0,0},"what want buy?"},60,95)
				end
				love.graphics.print({{1,1,1},"M = Medkits, Stock:"..r_store_stock_med[0]},50,400)
				love.graphics.print({{1,1,1},"P = Posion Potion, Stock:"..r_store_stock_Posion[0]},50,420)
				love.graphics.print({{1,1,1},"A = Attack boost, Stock:"..r_store_stock_Atk[0]},50,440)
				love.graphics.print({{1,1,1},"D = Defence boost, Stock:"..r_store_stock_Def[0]},50,460)
				--testing stat [[love.graphics.print({{0,0,0},"Ashley's health: "..Ashley_Hp},50,480)]]
			elseif Quest:Return('ashley') == false then
				love.graphics.draw(image:getImage(shopimg.."_"..D.location),0,0)
				love.graphics.draw(image:getImage('Alert'),0,0)
				love.graphics.print({{0,0,0},"I know why you're here"},60,75)
				love.graphics.print({{0,0,0},"just get it over with."},60,95)
				love.graphics.print({{1,1,1},"F = Fight"},50,400)
				love.graphics.print({{1,1,1},"B = Bribe"},50,420)
				love.graphics.print({{1,1,1},"Q = Quit Quest"},50,440)
				--testing stat [[love.graphics.print({{1,1,1},"Ashley's health: "..Ashley_Hp},50,480)]]
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
			love.graphics.print({{1,1,1},"M = Medkits, Stock:"..r_store_stock_med[1]},50,400)
			love.graphics.print({{1,1,1},"P = Posion Potion, Stock:"..r_store_stock_Posion[0]},50,420)
			love.graphics.print({{1,1,1},"A = Attack boost, Stock:"..r_store_stock_Atk[0]},50,440)
			love.graphics.print({{1,1,1},"D = Defence boost, Stock:"..r_store_stock_Def[0]},50,460)
			--testing stat [[love.graphics.print({{1,1,1},"Sally's health: "..Sally_Hp},50,480)]]
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
			love.graphics.print({{1,1,1},"M = Medkits, Stock:"..r_store_stock_med[1]},50,400)
			love.graphics.print({{1,1,1},"P = Posion Potion, Stock:"..r_store_stock_Posion[0]},50,420)
			love.graphics.print({{1,1,1},"A = Attack boost, Stock:"..r_store_stock_Atk[0]},50,440)
			love.graphics.print({{1,1,1},"D = Defence boost, Stock:"..r_store_stock_Def[0]},50,460)
			--testing stat [[love.graphics.print({{1,1,1},"George's health: "..George_Hp},50,480)]]
		elseif D.location == 'icespikes' then
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
			love.graphics.print({{1,1,1},"M = Medkits, Stock:"..r_store_stock_med[0]},50,400)
			love.graphics.print({{1,1,1},"P = Posion Potion, Stock:"..r_store_stock_Posion[0]},50,420)
			love.graphics.print({{1,1,1},"A = Attack boost, Stock:"..r_store_stock_Atk[0]},50,440)
			love.graphics.print({{1,1,1},"D = Defence boost, Stock:"..r_store_stock_Def[0]},50,460)
			--testing stat [[love.graphics.print({{1,1,1},"Willson's health: "..Willson_Hp},50,480)]]
		elseif D.location == 'wasteland' then
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
			love.graphics.print({{1,1,1},"M = Medkits, Stock:"..r_store_stock_med[1]},50,400)
			love.graphics.print({{1,1,1},"P = Posion Potion, Stock:"..r_store_stock_Posion[1]},50,420)
			love.graphics.print({{1,1,1},"A = Attack boost, Stock:"..r_store_stock_Atk[1]},50,440)
			love.graphics.print({{1,1,1},"D = Defence boost, Stock:"..r_store_stock_Def[1]},50,460)
			--testing stat [[love.graphics.print({{1,1,1},"Penelope's health: "..Penelope_Hp},50,480)]]
		end
	--end)
end
function shop_keypressed(key)
	--pcall(function()
	if D.location == 'city' then
		if Quest:Return('ashley') --[[Quest:Return('ashley') == 1 
		or Quest:Return('ashley') == true 
		or Quest:Return('ashley') == 0 ]]then
			if key == 'l' then
				Store:seek(0)
				love.audio.pause(Store)
				gamestate = 'stat'
				if math.random(1,5) == 4 then 
					Ashley_Hp = Ashley_Hp + 10
					if Ashley_Hp > 100 then
						Ashley_Hp = 100
					end
				end
			elseif key == 'r' then
				Store:seek(0)
				love.audio.pause(Store)
				rob(10,25,"Ashley")
			elseif key == 'm' then
				--buyMed()
				buyItem(Nitem[0],0)
			elseif key == 'p' then
				--buyPotion()
				buyItem(Nitem[1],0)
			elseif key == "a" then
				--buyAb()
				buyItem(Nitem[2],0)
			elseif key == "d" then
				--buyDb()
				buyItem(Nitem[3],0)
			elseif key == 't' then
				if Ashley_Hp == 100 then
					dah1.Hp = 1
					SubSelected = true
					D.location = 'Ashleys House'
					Alert:new("Went to Ashleys House","stat")
					gamestate = 'alert'
				end
			end
		elseif Quest:Return('ashley') == false then
			if key == 'f' then
				Store:seek(0)
				love.audio.pause(Store)
				B_Ashley:Load()
				B_Ashley:Global()
				gamestate = 'fight'
			elseif key == 'b' then
				if Cash >= 150 then
					Store:seek(0)
					love.audio.pause(Store)
					Cash = Cash - 150
					Quest:SetT('ashley')
					Alert:new('Bribed Ashley','stat')
					Exp:add(90)
					gamestate = 'alert'
				else
					Alert:new('Ashley Declined','shop')
					gamestate = 'alert'
				end
			elseif key == 'q' then
				Quest:SetFL('ashley')
				Store:seek(0)
				love.audio.pause(Store)
				gamestate = 'stat'
				if math.random(1,5) == 4 then 
					Ashley_Hp = Ashley_Hp + 10 
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
				if Sally_Hp > 100 then
					Sally_Hp = 100
				end
			end
		elseif key == 'r' then
			Store:seek(0)
			love.audio.pause(Store)
			rob(70,225,"Sally",50,300)
		elseif key == 'm' then
			--buyMed('shop',30)
			buyItem(Nitem[0],1,'shop',45)
		elseif key == 'p' then
			--buyPotion('shop',65)
			buyItem(Nitem[1],0,'shop',95)
		elseif key == "a" then
			--buyAb('shop',25)
			buyItem(Nitem[2],0,'shop',70)
		elseif key == "d" then
			--buyDb('shop',25)
			buyItem(Nitem[3],0,'shop',105)
		end
	elseif D.location == 'swamp' then
		if key == 'l' then
			Store:seek(0)
			love.audio.pause(Store)
			gamestate = 'stat'
			if math.random(1,5) == 4 then 
				George_Hp = George_Hp + 10
				if Sally_Hp > 100 then
					Sally_Hp = 100
				end
			end
		elseif key == 'r' then
			Store:seek(0)
			love.audio.pause(Store)
			rob(70,225,"George",50,300)
		elseif key == 'm' then
			--buyMed('shop',30)
			buyItem(Nitem[0],1,'shop',40)
		elseif key == 'p' then
			--buyPotion('shop',55)
			buyItem(Nitem[1],0,'shop',75)
		elseif key == "a" then
			--buyAb()
			buyItem(Nitem[2],0,'shop',55)
		elseif key == "d" then
			--buyDb()
			buyItem(Nitem[3],0,'shop',115)
		end
	elseif D.location == 'icespikes' then
		if key == 'l' then
			Store:seek(0)
			love.audio.pause(Store)
			gamestate = 'stat'
			if math.random(1,5) == 4 then 
				Willson_Hp = Willson_Hp + 10
				if Willson_Hp > 100 then
					Willson_Hp = 100
				end
			end
		elseif key == 'r' then
			Store:seek(0)
			love.audio.pause(Store)
			rob(70,225,"Willson",50,300)
		elseif key == 'm' then
			--buyMed()
			buyItem(Nitem[0],1,'shop',40)
		elseif key == 'p' then
			--buyPotion('shop',55)
			buyItem(Nitem[1],1,'shop',95)
		elseif key == "a" then
			--buyAb()
			buyItem(Nitem[2],1,'shop',85)
		elseif key == "d" then
			--buyDb('shop',30)
			buyItem(Nitem[3],0,'shop',125)
		end
	elseif D.location == 'wasteland' then
		if key == 'l' then
			Store:seek(0)
			love.audio.pause(Store)
			gamestate = 'stat'
			if math.random(1,5) == 4 then 
				Penelope_Hp = Penelope_Hp + 10
				if Penelope_Hp > 100 then
					Penelope_Hp = 100
				end
			end
		elseif key == 'r' then
			Store:seek(0)
			love.audio.pause(Store)
			rob(70,225,"Penelope",50,300)
		elseif key == 'm' then
			--buyMed('shop',100)
			buyItem(Nitem[0],2,'shop',100)
		elseif key == 'p' then
			--buyPotion()
			buyItem(Nitem[1],1,'shop',175)
		elseif key == "a" then
			--buyAb('shop',130)
			buyItem(Nitem[2],2,'shop',150)
		elseif key == "d" then
			--buyDb('shop',130)
			buyItem(Nitem[3],1,'shop',200)
		end
	end
	--end)
end