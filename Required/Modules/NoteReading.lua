-- Note Use Function module
NoteUse={} -- Note use table /* Selection Table */
NoteUses = {} -- Note function  /* Function Table */
RanNoteUse = {} -- Random Note Functions /* Function Table */

	--32 chars long
	--16 chars tall
	--60,80
	--60,400
	--love.graphics.print({{0,0,0},""},60,80)

--Note Functions
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

function NoteUses.CapitalHall_FastFacts4()
	love.graphics.draw(image:getImage(D.location),0,0)
	love.graphics.draw(image:getImage('note'),0,0)
	love.graphics.print({{0,0,0},"Frosted Spikes Fast Facts #4"},60,80)
	love.graphics.print({{0,0,0},"we have had a total of 35"},60,120)
	love.graphics.print({{0,0,0},"Presidents in our entire History"},60,140)
	love.graphics.print({{0,0,0},"Only 5 Presidents have served"},60,160)
	love.graphics.print({{0,0,0},"twice. See the Presidents Guide"},60,180)
	love.graphics.print({{0,0,0},"article for more infomation."},60,200)
	love.graphics.print({{0,0,0},"Majority of the most famous"},60,220)
	love.graphics.print({{0,0,0},"Presidents come from The"},60,240)
	love.graphics.print({{0,0,0},"Jackson liniage."},60,260)
	love.graphics.print({{0,0,0},"Quiz:"},60,300)
	love.graphics.print({{0,0,0},"How many Presidents served twice"},60,320)
	love.graphics.print({{0,0,0},"Most famous liniage?"},60,360)
	------------------------------12345678901234567890123456789012
end
NoteUse[11] = NoteUses.CapitalHall_FastFacts4

function NoteUses.CapitalHall_PresidentGuide1()
	love.graphics.draw(image:getImage(D.location),0,0)
	love.graphics.draw(image:getImage('note'),0,0)
	love.graphics.print({{0,0,0},"Frosted Spikes Presidents #1"},60,80)
	love.graphics.print({{0,0,0},"1.William Jackson 1805-1815"},60,120)--1
	love.graphics.print({{0,0,0},"2.Henry Smith 1815-1820"},60,140)
	love.graphics.print({{0,0,0},"3.Douglas Jackson .Jr 1820-1825"},60,160)
	love.graphics.print({{0,0,0},"4.Winston Chester 1825-1830"},60,180)
	love.graphics.print({{0,0,0},"5.Carington Fisher 1830-1835"},60,200)
	love.graphics.print({{0,0,0},"6.Penelope Woods 1835-1840"},60,220)
	love.graphics.print({{0,0,0},"7.Wendel Vance 1840-1845"},60,240)
	love.graphics.print({{0,0,0},"8.Micheal Arlington 1845-1850"},60,260)
	love.graphics.print({{0,0,0},"9.Benjamin Chester 1850-1855"},60,280)
	love.graphics.print({{0,0,0},"10.Gerald Jackson 1855-1865"},60,300)--2
	love.graphics.print({{0,0,0},"11.Rosannah Winston 1865-1870"},60,320)
	love.graphics.print({{0,0,0},"12.Luke Dufour 1870-1875"},60,340)
	love.graphics.print({{0,0,0},"13.Dennis Emerson 1875-1880"},60,360)
	love.graphics.print({{0,0,0},"14.Melvin Ayton 1880-1885"},60,380)
	love.graphics.print({{0,0,0},"15.Helen Jeffers 1885-1890"},60,400)
	------------------------------12345678901234567890123456789012
end
NoteUse[12] = NoteUses.CapitalHall_PresidentGuide1

