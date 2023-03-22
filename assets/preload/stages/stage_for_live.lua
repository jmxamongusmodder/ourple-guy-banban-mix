
--How makeLuaSprite works:
--makeLuaSprite(<SPRITE VARIABLE>, <SPRITE IMAGE FILE NAME>, <X>, <Y>);
--"Sprite Variable" is how you refer to the sprite you just spawned in other methods like "setScrollFactor" and "scaleObject" for example

--so for example, i made the sprites "stagelight_left" and "stagelight_right", i can use "scaleObject('stagelight_left', 1.1, 1.1)"
--to adjust the scale of specifically the one stage light on left instead of both of them

function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'live_bg_1', -600, -300);
	setScrollFactor('stageback', 0.9, 0.9);
	scaleObject('stageback', 2.0, 2.0);

	if not lowQuality then

		makeLuaSprite('boxes', 'live_bg_2', -100, -110);
		setScrollFactor('boxes', 1.7, 1.7);
		scaleObject('boxes', 1.7, 1.7);
	end

	addLuaSprite('stageback', false);
	addLuaSprite('boxes', true);
end