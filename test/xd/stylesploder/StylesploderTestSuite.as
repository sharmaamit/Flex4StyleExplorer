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

package xd.stylesploder
{

  import xd.stylesploder.export.StyleModelFormatterTest;
  import xd.stylesploder.model.ButtonStyleModelTest;
  import xd.stylesploder.model.GlobalStyleModelTest;
  import xd.stylesploder.model.SparkStyleModelBaseTest;

  // add your test instances to the list of members below
  // so the suite can run them
  [Suite]
  [RunWith("org.flexunit.runners.Suite")]
  public class StylesploderTestSuite
  {
    public var buttonTest:ButtonStyleModelTest
    public var formatterTest:StyleModelFormatterTest;
    public var globalTest:GlobalStyleModelTest
    public var styleModelBaseTest:SparkStyleModelBaseTest;
  }
}