function NoteUses.CapitalHall_PresidentGuide2()
	love.graphics.draw(image:getImage(D.location),0,0)
	love.graphics.draw(image:getImage('note'),0,0)
	love.graphics.print({{0,0,0},"Frosted Spikes Presidents #2"},60,80)
	love.graphics.print({{0,0,0},"16.Roger Sloan 1890-1900"},60,120)--3
	love.graphics.print({{0,0,0},"17.Hadyn Fisher 1900-1905"},60,140)
	love.graphics.print({{0,0,0},"18.Emily Tracey 1905-1910"},60,160)
	love.graphics.print({{0,0,0},"19.Cordell Green 1910-1915"},60,180)
	love.graphics.print({{0,0,0},"20.Valary Hopson 1915-1918"},60,200)
	love.graphics.print({{0,0,0},"21.Jason Katson 1918-1925"},60,220)
	love.graphics.print({{0,0,0},"22.Annick Smith 1925-1930"},60,240)
	love.graphics.print({{0,0,0},"23.Elissa Gabrielson 1930-1935"},60,260)
	love.graphics.print({{0,0,0},"24.Josslyn Lowe 1935-1940"},60,280)
	love.graphics.print({{0,0,0},"25.Jamie Field 1940-1945"},60,300)
	love.graphics.print({{0,0,0},"26.Rue Jackson 1945-1950"},60,320)
	love.graphics.print({{0,0,0},"27.Lily Russel 1950-1955"},60,340)
	love.graphics.print({{0,0,0},"28.Eulia Woods 1955-1960"},60,360)
	love.graphics.print({{0,0,0},"29.Helena Grey 1960-1970"},60,380)--4
	love.graphics.print({{0,0,0},"30.Marybeth Jackson 1970-1975"},60,400)
	------------------------------12345678901234567890123456789012
end
NoteUse[13] = NoteUses.CapitalHall_PresidentGuide2

function NoteUses.CapitalHall_PresidentGuide3()
	love.graphics.draw(image:getImage(D.location),0,0)
	love.graphics.draw(image:getImage('note'),0,0)
	love.graphics.print({{0,0,0},"Frosted Spikes Presidents #3"},60,80)
	love.graphics.print({{0,0,0},"31.Blaire Arlington 1980-1985"},60,120)
	love.graphics.print({{0,0,0},"32.Jaxton Hewitt 1985-1990"},60,140)
	love.graphics.print({{0,0,0},"33.Davey Paterson 1990-1995"},60,160)
	love.graphics.print({{0,0,0},"34.Shae Howard 1995-2000"},60,180)
	love.graphics.print({{0,0,0},"35.Harly Jackson 2000-"},60,200)--5
	------------------------------12345678901234567890123456789012
end
NoteUse[14] = NoteUses.CapitalHall_PresidentGuide3

function NoteUses.CapitalHall_PresidentGuide3_Reprinted()
	love.graphics.draw(image:getImage(D.location),0,0)
	love.graphics.draw(image:getImage('note'),0,0)
	love.graphics.print({{0,0,0},"Frosted Spikes Presidents #3"},60,80)
	love.graphics.print({{0,0,0},"31.Blaire Arlington 1980-1985"},60,120)
	love.graphics.print({{0,0,0},"32.Jaxton Hewitt 1985-1990"},60,140)
	love.graphics.print({{0,0,0},"33.Davey Paterson 1990-1995"},60,160)
	love.graphics.print({{0,0,0},"34.Shae Howard 1995-2000"},60,180)
	love.graphics.print({{0,0,0},"35.Harly Jackson 2000-2003"},60,200)--5
	love.graphics.print({{0,0,0},"36."..name.." 2003-"},60,220)
	------------------------------12345678901234567890123456789012
end
--NoteUse[15] = NoteUses.CapitalHall_PresidentGuide3_Reprinted
--/* use when President Harly Dies */

function NoteUses.CapitalHall_PresidentFacts1()
	love.graphics.draw(image:getImage(D.location),0,0)
	love.graphics.draw(image:getImage('note'),0,0)
	love.graphics.print({{0,0,0},"Presidents Fast Facts #3"},60,80)
	love.graphics.print({{0,0,0},"Only 5 Presidents have served 2"},60,120)
	love.graphics.print({{0,0,0},"terms."},60,140)
	love.graphics.print({{0,0,0},"Only 3 liniages have had"},60,160)
	love.graphics.print({{0,0,0},"multiple members in office."},60,180)
	love.graphics.print({{0,0,0},"Valary Hopson was the only"},60,200)
	love.graphics.print({{0,0,0},"President to be assassinated"},60,220)
	love.graphics.print({{0,0,0},"during her term."},60,240)
	------------------------------12345678901234567890123456789012
