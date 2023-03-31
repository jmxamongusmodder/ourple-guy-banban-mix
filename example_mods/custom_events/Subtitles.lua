
function onEvent(name, value1, value2)
	if name == 'Subtitles' then
		fade = 0
		setTextString('subtitle', value1)
		setTextColor('subtitle', value2)
		runtTimer('subtitlefade', 2, 1)
	end
end

function onCreate()
	makeLuaText('subtitle', '', 400, 445, 500)
	addLuaText('subtitle')
	setTextSize('subtitle',60)
end