////////////////////////////////////////////////////////////////////////////////
//
//  ADOBE SYSTEMS INCORPORATED
//  Copyright 2008 Adobe Systems Incorporated
//  All Rights Reserved.
//
//  NOTICE: Adobe permits you to use, modify, and distribute this file
//  in accordance with the terms of the license agreement accompanying it.
//
////////////////////////////////////////////////////////////////////////////////

package xd.stylesploder.export
{
  import xd.stylesploder.model.MockStyleModel;
  import xd.stylesploder.model.StyleModel;
  import xd.stylesploder.model.PropertySet;
  import xd.stylesploder.model.StylePropertySet;
  import org.flexunit.assertThat;
  import org.hamcrest.object.equalTo;

  public class StyleModelFormatterTest
  {
    private var _instance:MockStyleModel;
    private var componentName:String;
    
    [Before]
    public function setUp():void
    {
      _instance = new MockStyleModel();
      
      var propertyOne:PropertySet = new StylePropertySet();
      propertyOne.property = MockStyleModel.PROPERTY_ONE_NAME;
      propertyOne.property = MockStyleModel.PROPERTY_ONE_VALUE;
      
      var propertyTwo:PropertySet = new StylePropertySet();
      propertyTwo.property = MockStyleModel.PROPERTY_TWO_NAME;
      propertyTwo.property = MockStyleModel.PROPERTY_TWO_VALUE;
      
      _instance.addModifiedStyle(propertyOne);
      _instance.addModifiedStyle(propertyTwo);
    }
    
    [After]
    public function tearDown():void
    {
      _instance = null;
    }
    
    
    [Test(description="namespace is mock")]
    public function testThatNamespaceIsMock():void
    {
      assertThat(_instance.cssNamespace, equalTo(MockStyleModel.MOCK_NAMESPACE));
    }
    
  }
}