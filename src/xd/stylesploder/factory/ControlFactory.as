package xd.stylesploder.factory
{
	import flash.display.DisplayObject;
	
	import mx.collections.ArrayCollection;
	import mx.controls.ColorPicker;
	import mx.controls.HSlider;
	
	import spark.components.ComboBox;
	import spark.components.NumericStepper;

	public class ControlFactory
	{
		public function getControl(type:String,format:String,enumeration:Array=null,minValue:Number=NaN,maxValue:Number=NaN):DisplayObject
		{
			if (type=="uint" && format=="Color") 
			{
				return new ColorPicker();
			}
			else if (type=="Number" && minValue && maxValue)
			{
				var slider:HSlider = new HSlider();
				slider.minimum = minValue;
				slider.maximum = maxValue;
				return slider;
			}
			else if (type=="Number") 
			{
				return new NumericStepper();
			}
			else if (type=="String" && enumeration)
			{
				var box:ComboBox = new ComboBox();
				box.dataProvider=new ArrayCollection(enumeration);
				return box;
			}
			else if (type=="Object") 
			{
				//TODO: File browser???
				trace("WE MUST HAVE AN ICON OR SOME SUCH CRAZY TALK");
				return null;
			}
			
			return null;
		}
	}
}