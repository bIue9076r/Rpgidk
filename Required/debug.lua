console = {}
console.output = {}
console.history = {''}
console.historyoffset = 0
console.maxheight = 7
console.offset = 0
console.up = 1
console.down = #console.output
console.intext = ""
console.cmds = {}

function console.cmds.help(lntbl)
	--[[if lntbl[2] and lntbl[2]:lower() == 'newline' then
		local ntbl = {}
		for i = 3,#lntbl do
			table.insert(ntbl,lntbl[i])
		end
		return "[cmds]: /stat; /give; /item;\n/help; /echo;\n"..console.readlntbl(ntbl)
	end]]
	return "[cmds]: /stat; /give; /item;\n/help; /echo;"
end
function console.cmds.echo(lntbl)
	if(lntbl[2])then
		--[[if lntbl[3] and lntbl[3]:lower() == 'newline' then
			local ntbl = {}
			for i = 4,#lntbl do
				table.insert(ntbl,lntbl[i])
			end
			return lntbl[2]:lower().."\n"..console.readlntbl(ntbl)
		end]]
		
		return lntbl[2]:lower(), 3
	else
		return "/echo [string];"
	end
end
function console.cmds.stat(lntbl)
	action = {'raise','lower','set'}
	stats = {'Hp','Rep','Atk','Def','Maxhp','Cash'}
	if lntbl[2] and lntbl[2]:lower() == stats[1]:lower() then
		if lntbl[3] and lntbl[3]:lower() == action[1]:lower() then -- raise
			if(lntbl[4] and type(tonumber(lntbl[4]:lower())) == 'number')then
				Hp = Hp + tonumber(lntbl[4]:lower())
				--[[if lntbl[5] and lntbl[5]:lower() == 'newline' then
					local ntbl = {}
					for i = 6,#lntbl do
						table.insert(ntbl,lntbl[i]:lower())
					end
					return "raised Hp by "..lntbl[4]:lower().."\n"..console.readlntbl(ntbl)
				end]]
				return "raised Hp by "..lntbl[4]:lower(), 5
			else
				return "/stat [stat] [action] (amount)\n(amount): number;"
			end
		elseif lntbl[3] and lntbl[3]:lower() == action[2]:lower() then -- lower
			if(lntbl[4] and type(tonumber(lntbl[4]:lower())) == 'number')then
				Hp = Hp - tonumber(lntbl[4]:lower())
				--[[if lntbl[5] and lntbl[5]:lower() == 'newline' then
					local ntbl = {}
					for i = 6,#lntbl do
						table.insert(ntbl,lntbl[i]:lower())
					end
					return "lowered Hp by "..lntbl[4]:lower().."\n"..console.readlntbl(ntbl)
				end]]
				return "lowered Hp by "..lntbl[4]:lower(), 5
			else
				return "/stat [stat] [action] (amount)\n(amount): number;"
			end
		elseif lntbl[3] and lntbl[3]:lower() == action[3]:lower() then -- set
			if(lntbl[4] and type(tonumber(lntbl[4]:lower())) == 'number')then
				Hp = tonumber(lntbl[4]:lower())
				--[[if lntbl[5] and lntbl[5]:lower() == 'newline' then
					local ntbl = {}
					for i = 6,#lntbl do
						table.insert(ntbl,lntbl[i]:lower())
					end
					return "set Hp to "..lntbl[4]:lower().."\n"..console.readlntbl(ntbl)
				end]]
				return "set Hp to "..lntbl[4]:lower(), 5
			else
				return "/stat [stat] [action] (amount)\n(amount): number;"
			end
		else
			return "/stat [stat] [action] (amount)\n[action]: raise; lower; set;"
		end
	elseif lntbl[2] and lntbl[2]:lower() == stats[2]:lower() then
		if lntbl[3] and lntbl[3]:lower() == action[1]:lower() then -- raise
			if(lntbl[4] and type(tonumber(lntbl[4]:lower())) == 'number')then
				Rep = Rep + tonumber(lntbl[4]:lower())
				--[[if lntbl[5] and lntbl[5]:lower() == 'newline' then
					local ntbl = {}
					for i = 6,#lntbl do
						table.insert(ntbl,lntbl[i]:lower())
					end
					return "raised Rep by "..lntbl[4]:lower().."\n"..console.readlntbl(ntbl)
				end]]
				return "raised Rep by "..lntbl[4]:lower(), 5
			else
				return "/stat [stat] [action] (amount)\n(amount): number;"
			end
		elseif lntbl[3] and lntbl[3]:lower() == action[2]:lower() then -- lower
			if(lntbl[4] and type(tonumber(lntbl[4]:lower())) == 'number')then
				Rep = Rep - tonumber(lntbl[4]:lower())
				--[[if lntbl[5] and lntbl[5]:lower() == 'newline' then
					local ntbl = {}
					for i = 6,#lntbl do
						table.insert(ntbl,lntbl[i]:lower())
					end
					return "lowered Rep by "..lntbl[4]:lower().."\n"..console.readlntbl(ntbl)
				end]]
				return "lowered Rep by "..lntbl[4]:lower(), 5
			else
				return "/stat [stat] [action] (amount)\n(amount): number;"
			end
		elseif lntbl[3] and lntbl[3]:lower() == action[3]:lower() then -- set
			if(lntbl[4] and type(tonumber(lntbl[4]:lower())) == 'number')then
				Rep = tonumber(lntbl[4]:lower())
				--[[if lntbl[5] and lntbl[5]:lower() == 'newline' then
					local ntbl = {}
					for i = 6,#lntbl do
						table.insert(ntbl,lntbl[i]:lower())
					end
					return "set Rep to "..lntbl[4]:lower().."\n"..console.readlntbl(ntbl)
				end]]
				return "set Rep to "..lntbl[4]:lower(), 5
			else
				return "/stat [stat] [action] (amount)\n(amount): number;"
			end
		else
			return "/stat [stat] [action] (amount)\n[action]: raise; lower; set;"
		end
	elseif lntbl[2] and lntbl[2]:lower() == stats[3]:lower() then
		if lntbl[3] and lntbl[3]:lower() == action[1]:lower() then -- raise
			if(lntbl[4] and type(tonumber(lntbl[4]:lower())) == 'number')then
				Atk = Atk + tonumber(lntbl[4]:lower())
				--[[if lntbl[5] and lntbl[5]:lower() == 'newline' then
					local ntbl = {}
					for i = 6,#lntbl do
						table.insert(ntbl,lntbl[i]:lower())
					end
					return "raised Atk by "..lntbl[4]:lower().."\n"..console.readlntbl(ntbl)
				end]]
				return "raised Atk by "..lntbl[4]:lower(), 5
			else
				return "/stat [stat] [action] (amount)\n(amount): number;"
			end
		elseif lntbl[3] and lntbl[3]:lower() == action[2]:lower() then -- lower
			if(lntbl[4] and type(tonumber(lntbl[4]:lower())) == 'number')then
				Atk = Atk - tonumber(lntbl[4]:lower())
				--[[if lntbl[5] and lntbl[5]:lower() == 'newline' then
					local ntbl = {}
					for i = 6,#lntbl do
						table.insert(ntbl,lntbl[i]:lower())
					end
					return "lowered Atk by "..lntbl[4]:lower().."\n"..console.readlntbl(ntbl)
				end]]
				return "lowered Atk by "..lntbl[4]:lower(), 5
			else
				return "/stat [stat] [action] (amount)\n(amount): number;"
			end
		elseif lntbl[3] and lntbl[3]:lower() == action[3]:lower() then -- set
			if(lntbl[4] and type(tonumber(lntbl[4]:lower())) == 'number')then
				Atk = tonumber(lntbl[4]:lower())
				--[[if lntbl[5] and lntbl[5]:lower() == 'newline' then
					local ntbl = {}
					for i = 6,#lntbl do
						table.insert(ntbl,lntbl[i]:lower())
					end
					return "set Atk to "..lntbl[4]:lower().."\n"..console.readlntbl(ntbl)
				end]]
				return "set Atk to "..lntbl[4]:lower(), 5
			else
				return "/stat [stat] [action] (amount)\n(amount): number;"
			end
		else
			return "/stat [stat] [action] (amount)\n[action]: raise; lower; set;"
		end
	elseif lntbl[2] and lntbl[2]:lower() == stats[4]:lower() then
		if lntbl[3] and lntbl[3]:lower() == action[1]:lower() then -- raise
			if(lntbl[4] and type(tonumber(lntbl[4]:lower())) == 'number')then
				Def = Def + tonumber(lntbl[4]:lower())
				if lntbl[5] and lntbl[5]:lower() == 'newline' then
					local ntbl = {}
					for i = 6,#lntbl do
						table.insert(ntbl,lntbl[i]:lower())
					end
					return "raised Def by "..lntbl[4]:lower().."\n"..console.readlntbl(ntbl)
				end
				return "raised Def by "..lntbl[4]:lower()
			else
				return "/stat [stat] [action] (amount)\n(amount): number;"
			end
		elseif lntbl[3] and lntbl[3]:lower() == action[2]:lower() then -- lower
			if(lntbl[4] and type(tonumber(lntbl[4]:lower())) == 'number')then
				Def = Def - tonumber(lntbl[4]:lower())
				if lntbl[5] and lntbl[5]:lower() == 'newline' then
					local ntbl = {}
					for i = 6,#lntbl do
						table.insert(ntbl,lntbl[i]:lower())
					end
					return "lowered Def by "..lntbl[4]:lower().."\n"..console.readlntbl(ntbl)
				end
				return "lowered Def by "..lntbl[4]:lower()
			else
				return "/stat [stat] [action] (amount)\n(amount): number;"
			end
		elseif lntbl[3] and lntbl[3]:lower() == action[3]:lower() then -- set
			if(lntbl[4] and type(tonumber(lntbl[4]:lower())) == 'number')then
				Def = tonumber(lntbl[4]:lower())
				if lntbl[5] and lntbl[5]:lower() == 'newline' then
					local ntbl = {}
					for i = 6,#lntbl do
						table.insert(ntbl,lntbl[i]:lower())
					end
					return "set Def to "..lntbl[4]:lower().."\n"..console.readlntbl(ntbl)
				end
				return "set Def to "..lntbl[4]:lower()
			else
				return "/stat [stat] [action] (amount)\n(amount): number;"
			end
		else
			return "/stat [stat] [action] (amount)\n[action]: raise; lower; set;"
		end
	elseif lntbl[2] and lntbl[2]:lower() == stats[5]:lower() then
		if lntbl[3] and lntbl[3]:lower() == action[1]:lower() then -- raise
			if(lntbl[4] and type(tonumber(lntbl[4]:lower())) == 'number')then
				Max_Hp = Max_Hp + tonumber(lntbl[4]:lower())
				--[[if lntbl[5] and lntbl[5]:lower() == 'newline' then
					local ntbl = {}
					for i = 6,#lntbl do
						table.insert(ntbl,lntbl[i]:lower())
					end
					return "raised Maxhp by "..lntbl[4]:lower().."\n"..console.readlntbl(ntbl)
				end]]
				return "raised Maxhp by "..lntbl[4]:lower(), 5
			else
				return "/stat [stat] [action] (amount)\n(amount): number;"
			end
		elseif lntbl[3] and lntbl[3]:lower() == action[2]:lower() then -- lower
			if(lntbl[4] and type(tonumber(lntbl[4]:lower())) == 'number')then
				Max_Hp = Max_Hp - tonumber(lntbl[4]:lower())
				--[[if lntbl[5] and lntbl[5]:lower() == 'newline' then
					local ntbl = {}
					for i = 6,#lntbl do
						table.insert(ntbl,lntbl[i]:lower())
					end
					return "lowered Maxhp by "..lntbl[4]:lower().."\n"..console.readlntbl(ntbl)
				end]]
				return "lowered Maxhp by "..lntbl[4]:lower(), 5
			else
				return "/stat [stat] [action] (amount)\n(amount): number;"
			end
		elseif lntbl[3] and lntbl[3]:lower() == action[3]:lower() then -- set
			if(lntbl[4] and type(tonumber(lntbl[4]:lower())) == 'number')then
				Max_Hp = tonumber(lntbl[4]:lower())
				--[[if lntbl[5] and lntbl[5]:lower() == 'newline' then
					local ntbl = {}
					for i = 6,#lntbl do
						table.insert(ntbl,lntbl[i]:lower())
					end
					return "set Maxhp to"..lntbl[4]:lower().."\n"..console.readlntbl(ntbl)
				end]]
				return "set Maxhp to "..lntbl[4]:lower(), 5
			else
				return "/stat [stat] [action] (amount)\n(amount): number;"
			end
		else
			return "/stat [stat] [action] (amount)\n[action]: raise; lower; set;"
		end
	elseif lntbl[2] and lntbl[2]:lower() == stats[6]:lower() then
		if lntbl[3] and lntbl[3]:lower() == action[1]:lower() then -- raise
			if(lntbl[4] and type(tonumber(lntbl[4]:lower())) == 'number')then
				Cash = Cash + tonumber(lntbl[4]:lower())
				--[[if lntbl[5] and lntbl[5]:lower() == 'newline' then
					local ntbl = {}
					for i = 6,#lntbl do
						table.insert(ntbl,lntbl[i]:lower())
					end
					return "raised Cash by "..lntbl[4]:lower().."\n"..console.readlntbl(ntbl)
				end]]
				return "raised Cash by "..lntbl[4]:lower(), 5
			else
				return "/stat [stat] [action] (amount)\n(amount): number;"
			end
		elseif lntbl[3] and lntbl[3]:lower() == action[2]:lower() then -- lower
			if(lntbl[4] and type(tonumber(lntbl[4]:lower())) == 'number')then
				Cash = Cash - tonumber(lntbl[4]:lower())
				--[[if lntbl[5] and lntbl[5]:lower() == 'newline' then
					local ntbl = {}
					for i = 6,#lntbl do
						table.insert(ntbl,lntbl[i]:lower())
					end
					return "lowered Cash by "..lntbl[4]:lower().."\n"..console.readlntbl(ntbl)
				end]]
				return "lowered Cash by "..lntbl[4]:lower(), 5
			else
				return "/stat [stat] [action] (amount)\n(amount): number;"
			end
		elseif lntbl[3] and lntbl[3]:lower() == action[3]:lower() then -- set
			if(lntbl[4] and type(tonumber(lntbl[4]:lower())) == 'number')then
				Cash = tonumber(lntbl[4]:lower())
				--[[if lntbl[5] and lntbl[5]:lower() == 'newline' then
					local ntbl = {}
					for i = 6,#lntbl do
						table.insert(ntbl,lntbl[i]:lower())
					end
					return "set Cash to"..lntbl[4]:lower().."\n"..console.readlntbl(ntbl)
				end]]
				return "set Cash to "..lntbl[4]:lower(), 5
			else
				return "/stat [stat] [action] (amount)\n(amount): number;"
			end
		else
			return "/stat [stat] [action] (amount)\n[action]: raise; lower; set;"
		end
	else
		return "/stat [stat] [action] (amount)\n[stat]: Hp; Rep; Atk; Def; Maxhp;"
	end
