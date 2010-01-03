package com.numbknuckle
{
	import com.numbknuckle.controller.SimpleModelCommand;
	import com.numbknuckle.controller.SimpleTextCommand;
	import com.numbknuckle.events.SimpleEvent;
	import com.numbknuckle.model.SimpleModel;
	import com.numbknuckle.view.SimpleText;
	import com.numbknuckle.view.SimpleTextMediator;
	
	import flash.display.DisplayObjectContainer;
	
	import org.robotlegs.base.ContextEvent;
	import org.robotlegs.mvcs.Context;

	public class SimpleContext extends Context
	{
		public function SimpleContext(contextView:DisplayObjectContainer=null)
		{
			super(contextView);
		}
		
		override public function startup():void
		{
			
			commandMap.mapEvent(ContextEvent.STARTUP_COMPLETE, SimpleTextCommand, ContextEvent, true);
			
			mediatorMap.mapView(SimpleText, SimpleTextMediator);
			
			injector.mapSingleton(SimpleModel);
			commandMap.mapEvent(SimpleEvent.REQUEST_TEXT, SimpleModelCommand);
			
			super.startup();
		
		}
		
	}
}