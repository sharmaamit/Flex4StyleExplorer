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

  public class PropertyParser
  {
    private var _componentXML:XML;

    private var _properties:Array;

    public function PropertyParser(componentXML:XML)
    {
      _componentXML = componentXML;
      parseXML();
    }

    public function getProperties():Array
    {
      return _properties;
    }

    protected function parseXML():void
    {
      _properties = new Array();
      
      for each (var propertyNode:XML in _componentXML..property) 
      {
        var vo:ComponentProperties = new ComponentProperties();
        setFormat(vo, propertyNode);
        setType(vo, propertyNode);
        setEnumeration(vo, propertyNode);
        _properties.push(vo);
      }
    }

    public function setFormat(vo:ComponentProperties, propertyNode:XML):void
    {
      var format:String = propertyNode.@format;
      
      if (format) {
        vo.format = format;
      }
    }

    public function setType(vo:ComponentProperties, propertyNode:XML):void
    {
      var type:String = propertyNode.@type;
      
      if (type) {
        vo.type = type;
      }
    }

    public function setEnumeration(vo:ComponentProperties, propertyNode:XML):void
    {
      var enumValues:String = propertyNode.@enumeration;
      
      if (enumValues) {
        var result:Array = enumValues.split(",");
        vo.enumeration = result;
      }
    }
  }
}
