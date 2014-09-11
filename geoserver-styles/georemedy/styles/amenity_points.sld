<?xml version="1.0" encoding="utf-8"?>
<StyledLayerDescriptor xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ogc="http://www.opengis.net/ogc" xmlns="http://www.opengis.net/sld" version="1.0.0">
  <NamedLayer>
    <Name>amenity_points</Name>
    <UserStyle>
      <Name>amenity_points</Name>
      <FeatureTypeStyle>
        <Rule>
          <Filter xmlns="http://www.opengis.net/ogc">
            <PropertyIsEqualTo>
              <PropertyName>amenity_type</PropertyName>
              <Literal>embassy</Literal>
            </PropertyIsEqualTo>
          </Filter>
          <MaxScaleDenominator>25000</MaxScaleDenominator>
          <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource xlink:href="embassy.png" xlink:type="simple"/>
                <Format>image/png</Format>
              </ExternalGraphic>
            </Graphic>
          </PointSymbolizer>
        </Rule>
        <Rule>
          <Filter xmlns="http://www.opengis.net/ogc">
            <PropertyIsEqualTo>
              <PropertyName>amenity_type</PropertyName>
              <Literal>hospital</Literal>
            </PropertyIsEqualTo>
          </Filter>
          <MaxScaleDenominator>25000</MaxScaleDenominator>
          <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource xlink:href="hospital.png" xlink:type="simple"/>
                <Format>image/png</Format>
              </ExternalGraphic>
            </Graphic>
          </PointSymbolizer>
        </Rule>    
        <Rule>
          <Filter xmlns="http://www.opengis.net/ogc">
            <PropertyIsEqualTo>
                <PropertyName>amenity_type</PropertyName>
                <Literal>place_of_worship</Literal>
            </PropertyIsEqualTo>
          </Filter>
          <MaxScaleDenominator>15000</MaxScaleDenominator>
          <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource xlink:href="place_of_worship.png" xlink:type="simple"/>
                <Format>image/png</Format>
              </ExternalGraphic>
            </Graphic>
          </PointSymbolizer>
        </Rule>
        <Rule>
          <Filter xmlns="http://www.opengis.net/ogc">
            <PropertyIsEqualTo>
              <PropertyName>amenity_type</PropertyName>
              <Literal>police</Literal>
            </PropertyIsEqualTo>
          </Filter>
          <MaxScaleDenominator>15000</MaxScaleDenominator>
          <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource xlink:href="police.png" xlink:type="simple"/>
                <Format>image/png</Format>
              </ExternalGraphic>
            </Graphic>
          </PointSymbolizer>
        </Rule>
        <Rule>
          <Filter xmlns="http://www.opengis.net/ogc">
            <PropertyIsEqualTo>
              <PropertyName>amenity_type</PropertyName>
              <Literal>school</Literal>
            </PropertyIsEqualTo>
          </Filter>
          <MaxScaleDenominator>15000</MaxScaleDenominator>
          <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource xlink:href="school.png" xlink:type="simple"/>
                <Format>image/png</Format>
              </ExternalGraphic>
            </Graphic>
          </PointSymbolizer>
        </Rule>
      </FeatureTypeStyle>
      <FeatureTypeStyle>
        <Rule>
          <MaxScaleDenominator>10000</MaxScaleDenominator>
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