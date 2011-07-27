package xd.stylesploder.parser
{

  import mx.controls.ColorPicker;
  import org.flexunit.asserts.assertEquals;
  import org.hamcrest.object.notNullValue;
  import org.hamcrest.object.nullValue;
  import org.flexunit.asserts.assertNotNull;
  import org.flexunit.asserts.assertNull;
  import org.flexunit.assertThat;
  import org.hamcrest.object.equalTo;

  public class PropertyParserTest
  {
    private var parser:PropertyParser;

    private var xml:XML = <component>
          <name>Button</name>
          <properties>
            <property name="accentColor" type="uint" format="Color" inherit="yes" theme="spark, mobile"/>
            <property name="textShadowColor" type="uint" format="Color" inherit="yes" theme="mobile"/>
            <property name="textShadowAlpha" type="Number" inherit="yes" minValue="0.0" maxValue="1.0" theme="mobile"/>
            <property name="cornerRadius" type="Number" format="Length" inherit="no" theme="spark" minValue="0.0"/>
            <property name="focusAlpha" type="Number" inherit="no" theme="spark, mobile" minValue="0.0" maxValue="1.0"/>
            <property name="focusColor" type="uint" format="Color" inherit="yes" theme="spark, mobile"/>
            <property name="icon" type="Object" inherit="no"/>
            <property name="iconPlacement" type="String" enumeration="top,bottom,right,left" inherit="no" theme="spark, mobile"/>
          </properties>
        </component>;

    [Before]
    public function setup():void
    {
      parser = new PropertyParser(xml);
    }

    [After]
    public function teardown():void
    {
      parser = null;
    }

    [Test(description = "assert that construction inits array")]
    public function testPropertiesInitialized():void
    {
      assertNotNull(parser.getProperties());
    }

    [Test(description = "parse the xml and stick the format in the vo if there is a format")]
    public function testParseFormatWorksIfFormatIsPresent():void
    {
      var propertyNodeHasFormat:XML = <property name="accentColor" type="uint" format="Color" inherit="yes" theme="spark, mobile"/>;
      var vo:ComponentProperties = new ComponentProperties();
      
      assertNull(vo.format);
      
      parser.setFormat(vo, propertyNodeHasFormat);
      
      assertNotNull(vo.format);
      assertThat(vo.format, equalTo("Color"));
      
    }
    
    [Test(description = "parse the xml and format will be null if there is no format attribute")]
    public function testParseFormatWorksIfFormatIsNotPresent():void
    {
      var propertyNodeWithoutFormat:XML = <property name="accentColor" type="uint" inherit="yes" theme="spark, mobile"/>;
      var vo:ComponentProperties = new ComponentProperties();
      
      assertNull(vo.format);
      
      parser.setFormat(vo, propertyNodeWithoutFormat);
      
      assertNull(vo.format);
      
    }

    [Test(description = "parse the xml and build the enum in the vo if there is a enum attribute")]
    public function testParseEnumWorksIfFormatIsPresent():void
    {
      var propertyNodeHasEnum:XML = <property name="iconPlacement" type="String" enumeration="top,bottom,right,left" inherit="no" theme="spark, mobile"/>;
      var vo:ComponentProperties = new ComponentProperties();
      
      assertNull(vo.format);
      
      parser.setEnumeration(vo, propertyNodeHasEnum);
      
      var expectedArray:Array = ["top","bottom","right","left"];
      
      assertNotNull(vo.enumeration);
      assertThat(vo.enumeration, equalTo(expectedArray));
      
    }
    
    [Test(description = "parse the xml and enum will be null if there is no enum attribute")]
    public function testParseFormatWorksIfEnumIsNotPresent():void
    {
      var propertyNodeWithoutEnum:XML = <property name="iconPlacement" type="String" inherit="no" theme="spark, mobile"/>;
      var vo:ComponentProperties = new ComponentProperties();
      
      assertNull(vo.enumeration);
      
      parser.setFormat(vo, propertyNodeWithoutEnum);
      
      assertNull(vo.enumeration);
      
    }

    [Test(description = "parse the xml and set type in the vo if there is a type attribute")]
    public function testParseEnumWorksIfTypeIsPresent():void
    {
      var propertyNodeHasType:XML = <property name="iconPlacement" type="String" enumeration="top,bottom,right,left" inherit="no" theme="spark, mobile"/>;
      var vo:ComponentProperties = new ComponentProperties();
      
      assertNull(vo.type);
      
      parser.setType(vo, propertyNodeHasType);
      
      assertNotNull(vo.type);
      assertThat(vo.type, equalTo("String"));
      
    }
    
    [Test(description = "parse the xml and enum will be null if there is no enum attribute")]
    public function testParseFormatWorksIfTypeIsNotPresent():void
    {
      var propertyNodeWithoutType:XML = <property name="iconPlacement" inherit="no" theme="spark, mobile"/>;
      var vo:ComponentProperties = new ComponentProperties();
      
      assertNull(vo.type);
      
      parser.setType(vo, propertyNodeWithoutType);
      
      assertNull(vo.type);
      
    }
    
    
    [Test(description = "parse the xml and enum will be null if there is no enum attribute")]
    public function testAllPropertiesParsed():void
    {
      var expectedNumberOfNodes:int = XMLList(xml..property).length();
      var propertyCount:int = parser.getProperties().length;
      assertThat(propertyCount, equalTo(expectedNumberOfNodes));
      
    }
    
    

  }
}
