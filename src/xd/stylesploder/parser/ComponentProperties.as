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

package xd.stylesploder.parser
{

  public class ComponentProperties
  {
    private var _enumeration:Array;
    private var _format:String;
    private var _type:String;

    public function get enumeration():Array
    {
      return _enumeration;
    }

    public function set enumeration(value:Array):void
    {
      if (value && value != _enumeration)
      {
        _enumeration = value;
      }
    }

    public function get format():String
    {
      return _format;
    }

    public function set format(value:String):void
    {
      if (value && value != _format)
      {
        _format = value;
      }
    }


    public function get type():String
    {
      return _type;
    }

    public function set type(value:String):void
    {
      if (value && value != _type)
      {
        _type = value;
      }
    }
  }
}
