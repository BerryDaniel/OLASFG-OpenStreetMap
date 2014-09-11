<?xml version="1.0" encoding="utf-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.0.0">
  <NamedLayer>
    <Name>road_walkway</Name>
    <UserStyle>
    <!-- start of walkway -->
    <FeatureTypeStyle>
        <!--<Rule>
          <MinScaleDenominator>5000</MinScaleDenominator>
          <MaxScaleDenominator>25000</MaxScaleDenominator>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#663300</CssParameter>
              <CssParameter name="stroke-width">.5</CssParameter>
            </Stroke>
          </LineSymbolizer>
        </Rule>
        <Rule>
          <MaxScaleDenominator>5000</MaxScaleDenominator>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#663300</CssParameter>
              <CssParameter name="stroke-width">1</CssParameter>
            </Stroke>
          </LineSymbolizer>
        </Rule>-->
        <Rule>
          <MinScaleDenominator>5000</MinScaleDenominator>
          <MaxScaleDenominator>25000</MaxScaleDenominator>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#663300</CssParameter>
              <CssParameter name="stroke-width">1</CssParameter>
        <CssParameter name="stroke-dasharray">1 2</CssParameter>
            </Stroke>
          </LineSymbolizer>
        </Rule>
        <Rule>
          <MaxScaleDenominator>5000</MaxScaleDenominator>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#663300</CssParameter>
              <CssParameter name="stroke-width">2</CssParameter>
        <CssParameter name="stroke-dasharray">1 2</CssParameter>
            </Stroke>
          </LineSymbolizer>
        </Rule>
      </FeatureTypeStyle>
      <!-- end of walkway -->
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>