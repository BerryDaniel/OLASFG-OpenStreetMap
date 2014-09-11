<?xml version="1.0" encoding="utf-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.0.0">
  <NamedLayer>
    <Name>osm_railway</Name>
    <UserStyle>
      <Name>osm_railway</Name>
      <FeatureTypeStyle>
        <Rule>
          <Filter xmlns="http://www.opengis.net/ogc">
            <PropertyIsEqualTo>
              <PropertyName>rail_type</PropertyName>
              <Literal>rail</Literal>
            </PropertyIsEqualTo>
          </Filter>
          <MinScaleDenominator>150000</MinScaleDenominator>
          <MaxScaleDenominator>750000</MaxScaleDenominator>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke-width">0.8</CssParameter>
              <CssParameter name="stroke">#aaaaaa</CssParameter>
            </Stroke>
          </LineSymbolizer>
        </Rule>
        <Rule>
          <Filter xmlns="http://www.opengis.net/ogc">
              <PropertyIsEqualTo>
                <PropertyName>rail_type</PropertyName>
                <Literal>rail</Literal>
              </PropertyIsEqualTo>
          </Filter>
          <MaxScaleDenominator>150000</MaxScaleDenominator>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke-linejoin">round</CssParameter>
              <CssParameter name="stroke-width">2.5</CssParameter>
              <CssParameter name="stroke">#999999</CssParameter>
            </Stroke>
          </LineSymbolizer>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke-linejoin">round</CssParameter>
              <CssParameter name="stroke-width">2</CssParameter>
              <CssParameter name="stroke">#f8f8fa</CssParameter>
            </Stroke>
          </LineSymbolizer>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#999999</CssParameter>
              <CssParameter name="stroke-width">2</CssParameter>
              <CssParameter name="stroke-dasharray">9  6</CssParameter>
            </Stroke>
          </LineSymbolizer>
        </Rule>
        <Rule>
          <Filter xmlns="http://www.opengis.net/ogc">
            <Or>
              <Or>
                <Or>
                  <PropertyIsEqualTo>
                    <PropertyName>rail_type</PropertyName>
                    <Literal>tram</Literal>
                  </PropertyIsEqualTo>
                  <PropertyIsEqualTo>
                    <PropertyName>rail_type</PropertyName>
                    <Literal>light_rail</Literal>
                  </PropertyIsEqualTo>
                </Or>
                <PropertyIsEqualTo>
                  <PropertyName>rail_type</PropertyName>
                  <Literal>narrow_gauge</Literal>
                </PropertyIsEqualTo>
              </Or>
              <PropertyIsEqualTo>
                <PropertyName>rail_type</PropertyName>
                <Literal>funicular</Literal>
              </PropertyIsEqualTo>
            </Or>
          </Filter>
          <MinScaleDenominator>1000</MinScaleDenominator>
          <MaxScaleDenominator>100000</MaxScaleDenominator>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke-width">0.8</CssParameter>
              <CssParameter name="stroke">#9081bc</CssParameter>
            </Stroke>
          </LineSymbolizer>
        </Rule>
        <Rule>
          <Filter xmlns="http://www.opengis.net/ogc">
            <PropertyIsEqualTo>
              <PropertyName>rail_type</PropertyName>
              <Literal>disused</Literal>
            </PropertyIsEqualTo>
          </Filter>
          <MinScaleDenominator>1000</MinScaleDenominator>
          <MaxScaleDenominator>100000</MaxScaleDenominator>
          <LineSymbolizer>
            <Stroke>
              <GraphicStroke>
                <Graphic>
                  <Mark>
                    <WellKnownName>circle</WellKnownName>
                    <Fill>
                      <CssParameter name="fill">#bab9b9</CssParameter>
                    </Fill>
                    <Stroke>
                      <CssParameter name="stroke">#333333</CssParameter>
                      <CssParameter name="stroke-width">1</CssParameter>
                    </Stroke>
                  </Mark>
                  <Size>3</Size>
                </Graphic>
              </GraphicStroke>
                  <CssParameter name="stroke-dasharray">4 6</CssParameter>
            </Stroke>
          </LineSymbolizer>
        </Rule>
        <Rule>
          <Filter xmlns="http://www.opengis.net/ogc">
            <PropertyIsEqualTo>
              <PropertyName>rail_type</PropertyName>
              <Literal>subway</Literal>
            </PropertyIsEqualTo>
          </Filter>
          <MaxScaleDenominator>100000</MaxScaleDenominator>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke-linejoin">round</CssParameter>
              <CssParameter name="stroke-width">.8</CssParameter>
              <CssParameter name="stroke">#999999</CssParameter>
            </Stroke>
          </LineSymbolizer>
        </Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>