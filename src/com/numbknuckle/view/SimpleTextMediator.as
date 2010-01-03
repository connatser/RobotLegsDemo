package com.numbknuckle.view
{
	import com.numbknuckle.events.SimpleEvent;
	
	import org.robotlegs.mvcs.Mediator;

	public class SimpleTextMediator extends Mediator
	{
		
		[Inject]
		public var simpleText:SimpleText;
		
		override public function onRegister():void
		{
			eventMap.mapListener(eventDispatcher, SimpleEvent.TEXT_READY, onTextReady);
			dispatch(new SimpleEvent(SimpleEvent.REQUEST_TEXT));
		}
		
		public function onTextReady(event:SimpleEvent):void
		{
			simpleText.simpleText.text = event.message;
		}
		
	}
}