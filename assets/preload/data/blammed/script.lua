function onStartCountdown()
	if notmiddlescroll then
		if PicoPlayer then
			runTimer('noteTween1', 0.1)
			runTimer('noteTween2', 0.1)
			runTimer('noteTween3', 0.1)
			runTimer('noteTween4', 0.1)
			runTimer('noteTween5', 0.1)
			runTimer('noteTween6', 0.1)
			runTimer('noteTween7', 0.1)
			runTimer('noteTween8', 0.1)
		end
	end
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
		runTimer('dialogueEnd', 0.6)
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
	doTweenAlpha('blackBGTween2', 'blackBG', 0, 1.2, 'circout')
	onTweenCompleted('blackBGTween2')
	runTimer('removeSprites2', 1.2)
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'removeSprites2' then
		removeLuaSprite('blackBG')
	end
	if tag == 'dialogueEnd' then
		startDialogue('dialogueEnd')
	end
	if tag == 'spriteAppear' then
		doTweenAlpha('blackBGTween3', 'blackBG2', 1, 0.5, 'circout')
		onTweenCompleted('blackBGTween3')
	end
	if tag == 'spriteAppear2' then
		doTweenAlpha('blackBGTween4', 'blackBG', 1, 1, 'circout')
		onTweenCompleted('blackBGTween4')
	end
	if tag == 'noteTween1' then
		noteTweenX('noteTween1', 4, 93, 0.1, cubein)
		onTweenCompleted('noteTween1')
	end
	if tag == 'noteTween2' then
		noteTweenX('noteTween2', 5, 204, 0.1, cubein)
		onTweenCompleted('noteTween2')
	end
	if tag == 'noteTween3' then
		noteTweenX('noteTween3', 6, 316, 0.1, cubein)
		onTweenCompleted('noteTween3')
	end
	if tag == 'noteTween4' then
		noteTweenX('noteTween4', 7, 429, 0.1, cubein)
		onTweenCompleted('noteTween4')
	end
	if tag == 'noteTween5' then
		noteTweenX('noteTween5', 0, 733, 0.1, cubeout)
		onTweenCompleted('noteTween5')
	end
	if tag == 'noteTween6' then
		noteTweenX('noteTween6', 1, 844, 0.1, cubeout)
		onTweenCompleted('noteTween6')
	end
	if tag == 'noteTween7' then
		noteTweenX('noteTween7', 2, 956, 0.1, cubeout)
		onTweenCompleted('noteTween7')
	end
	if tag == 'noteTween8' then
		noteTweenX('noteTween8', 3, 1068, 0.1, cubeout)
		onTweenCompleted('noteTween8')
	end
end

function onNextDialogue(count)
	if count == 2 then
		playSound('dialogue/gunClick')
	elseif count == 8 then
		playSound('dialogue/picoWithExtraReverb')
	end
end

function onSkipDialogue(count)
	
end