end
function console.cmds.give(lntbl)
	inclass = {'item','note'}
	if lntbl[2] and lntbl[2]:lower() == inclass[1]:lower() then -- item
		if(lntbl[3] and lntbl[4] and type(tonumber(lntbl[3]:lower()) + tonumber(lntbl[4]:lower())) == 'number')then
			if(lntbl[5])then
				for i = 1,tonumber(lntbl[4]:lower()) do
					Item.new(lntbl[5]:lower(),nil,tonumber(lntbl[3]:lower()),10)
				end
				--[[if lntbl[6] and lntbl[6]:lower() == 'newline' then
					local ntbl = {}
					for i = 7,#lntbl do
						table.insert(ntbl,lntbl[i]:lower())
					end
					return "gave "..lntbl[4]:lower().." amount of the item id: "..lntbl[3]:lower().."\nname: "..lntbl[5]:lower().."\n"..console.readlntbl(ntbl)
				end]]
				return "gave "..lntbl[4]:lower().." amount of the item id: "..lntbl[3]:lower().."\nname: "..lntbl[5]:lower(), 6
			else
				return "/give [class] (item id#|note id#) (amount) {name}\n{name}: string;"
			end
		else
			return "/give [class] (item id#|note id#) (amount) {name}\n(item id#|note id#) (amount): number;"
		end
	elseif lntbl[2] and lntbl[2]:lower() == inclass[2]:lower() then -- note
		if(lntbl[3] and lntbl[4] and type(tonumber(lntbl[3]:lower()) + tonumber(lntbl[4]:lower())) == 'number')then
			if(lntbl[5])then
				for i = 1,tonumber(lntbl[4]:lower()) do
					Note.new(lntbl[5]:lower(),tonumber(lntbl[3]:lower()))
				end
				--[[if lntbl[6] and lntbl[6]:lower() == 'newline' then
					local ntbl = {}
					for i = 7,#lntbl do
						table.insert(ntbl,lntbl[i]:lower())
					end
					return "gave "..lntbl[4]:lower().." amount of the note id: "..lntbl[3]:lower().."\nname: "..lntbl[5]:lower().."\n"..console.readlntbl(ntbl)
				end]]
				return "gave "..lntbl[4]:lower().." amount of the note id: "..lntbl[3]:lower().."\nname: "..lntbl[5]:lower(), 6
			else
				return "/give [class] (item id#|note id#) (amount) {name}\n{name}: string;"
			end
		else
			return "/give [class] (item id#|note id#) (amount) {name}\n(item id#|note id#) (amount): number;"
		end
	else
		return "/give [class] (item id#|note id#)\n(amount) {name}\n[class]: item; note;"
	end
