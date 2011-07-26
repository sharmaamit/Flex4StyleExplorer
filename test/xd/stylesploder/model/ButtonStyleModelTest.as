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

package xd.stylesploder.model
{
  import org.flexunit.assertThat;
  import org.hamcrest.object.equalTo;
  import flash.net.getClassByAlias;
  import avmplus.getQualifiedClassName;
  import spark.components.Button;
  
  public class ButtonStyleModelTest
  {
    private var _instance:StyleModel;
    private var componentName:String;
    
    [Before]
    public function setUp():void
    {
      _instance = new ButtonStyleModel();
    }
    
    [After]
    public function tearDown():void
    {
      _instance = null;
    }
    
    [Test(description="Expected name")]
    public function expectedNameIsButton():void
    {
      assertThat(_instance.cssElementName, equalTo("Button"));
    }
    
    [Test(description="namespace is spark")]
    public function testThatNamespaceIsSpark():void
    {
      assertThat(_instance.cssNamespace, equalTo(StyleModelConstants.SPARK_NAMESPACE));
    }
  }
}