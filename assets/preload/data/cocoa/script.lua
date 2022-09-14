local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene and dialogueIsStoryMode and dialogueIsDisabled then
		makeLuaSprite('cutsceneImage', 'dialogue2/week5_mall',0,0);
		setObjectCamera('cutsceneImage','hud')
		addLuaSprite('cutsceneImage', true)

		makeLuaSprite('cutsceneImage2', 'dialogue2/week5_intercom1',0,0);
		setObjectCamera('cutsceneImage2','hud')
		addLuaSprite('cutsceneImage2', true)

		makeLuaSprite('cutsceneImage3', 'dialogue2/week5_screamshin',0,0);
		setObjectCamera('cutsceneImage3','hud')
		addLuaSprite('cutsceneImage3', true)

		makeLuaSprite('cutsceneImage4', 'dialogue2/week5_holdhands',0,0);
		setObjectCamera('cutsceneImage4','hud')
		addLuaSprite('cutsceneImage4', true)

		setProperty('cutsceneImage.visible', true)
		setProperty('cutsceneImage2.visible', false)
		setProperty('cutsceneImage3.visible', false)
		setProperty('cutsceneImage4.visible', false)
		setProperty('inCutscene', true);
		startDialogue('dialogue');
		allowCountdown = true;
		return Function_Stop;
	elseif not allowCountdown and not seenCutscene and dialogueIsEverywhere and dialogueIsDisabled then
		makeLuaSprite('cutsceneImage', 'dialogue2/week5_mall',0,0);
		setObjectCamera('cutsceneImage','hud')
		addLuaSprite('cutsceneImage', true)

		makeLuaSprite('cutsceneImage2', 'dialogue2/week5_intercom1',0,0);
		setObjectCamera('cutsceneImage2','hud')
		addLuaSprite('cutsceneImage2', true)

		makeLuaSprite('cutsceneImage3', 'dialogue2/week5_screamshin',0,0);
		setObjectCamera('cutsceneImage3','hud')
		addLuaSprite('cutsceneImage3', true)

		makeLuaSprite('cutsceneImage4', 'dialogue2/week5_holdhands',0,0);
		setObjectCamera('cutsceneImage4','hud')
		addLuaSprite('cutsceneImage4', true)

		setProperty('cutsceneImage.visible', true)
		setProperty('cutsceneImage2.visible', false)
		setProperty('cutsceneImage3.visible', false)
		setProperty('cutsceneImage4.visible', false)
		setProperty('inCutscene', true);
		startDialogue('dialogue');
		allowCountdown = true;
		return Function_Stop;
	end
	doTweenAlpha('cutsceneImageTween', 'cutsceneImage', 0, 1.2, 'circout')
	doTweenAlpha('cutsceneImageTween2', 'cutsceneImage2', 0, 1.2, 'circout')
	doTweenAlpha('cutsceneImageTween3', 'cutsceneImage3', 0, 1.2, 'circout')
	doTweenAlpha('cutsceneImageTween4', 'cutsceneImage4', 0, 1.2, 'circout')
	onTweenCompleted('cutsceneImageTween')
	onTweenCompleted('cutsceneImageTween2')
	onTweenCompleted('cutsceneImageTween3')
	onTweenCompleted('cutsceneImageTween4')
	runTimer('removeSprites', 1.2)
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'removeSprites' then
		removeLuaSprite('cutsceneImage', true)
		removeLuaSprite('cutsceneImage2', true)
		removeLuaSprite('cutsceneImage3', true)
		removeLuaSprite('cutsceneImage4', true)
		removeLuaSprite('blackBG', true)
	end
end

function onNextDialogue(count)
	if count == 1 then
		setProperty('cutsceneImage.visible', false)
		setProperty('cutsceneImage2.visible', true)
	elseif count == 12 then
		setProperty('cutsceneImage2.visible', false)
		setProperty('cutsceneImage3.visible', true)
	elseif count == 13 then
		setProperty('cutsceneImage3.visible', false)
		setProperty('cutsceneImage4.visible', true)
	end
end

function onSkipDialogue(count)
	
end