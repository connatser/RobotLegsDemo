package com.numbknuckle.events
{
	import flash.events.Event;

	public class SimpleEvent extends Event
	{
		
		public static const TEXT_READY:String = "TEXT_READY";
		public static const REQUEST_TEXT:String = "REQUEST_TEXT";
		public var message:String;
		
		public function SimpleEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
	}
}