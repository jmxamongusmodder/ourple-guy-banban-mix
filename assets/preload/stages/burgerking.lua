
--How makeLuaSprite works:
--makeLuaSprite(<SPRITE VARIABLE>, <SPRITE IMAGE FILE NAME>, <X>, <Y>);
--"Sprite Variable" is how you refer to the sprite you just spawned in other methods like "setScrollFactor" and "scaleObject" for example

--so for example, i made the sprites "stagelight_left" and "stagelight_right", i can use "scaleObject('stagelight_left', 1.1, 1.1)"
--to adjust the scale of specifically the one stage light on left instead of both of them

function onCreate()

	makeLuaSprite('stage', 'classroom', -450, -300);
	setScrollFactor('stage', 0.9, 0.9);
	scaleObject('stage', 2, 2);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('boxes', 'live_bg_2', -100, -110);
		setScrollFactor('boxes', 1.7, 1.7);
		scaleObject('boxes', 1.7, 1.7);
	        addLuaSprite('boxes', true);
	end

	addLuaSprite('stage', false);

end