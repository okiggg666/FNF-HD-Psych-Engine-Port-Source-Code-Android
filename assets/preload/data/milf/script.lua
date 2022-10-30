local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene and dialogueIsStoryMode and dialogueIsDisabled then
		makeLuaSprite('cutsceneImage', 'dialogue2/news2',0,0);
		setObjectCamera('cutsceneImage','hud')
		addLuaSprite('cutsceneImage', true)

		makeLuaSprite('cutsceneImage2', 'dialogue2/news3',0,0);
		setObjectCamera('cutsceneImage2','hud')
		addLuaSprite('cutsceneImage2', true)

		makeLuaSprite('blackBG', 'dialogue2/blank',0,0);
		setObjectCamera('blackBG','hud')
		addLuaSprite('blackBG', true)

		setProperty('cutsceneImage.visible', true)
		setProperty('cutsceneImage2.visible', false)
		setProperty('blackBG.visible', false)
		setProperty('inCutscene', true);
		startDialogue('dialogue');
		playSound('dialogue/news/10', 1, 'news10')
		allowCountdown = true;
		return Function_Stop;
	elseif not allowCountdown and not seenCutscene and dialogueIsEverywhere and dialogueIsDisabled then
		makeLuaSprite('cutsceneImage', 'dialogue2/news2',0,0);
		setObjectCamera('cutsceneImage','hud')
		addLuaSprite('cutsceneImage', true)

		makeLuaSprite('cutsceneImage2', 'dialogue2/news3',0,0);
		setObjectCamera('cutsceneImage2','hud')
		addLuaSprite('cutsceneImage2', true)

		makeLuaSprite('blackBG', 'dialogue2/blank',0,0);
		setObjectCamera('blackBG','hud')
		addLuaSprite('blackBG', true)

		setProperty('cutsceneImage.visible', true)
		setProperty('cutsceneImage2.visible', false)
		setProperty('blackBG.visible', false)
		setProperty('inCutscene', true);
		startDialogue('dialogue');
		playSound('dialogue/news/10', 1, 'news10')
		allowCountdown = true;
		return Function_Stop;
	end
	doTweenAlpha('cutsceneImageTween', 'cutsceneImage', 0, 1.2, 'circout')
	doTweenAlpha('cutsceneImageTween2', 'cutsceneImage2', 0, 1.2, 'circout')
	doTweenAlpha('blackBGTween', 'blackBG', 0, 1.2, 'circout')
	soundFadeOut('news10', 1, 0)
	soundFadeOut('news11', 1, 0)
	soundFadeOut('news12', 1, 0)
	onTweenCompleted('blackBGTween')
	onTweenCompleted('cutsceneImageTween')
	onTweenCompleted('cutsceneImageTween2')
	runTimer('removeSprites', 1.2)
	runTimer('removeSounds', 1)
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'removeSprites' then
		removeLuaSprite('cutsceneImage', true)
		removeLuaSprite('cutsceneImage2', true)
		removeLuaSprite('blackBG', true)
	end
	if tag == 'removeSounds' then
		stopSound('news10')
		stopSound('news11')
		stopSound('news12')
	end
	if tag == 'removeSprites2' then
		removeLuaSprite('blackBG')
	end
	if tag == 'dialogueBadEnd' then
		startDialogue('dialogueBadEnd')
	end
	if tag == 'dialogueGoodEnd' then
		startDialogue('dialogueGoodEnd')
	end
	if tag == 'spriteAppear' then
		doTweenAlpha('blackBGTween3', 'blackBG2', 1, 0.5, 'circout')
		onTweenCompleted('blackBGTween3')
	end
	if tag == 'spriteAppear2' then
		doTweenAlpha('blackBGTween2', 'blackBG', 1, 1, 'circout')
		onTweenCompleted('blackBGTween2')
	end
end

function onNextDialogue(count)
	if not allowEndShit then
		if count == 1 then
			removeLuaSprite('cutsceneImage', true)
			setProperty('cutsceneImage2.visible', true)
			stopSound('news10')
			playSound('dialogue/news/11', 1, 'news11')
		elseif count == 2 then
			setProperty('cutsceneImage2.visible', true)
			stopSound('news11')
			playSound('dialogue/news/12', 1, 'news12')
		elseif count == 3 then
			removeLuaSprite('cutsceneImage2', true)
			setProperty('blackBG.visible', true)
			stopSound('news12')
			playMusic('dialogue/mommiTalki', 0.9, true)
		end
	end
end

function onSkipDialogue(count)
	
end

local allowEndShit = false
function onEndSong()
	if not allowEndShit and isStoryMode and dialogueIsStoryMode and dialogueIsDisabled then
		makeLuaSprite('blackBG2', 'dialogue2/black',0,0);
		setObjectCamera('blackBG2','hud')
		addLuaSprite('blackBG2', true)
		makeLuaSprite('blackBG', 'dialogue2/blank',0,0);
		setObjectCamera('blackBG','hud')
		addLuaSprite('blackBG', true)
		setProperty('blackBG2.alpha', 0)
		setProperty('blackBG.alpha', 0)
		setProperty('inCutscene', true);
		runTimer('spriteAppear', 0.1)
		runTimer('spriteAppear2', 0.6)
		runTimer('dialogueGoodEnd', 0.6)
		setSoundVolume('news11', 0)
		setSoundVolume('news12', 0)
		setSoundVolume('news11', 0)
		setSoundVolume(0)
		allowEndShit = true;
		return Function_Stop;
	elseif not allowEndShit and dialogueIsEverywhere and dialogueIsDisabled then
		makeLuaSprite('blackBG2', 'dialogue2/black',0,0);
		setObjectCamera('blackBG2','hud')
		addLuaSprite('blackBG2', true)
		makeLuaSprite('blackBG', 'dialogue2/blank',0,0);
		setObjectCamera('blackBG','hud')
		addLuaSprite('blackBG', true)
		setProperty('blackBG2.alpha', 0)
		setProperty('blackBG.alpha', 0)
		setProperty('inCutscene', true);
		runTimer('spriteAppear', 0.1)
		runTimer('spriteAppear2', 0.6)
		runTimer('dialogueEnd', 0.6)
		allowEndShit = true;
		return Function_Stop;
	end
	doTweenAlpha('blackBGTween', 'blackBG', 0, 1.2, 'circout')
	onTweenCompleted('blackBGTween')
	runTimer('removeSprites2', 1.2)
	return Function_Continue;
end