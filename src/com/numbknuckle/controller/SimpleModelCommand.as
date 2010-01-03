package com.numbknuckle.controller
{
	import com.numbknuckle.model.SimpleModel;
	
	import org.robotlegs.mvcs.Command;

	public class SimpleModelCommand extends Command
	{
		
		[Inject]
		public var simpleModel:SimpleModel;
				
		override public function execute():void
		{
			simpleModel.requestText();
		}
		
	}
}