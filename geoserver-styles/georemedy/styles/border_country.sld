<?xml version="1.0" encoding="utf-8"?>
<StyledLayerDescriptor xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ogc="http://www.opengis.net/ogc" xmlns="http://www.opengis.net/sld" version="1.0.0">
  <NamedLayer>
    <Name>border_country</Name>
    <UserStyle>
      <Name>border_country</Name>
    <!-- casing -->
      <!--<FeatureTypeStyle>
        <Rule>
          <MaxScaleDenominator>12500000</MaxScaleDenominator>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke-width">1.5</CssParameter>
              <CssParameter name="stroke">#6d804c</CssParameter>
              <CssParameter name="stroke-linejoin">round</CssParameter>
            </Stroke>
          </LineSymbolizer>
        </Rule>
      </FeatureTypeStyle>-->
    <!-- end of casing -->
      <FeatureTypeStyle>
        <Rule>
          <MinScaleDenominator>12500000</MinScaleDenominator>
          <MaxScaleDenominator>30000000</MaxScaleDenominator>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke-width">0.5</CssParameter>
              <CssParameter name="stroke">#D3D3D3</CssParameter>
        <CssParameter name="stroke-linejoin">round</CssParameter>
            </Stroke>
          </LineSymbolizer>
        </Rule>
    <Rule>
          <MaxScaleDenominator>12500000</MaxScaleDenominator>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke-dasharray">6 3 3</CssParameter>
        <CssParameter name="stroke-width">1</CssParameter>
              <CssParameter name="stroke">#6d804c</CssParameter>
            </Stroke>
          </LineSymbolizer>
        </Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>