package xd.stylesploder.parser
{
	import mx.controls.ColorPicker;

	public class PropertyParserTest
	{
		private var parser:PropertyParser;
		
		private var xml:XML = <component>
								  <name>Button</name>
								  <properties>
								    <property name="accentColor" type="uint" format="Color" inherit="yes" theme="spark, mobile"/>
								    <property name="textShadowColor" type="uint" format="Color" inherit="yes" theme="mobile"/>
								    <property name="textShadowAlpha" type="Number" inherit="yes" minValue="0.0" maxValue="1.0" theme="mobile"/>
								    <property name="cornerRadius" type="Number" format="Length" inherit="no" theme="spark" minValue="0.0"/>
								    <property name="focusAlpha" type="Number" inherit="no" theme="spark, mobile" minValue="0.0" maxValue="1.0"/>
								    <property name="focusColor" type="uint" format="Color" inherit="yes" theme="spark, mobile"/>
								    <property name="icon" type="Object" inherit="no"/>
								    <property name="iconPlacement" type="String" enumeration="top,bottom,right,left" inherit="no" theme="spark, mobile"/>
								  </properties>
								</component>;
		
		private var expectedComponents:Array = [ ColorPicker
		
		[Before]
		public function setup():void
		{
			parser=new PropertyParser();
		}

		[After]
		public function teardown():void
		{
			parser=null;
		}
		
		[Test(description="Tests that a format of value color returns a color picker control")]
		public function shouldReturnColorPickerFromColorFormat():void
		{
				
		}
		
	}
}
