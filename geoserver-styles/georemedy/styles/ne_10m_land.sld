<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0" 
 xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd" 
 xmlns="http://www.opengis.net/sld" 
 xmlns:ogc="http://www.opengis.net/ogc" 
 xmlns:xlink="http://www.w3.org/1999/xlink" 
 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <NamedLayer>
    <Name>ne_land</Name>
    <UserStyle>
      <Title>ne_land</Title>
      <Abstract></Abstract>
      <FeatureTypeStyle>
        <Rule>
          <Name>ne_land</Name>
          <Title></Title>
          <Abstract></Abstract>
          <MinScaleDenominator>25000000</MinScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#faf8ed</CssParameter>
            </Fill>
          </PolygonSymbolizer>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke-width">1.0</CssParameter>
              <CssParameter name="stroke">#faf8ed</CssParameter>
            </Stroke>
          </LineSymbolizer>
        </Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>