end
function console.cmds.item(lntbl)
	iclass = {'med','pot','atk','def'}
	if lntbl[2] and lntbl[2]:lower() == iclass[1]:lower() then -- med
		if(lntbl[3] and lntbl[4] and type(tonumber(lntbl[3]:lower()) + tonumber(lntbl[4]:lower())) == 'number')then
			if(tonumber(lntbl[4]:lower()) > 3 or tonumber(lntbl[4]:lower()) < 0)then lntbl[4] = "1" end
			for i = 1,tonumber(lntbl[3]:lower()) do
				sitem[0][tonumber(lntbl[4]:lower())] = sitem[0][tonumber(lntbl[4]:lower())] + 1
			end
			--[[if lntbl[5] and lntbl[5]:lower() == 'newline' then
				local ntbl = {}
				for i = 6,#lntbl do
					table.insert(ntbl,lntbl[i])
				end
				return "gave "..lntbl[3]:lower().." amount of medkits\nrarity: "..lntbl[4]:lower()..console.readlntbl(ntbl)
			end]]
			return "gave "..lntbl[3]:lower().." amount of medkits\nrarity: "..lntbl[4]:lower(), 5
		else
			return "/item [iclass] (amount) {rarity}\n(amount) {rarity}: number;"
		end
	elseif lntbl[2] and lntbl[2]:lower() == iclass[2]:lower() then -- pot
		if(lntbl[3] and lntbl[4] and type(tonumber(lntbl[3]:lower()) + tonumber(lntbl[4]:lower())) == 'number')then
			if(tonumber(lntbl[4]:lower()) > 3 or tonumber(lntbl[4]:lower()) < 0)then lntbl[4] = "1" end
			for i = 1,tonumber(lntbl[3]:lower()) do
				sitem[1][tonumber(lntbl[4]:lower())] = sitem[1][tonumber(lntbl[4]:lower())] + 1
			end
			--[[if lntbl[5] and lntbl[5]:lower() == 'newline' then
				local ntbl = {}
				for i = 6,#lntbl do
					table.insert(ntbl,lntbl[i]:lower())
				end
				return "gave "..lntbl[3]:lower().." amount of potions\nrarity: "..lntbl[4]:lower()..console.readlntbl(ntbl)
			end]]
			return "gave "..lntbl[3]:lower().." amount of potions\nrarity: "..lntbl[4]:lower(), 5
		else
			return "/item [iclass] (amount) {rarity}\n(amount) {rarity}: number;"
		end
	elseif lntbl[2] and lntbl[2]:lower() == iclass[3]:lower() then -- atk
		if(lntbl[3] and lntbl[4] and type(tonumber(lntbl[3]:lower()) + tonumber(lntbl[4]:lower())) == 'number')then
			if(tonumber(lntbl[4]:lower()) > 3 or tonumber(lntbl[4]:lower()) < 0)then lntbl[4] = "1" end
			for i = 1,tonumber(lntbl[3]:lower()) do
				sitem[2][tonumber(lntbl[4]:lower())] = sitem[2][tonumber(lntbl[4]:lower())] + 1
			end
			--[[if lntbl[5] and lntbl[5]:lower() == 'newline' then
				local ntbl = {}
				for i = 6,#lntbl do
					table.insert(ntbl,lntbl[i]:lower())
				end
				return "gave "..lntbl[3]:lower().." amount of atk bst\nrarity: "..lntbl[4]:lower()..console.readlntbl(ntbl)
			end]]
			return "gave "..lntbl[3]:lower().." amount of atk bst\nrarity: "..lntbl[4]:lower(), 5
		else
			return "/item [iclass] (amount) {rarity}\n(amount) {rarity}: number;"
		end
	elseif lntbl[2] and lntbl[2]:lower() == iclass[4]:lower() then -- def
		if(lntbl[3] and lntbl[4] and type(tonumber(lntbl[3]:lower()) + tonumber(lntbl[4]:lower())) == 'number')then
			if(tonumber(lntbl[4]:lower()) > 3 or tonumber(lntbl[4]:lower()) < 0)then lntbl[4] = "1" end
			for i = 1,tonumber(lntbl[3]:lower()) do
				sitem[3][tonumber(lntbl[4]:lower())] = sitem[3][tonumber(lntbl[4]:lower())] + 1
			end
			--[[if lntbl[5] and lntbl[5]:lower() == 'newline' then
				local ntbl = {}
				for i = 6,#lntbl do
					table.insert(ntbl,lntbl[i]:lower())
				end
				return "gave "..lntbl[3]:lower().." amount of def bst\nrarity: "..lntbl[4]:lower()..console.readlntbl(ntbl)
			end]]
			return "gave "..lntbl[3]:lower().." amount of def bst\nrarity: "..lntbl[4]:lower(), 5
		else
			return "/item [iclass] (amount) {rarity}\n(amount) {rarity}: number;"
		end
	else
		return "/item [iclass] (amount) {rarity}\n[iclass]: med; pot; atk; def;"
	end
