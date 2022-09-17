require("/Audio/sound")

--Audio
	sound:new('Alert','/Audio/Sfx/Alert_2.mp3','static')
	sound:new('effect','/Audio/Sfx/effect.mp3','static')
	sound:new('GameEnd','/Audio/Sound/gameover.mp3','static') --Old
	sound:new('BuyinStore','/Audio/Sound/buyinstore.mp3','stream')
	--sound:new('GameEnd','/Audio/Sound/gameover.mp3','static')
	--sound:new('GameEnd+Rep','/Audio/Sound/gameover_rep.mp3','static')