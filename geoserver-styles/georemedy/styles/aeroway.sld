<?xml version="1.0" encoding="utf-8"?>
<StyledLayerDescriptor xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ogc="http://www.opengis.net/ogc" xmlns="http://www.opengis.net/sld" version="1.0.0">
  <NamedLayer>
    <Name>osm_aeroway</Name>
    <UserStyle>
      <Name>osm_aeroway</Name>
      <FeatureTypeStyle>
        <Rule>
          <Filter xmlns="http://www.opengis.net/ogc">
            <PropertyIsEqualTo>
              <PropertyName>aeroway_type</PropertyName>
              <Literal>taxiway</Literal>
            </PropertyIsEqualTo>
          </Filter>
          <MaxScaleDenominator>250000</MaxScaleDenominator>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke-width">2.0</CssParameter>
              <CssParameter name="stroke">#675e71</CssParameter>
              <CssParameter name="stroke-linecap">round</CssParameter>
            </Stroke>
          </LineSymbolizer>
        </Rule>
      </FeatureTypeStyle>
      <FeatureTypeStyle>
        <Rule>
          <Filter xmlns="http://www.opengis.net/ogc">
            <PropertyIsEqualTo>
              <PropertyName>aeroway_type</PropertyName>
              <Literal>runway</Literal>
            </PropertyIsEqualTo>
          </Filter>
          <MaxScaleDenominator>250000</MaxScaleDenominator>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke-width">2.5</CssParameter>
              <CssParameter name="stroke">#666666</CssParameter>
            </Stroke>
          </LineSymbolizer>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke-dasharray">3</CssParameter>
              <CssParameter name="stroke">#f5f5fa</CssParameter>
            </Stroke>
          </LineSymbolizer>
        </Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>