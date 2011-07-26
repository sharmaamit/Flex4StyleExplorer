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

  public class GlobalStyleModelTest
  {
    private var _instance:GlobalStyleModel;
    
    [Before]
    public function setUp():void
    {
      _instance = new GlobalStyleModel();
    }
    
    [After]
    public function tearDown():void
    {
      _instance = null;
    }
    
    [Test(description="Expected name")]
    public function expectedNameIsGlobal():void
    {
      assertThat(_instance.cssElementName, equalTo("Global"));
    }

  }
}