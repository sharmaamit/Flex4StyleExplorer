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

  import org.flexunit.assertThat;
  import org.hamcrest.object.equalTo;
  import xd.stylesploder.model.MockStyleModel;
  import xd.stylesploder.model.PropertySet;
  import xd.stylesploder.model.StyleModel;
  import xd.stylesploder.model.StylePropertySet;

  public class StyleModelFormatterTest
  {
    private var _instance:StyleModel;

    private var componentName:String;

    [Before]
    public function setUp():void
    {
      _instance = new MockStyleModel();

      var propertyOne:PropertySet = new StylePropertySet();
      propertyOne.property = MockStyleModel.PROPERTY_ONE_NAME;
      propertyOne.value = MockStyleModel.PROPERTY_ONE_VALUE;

      var propertyTwo:PropertySet = new StylePropertySet();
      propertyTwo.property = MockStyleModel.PROPERTY_TWO_NAME;
      propertyTwo.value = MockStyleModel.PROPERTY_TWO_VALUE;

      _instance.addModifiedStyle(propertyOne);
      _instance.addModifiedStyle(propertyTwo);
    }

    [After]
    public function tearDown():void
    {
      _instance = null;
    }

    [Test(description = "format output is correct")]
    public function testThatMockFormatsAsExpected():void
    {
      var result:String = StyleModelFormatter.buildExportString(_instance);
      assertThat(result, equalTo(MockStyleModel.EXPECTED_STYLE_OUTPUT));
    }


    [Test(description = "namespace is mock")]
    public function testThatNamespaceIsMock():void
    {
      assertThat(_instance.cssNamespace, equalTo(MockStyleModel.MOCK_NAMESPACE));
    }
  }
}
