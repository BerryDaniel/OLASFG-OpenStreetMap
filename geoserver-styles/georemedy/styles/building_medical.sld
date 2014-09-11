<?xml version="1.0" encoding="utf-8"?>
<StyledLayerDescriptor xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ogc="http://www.opengis.net/ogc" xmlns="http://www.opengis.net/sld" version="1.0.0">
  <NamedLayer>
    <Name>building_medical</Name>
    <UserStyle>
      <Name>building_medical</Name>
      <FeatureTypeStyle>
      <Rule>
          <Title>Shadow</Title>
          <MaxScaleDenominator>50000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Geometry>
               <ogc:Function name="offset">
                  <ogc:PropertyName>wkb_geometry</ogc:PropertyName>
                  <ogc:Literal>0.00004</ogc:Literal>
                  <ogc:Literal>-0.00004</ogc:Literal>
               </ogc:Function>
            </Geometry>
            <Fill>
              <CssParameter name="fill">#555555</CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>
      </FeatureTypeStyle>
      <FeatureTypeStyle>
        <Rule>
          <Title>Polygon</Title>
          <MaxScaleDenominator>100000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#ffb2b2</CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>