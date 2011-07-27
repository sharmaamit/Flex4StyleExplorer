package xd.stylesploder.factory
{
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
		
		
	}
}