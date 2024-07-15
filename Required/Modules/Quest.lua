-- Quest module
Quest = {} -- sets the Quest table
Quest.quests = {} -- sets the table where quests are stored

function Quest.new(n) -- creates a new quest at Quest.quests[n]
	Quest.quests[n] = 1
end

function Quest.SetF(n)
	-- sets Quest.quests[n] false marking the quest has been started
	Quest.quests[n] = false
end

function Quest.SetFL(n)
	-- sets Quest.quests[n] -1 marking the quest has been failed
	Quest.quests[n] = -1
end

function Quest.SetT(n)
	-- sets Quest.quests[n] true marking the quest has been finished
	-- but no reward has been given
	Quest.quests[n] = true
end

function Quest.SetNil(n)
	-- sets Quest.quests[n] to 0 meaning the test has been finished 
	-- and the reward has been claimed
	Quest.quests[n] = 0
end

function Quest.set(quest,n)
	-- Saving function
	Quest.quests[quest] = n
end

function Quest.Return(n) -- returns Quest.quests[n]
	return Quest.quests[n]
end