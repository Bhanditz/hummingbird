/////////////////////////////////////////////////////////////////////////////////////
//
//    Simplified BSD License
//    ======================
//    
//    Copyright 2013-2014 Pascal ECHEMANN. All rights reserved.
//    
//    Redistribution and use in source and binary forms, with or without modification,
//    are permitted provided that the following conditions are met:
//    
//    1. Redistributions of source code must retain the above copyright notice, this
//       list of conditions and the following disclaimer. 
//    
//    2. Redistributions in binary form must reproduce the above copyright notice,
//       this list of conditions and the following disclaimer in the documentation
//       and/or other materials provided with the distribution. 
//    
//    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
//    ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
//    WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//    DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
//    ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
//    (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
//    LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
//    ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
//    (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
//    SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//    
//    The views and conclusions contained in the software and documentation are those
//    of the authors and should not be interpreted as representing official policies, 
//    either expressed or implied, of the copyright holders.
//    
/////////////////////////////////////////////////////////////////////////////////////

package org.flashapi.hummingbird.logging {
	
	// -----------------------------------------------------------
	//  LogEvent.as
	// -----------------------------------------------------------

	/**
	 *  @author Pascal ECHEMANN
	 *  @version 1.0.0, 06/10/2013 18:12
	 *  @see http://www.flashapi.org/
	 */
	
	import flash.events.Event;
	
	/**
	 * 	The <code>LogEvent</code> class defines built-in events that can be 
	 * 	dispatched <code>ILogger</code> objects.
	 */
	public class LogEvent extends Event {
		
		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------
		
		/**
		 *  Constructor. 	Creates a new <code>LogEvent</code> instance.
		 * 
		 * 	@param	type		The type of the event, accessible as <code>Event.type</code>.
		 * 	@param	bubbles		Determines whether the <code>DependencyEvent</code>
		 * 						object participates in the bubbling stage of the event
		 * 						flow. The default value is <code>false</code>.
		 * 	@param	cancelable	Determines whether the <code>DependencyEvent</code>
		 * 						object can be canceled. The default values is
		 * 						<code>false</code>.
		 */
		public function LogEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false) {
			super(type, bubbles, cancelable);
		}
		
		//--------------------------------------------------------------------------
		//
		//  Public properties
		//
		//--------------------------------------------------------------------------
		
		/**
		 * 	Provides access to the level for this log event. Valid values are constants
		 * 	of the <code>LogLevel</code> class.
		 * 
		 * 	@see org.flashapi.hummingbird.logging.LogLevel
		 */
		public var level:uint;
		
		/**
		 *	Provides access to the message that was logged.
		 */
		public var message:String;
		
		//--------------------------------------------------------------------------
		//
		//  Event Types
		//
		//--------------------------------------------------------------------------
		
		/**
		 * 	Defines the value of the type property of the <code>log</code> event
		 * 	object.
		 * 
		 *  <p>The properties of the event object have the following values:</p>
		 *  <table class="innertable">
		 *     <tr><th>Property</th><th>Value</th></tr>
		 *     <tr><td><code>bubbles</code></td><td>false</td></tr>
		 *     <tr><td><code>cancelable</code></td><td>false</td></tr>
		 *     <tr><td><code>currentTarget</code></td><td>The Object that defines the
		 *       event listener that handles the event. For example, if you use
		 *       <code>myButton.addEventListener()</code> to register an event listener,
		 *       myButton is the value of the <code>currentTarget</code>. </td></tr>
		 *     <tr><td><code>target</code></td><td>The Object that dispatched the event;
		 *       it is not always the Object listening for the event.
		 *       Use the <code>currentTarget</code> property to always access the
		 *       Object listening for the event.</td></tr>
		 *  </table>
		 *
		 *  @eventType log
		 */
		public static const LOG:String = "log";
		
		//--------------------------------------------------------------------------
		//
		//  Public methods
		//
		//--------------------------------------------------------------------------
		
		/**
		 * 	@private
		 */
		override public function clone():Event {
			var evt:LogEvent =  new LogEvent(this.type, this.bubbles, this.cancelable);
			evt.level = this.level;
			evt.message = this.message;
			return evt;
		}
		
		/**
		 * 	@private
		 */
		override public function toString():String {
			return this.formatToString("LogEvent", "type", "bubbles", "cancelable",
				"level",
				"message"
			);
		}
	}
}