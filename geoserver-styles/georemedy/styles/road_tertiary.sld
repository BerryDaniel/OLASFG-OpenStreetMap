<?xml version="1.0" encoding="utf-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.0.0">
  <NamedLayer>
    <Name>road_tertiary</Name>
    <UserStyle>
  <!-- start of tertiary casing -->
      <FeatureTypeStyle>
        <Rule>
          <MinScaleDenominator>12500</MinScaleDenominator>
          <MaxScaleDenominator>50000</MaxScaleDenominator>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#000000</CssParameter>
              <CssParameter name="stroke-width">2.5</CssParameter>
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
              <CssParameter name="stroke-width">4</CssParameter>
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
              <CssParameter name="stroke-width">6</CssParameter>
              <CssParameter name="stroke-linejoin">round</CssParameter>
          <CssParameter name="stroke-linecap">round</CssParameter>
            </Stroke>
          </LineSymbolizer>
        </Rule>
    </FeatureTypeStyle>
    <!-- end of tertiary casing -->
    <!-- start of tertiary -->
    <FeatureTypeStyle>
        <Rule>
          <MinScaleDenominator>100000</MinScaleDenominator>
          <MaxScaleDenominator>200000</MaxScaleDenominator>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#b2b2b2</CssParameter>
              <CssParameter name="stroke-width">.25</CssParameter>
              <CssParameter name="stroke-linejoin">round</CssParameter>
              <CssParameter name="stroke-linecap">round</CssParameter>
            </Stroke>
          </LineSymbolizer>
        </Rule>
        <Rule>
          <MinScaleDenominator>50000</MinScaleDenominator>
          <MaxScaleDenominator>100000</MaxScaleDenominator>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#bebebe</CssParameter>
              <CssParameter name="stroke-width">.5</CssParameter>
              <CssParameter name="stroke-linejoin">round</CssParameter>
              <CssParameter name="stroke-linecap">round</CssParameter>
            </Stroke>
          </LineSymbolizer>
        </Rule>
        <Rule>
          <MinScaleDenominator>12500</MinScaleDenominator>
          <MaxScaleDenominator>50000</MaxScaleDenominator>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#ffffff</CssParameter>
              <CssParameter name="stroke-width">.5</CssParameter>
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
              <CssParameter name="stroke">#ffffff</CssParameter>
              <CssParameter name="stroke-width">2</CssParameter>
              <CssParameter name="stroke-linejoin">round</CssParameter>
              <CssParameter name="stroke-linecap">round</CssParameter>
            </Stroke>
          </LineSymbolizer>
        </Rule>
        <Rule>
          <MaxScaleDenominator>2500</MaxScaleDenominator>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#ffffff</CssParameter>
              <CssParameter name="stroke-width">4</CssParameter>
              <CssParameter name="stroke-linejoin">round</CssParameter>
              <CssParameter name="stroke-linecap">round</CssParameter>
            </Stroke>
          </LineSymbolizer>
        </Rule>
      </FeatureTypeStyle>
	  <!-- end of ref labels -->
    <!-- start of name labels -->
    <FeatureTypeStyle>
    <Rule>
          <MaxScaleDenominator>25000</MaxScaleDenominator>
		  <MinScaleDenominator>5000</MinScaleDenominator>
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
	<Rule>
          <MaxScaleDenominator>5000</MaxScaleDenominator>
          <TextSymbolizer>
            <Label>
              <ogc:PropertyName>name</ogc:PropertyName>
            </Label>
            <Font>
              <CssParameter name="font-size">11</CssParameter>
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
      <!-- end of tertiary -->
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>