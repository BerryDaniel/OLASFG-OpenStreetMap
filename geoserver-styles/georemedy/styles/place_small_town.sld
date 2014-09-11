<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0" 
 xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd" 
 xmlns="http://www.opengis.net/sld" 
 xmlns:ogc="http://www.opengis.net/ogc" 
 xmlns:xlink="http://www.w3.org/1999/xlink" 
 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <NamedLayer>
    <Name>place_suburb</Name>
    <UserStyle>
      <Title>place_suburb</Title>
      <Abstract></Abstract>
      <FeatureTypeStyle>
        <Rule>
          <MinScaleDenominator>12500</MinScaleDenominator>
          <MaxScaleDenominator>200000</MaxScaleDenominator>
          <TextSymbolizer>
            <Label>
          <ogc:PropertyName>name</ogc:PropertyName>
            </Label>
            <Font>
              <CssParameter name="font-size">9</CssParameter>
              <CssParameter name="font-family">Arial</CssParameter>
              <CssParameter name="font-weight">bold</CssParameter>
            </Font>
            <LabelPlacement>
              <PointPlacement>
                <AnchorPoint>
                  <AnchorPointX>
                    <ogc:Literal>0</ogc:Literal>
                  </AnchorPointX>
                  <AnchorPointY>
                    <ogc:Literal>-.5</ogc:Literal>
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
                <CssParameter name="fill">#f0f0f0</CssParameter>
              </Fill>
            </Halo>
            <Fill>
              <CssParameter name="fill">#000000</CssParameter>
            </Fill>
          </TextSymbolizer>
        </Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>