end
NoteUse[15] = NoteUses.CapitalHall_PresidentFacts1

function NoteUses.CapitalHall_FastFacts5()
	love.graphics.draw(image:getImage(D.location),0,0)
	love.graphics.draw(image:getImage('note'),0,0)
	love.graphics.print({{0,0,0},"Frosted Spikes Fast Facts #5"},60,80)
	love.graphics.print({{0,0,0},"in late 1855 Gerald Jackson"},60,120)
	love.graphics.print({{0,0,0},"Suggested to have"},60,140)
	love.graphics.print({{0,0,0},"Reprisentatives from each sector"},60,160)
	love.graphics.print({{0,0,0},"come together and form a new"},60,180)
	love.graphics.print({{0,0,0},"branch of government called the"},60,200)
	love.graphics.print({{0,0,0},"Reprisentative court. out of the"},60,220)
	love.graphics.print({{0,0,0},"three sectors 10 Reprisentatives"},60,260)
	love.graphics.print({{0,0,0},"from each sector meet to propose"},60,280)
	love.graphics.print({{0,0,0},"laws to be evaluated by the "},60,320)
	love.graphics.print({{0,0,0},"president and like wise"},60,340)
	love.graphics.print({{0,0,0},"vice versa."},60,360)
	------------------------------12345678901234567890123456789012
end
NoteUse[16] = NoteUses.CapitalHall_FastFacts5

function NoteUses.CapitalHall_ValaryHist1()
	love.graphics.draw(image:getImage(D.location),0,0)
	love.graphics.draw(image:getImage('note'),0,0)
	love.graphics.print({{0,0,0},"The History Valary Hopson #1"},60,80)
	love.graphics.print({{0,0,0},"Valary Hopson might just be our"},60,120)
	love.graphics.print({{0,0,0},"most intresting president. born"},60,140)
	love.graphics.print({{0,0,0},"in the ice sector in 1886 she"},60,160)
	love.graphics.print({{0,0,0},"rose through the ranks of her"},60,180)
	love.graphics.print({{0,0,0},"local government. after faling"},60,200)
	love.graphics.print({{0,0,0},"to win the presidential election"},60,220)
	love.graphics.print({{0,0,0},"in the 1905 election, many"},60,240)
	love.graphics.print({{0,0,0},"historians, including myself,"},60,260)
	love.graphics.print({{0,0,0},"belive this is what caused her"},60,280)
	love.graphics.print({{0,0,0},"desent into chaos. several hints"},60,320)
	love.graphics.print({{0,0,0},"at her sliping away were slowly"},60,340)
	love.graphics.print({{0,0,0},"starting to show"},60,360)
	love.graphics.print({{0,0,0},"                         page-2>"},60,400)
	------------------------------12345678901234567890123456789012
end
NoteUse[17] = NoteUses.CapitalHall_ValaryHist1

function NoteUses.CapitalHall_ValaryHist2()
	love.graphics.draw(image:getImage(D.location),0,0)
	love.graphics.draw(image:getImage('note'),0,0)
	love.graphics.print({{0,0,0},"The History Valary Hopson #2"},60,80)
	love.graphics.print({{0,0,0},"Valary started voting against"},60,120)
	love.graphics.print({{0,0,0},"laws granting personal freedoms."},60,140)
	love.graphics.print({{0,0,0},"Suprisingly She still won the"},60,160)
	love.graphics.print({{0,0,0},"1915 elections. her first act as"},60,180)
	love.graphics.print({{0,0,0},"president was to give herself"},60,200)
	love.graphics.print({{0,0,0},"full control of the country."},60,220)
	love.graphics.print({{0,0,0},"The Civil and Reprisentative"},60,240)
	love.graphics.print({{0,0,0},"Court could not do anything"},60,260)
	love.graphics.print({{0,0,0},"about Valary."},60,280)
	love.graphics.print({{0,0,0},"by the next week she had"},60,320)
	love.graphics.print({{0,0,0},"declared herself the empress."},60,340)
	love.graphics.print({{0,0,0},"                         page-3>"},60,400)
	------------------------------12345678901234567890123456789012
end
NoteUse[18] = NoteUses.CapitalHall_ValaryHist2