end
function console.cmds.reload()
	love.event.quit("restart");
end

function console.cmds.hp(lntbl)
	action = {'raise','lower','set'}
	if(lntbl[2] and lntbl[2]:lower() == action[1])then
		if(lntbl[3] and type(tonumber(lntbl[3]:lower())) == 'number')then
			return console.fparse('/stat hp raise '..tonumber(lntbl[3]:lower())), 4
		else
			return "/hp [action] (amount)\n(amount): number"
		end
	elseif(lntbl[2] and lntbl[2]:lower() == action[2])then
		if(lntbl[3] and type(tonumber(lntbl[3]:lower())) == 'number')then
			return console.fparse('/stat hp lower '..tonumber(lntbl[3]:lower())), 4
		else
			return "/hp [action] (amount)\n(amount): number"
		end
	elseif(lntbl[2] and lntbl[2]:lower() == action[3])then
		if(lntbl[3] and type(tonumber(lntbl[3]:lower())) == 'number')then
			return console.fparse('/stat hp set '..tonumber(lntbl[3]:lower())), 4
		else
			return "/hp [action] (amount)\n(amount): number"
		end
	else
		return "/hp [action] (amount)\n[action]: raise; lower; set"
	end
end
function console.cmds.rep(lntbl)
	action = {'raise','lower','set'}
	if(lntbl[2] and lntbl[2]:lower() == action[1])then
		if(lntbl[3] and type(tonumber(lntbl[3]:lower())) == 'number')then
			return console.fparse('/stat rep raise '..tonumber(lntbl[3]:lower())), 4
		else
			return "/rep [action] (amount)\n(amount): number"
		end
	elseif(lntbl[2] and lntbl[2]:lower() == action[2])then
		if(lntbl[3] and type(tonumber(lntbl[3]:lower())) == 'number')then
			return console.fparse('/stat rep lower '..tonumber(lntbl[3]:lower())), 4
		else
			return "/rep [action] (amount)\n(amount): number"
		end
	elseif(lntbl[2] and lntbl[2]:lower() == action[3])then
		if(lntbl[3] and type(tonumber(lntbl[3]:lower())) == 'number')then
			return console.fparse('/stat rep set '..tonumber(lntbl[3]:lower())), 4
		else
			return "/rep [action] (amount)\n(amount): number"
		end
	else
		return "/rep [action] (amount)\n[action]: raise; lower; set"
	end
