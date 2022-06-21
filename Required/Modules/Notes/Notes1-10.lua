--1 to 10
function NoteUses.BeginnersNote()
	love.graphics.draw(image:getImage(D.location),0,0)
	love.graphics.draw(image:getImage('note'),0,0)
	love.graphics.print({{0,0,0},"Hello Stranger"},60,80)
	love.graphics.print({{0,0,0},"You seem pretty down on your"},60,120)
	love.graphics.print({{0,0,0},"luck, so i have gifted you"},60,140)
	love.graphics.print({{0,0,0},"a small sum of $100"},60,160)
	love.graphics.print({{0,0,0},"Dont Spend it all in one place"},60,180)
	love.graphics.print({{0,0,0},"Good luck on your journey"},60,220)
	------------------------------12345678901234567890123456789012
end
NoteUse[1] = NoteUses.BeginnersNote

function NoteUses.WelcomeToTheCity()
	love.graphics.draw(image:getImage(D.location),0,0)
	love.graphics.draw(image:getImage('note'),0,0)
	love.graphics.print({{0,0,0},"Hello Traveler,"},60,80)
	love.graphics.print({{0,0,0},"Please Enjoy your stay in"},60,120)
	love.graphics.print({{0,0,0},"Frosted spikes."},60,140)
	love.graphics.print({{0,0,0},"If you get a chance check out"},60,160)
	love.graphics.print({{0,0,0},"The citys history museumn"},60,180)
	love.graphics.print({{0,0,0},"Section at the Capital Hall "},60,200)
	------------------------------12345678901234567890123456789012
end
NoteUse[2] = NoteUses.WelcomeToTheCity

function NoteUses.WelcomeToTheLibary()
	love.graphics.draw(image:getImage(D.location),0,0)
	love.graphics.draw(image:getImage('note'),0,0)
	love.graphics.print({{0,0,0},"Attention Patrons,"},60,80)
	love.graphics.print({{0,0,0},"Due to the recent increase in"},60,120)
	love.graphics.print({{0,0,0},"Stolen books. Only Patrons with"},60,140)
	love.graphics.print({{0,0,0},"A libary card can check out"},60,160)
	love.graphics.print({{0,0,0},"books and to prevent abuse if"},60,180)
	love.graphics.print({{0,0,0},"you have a libary card you can"},60,200)
	love.graphics.print({{0,0,0},"Only check out 5 books per two"},60,220)
	love.graphics.print({{0,0,0},"Weeks."},60,240)
	love.graphics.print({{0,0,0},"We are terribly sorry for the"},60,260)
	love.graphics.print({{0,0,0},"Minor inconvenience but please"},60,280)
	love.graphics.print({{0,0,0},"Do not refrain from Applying"},60,300)
	love.graphics.print({{0,0,0},"For a city libary card."},60,320)
	love.graphics.print({{0,0,0},"Once again we are terribly"},60,340)
	love.graphics.print({{0,0,0},"sorry for the inconvenience"},60,360)
	------------------------------12345678901234567890123456789012
end
NoteUse[3] = NoteUses.WelcomeToTheLibary

function NoteUses.WelcomeToCapitalHall()
	love.graphics.draw(image:getImage(D.location),0,0)
	love.graphics.draw(image:getImage('note'),0,0)
	love.graphics.print({{0,0,0},"Welcome Traveler,"},60,80)
	love.graphics.print({{0,0,0},"Our Capital Hall has plenty to"},60,100)
	love.graphics.print({{0,0,0},"Offer vistors of Frosted Spikes"},60,120)
	love.graphics.print({{0,0,0},"Please be sure to speak with"},60,140)
	love.graphics.print({{0,0,0},"a Janet Drew at our history"},60,160)
	love.graphics.print({{0,0,0},"museumn to be fully versed in"},60,180)
	love.graphics.print({{0,0,0},"our culture, history,"},60,200)
	love.graphics.print({{0,0,0},"and traditions."},60,220)
	love.graphics.print({{0,0,0},"Sincerly,"},60,380)
	love.graphics.print({{0,0,0},"President Harly S. Jackson"},60,400)
	------------------------------12345678901234567890123456789012
