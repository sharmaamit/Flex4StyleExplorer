package xd.stylesploder.parser
{
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.events.ProgressEvent;
	import flash.events.SecurityErrorEvent;
	import flash.net.FileFilter;
	import flash.net.FileReference;
	
	import xd.stylesploder.model.GlobalStyleModel;

	/**
	 * @author jandolina
	 */
	public class InheritanceParser
	{
		public var fileRef : FileReference;
		
		public function InheritanceParser()
		{
			fileRef = new FileReference(); 
			fileRef.addEventListener(Event.SELECT, onFileSelected); 
			fileRef.addEventListener(Event.CANCEL, onCancel); 
			fileRef.addEventListener(IOErrorEvent.IO_ERROR, onIOError); 
			fileRef.addEventListener(SecurityErrorEvent.SECURITY_ERROR, onSecurityError); 
			var textTypeFilter:FileFilter = new FileFilter("Flex Classes (*.as, *.mxml)", "*.as;*.mxml"); 
			fileRef.browse([textTypeFilter]);
		}
		
		public function onFileSelected(evt:Event):void 
		{ 
			fileRef.addEventListener(ProgressEvent.PROGRESS, onProgress); 
			fileRef.addEventListener(Event.COMPLETE, onComplete); 
			fileRef.load(); 
		} 
		
		public function onProgress(evt:ProgressEvent):void 
		{ 
			trace("Loaded " + evt.bytesLoaded + " of " + evt.bytesTotal + " bytes."); 
		} 
		
		public function onComplete(evt:Event):void 
		{ 
			trace("File was successfully loaded."); 
			trace(fileRef.data); 
		} 
		
		public function onCancel(evt:Event):void 
		{ 
			trace("The browse request was canceled by the user."); 
		} 
		
		public function onIOError(evt:IOErrorEvent):void 
		{ 
			trace("There was an IO Error."); 
		} 
		public function onSecurityError(evt:Event):void 
		{ 
			trace("There was a security error."); 
		} 
	}	
}