end
function console.cmds.atk(lntbl)
	action = {'raise','lower','set'}
	if(lntbl[2] and lntbl[2]:lower() == action[1])then
		if(lntbl[3] and type(tonumber(lntbl[3]:lower())) == 'number')then
			return console.fparse('/stat atk raise '..tonumber(lntbl[3]:lower())), 4
		else
			return "/atk [action] (amount)\n(amount): number"
		end
	elseif(lntbl[2] and lntbl[2]:lower() == action[2])then
		if(lntbl[3] and type(tonumber(lntbl[3]:lower())) == 'number')then
			return console.fparse('/stat atk lower '..tonumber(lntbl[3]:lower())), 4
		else
			return "/atk [action] (amount)\n(amount): number"
		end
	elseif(lntbl[2] and lntbl[2]:lower() == action[3])then
		if(lntbl[3] and type(tonumber(lntbl[3]:lower())) == 'number')then
			return console.fparse('/stat atk set '..tonumber(lntbl[3]:lower())), 4
		else
			return "/atk [action] (amount)\n(amount): number"
		end
	else
		return "/atk [action] (amount)\n[action]: raise; lower; set"
	end
end
function console.cmds.def(lntbl)
	action = {'raise','lower','set'}
	if(lntbl[2] and lntbl[2]:lower() == action[1])then
		if(lntbl[3] and type(tonumber(lntbl[3]:lower())) == 'number')then
			return console.fparse('/stat def raise '..tonumber(lntbl[3]:lower())), 4
		else
			return "/def [action] (amount)\n(amount): number"
		end
	elseif(lntbl[2] and lntbl[2]:lower() == action[2])then
		if(lntbl[3] and type(tonumber(lntbl[3]:lower())) == 'number')then
			return console.fparse('/stat def lower '..tonumber(lntbl[3]:lower())), 4
		else
			return "/def [action] (amount)\n(amount): number"
		end
	elseif(lntbl[2] and lntbl[2]:lower() == action[3])then
		if(lntbl[3] and type(tonumber(lntbl[3]:lower())) == 'number')then
			return console.fparse('/stat def set '..tonumber(lntbl[3]:lower())), 4
		else
			return "/def [action] (amount)\n(amount): number"
		end
	else
		return "/def [action] (amount)\n[action]: raise; lower; set"
	end
end
function console.cmds.maxhp(lntbl)
	action = {'raise','lower','set'}
	if(lntbl[2] and lntbl[2]:lower() == action[1])then
		if(lntbl[3] and type(tonumber(lntbl[3]:lower())) == 'number')then
			return console.fparse('/stat maxhp raise '..tonumber(lntbl[3]:lower())), 4
		else
			return "/maxhp [action] (amount)\n(amount): number"
		end
	elseif(lntbl[2] and lntbl[2]:lower() == action[2])then
		if(lntbl[3] and type(tonumber(lntbl[3]:lower())) == 'number')then
			return console.fparse('/stat maxhp lower '..tonumber(lntbl[3]:lower())), 4
		else
			return "/maxhp [action] (amount)\n(amount): number"
		end
	elseif(lntbl[2] and lntbl[2]:lower() == action[3])then
		if(lntbl[3] and type(tonumber(lntbl[3]:lower())) == 'number')then
			return console.fparse('/stat maxhp set '..tonumber(lntbl[3]:lower())), 4
		else
			return "/maxhp [action] (amount)\n(amount): number"
		end
	else
		return "/maxhp [action] (amount)\n[action]: raise; lower; set"
	end
end
function console.cmds.cash(lntbl)
	action = {'raise','lower','set'}
	if(lntbl[2] and lntbl[2]:lower() == action[1])then
		if(lntbl[3] and type(tonumber(lntbl[3]:lower())) == 'number')then
			return console.fparse('/stat cash raise '..tonumber(lntbl[3]:lower())), 4
		else
			return "/cash [action] (amount)\n(amount): number"
		end
	elseif(lntbl[2] and lntbl[2]:lower() == action[2])then
		if(lntbl[3] and type(tonumber(lntbl[3]:lower())) == 'number')then
			return console.fparse('/stat cash lower '..tonumber(lntbl[3]:lower())), 4
		else
			return "/cash [action] (amount)\n(amount): number"
		end
	elseif(lntbl[2] and lntbl[2]:lower() == action[3])then
		if(lntbl[3] and type(tonumber(lntbl[3]:lower())) == 'number')then
			return console.fparse('/stat cash set '..tonumber(lntbl[3]:lower())), 4
		else
			return "/cash [action] (amount)\n(amount): number"
		end
	else
		return "/cash [action] (amount)\n[action]: raise; lower; set"
	end
end
function console.cmds.bitem(lntbl)
	if(lntbl[2] and lntbl[3] and type(tonumber(lntbl[2]:lower()) + tonumber(lntbl[3]:lower())) == 'number')then
		if(lntbl[4])then
			for i = 1,tonumber(lntbl[3]:lower()) do
				Item.new(lntbl[4]:lower(),nil,tonumber(lntbl[2]:lower()),10)
			end
			--[[if lntbl[5] and lntbl[5]:lower() == 'newline' then
				local ntbl = {}
				for i = 6,#lntbl do
					table.insert(ntbl,lntbl[i]:lower())
				end
				return "gave "..lntbl[3]:lower().." amount of the item id: "..lntbl[2]:lower().."\name: "..lntbl[4]:lower().."\n"..console.readlntbl(ntbl)
			end]]
			return "gave "..lntbl[3]:lower().." amount of the item id: "..lntbl[2]:lower().."\name: "..lntbl[4]:lower(), 5
		else
			return "/item (item id#) (amount) {name}\n{name}: string;"
		end
	else
		return "/item (item id#) (amount) {name}\n(item id#) (amount): number;"
	end