end
NoteUse[4] = NoteUses.WelcomeToCapitalHall

function NoteUses.CapitalHall_Hist1()
	love.graphics.draw(image:getImage(D.location),0,0)
	love.graphics.draw(image:getImage('note'),0,0)
	love.graphics.print({{0,0,0},"Our History #1"},60,80)
	love.graphics.print({{0,0,0},"Our Small little country has"},60,100)
	love.graphics.print({{0,0,0},"been through a lot over the past"},60,120)
	love.graphics.print({{0,0,0},"200 years. In 1805 Two explorers"},60,140)
	love.graphics.print({{0,0,0},"by the name of William Jackson"},60,160)
	love.graphics.print({{0,0,0},"and Douglas Scranton landed on a"},60,180)
	love.graphics.print({{0,0,0},"Frozen Wasteland of an island"},60,200)
	love.graphics.print({{0,0,0},"After Setting up a colony many"},60,220)
	love.graphics.print({{0,0,0},"people began to move to the"},60,240)
	love.graphics.print({{0,0,0},"island. however in 1855 a tragic "},60,260)
	love.graphics.print({{0,0,0},"volcanic explosion killed "},60,280)
	love.graphics.print({{0,0,0},"several people including Douglas"},60,300)
	love.graphics.print({{0,0,0},"William was in england at the"},60,320)
	love.graphics.print({{0,0,0},"time. After the explosion the"},60,340)
	love.graphics.print({{0,0,0},"surviving part of the island"},60,360)
	love.graphics.print({{0,0,0},"melted away into a vast desert"},60,380)
	love.graphics.print({{0,0,0},"spaning half the island. page-2>"},60,400)
	------------------------------12345678901234567890123456789012
end
NoteUse[5] = NoteUses.CapitalHall_Hist1

function NoteUses.CapitalHall_Hist2()
	love.graphics.draw(image:getImage(D.location),0,0)
	love.graphics.draw(image:getImage('note'),0,0)
	love.graphics.print({{0,0,0},"History of Frosted Spikes #2"},60,80)
	love.graphics.print({{0,0,0},"Ever Since the explosion killed"},60,100)
	love.graphics.print({{0,0,0},"Douglas, William had returned"},60,120)
	love.graphics.print({{0,0,0},"back to the island to rebuild"},60,140)
	love.graphics.print({{0,0,0},"his friend's house. due to"},60,160)
	love.graphics.print({{0,0,0},"William's status as the founder"},60,180)
	love.graphics.print({{0,0,0},"of the settlement he was"},60,200)
	love.graphics.print({{0,0,0},"pursuaded to become the new"},60,220)
	love.graphics.print({{0,0,0},"settlement leader. under his"},60,240)
	love.graphics.print({{0,0,0},"leadership he convinced the"},60,260)
	love.graphics.print({{0,0,0},"settlement to declear"},60,280)
	love.graphics.print({{0,0,0},"independence. Due the news about island's"},60,300)
	love.graphics.print({{0,0,0},"island's tragic events not"},60,320)
	love.graphics.print({{0,0,0},"traveling out to europe"},60,340)
	love.graphics.print({{0,0,0},"they were under the assumtion"},60,360)
	love.graphics.print({{0,0,0},"That Frosted Spikes was still"},60,380)
	love.graphics.print({{0,0,0},"an island of ice...      page-3>"},60,400)
	------------------------------12345678901234567890123456789012
end
NoteUse[6] = NoteUses.CapitalHall_Hist2

function NoteUses.CapitalHall_Hist3()
	love.graphics.draw(image:getImage(D.location),0,0)
	love.graphics.draw(image:getImage('note'),0,0)
	love.graphics.print({{0,0,0},"History of Frosted Spikes #3"},60,80)
	love.graphics.print({{0,0,0},"...and willingly let the small"},60,100)
	love.graphics.print({{0,0,0},"island go. after sometime"},60,120)
	love.graphics.print({{0,0,0},"Frosted spikes grew from a small"},60,140)
	love.graphics.print({{0,0,0},"settlement to an entire island"},60,160)
	love.graphics.print({{0,0,0},"country. over the years the"},60,180)
	love.graphics.print({{0,0,0},"Jackson liniage has led our"},60,200)
	love.graphics.print({{0,0,0},"country over many years to this"},60,220)
	love.graphics.print({{0,0,0},"day, whether for good or for"},60,240)
	love.graphics.print({{0,0,0},"worse. "},60,260)
	love.graphics.print({{0,0,0},"Stop by Janet's office for"},60,380)
	love.graphics.print({{0,0,0},"the quick facts articles"},60,400)
	------------------------------12345678901234567890123456789012
