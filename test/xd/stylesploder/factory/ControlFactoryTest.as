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
	}
}