function NoteUses.CapitalHall_ValaryHist3()
	love.graphics.draw(image:getImage(D.location),0,0)
	love.graphics.draw(image:getImage('note'),0,0)
	love.graphics.print({{0,0,0},"The History Valary Hopson #3"},60,80)
	love.graphics.print({{0,0,0},"She had Set in place several"},60,120)
	love.graphics.print({{0,0,0},"Strict bans to majority of items"},60,140)
	love.graphics.print({{0,0,0},"by the end of the year every"},60,160)
	love.graphics.print({{0,0,0},"major weapon was outlawed."},60,180)
	love.graphics.print({{0,0,0},"She was a cruel empress even"},60,200)
	love.graphics.print({{0,0,0},"going as far as executeting"},60,220)
	love.graphics.print({{0,0,0},"desenters in Town square herself"},60,260)
	love.graphics.print({{0,0,0},"By 1918 the whole country was"},60,280)
	love.graphics.print({{0,0,0},"upset about her dictatorship."},60,300)
	love.graphics.print({{0,0,0},"the economny was at its lowest"},60,320)
	love.graphics.print({{0,0,0},"and the people were getting fed"},60,340)
	love.graphics.print({{0,0,0},"up with the ordeal"},60,360)
	love.graphics.print({{0,0,0},"                         page-4>"},60,400)
	------------------------------12345678901234567890123456789012
end
NoteUse[19] = NoteUses.CapitalHall_ValaryHist3

function NoteUses.CapitalHall_ValaryHist4()
	love.graphics.draw(image:getImage(D.location),0,0)
	love.graphics.draw(image:getImage('note'),0,0)
	love.graphics.print({{0,0,0},"The History Valary Hopson #4"},60,80)
	love.graphics.print({{0,0,0},"Kimberly Ayton the daughter of"},60,120)
	love.graphics.print({{0,0,0},"Melvin Ayton. Stabed Valary"},60,140)
	love.graphics.print({{0,0,0},"in the back during a speech"},60,160)
	love.graphics.print({{0,0,0},"Valary was giving about safety"},60,180)
	love.graphics.print({{0,0,0},"and trust. due to Valary's high"},60,200)
	love.graphics.print({{0,0,0},"confidence about her laws only"},60,220)
	love.graphics.print({{0,0,0},"she was allowed to request"},60,260)
	love.graphics.print({{0,0,0},"death penalty and so Kimberly"},60,280)
	love.graphics.print({{0,0,0},"was not executed after the death"},60,300)
	love.graphics.print({{0,0,0},"of Valary. She remained in jail"},60,320)
	love.graphics.print({{0,0,0},"until Valary's Second in"},60,340)
	love.graphics.print({{0,0,0},"command basicaly reversed all"},60,360)
	love.graphics.print({{0,0,0},"her changes"},60,400)
	------------------------------12345678901234567890123456789012
end
NoteUse[20] = NoteUses.CapitalHall_ValaryHist4

function NoteUses.HarleysNote()
	love.graphics.draw(image:getImage(D.location),0,0)
	love.graphics.draw(image:getImage('note'),0,0)
	love.graphics.print({{0,0,0},"Dear Ashley,"},60,80)
	love.graphics.print({{0,0,0},"If you're reading this then i am"},60,120)
	love.graphics.print({{0,0,0},"dead."},60,140)
	love.graphics.print({{0,0,0},"Their gonna try their best"},60,160)
	love.graphics.print({{0,0,0},"to cover this whole thing up."},60,180)
	love.graphics.print({{0,0,0},"try to not spread the word we"},60,200)
	love.graphics.print({{0,0,0},"dont want widespread panic."},60,220)
	love.graphics.print({{0,0,0},"i might have not ment it while"},60,260)
	love.graphics.print({{0,0,0},"i was alive but i really do love"},60,280)
	love.graphics.print({{0,0,0},"you. i might have not been the"},60,300)
	love.graphics.print({{0,0,0},"best sister for most of my life"},60,320)
	love.graphics.print({{0,0,0},"but i hope the best for you"},60,340)
	love.graphics.print({{0,0,0},"moving forward."},60,360)
	love.graphics.print({{0,0,0},""},60,400)
	------------------------------12345678901234567890123456789012