end
NoteUse[7] = NoteUses.CapitalHall_Hist3

function NoteUses.CapitalHall_FastFacts1()
	love.graphics.draw(image:getImage(D.location),0,0)
	love.graphics.draw(image:getImage('note'),0,0)
	love.graphics.print({{0,0,0},"Frosted Spikes Fast Facts #1"},60,80)
	love.graphics.print({{0,0,0},"Did you know that Frosted Spikes"},60,120)
	love.graphics.print({{0,0,0},"has 3 seperate sectors each with"},60,140)
	love.graphics.print({{0,0,0},"their own set of government"},60,160)
	love.graphics.print({{0,0,0},"the Ice and Desert sectors are"},60,180)
	love.graphics.print({{0,0,0},"more relaxed on its laws than"},60,200)
	love.graphics.print({{0,0,0},"the Spikes Sector."},60,220)
	love.graphics.print({{0,0,0},"Quiz:"},60,260)
	love.graphics.print({{0,0,0},"how many Sectors are there?"},60,280)
	love.graphics.print({{0,0,0},"What are their names?"},60,320)
	love.graphics.print({{0,0,0},"How are they different?"},60,360)
	------------------------------12345678901234567890123456789012
end
NoteUse[8] = NoteUses.CapitalHall_FastFacts1

function NoteUses.CapitalHall_FastFacts2()
	love.graphics.draw(image:getImage(D.location),0,0)
	love.graphics.draw(image:getImage('note'),0,0)
	love.graphics.print({{0,0,0},"Frosted Spikes Fast Facts #2"},60,80)
	love.graphics.print({{0,0,0},"William served two 5 year terms"},60,120)
	love.graphics.print({{0,0,0},"as President. one of his first"},60,140)
	love.graphics.print({{0,0,0},"acts as President was to create"},60,160)
	love.graphics.print({{0,0,0},"a high civil court that allowed"},60,180)
	love.graphics.print({{0,0,0},"every citizen to have a saw in"},60,200)
	love.graphics.print({{0,0,0},"how laws are created"},60,220)
	love.graphics.print({{0,0,0},"Quiz:"},60,260)
	love.graphics.print({{0,0,0},"Who was the first President?"},60,280)
	love.graphics.print({{0,0,0},"What was his first act? "},60,320)
	love.graphics.print({{0,0,0},"How long did he serve?"},60,360)
	------------------------------12345678901234567890123456789012
end
NoteUse[9] = NoteUses.CapitalHall_FastFacts2


function NoteUses.CapitalHall_FastFacts3()
	love.graphics.draw(image:getImage(D.location),0,0)
	love.graphics.draw(image:getImage('note'),0,0)
	love.graphics.print({{0,0,0},"Frosted Spikes Fast Facts #3"},60,80)
	love.graphics.print({{0,0,0},"every time a law is proposed the"},60,120)
	love.graphics.print({{0,0,0},"civil court will call on ten"},60,140)
	love.graphics.print({{0,0,0},"random citizens to vote on"},60,160)
	love.graphics.print({{0,0,0},"the behalf of citizens."},60,180)
	love.graphics.print({{0,0,0},"Approval of 6/10 citizens is"},60,200)
	love.graphics.print({{0,0,0},"required to pass a law."},60,220)
	love.graphics.print({{0,0,0},"Quiz:"},60,260)
	love.graphics.print({{0,0,0},"How many citizens are called?"},60,280)
	love.graphics.print({{0,0,0},"What is the Approval ratio?"},60,320)
	------------------------------12345678901234567890123456789012
end
NoteUse[10] = NoteUses.CapitalHall_FastFacts3
