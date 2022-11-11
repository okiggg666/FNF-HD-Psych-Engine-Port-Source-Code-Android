package;

import flixel.math.FlxRandom;
import flixel.FlxSprite;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.FlxG;

class Week4BoppersDead extends FlxSprite
{
	public function new(x:Float, y:Float, who:String)
	{
		super(x, y);

		frames = Paths.getSparrowAtlas("gore/nooooooHD");
		animation.addByPrefix('youseewhathemissin', who + 'DEAD', 24, false);
		animation.addByIndices('eh', 'michaelDEAD', [21, 21], '', 24, true);
		animation.play('eh');
		antialiasing = ClientPrefs.globalAntialiasing;
	}
}