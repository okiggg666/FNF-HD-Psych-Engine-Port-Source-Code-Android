package;

import flixel.math.FlxRandom;
import flixel.FlxSprite;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.FlxG;

class MichaelDead extends FlxSprite
{

	var animationSuffix:String;
	public function new(x:Float, y:Float)
	{

		super(x, y);

		frames = Paths.getSparrowAtlas("gore/nooooooHD");
		animation.addByPrefix('youseewhathemissin', 'michaelDEAD', 24, false);
		animation.addByIndices('eh', 'michaelDEAD', [21,21], '', 24, true);
		animation.play('eh');
		antialiasing = ClientPrefs.globalAntialiasing;

	}
}
