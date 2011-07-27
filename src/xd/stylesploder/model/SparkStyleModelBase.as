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
  public class SparkStyleModelBase
  {
    private var _modifiedStyles:Array;
    
    public function addModifiedStyle(value:PropertySet):void
    {
      if (value)
      {
        modifiedStyles.push(value);
      }
    }

    public function get cssNamespace():String
    {
      return StyleModelConstants.SPARK_NAMESPACE;
    }
    
    public function get modifiedStyles():Array
    {
      if (!_modifiedStyles)
      {
        _modifiedStyles = new Array();
      }
      return _modifiedStyles;
    }

  }
}