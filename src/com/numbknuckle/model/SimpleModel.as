package com.numbknuckle.model
{
	import com.numbknuckle.events.SimpleEvent;
	
	import org.robotlegs.mvcs.Actor;

	public class SimpleModel extends Actor
	{
		
		private var message:String;
		
		public function SimpleModel()
		{
			message = "This is the text injected by RobotLegs!";
		}
		
		public function requestText():void
		{
			var simpleEvent : SimpleEvent = new SimpleEvent(SimpleEvent.TEXT_READY);
			simpleEvent.message = message;
			dispatch(simpleEvent);
		}
		
		
	}
}