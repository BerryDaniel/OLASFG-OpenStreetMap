<?xml version="1.0" encoding="utf-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.0.0">
  <NamedLayer>
    <Name>road_primary</Name>
    <UserStyle>
  <!-- start of primary casing -->
  <FeatureTypeStyle>
        <Rule>
          <MinScaleDenominator>750000</MinScaleDenominator>
          <MaxScaleDenominator>1500000</MaxScaleDenominator>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#000000</CssParameter>
              <CssParameter name="stroke-width">2</CssParameter>
              <CssParameter name="stroke-linejoin">round</CssParameter>
              <CssParameter name="stroke-linecap">round</CssParameter>
            </Stroke>
          </LineSymbolizer>
        </Rule>
        <Rule>
          <MinScaleDenominator>200000</MinScaleDenominator>
          <MaxScaleDenominator>750000</MaxScaleDenominator>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#000000</CssParameter>
              <CssParameter name="stroke-width">2</CssParameter>
              <CssParameter name="stroke-linejoin">round</CssParameter>
              <CssParameter name="stroke-linecap">round</CssParameter>
            </Stroke>
          </LineSymbolizer>
        </Rule>
        <Rule>
          <MinScaleDenominator>50000</MinScaleDenominator>
          <MaxScaleDenominator>200000</MaxScaleDenominator>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#000000</CssParameter>
              <CssParameter name="stroke-width">4</CssParameter>
              <CssParameter name="stroke-linejoin">round</CssParameter>
              <CssParameter name="stroke-linecap">round</CssParameter>
            </Stroke>
          </LineSymbolizer>
        </Rule>
        <Rule>
          <MinScaleDenominator>25000</MinScaleDenominator>
          <MaxScaleDenominator>50000</MaxScaleDenominator>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#000000</CssParameter>
              <CssParameter name="stroke-width">4</CssParameter>
              <CssParameter name="stroke-linejoin">round</CssParameter>
              <CssParameter name="stroke-linecap">round</CssParameter>
            </Stroke>
          </LineSymbolizer>
        </Rule>
        <Rule>
          <MinScaleDenominator>12500</MinScaleDenominator>
          <MaxScaleDenominator>25000</MaxScaleDenominator>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#000000</CssParameter>
              <CssParameter name="stroke-width">5</CssParameter>
              <CssParameter name="stroke-linejoin">round</CssParameter>
              <CssParameter name="stroke-linecap">round</CssParameter>
            </Stroke>
          </LineSymbolizer>
        </Rule>
        <Rule>
          <MinScaleDenominator>2500</MinScaleDenominator>
          <MaxScaleDenominator>12500</MaxScaleDenominator>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#000000</CssParameter>
              <CssParameter name="stroke-width">7</CssParameter>
              <CssParameter name="stroke-linejoin">round</CssParameter>
              <CssParameter name="stroke-linecap">round</CssParameter>
            </Stroke>
          </LineSymbolizer>
        </Rule>
    <Rule>
          <MaxScaleDenominator>2500</MaxScaleDenominator>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#000000</CssParameter>
              <CssParameter name="stroke-width">10</CssParameter>
              <CssParameter name="stroke-linejoin">round</CssParameter>
          <CssParameter name="stroke-linecap">round</CssParameter>
            </Stroke>
          </LineSymbolizer>
        </Rule>
    </FeatureTypeStyle>
    <!-- end of primary casing -->
    <!-- start of primary -->
    <FeatureTypeStyle>
        <Rule>    
          <MinScaleDenominator>3000000</MinScaleDenominator>
          <MaxScaleDenominator>6500000</MaxScaleDenominator>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#bebebe</CssParameter>
              <CssParameter name="stroke-width">0.5</CssParameter>
              <CssParameter name="stroke-linejoin">round</CssParameter>
              <CssParameter name="stroke-linecap">round</CssParameter>
            </Stroke>
          </LineSymbolizer>
        </Rule>
        <Rule>    
          <MinScaleDenominator>1500000</MinScaleDenominator>
          <MaxScaleDenominator>3000000</MaxScaleDenominator>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#e6d373</CssParameter>
              <CssParameter name="stroke-width">1</CssParameter>
              <CssParameter name="stroke-linejoin">round</CssParameter>
              <CssParameter name="stroke-linecap">round</CssParameter>
            </Stroke>
          </LineSymbolizer>
        </Rule>
        <Rule>
          <MinScaleDenominator>750000</MinScaleDenominator>
          <MaxScaleDenominator>1500000</MaxScaleDenominator>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#fdeb8c</CssParameter>
              <CssParameter name="stroke-width">1</CssParameter>
              <CssParameter name="stroke-linejoin">round</CssParameter>
              <CssParameter name="stroke-linecap">round</CssParameter>
            </Stroke>
          </LineSymbolizer>
        </Rule>
        <Rule>
          <MinScaleDenominator>200000</MinScaleDenominator>
          <MaxScaleDenominator>750000</MaxScaleDenominator>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#fbe297</CssParameter>
              <CssParameter name="stroke-width">.5</CssParameter>
              <CssParameter name="stroke-linejoin">round</CssParameter>
              <CssParameter name="stroke-linecap">round</CssParameter>
            </Stroke>
          </LineSymbolizer>
        </Rule>
        <Rule>
          <MinScaleDenominator>50000</MinScaleDenominator>
          <MaxScaleDenominator>200000</MaxScaleDenominator>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#fbe297</CssParameter>
              <CssParameter name="stroke-width">1</CssParameter>
              <CssParameter name="stroke-linejoin">round</CssParameter>
              <CssParameter name="stroke-linecap">round</CssParameter>
            </Stroke>
          </LineSymbolizer>
        </Rule>
        <Rule>
          <MinScaleDenominator>25000</MinScaleDenominator>
          <MaxScaleDenominator>50000</MaxScaleDenominator>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#fbe297</CssParameter>
              <CssParameter name="stroke-width">1.5</CssParameter>
              <CssParameter name="stroke-linejoin">round</CssParameter>
              <CssParameter name="stroke-linecap">round</CssParameter>
            </Stroke>
          </LineSymbolizer>
        </Rule>
        <Rule>
          <MinScaleDenominator>12500</MinScaleDenominator>
          <MaxScaleDenominator>25000</MaxScaleDenominator>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#fbe297</CssParameter>
              <CssParameter name="stroke-width">3</CssParameter>
              <CssParameter name="stroke-linejoin">round</CssParameter>
              <CssParameter name="stroke-linecap">round</CssParameter>
            </Stroke>
          </LineSymbolizer>
        </Rule>
        <Rule>
          <MinScaleDenominator>2500</MinScaleDenominator>
          <MaxScaleDenominator>12500</MaxScaleDenominator>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#fbe297</CssParameter>
              <CssParameter name="stroke-width">6</CssParameter>
              <CssParameter name="stroke-linejoin">round</CssParameter>
              <CssParameter name="stroke-linecap">round</CssParameter>
            </Stroke>
          </LineSymbolizer>
        </Rule>
        <Rule>
          <MaxScaleDenominator>2500</MaxScaleDenominator>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#fbe297</CssParameter>
              <CssParameter name="stroke-width">8</CssParameter>
              <CssParameter name="stroke-linejoin">round</CssParameter>
              <CssParameter name="stroke-linecap">round</CssParameter>
            </Stroke>
          </LineSymbolizer>
        </Rule>
      </FeatureTypeStyle>
      <!-- end of primary -->
      <!-- start of ref labels -->
      <FeatureTypeStyle>
        <Rule>
          <MinScaleDenominator>50000</MinScaleDenominator>
          <MaxScaleDenominator>200000</MaxScaleDenominator>
          <TextSymbolizer>
            <Label>
              <ogc:PropertyName>ref</ogc:PropertyName>
            </Label>
            <Font>
              <CssParameter name="font-size">10</CssParameter>
              <CssParameter name="font-family">Arial</CssParameter>
              <CssParameter name="font-weight">bold</CssParameter>
              <CssParameter name="stroke-linecap">round</CssParameter>
            </Font>
            <Fill>
              <CssParameter name="fill">#404040</CssParameter>
            </Fill>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource xlink:href="prim_sec_ref.png" xlink:type="simple"/>
                <Format>image/png</Format>
              </ExternalGraphic>
            </Graphic>
            <VendorOption name="maxDisplacement">50</VendorOption>
            <VendorOption name="labelAllGroup">true</VendorOption>
            <VendorOption name="removeOverlaps">true</VendorOption>
            <VendorOption name="group">true</VendorOption>
            <VendorOption name="spaceAround">50</VendorOption>
            <VendorOption name="graphic-resize">stretch</VendorOption>
            <VendorOption name="graphic-margin">3</VendorOption>
          </TextSymbolizer>
        </Rule>
        <Rule>
          <MinScaleDenominator>1000</MinScaleDenominator>
          <MaxScaleDenominator>50000</MaxScaleDenominator>
          <TextSymbolizer>
            <Label>
              <ogc:PropertyName>ref</ogc:PropertyName>
            </Label>
            <Font>
              <CssParameter name="font-size">10</CssParameter>
              <CssParameter name="font-family">Arial</CssParameter>
              <CssParameter name="font-weight">bold</CssParameter>
            </Font>
            <Fill>
              <CssParameter name="fill">#404040</CssParameter>
            </Fill>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource xlink:href="prim_sec_ref.png" xlink:type="simple"/>
                <Format>image/png</Format>
              </ExternalGraphic>
            </Graphic>
            <VendorOption name="maxDisplacement">50</VendorOption>
            <VendorOption name="labelAllGroup">true</VendorOption>
            <VendorOption name="removeOverlaps">true</VendorOption>
            <VendorOption name="group">true</VendorOption>
            <VendorOption name="spaceAround">50</VendorOption>
            <VendorOption name="graphic-resize">stretch</VendorOption>
            <VendorOption name="graphic-margin">3</VendorOption>
          </TextSymbolizer>
        </Rule>
      </FeatureTypeStyle>
    <!-- end of ref labels -->
      <!-- start of name labels -->
    <FeatureTypeStyle>
    <Rule>
          <MaxScaleDenominator>200000</MaxScaleDenominator>
          <TextSymbolizer>
            <Label>
              <ogc:PropertyName>name</ogc:PropertyName>
            </Label>
            <Font>
              <CssParameter name="font-size">12</CssParameter>
              <CssParameter name="font-family">Arial</CssParameter>
              <CssParameter name="font-weight">bold</CssParameter>
            </Font>
      <LabelPlacement>
              <LinePlacement>
                <PerpendicularOffset>0</PerpendicularOffset>
              </LinePlacement>
            </LabelPlacement>
      <Halo>
        <Radius>2</Radius>
        <Fill><CssParameter name="fill">#ffffff</CssParameter></Fill>
      </Halo>
            <Fill>
              <CssParameter name="fill">#2b2b2b</CssParameter>
            </Fill>
            <VendorOption name="maxDisplacement">50</VendorOption>
            <VendorOption name="labelAllGroup">true</VendorOption>
            <VendorOption name="removeOverlaps">true</VendorOption>
            <VendorOption name="group">true</VendorOption>
            <VendorOption name="spaceAround">20</VendorOption>
      <VendorOption name="followLine">true</VendorOption>
          </TextSymbolizer>
    </Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>