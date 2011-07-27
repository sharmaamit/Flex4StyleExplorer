package xd.stylesploder.model
{
	import flashx.textLayout.debug.assert;
	
	import org.flexunit.asserts.assertTrue;
	import org.flexunit.assertThat;
	import org.hamcrest.object.equalTo;

	public class SparkStyleModelBaseTest
	{
		private var _instance:SparkStyleModelBase;
    private var expectedPropertySet:PropertySet;
		
		[Before]
		public function setUp():void
		{
      _instance = new SparkStyleModelBase();
    }
		
		[After]
		public function tearDown():void
		{
      _instance = null;
		}
		
		[Test(description="add is actually putting objects in the array")]
		public function testAdd():void
		{
      var emptyArray:int = 0;
      var length:int = _instance.modifiedStyles.length;
      assertThat(length, equalTo(emptyArray));
      
      addStyleToStyleModel();
      
      var oneItemAdded:int = 1;
      length = _instance.modifiedStyles.length;
      
      assertThat(length, equalTo(oneItemAdded));
		}
		
		[Test(description="you should get back the objects you put in")]
		public function testGetterReturnsAddedProperties():void
		{
      addStyleToStyleModel();
      
      var modifedStyles:Array = _instance.modifiedStyles;
      var result:PropertySet = PropertySet(modifedStyles[0]);
      
      assertThat(result, equalTo(expectedPropertySet));
		}
    
    private function addStyleToStyleModel():void {
      var property:PropertySet = new StylePropertySet();
      _instance.addModifiedStyle(property);
      expectedPropertySet = property
    }
	}
}