end
function console.cmds.note(lntbl)
	if(lntbl[2] and lntbl[3] and type(tonumber(lntbl[2]:lower()) + tonumber(lntbl[3]:lower())) == 'number')then
		if(lntbl[4])then
			for i = 1,tonumber(lntbl[3]:lower()) do
				Note.new(lntbl[4]:lower(),tonumber(lntbl[2]:lower()))
			end
			--[[if lntbl[5] and lntbl[5]:lower() == 'newline' then
				local ntbl = {}
				for i = 6,#lntbl do
					table.insert(ntbl,lntbl[i]:lower())
				end
				return "gave "..lntbl[3]:lower().." amount of the note id: "..lntbl[2]:lower().."\nname: "..lntbl[4]:lower().."\n"..console.readlntbl(ntbl)
			end]]
			return "gave "..lntbl[3]:lower().." amount of the note id: "..lntbl[2]:lower().."\nname: "..lntbl[4]:lower(), 5
		else
			return "/note (item id#|note id#) (amount) {name}\n{name}: string;"
		end
	else
		return "/note (item id#|note id#) (amount) {name}\n(item id#|note id#) (amount): number;"
	end
end

function console.cmds.gamestate(lntbl)
	-- VERY DANGEROUS
	-- You must know how each gamestate changes
	-- or else you might break the game
	pev_gamestate = gamestate -- failsafe if you get caught in the void
	if(lntbl[2])then
		gamestate = lntbl[2]:lower()
		--[[if lntbl[3] and lntbl[3]:lower() == 'newline' then
			local ntbl = {}
			for i = 4,#lntbl do
				table.insert(ntbl,lntbl[i])
			end
			return "gamestate = "..lntbl[2]:lower().."\n"..console.readlntbl(ntbl)
		end]]
		return "gamestate = "..lntbl[2]:lower(), 3
	else
		return "/gamestate [string];"
	end
end
function console.cmds.location(lntbl)
	locs = {'1','2','3','4','5'}
	if(lntbl[2] and lntbl[2]:lower() == locs[1]:lower())then
		D.location = 'city'
		--[[if lntbl[3] and lntbl[3]:lower() == 'newline' then
			local ntbl = {}
			for i = 4,#lntbl do
				table.insert(ntbl,lntbl[i])
			end
			return "location = city\n"..console.readlntbl(ntbl)
		end]]
		return "location = city", 3
	elseif(lntbl[2] and lntbl[2]:lower() == locs[2]:lower())then
		D.location = 'desert'
		--[[if lntbl[3] and lntbl[3]:lower() == 'newline' then
			local ntbl = {}
			for i = 4,#lntbl do
				table.insert(ntbl,lntbl[i])
			end
			return "location = desert\n"..console.readlntbl(ntbl)
		end]]
		return "location = desert", 3
	elseif(lntbl[2] and lntbl[2]:lower() == locs[3]:lower())then
		D.location = 'swamp'
		--[[if lntbl[3] and lntbl[3]:lower() == 'newline' then
			local ntbl = {}
			for i = 4,#lntbl do
				table.insert(ntbl,lntbl[i])
			end
			return "location = swamp\n"..console.readlntbl(ntbl)
		end]]
		return "location = swamp", 3
	elseif(lntbl[2] and lntbl[2]:lower() == locs[4]:lower())then
		D.location = 'icespikes'
		--[[if lntbl[3] and lntbl[3]:lower() == 'newline' then
			local ntbl = {}
			for i = 4,#lntbl do
				table.insert(ntbl,lntbl[i])
			end
			return "location = icespikes\n"..console.readlntbl(ntbl)
		end]]
		return "location = icespikes", 3
	elseif(lntbl[2] and lntbl[2]:lower() == locs[5]:lower())then
		D.location = 'wasteland'
		--[[if lntbl[3] and lntbl[3]:lower() == 'newline' then
			local ntbl = {}
			for i = 4,#lntbl do
				table.insert(ntbl,lntbl[i])
			end
			return "location = waste\n"..console.readlntbl(ntbl)
		end]]
		return "location = wasteland", 3
	else
		return "/location (loc id#); 1; 2; 3; 4; 5;"
	end
end
function console.cmds.volume(lntbl)
	if(lntbl[2] and type(tonumber(lntbl[2]:lower())) == 'number')then
		volume = tonumber(lntbl[2]:lower())
		love.audio.setVolume(volume)
		--[[if lntbl[3] and lntbl[3]:lower() == 'newline' then
			local ntbl = {}
			for i = 4,#lntbl do
				table.insert(ntbl,lntbl[i])
			end
			return "volume = "..lntbl[2]:lower().."\n"..console.readlntbl(ntbl)
		end]]
		return "volume = "..lntbl[2]:lower(), 3
	else
		return "/volume (amount);"
	end
end
function console.cmds.setvar(lntbl)
	-- VERY DANGEROUS
	-- CASE SENSITIVE
	-- You can and will break something
	-- stay frosty snowman
	if(lntbl[2] and lntbl[3])then
		if (type(tonumber(lntbl[3])) == 'number') then
			_G[lntbl[2]] = tonumber(lntbl[3])
		else
			_G[lntbl[2]] = lntbl[3]
		end
		--[[if lntbl[4] and lntbl[4]:lower() == 'newline' then
			local ntbl = {}
			for i = 5,#lntbl do
				table.insert(ntbl,lntbl[i])
			end
			return lntbl[2].." = "..lntbl[3].."\n"..console.readlntbl(ntbl)
		end]]
		return lntbl[2].." = "..lntbl[3], 4
	else
		return "/setvar [var] [value];"
	end