end
NoteUse[21] = NoteUses.HarleysNote

--Random Note Functions
function NoteUses.Ran1()
	love.graphics.draw(image:getImage(D.location),0,0)
	love.graphics.draw(image:getImage('note'),0,0)
	love.graphics.print({{0,0,0},"Why Are you reading this"},60,80)
	love.graphics.print({{0,0,0},"Where did you get this"},60,100)
	love.graphics.print({{0,0,0},"Do you know Stealing is illegal"},60,120)
	love.graphics.print({{0,0,0},"Sleep with one eye open at"},60,380)
	love.graphics.print({{0,0,0},"Night, you are not safe >:("},60,400)
	------------------------------12345678901234567890123456789012
end
RanNoteUse[1] = NoteUses.Ran1

function NoteUses.Ran2()
	love.graphics.draw(image:getImage(D.location),0,0)
	love.graphics.draw(image:getImage('note'),0,0)
	love.graphics.print({{0,0,0},"Dear person Reading this"},60,80)
	love.graphics.print({{0,0,0},"Which do you find to be the"},60,120)
	love.graphics.print({{0,0,0},"better type?"},60,140)
	love.graphics.print({{0,0,0},"Slips O' Potatoes"},60,200)
	love.graphics.print({{0,0,0},"\tor"},60,220)
	love.graphics.print({{0,0,0},"Slips O' Coconuts"},60,240)
	love.graphics.print({{0,0,0},"Slips O' Potatoes is the better"},60,280)
	love.graphics.print({{0,0,0},"brand obviously but i just want"},60,300)
	love.graphics.print({{0,0,0},"to see the general publics"},60,320)
	love.graphics.print({{0,0,0},"opinion"},60,340)
	------------------------------12345678901234567890123456789012
end
RanNoteUse[2] = NoteUses.Ran2

function NoteUses.Ran3()
	love.graphics.draw(image:getImage(D.location),0,0)
	love.graphics.draw(image:getImage('note'),0,0)
	love.graphics.print({{0,0,0},"--------------------------------"},60,80)
	love.graphics.print({{0,0,0},"--------------------------------"},60,100)
	love.graphics.print({{0,0,0},"--------------------------------"},60,120)
	love.graphics.print({{0,0,0},"--------------------------------"},60,140)
	love.graphics.print({{0,0,0},"---------------##---------------"},60,160)
	love.graphics.print({{0,0,0},"--------------#**#--------------"},60,180)
	love.graphics.print({{0,0,0},"-------------#****#-------------"},60,200)
	love.graphics.print({{0,0,0},"-------------#****#-------------"},60,220)
	love.graphics.print({{0,0,0},"--------------#**#--------------"},60,240)
	love.graphics.print({{0,0,0},"------------#******#------------"},60,260)
	love.graphics.print({{0,0,0},"-----------#********#-----------"},60,280)
	love.graphics.print({{0,0,0},"-----------##########-----------"},60,300)
	love.graphics.print({{0,0,0},"--------------------------------"},60,320)
	love.graphics.print({{0,0,0},"--------------------------------"},60,340)
	love.graphics.print({{0,0,0},"--------------------------------"},60,360)
	love.graphics.print({{0,0,0},"--------------------------------"},60,380)
	love.graphics.print({{0,0,0},"--I am Mr.Pawn, bow to me fool--"},60,400)
	------------------------------12345678901234567890123456789012
end
RanNoteUse[3] = NoteUses.Ran3

function NoteUses.Ran4()
	love.graphics.draw(image:getImage(D.location),0,0)
	love.graphics.draw(image:getImage('note'),0,0)
	love.graphics.print({{0,0,0},"Peanut Butter (weapon)"},60,80)
	------------------------------12345678901234567890123456789012
end
RanNoteUse[4] = NoteUses.Ran4

--Note Selection Functions

function NoteUseRad() -- select a random Use
	n = math.random(1,#RanNoteUse)
	return RanNoteUse[n]
end


function NoteUseGet(n) -- select a use in the NoteUse table
	if n == nil or n <= -1 or n > #NoteUse then -- if n is -1 then select a random use
		return NoteUseRad()
	end
	return NoteUse[n]
end