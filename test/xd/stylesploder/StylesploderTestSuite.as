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
  import xd.stylesploder.model.GlobalStyleModelTest;
  import xd.stylesploder.model.ButtonStyleModelTest;
  import xd.stylesploder.export.StyleModelFormatterTest;

  // add your test instances to the list of members below
  // so the suite can run them
  
	[Suite]
	[RunWith("org.flexunit.runners.Suite")]
	public class StylesploderTestSuite
	{
//		public var styleModelTest:StyleModelTest;
    public var globalTest:GlobalStyleModelTest
    public var buttonTest:ButtonStyleModelTest
    public var formatterTest:StyleModelFormatterTest;
	}
}