end
function console.cmds.getvar(lntbl)
	if(lntbl[2])then
		--[[if lntbl[3] and lntbl[3]:lower() == 'newline' then
			local ntbl = {}
			for i = 4,#lntbl do
				table.insert(ntbl,lntbl[i])
			end
			return lntbl[2].." = ".._G[lntbl[2] ].."\n"..console.readlntbl(ntbl)
		end]]
		local var = _G[lntbl[2]] or "nil"
		return lntbl[2].." = "..tostring(var), 3
	else
		return "/getvar [var];"
	end
end

function console.cmds.npc(lntbl)
	action = {'hurt','heal','kill','revive'}
	if lntbl[2] and lntbl[2]:lower() == action[1]:lower() then
		if lntbl[3] and lntbl[4] and type(tonumber(lntbl[3]:lower()) + tonumber(lntbl[4]:lower())) == 'number' then
			if D[D.location][tonumber(lntbl[3]:lower())] then
				D[D.location][tonumber(lntbl[3]:lower())].Hp = D[D.location][tonumber(lntbl[3]:lower())].Hp - tonumber(lntbl[4]:lower())
				--[[if lntbl[5] and lntbl[5]:lower() == 'newline' then
					local ntbl = {}
					for i = 6,#lntbl do
						table.insert(ntbl,lntbl[i]:lower())
					end
					return "hurt npc D['"..D.location.."']["..tonumber(lntbl[3]:lower()).."] by "..tonumber(lntbl[4]:lower()).."\n"..console.readlntbl(ntbl)
				end]]
				return "hurt npc D['"..D.location.."']["..tonumber(lntbl[3]:lower()).."] by "..tonumber(lntbl[4]:lower()), 5
			else
				return "D['"..D.location.."']["..tonumber(lntbl[3]:lower()).."] does not exist", 5
			end
		else
			return "/npc [action] (id#) (amount)\n(id#) (amount): number"
		end
	elseif lntbl[2] and lntbl[2]:lower() == action[2]:lower() then
		if lntbl[3] and lntbl[4] and type(tonumber(lntbl[3]:lower()) + tonumber(lntbl[4]:lower())) == 'number' then
			if D[D.location][tonumber(lntbl[3]:lower())] then
				D[D.location][tonumber(lntbl[3]:lower())].Hp = D[D.location][tonumber(lntbl[3]:lower())].Hp + tonumber(lntbl[4]:lower())
				--[[if lntbl[5] and lntbl[5]:lower() == 'newline' then
					local ntbl = {}
					for i = 6,#lntbl do
						table.insert(ntbl,lntbl[i]:lower())
					end
					return "healed npc D['"..D.location.."']["..tonumber(lntbl[3]:lower()).."] by "..tonumber(lntbl[4]:lower()).."\n"..console.readlntbl(ntbl)
				end]]
				return "healed npc D['"..D.location.."']["..tonumber(lntbl[3]:lower()).."] by "..tonumber(lntbl[4]:lower()), 5
			else
				return "D['"..D.location.."']["..tonumber(lntbl[3]:lower()).."] does not exist", 5
			end
		else
			return "/npc [action] (id#) (amount)\n(id#) (amount): number"
		end
	elseif lntbl[2] and lntbl[2]:lower() == action[3]:lower() then
		if D[D.location][tonumber(lntbl[3]:lower())] then
			D[D.location][tonumber(lntbl[3]:lower())].Hp = -1
			--[[if lntbl[4] and lntbl[4]:lower() == 'newline' then
				local ntbl = {}
				for i = 5,#lntbl do
					table.insert(ntbl,lntbl[i]:lower())
				end
				return "killed npc D['"..D.location.."']["..tonumber(lntbl[3]:lower()).."]".."\n"..console.readlntbl(ntbl)
			end]]
			return "killed npc D['"..D.location.."']["..tonumber(lntbl[3]:lower()).."]", 4
		else
			return "D['"..D.location.."']["..tonumber(lntbl[3]:lower()).."] does not exist", 4
		end
	elseif lntbl[2] and lntbl[2]:lower() == action[4]:lower() then
		if D[D.location][tonumber(lntbl[3]:lower())] then
			if not (D[D.location][tonumber(lntbl[3]:lower())].Hp > 0) then
				D[D.location][tonumber(lntbl[3]:lower())].Hp = 1
			end
			--[[if lntbl[4] and lntbl[4]:lower() == 'newline' then
				local ntbl = {}
				for i = 5,#lntbl do
					table.insert(ntbl,lntbl[i]:lower())
				end
				return "revived npc D['"..D.location.."']["..tonumber(lntbl[3]:lower()).."]".."\n"..console.readlntbl(ntbl)
			end]]
			return "revived npc D['"..D.location.."']["..tonumber(lntbl[3]:lower()).."]", 4
		else
			return "D['"..D.location.."']["..tonumber(lntbl[3]:lower()).."] does not exist", 4
		end
	else
		return "/npc [action] (id#) (amount)\n[action]: hurt; heal; kill; revive"
	end
end
function console.cmds.kill(lntbl)
	if(lntbl[2] and type(tonumber(lntbl[2]:lower())) == 'number')then
		return console.fparse('/npc kill '..tonumber(lntbl[2]:lower())), 3
	else
		return "/kill (id#)\n(id#): number"
	end
end
function console.cmds.revive(lntbl)
	if(lntbl[2] and type(tonumber(lntbl[2]:lower())) == 'number')then
		return console.fparse('/npc revive '..tonumber(lntbl[2]:lower())), 3
	else
		return "/revive (id#)\n(id#): number"
	end
end
function console.cmds.hurt(lntbl)
	if(lntbl[2] and lntbl[3] and type(tonumber(lntbl[2]:lower()) + tonumber(lntbl[3]:lower())) == 'number')then
		return console.fparse('/npc hurt '..tonumber(lntbl[2]:lower())..' '..tonumber(lntbl[3]:lower())), 4
	else
		return "/hurt (id#) (amount)\n(id#) (amount): number"
	end
