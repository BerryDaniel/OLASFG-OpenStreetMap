<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0" 
 xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd" 
 xmlns="http://www.opengis.net/sld" 
 xmlns:ogc="http://www.opengis.net/ogc" 
 xmlns:xlink="http://www.w3.org/1999/xlink" 
 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <NamedLayer>
    <Name>place_state</Name>
    <UserStyle>
      <Title>place_state</Title>
      <Abstract></Abstract>
      <FeatureTypeStyle>
    <Rule>
          <MinScaleDenominator>400000</MinScaleDenominator>
          <MaxScaleDenominator>6500000</MaxScaleDenominator>
          <TextSymbolizer>
            <Label>
                <ogc:Function name="strToUpperCase">
          <ogc:PropertyName>name</ogc:PropertyName>
        </ogc:Function>
            </Label>
            <Font>
              <CssParameter name="font-size">10</CssParameter>
              <CssParameter name="font-family">Book Antiqua</CssParameter>
              <CssParameter name="font-weight">bold</CssParameter>
            </Font>
            <LabelPlacement>
              <PointPlacement>
                <AnchorPoint>
                  <AnchorPointX>
                    <ogc:Literal>0.5</ogc:Literal>
                  </AnchorPointX>
                  <AnchorPointY>
                    <ogc:Literal>0.5</ogc:Literal>
                  </AnchorPointY>
                </AnchorPoint>
                <Rotation>
                  <ogc:Literal>0</ogc:Literal>
                </Rotation>
              </PointPlacement>
            </LabelPlacement>
            <Halo>
              <Radius>
                <ogc:Literal>1</ogc:Literal>
              </Radius>
              <Fill>
                <CssParameter name="fill">#ffffff</CssParameter>
              </Fill>
            </Halo>
            <Fill>
              <CssParameter name="fill">#805433</CssParameter>
            </Fill>
            <VendorOption name="autoWrap">20</VendorOption>
            <VendorOption name="goodnessOfFit">0.3</VendorOption>
          </TextSymbolizer>
        </Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>