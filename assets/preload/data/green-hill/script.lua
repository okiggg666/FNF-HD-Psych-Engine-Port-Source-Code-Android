local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene and dialogueIsStoryMode and dialogueIsDisabled then
		makeLuaSprite('blackBG2', 'dialogue/bg/black',0,0);
		setObjectCamera('blackBG2','hud')
		addLuaSprite('blackBG2', true)

		makeLuaSprite('cutsceneImage', 'dialogue/bg/green_hill_1',0,0);
		setObjectCamera('cutsceneImage','hud')
		addLuaSprite('cutsceneImage', true)

		makeLuaSprite('cutsceneImage2', 'dialogue/bg/green_hill_2',0,0);
		setObjectCamera('cutsceneImage2','hud')
		addLuaSprite('cutsceneImage2', true)

		makeLuaSprite('blackBG', 'dialogue/bg/blank',0,0);
		setObjectCamera('blackBG','hud')
		addLuaSprite('blackBG', true)

		setProperty('cutsceneImage.visible', false)
		setProperty('cutsceneImage2.visible', false)
		setProperty('blackBG.alpha', 0)
		setProperty('blackBG.visible', true)
		setProperty('inCutscene', true);
		runTimer('startTween', 0.1)
		runTimer('removeSprites2', 1.2)
		allowCountdown = true;
		return Function_Stop;
	elseif not allowCountdown and not seenCutscene and dialogueIsEverywhere and dialogueIsDisabled then
		makeLuaSprite('blackBG2', 'dialogue/bg/black',0,0);
		setObjectCamera('blackBG2','hud')
		addLuaSprite('blackBG2', true)

		makeLuaSprite('cutsceneImage', 'dialogue/bg/green_hill_1',0,0);
		setObjectCamera('cutsceneImage','hud')
		addLuaSprite('cutsceneImage', true)

		makeLuaSprite('cutsceneImage2', 'dialogue/bg/green_hill_2',0,0);
		setObjectCamera('cutsceneImage2','hud')
		addLuaSprite('cutsceneImage2', true)

		makeLuaSprite('blackBG', 'dialogue/bg/blank',0,0);
		setObjectCamera('blackBG','hud')
		addLuaSprite('blackBG', true)

		setProperty('cutsceneImage.visible', false)
		setProperty('cutsceneImage2.visible', false)
		setProperty('blackBG.alpha', 0)
		setProperty('blackBG.visible', true)
		setProperty('inCutscene', true);
		runTimer('startTween', 0.1)
		runTimer('removeSprites2', 1.2)
		allowCountdown = true;
		return Function_Stop;
	end
	doTweenAlpha('cutsceneImageTween', 'cutsceneImage', 0, 1.2, 'circout')
	doTweenAlpha('cutsceneImageTween2', 'cutsceneImage2', 0, 1.2, 'circout')
	doTweenAlpha('blackBGTween', 'blackBG', 0, 1.2, 'circout')
	onTweenCompleted('blackBGTween')
	onTweenCompleted('cutsceneImageTween')
	onTweenCompleted('cutsceneImageTween2')
	runTimer('removeSprites', 1.2)
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'removeSprites' then
		removeLuaSprite('cutsceneImage', true)
		removeLuaSprite('cutsceneImage2', true)
		removeLuaSprite('blackBG', true)
	end
	if tag == 'removeSprites2' then
		removeLuaSprite('blackBG2')
	end
	if tag == 'startTween' then
		startDialogue('dialogue')
		doTweenAlpha('blackBGTween2', 'blackBG', 1, 1, 'circout')
		onTweenCompleted('blackBGTween2')
	end
end

function onNextDialogue(count)
	if count == 2 then
		setProperty('blackBG.visible', false)
		setProperty('cutsceneImage.visible', true)
	elseif count == 7 then
		setProperty('cutsceneImage.visible', false)
		setProperty('cutsceneImage2.visible', true)
	end
end

function onSkipDialogue(count)
	
end