end
function console.cmds.heal(lntbl)
	if(lntbl[2] and lntbl[3] and type(tonumber(lntbl[2]:lower()) + tonumber(lntbl[3]:lower())) == 'number')then
		return console.fparse('/npc heal '..tonumber(lntbl[2]:lower())..' '..tonumber(lntbl[3]:lower())), 4
	else
		return "/heal (id#) (amount)\n(id#) (amount): number"
	end
end
function console.cmds.killall(lntbl)
	for i = 1,#D[D.location] do
		console.fparse('/npc kill '..i)
	end
	return "killed all npcs in "..D.location, 2
end
function console.cmds.reviveall(lntbl)
	for i = 1,#D[D.location] do
		console.fparse('/npc revive '..i)
	end
	return "revived all npcs in "..D.location, 2
end

function console.write(string)
	if(console.offset > console.maxheight)then
		console.offset = console.maxheight
		console.up = console.up + 1
	end
	table.insert(console.output,string)
	console.down = #console.output
	console.offset = console.offset + 1
end
function console.clear()
	console.output = {}
	console.up = 0
	console.down = #console.output
	console.offset = 0
end
function console.writehistory(line)
	if(#console.history < 2)then
		table.insert(console.history,line)
	end
	for i = #console.history,2,-1 do
		console.history[i + 1] = console.history[i]
	end
	console.history[2] = line
end
function console.parseln(line)
	local LineTble = {}
	local index = 1
	local word = ""
	local lastcharnotspace = false
	local litteral = false
	for i = 1,#line do
		if(string.sub(line,i,i) == " " and not litteral) then
			word = ""
			if(lastcharnotspace == true)then
				index = index + 1
				lastcharnotspace = false
			end
		elseif(string.sub(line,i,i) == ";" and not litteral) then
			LineTble[index] = word
			word = ""
			index = index + 2
			LineTble[index - 1] = "newline"
			lastcharnotspace = false
		elseif(string.sub(line,i,i) == "\"")then
			litteral = not litteral
		else
			lastcharnotspace = true
			word = word..string.sub(line,i,i)
			LineTble[index] = word
		end
	end
	
	return LineTble
end
function console._readlntbl(lntbl)
	local action = {}
	local stats = {}
	local inclass = {}
	if lntbl[1] and lntbl[1]:lower() == '/stat' then
		return console.cmds.stat(lntbl)
	elseif lntbl[1] and lntbl[1]:lower() == '/give' then
		return console.cmds.give(lntbl)
	elseif lntbl[1] and lntbl[1]:lower() == '/item' then
		return console.cmds.item(lntbl)
	elseif lntbl[1] and lntbl[1]:lower() == '/help' then
		return console.cmds.help(lntbl)
	elseif lntbl[1] and lntbl[1]:lower() == '/reload' then
		console.cmds.reload()
	elseif lntbl[1] and lntbl[1]:lower() == '/echo' then
		return console.cmds.echo(lntbl)
	elseif lntbl[1] and lntbl[1]:lower() == '/hp' then
		return console.cmds.hp(lntbl)
	elseif lntbl[1] and lntbl[1]:lower() == '/rep' then
		return console.cmds.rep(lntbl)
	elseif lntbl[1] and lntbl[1]:lower() == '/atk' then
		return console.cmds.atk(lntbl)
	elseif lntbl[1] and lntbl[1]:lower() == '/def' then
		return console.cmds.def(lntbl)
	elseif lntbl[1] and lntbl[1]:lower() == '/maxhp' then
		return console.cmds.maxhp(lntbl)
	elseif lntbl[1] and lntbl[1]:lower() == '/cash' then
		return console.cmds.cash(lntbl)
	elseif lntbl[1] and lntbl[1]:lower() == '/location' then
		return console.cmds.location(lntbl)
	elseif lntbl[1] and lntbl[1]:lower() == '/gamestate' then
		return console.cmds.gamestate(lntbl)
	elseif lntbl[1] and lntbl[1]:lower() == '/clear' then
		console.clear()
		return nil
	elseif lntbl[1] and lntbl[1]:lower() == '/npc' then
		return console.cmds.npc(lntbl)
	elseif lntbl[1] and lntbl[1]:lower() == '/hurt' then
		return console.cmds.hurt(lntbl)
	elseif lntbl[1] and lntbl[1]:lower() == '/heal' then
		return console.cmds.heal(lntbl)
	elseif lntbl[1] and lntbl[1]:lower() == '/kill' then
		return console.cmds.kill(lntbl)
	elseif lntbl[1] and lntbl[1]:lower() == '/revive' then
		return console.cmds.revive(lntbl)
	elseif lntbl[1] and lntbl[1]:lower() == '/killall' then
		return console.cmds.killall(lntbl)
	elseif lntbl[1] and lntbl[1]:lower() == '/reviveall' then
		return console.cmds.reviveall(lntbl)
	else
		if(lntbl[1])then
			return "Error at: "..lntbl[1]:lower():sub(-24,-1).."\n"..console.fparse("/help")
		else
			return "Error\n"..console.fparse("/help")
		end
	end
end
function console.readlntbl(lntbl)
	if(lntbl[1])then
		for i,v in pairs(console.cmds) do
			if(lntbl[1]:lower() == "/"..i or lntbl[1]:lower() == i)then
				local r,n = console.cmds[lntbl[1]:lower():sub(2,#lntbl[1])](lntbl)
				if n and lntbl[n] and lntbl[n]:lower() == 'newline' then
					local ntbl = {}
					for i = n+1,#lntbl do
						table.insert(ntbl,lntbl[i]:lower())
					end
					console.write(console.readlntbl(ntbl))
					return r;
				end
				return r;
			end
		end
		if(lntbl[1]:lower() == "/clear")then
			console.clear()
			return nil
		end
		
		return "Error at: "..lntbl[1]:lower():sub(-24,-1).."\n"..console.fparse("/help")
	else
		return "Error\n"..console.fparse("/help")
	end
end
function console.fparse(line)
	return console.readlntbl(console.parseln(line)) -- parse line then read
end
function console.run(line) -- run command
	console.writehistory(line) -- save command
	console.write(console.fparse(line)) -- fparseline then write
end

function console.getoutput()
	return console.output
end