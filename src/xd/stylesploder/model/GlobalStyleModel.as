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

  public class GlobalStyleModel implements StyleModel
  {

    public function get cssElementName():String
    {
      return "Global";
    }

    public function get cssNamespace():String
    {
      return "s"
    }

    public function get modifiedStyles():Array
    {
      return null;
    }
  }
}
