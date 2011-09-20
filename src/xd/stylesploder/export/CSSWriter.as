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

package xd.stylesploder.export
{
  import flash.net.FileReference;
  import xd.stylesploder.model.StyleModel;

  public class CSSWriter
  {
    private static var _fileRef:FileReference
    
    private static function get fileRef():FileReference
    {
      if (!_fileRef)
      {
        _fileRef=new FileReference();
      }
      return _fileRef;
    }
    
    public static function exportModelsAsCSS(models:Array):void
    {
      var output:String = "/* I'm some CSS */\n";
      for each (var model:StyleModel in models) {
        output += StyleModelFormatter.buildExportString(model);
      }
      fileRef.save(output, "StyleOutput.css");
    }
    
  }
}