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

  public class StylePropertySet implements PropertySet
  {

    private var _property:String;

    private var _value:String;

    public function get property():String
    {
      return _property;
    }

    public function set property(value:String):void
    {
      if (value && value != _property)
      {
        _property = value;
      }
    }

    public function get value():String
    {
      return _value;
    }

    public function set value(value:String):void
    {
      if (value && value != _value)
      {
        _value = value;
      }
    }
  }
}
