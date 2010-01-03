package com.numbknuckle.controller
{
	import com.numbknuckle.view.SimpleText;
	
	import org.robotlegs.mvcs.Command;

	public class SimpleTextCommand extends Command
	{
		override public function execute(): void
		{
			var simpleText:SimpleText = new SimpleText();
			contextView.addChild(simpleText);
		}
		
	}
}