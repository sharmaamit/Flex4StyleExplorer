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

  public class ButtonStyleModel extends SparkStyleModelBase implements StyleModel
  {
    private var _modifiedStyles:Array;

    public function get cssElementName():String
    {
      return "Button"
    }
  }
}
