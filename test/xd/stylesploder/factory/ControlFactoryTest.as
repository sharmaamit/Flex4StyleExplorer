package xd.stylesploder.factory
{	
	import flash.utils.getQualifiedClassName;
	
	import org.flexunit.asserts.assertEquals;
	

	public class ControlFactoryTest
	{
		private var factory:ControlFactory;
		
		[Before]
		public function setup():void
		{
			factory=new ControlFactory();
		}
		
		[After]
		public function teardown():void
		{
			factory=null;
		}
		
		[Test(description="Tests that given the correct input ControlFactory returns a colorPicker instance")]
		public function shouldReturnColorPicker():void
		{
			assertEquals("mx.controls::ColorPicker", getQualifiedClassName(factory.getControl("uint","Color")));
		}
		
		[Test(description="Tests that given the correct input ControlFactory returns a HSlider instance")]
		public function shouldReturnHSlider():void
		{
			assertEquals("spark.components::HSlider", getQualifiedClassName(factory.getControl("Number",null,null,0.0,1.0)));
		}
		
		[Test(description="Tests that given the correct input ControlFactory returns a NumericStepper instance")]
		public function shouldReturnNumericStepper():void
		{
			assertEquals("spark.components::NumericStepper", getQualifiedClassName(factory.getControl("Number")));
		}
		
		[Test(description="Tests that given the correct input ControlFactory returns a ComboBox instance")]
		public function shouldReturnComboBox():void
		{
			assertEquals("spark.components::ComboBox", getQualifiedClassName(factory.getControl("String",null,["top,bottom,right,left"])));
		}
		
	}
}