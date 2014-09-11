<?xml version="1.0" encoding="utf-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.0.0">
  <NamedLayer>
    <Name>roads</Name>
    <UserStyle>
    <!-- start of interchange casing -->
    <FeatureTypeStyle>
      <Rule>
        <Filter xmlns="http://www.opengis.net/ogc">
          <PropertyIsEqualTo>
            <PropertyName>layer_id</PropertyName>
            <Literal>2</Literal>
          </PropertyIsEqualTo>
        </Filter>
        <MinScaleDenominator>50000</MinScaleDenominator>
        <MaxScaleDenominator>200000</MaxScaleDenominator>
        <LineSymbolizer>
          <Stroke>
            <CssParameter name="stroke">#000000</CssParameter>
            <CssParameter name="stroke-width">3</CssParameter>
            <CssParameter name="stroke-linejoin">round</CssParameter>
            <CssParameter name="stroke-linecap">round</CssParameter>
          </Stroke>
        </LineSymbolizer>
      </Rule>
      <Rule>
        <Filter xmlns="http://www.opengis.net/ogc">
          <PropertyIsEqualTo>
            <PropertyName>layer_id</PropertyName>
            <Literal>2</Literal>
          </PropertyIsEqualTo>
        </Filter>
        <MinScaleDenominator>12500</MinScaleDenominator>
        <MaxScaleDenominator>50000</MaxScaleDenominator>
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
        <Filter xmlns="http://www.opengis.net/ogc">
          <PropertyIsEqualTo>
            <PropertyName>layer_id</PropertyName>
            <Literal>2</Literal>
          </PropertyIsEqualTo>
        </Filter>
        <MinScaleDenominator>2500</MinScaleDenominator>
        <MaxScaleDenominator>12500</MaxScaleDenominator>
        <LineSymbolizer>
          <Stroke>
            <CssParameter name="stroke">#000000</CssParameter>
            <CssParameter name="stroke-width">8</CssParameter>
            <CssParameter name="stroke-linejoin">round</CssParameter>
            <CssParameter name="stroke-linecap">round</CssParameter>
          </Stroke>
        </LineSymbolizer>
      </Rule>
      <Rule>
        <Filter xmlns="http://www.opengis.net/ogc">
          <PropertyIsEqualTo>
            <PropertyName>layer_id</PropertyName>
            <Literal>2</Literal>
          </PropertyIsEqualTo>
        </Filter>
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
    <!-- end of interchange casing -->
    <!-- start of interchange -->
    <FeatureTypeStyle>
      <Rule>
        <Filter xmlns="http://www.opengis.net/ogc">
          <PropertyIsEqualTo>
            <PropertyName>layer_id</PropertyName>
            <Literal>2</Literal>
          </PropertyIsEqualTo>
        </Filter>
        <MinScaleDenominator>50000</MinScaleDenominator>
        <MaxScaleDenominator>200000</MaxScaleDenominator>
        <LineSymbolizer>
          <Stroke>
            <CssParameter name="stroke">#e55050</CssParameter>
            <CssParameter name="stroke-width">1</CssParameter>
            <CssParameter name="stroke-linejoin">round</CssParameter>
            <CssParameter name="stroke-linecap">round</CssParameter>
          </Stroke>
        </LineSymbolizer>
      </Rule>
      <Rule>
        <Filter xmlns="http://www.opengis.net/ogc">
          <PropertyIsEqualTo>
            <PropertyName>layer_id</PropertyName>
            <Literal>2</Literal>
          </PropertyIsEqualTo>
        </Filter>
        <MinScaleDenominator>12500</MinScaleDenominator>
        <MaxScaleDenominator>50000</MaxScaleDenominator>
        <LineSymbolizer>
          <Stroke>
            <CssParameter name="stroke">#e55050</CssParameter>
            <CssParameter name="stroke-width">3</CssParameter>
            <CssParameter name="stroke-linejoin">round</CssParameter>
            <CssParameter name="stroke-linecap">round</CssParameter>
          </Stroke>
        </LineSymbolizer>
      </Rule>
      <Rule>
        <Filter xmlns="http://www.opengis.net/ogc">
          <PropertyIsEqualTo>
            <PropertyName>layer_id</PropertyName>
            <Literal>2</Literal>
          </PropertyIsEqualTo>
        </Filter>
        <MinScaleDenominator>2500</MinScaleDenominator>
        <MaxScaleDenominator>12500</MaxScaleDenominator>
        <LineSymbolizer>
          <Stroke>
            <CssParameter name="stroke">#e55050</CssParameter>
            <CssParameter name="stroke-width">4</CssParameter>
            <CssParameter name="stroke-linejoin">round</CssParameter>
            <CssParameter name="stroke-linecap">round</CssParameter>
          </Stroke>
        </LineSymbolizer>
      </Rule>
      <Rule>
        <Filter xmlns="http://www.opengis.net/ogc">
          <PropertyIsEqualTo>
            <PropertyName>layer_id</PropertyName>
            <Literal>2</Literal>
          </PropertyIsEqualTo>
        </Filter>
        <MaxScaleDenominator>2500</MaxScaleDenominator>
        <LineSymbolizer>
          <Stroke>
            <CssParameter name="stroke">#e55050</CssParameter>
            <CssParameter name="stroke-width">6</CssParameter>
            <CssParameter name="stroke-linejoin">round</CssParameter>
            <CssParameter name="stroke-linecap">round</CssParameter>
          </Stroke>
        </LineSymbolizer>
      </Rule>
    </FeatureTypeStyle>
    <!-- end of interchange -->
    <!-- start of motorway casing -->
    <FeatureTypeStyle>
      <Rule>
        <Filter xmlns="http://www.opengis.net/ogc">
          <PropertyIsEqualTo>
            <PropertyName>layer_id</PropertyName>
            <Literal>1</Literal>
          </PropertyIsEqualTo>
        </Filter>
        <MinScaleDenominator>50000</MinScaleDenominator>
        <MaxScaleDenominator>140000</MaxScaleDenominator>
        <LineSymbolizer>
          <Stroke>
            <CssParameter name="stroke">#000000</CssParameter>
            <CssParameter name="stroke-width">6</CssParameter>
            <CssParameter name="stroke-linejoin">round</CssParameter>
          </Stroke>
        </LineSymbolizer>
      </Rule>
      <Rule>
        <Filter xmlns="http://www.opengis.net/ogc">
          <PropertyIsEqualTo>
            <PropertyName>layer_id</PropertyName>
            <Literal>1</Literal>
          </PropertyIsEqualTo>
        </Filter>      
        <MinScaleDenominator>12500</MinScaleDenominator>
        <MaxScaleDenominator>50000</MaxScaleDenominator>
        <LineSymbolizer>
          <Stroke>
            <CssParameter name="stroke">#000000</CssParameter>
            <CssParameter name="stroke-width">8</CssParameter>
            <CssParameter name="stroke-linejoin">round</CssParameter>
          </Stroke>
        </LineSymbolizer>
      </Rule>
      <Rule>
        <Filter xmlns="http://www.opengis.net/ogc">
          <PropertyIsEqualTo>
            <PropertyName>layer_id</PropertyName>
            <Literal>1</Literal>
          </PropertyIsEqualTo>
        </Filter> 
        <MinScaleDenominator>2500</MinScaleDenominator>
        <MaxScaleDenominator>12500</MaxScaleDenominator>
        <LineSymbolizer>
          <Stroke>
            <CssParameter name="stroke">#000000</CssParameter>
            <CssParameter name="stroke-width">11</CssParameter>
            <CssParameter name="stroke-linejoin">round</CssParameter>
          </Stroke>
        </LineSymbolizer>
      </Rule>
      <Rule>
        <Filter xmlns="http://www.opengis.net/ogc">
          <PropertyIsEqualTo>
            <PropertyName>layer_id</PropertyName>
            <Literal>1</Literal>
          </PropertyIsEqualTo>
        </Filter>      
        <MaxScaleDenominator>2500</MaxScaleDenominator>
        <LineSymbolizer>
          <Stroke>
            <CssParameter name="stroke">#000000</CssParameter>
            <CssParameter name="stroke-width">14</CssParameter>
            <CssParameter name="stroke-linejoin">round</CssParameter>
          </Stroke>
        </LineSymbolizer>
      </Rule>
    </FeatureTypeStyle>
    <!-- end of motorway casing -->
    <!-- start of motorway -->
    <FeatureTypeStyle>
      <Rule>
        <Filter xmlns="http://www.opengis.net/ogc">
          <PropertyIsEqualTo>
            <PropertyName>layer_id</PropertyName>
            <Literal>1</Literal>
          </PropertyIsEqualTo>
        </Filter>    
        <MinScaleDenominator>6500000</MinScaleDenominator>
        <MaxScaleDenominator>25000000</MaxScaleDenominator>
        <LineSymbolizer>
          <Stroke>
            <CssParameter name="stroke">#73452e</CssParameter>
            <CssParameter name="stroke-width">1</CssParameter>
            <CssParameter name="stroke-linejoin">round</CssParameter>
          </Stroke>
        </LineSymbolizer>
      </Rule>
      <Rule>
        <Filter xmlns="http://www.opengis.net/ogc">
          <PropertyIsEqualTo>
            <PropertyName>layer_id</PropertyName>
            <Literal>1</Literal>
          </PropertyIsEqualTo>
        </Filter>
        <MinScaleDenominator>3000000</MinScaleDenominator>
        <MaxScaleDenominator>6500000</MaxScaleDenominator>
        <LineSymbolizer>
          <Stroke>
            <CssParameter name="stroke">#d96d6d</CssParameter>
            <CssParameter name="stroke-width">1</CssParameter>
            <CssParameter name="stroke-linejoin">round</CssParameter>
          </Stroke>
        </LineSymbolizer>
      </Rule>
      <Rule>
        <Filter xmlns="http://www.opengis.net/ogc">
          <PropertyIsEqualTo>
            <PropertyName>layer_id</PropertyName>
            <Literal>1</Literal>
          </PropertyIsEqualTo>
        </Filter>
        <MinScaleDenominator>1500000</MinScaleDenominator>
        <MaxScaleDenominator>3000000</MaxScaleDenominator>
        <LineSymbolizer>
          <Stroke>
            <CssParameter name="stroke">#d94c4c</CssParameter>
            <CssParameter name="stroke-width">4</CssParameter>
            <CssParameter name="stroke-linejoin">round</CssParameter>
          </Stroke>
        </LineSymbolizer>
      </Rule>
      <Rule>
        <Filter xmlns="http://www.opengis.net/ogc">
          <PropertyIsEqualTo>
            <PropertyName>layer_id</PropertyName>
            <Literal>1</Literal>
          </PropertyIsEqualTo>
        </Filter>
        <MinScaleDenominator>750000</MinScaleDenominator>
        <MaxScaleDenominator>1500000</MaxScaleDenominator>
        <LineSymbolizer>
          <Stroke>
            <CssParameter name="stroke">#d94c4c</CssParameter>
            <CssParameter name="stroke-width">5</CssParameter>
            <CssParameter name="stroke-linejoin">round</CssParameter>
          </Stroke>
        </LineSymbolizer>
      </Rule>
      <Rule>
        <Filter xmlns="http://www.opengis.net/ogc">
          <PropertyIsEqualTo>
            <PropertyName>layer_id</PropertyName>
            <Literal>1</Literal>
          </PropertyIsEqualTo>
        </Filter>
        <MinScaleDenominator>50000</MinScaleDenominator>
        <MaxScaleDenominator>750000</MaxScaleDenominator>
        <LineSymbolizer>
          <Stroke>
            <CssParameter name="stroke">#e55050</CssParameter>
            <CssParameter name="stroke-width">4</CssParameter>
            <CssParameter name="stroke-linejoin">round</CssParameter>
          </Stroke>
        </LineSymbolizer>
      </Rule>
      <Rule>
        <Filter xmlns="http://www.opengis.net/ogc">
          <PropertyIsEqualTo>
            <PropertyName>layer_id</PropertyName>
            <Literal>1</Literal>
          </PropertyIsEqualTo>
        </Filter>
        <MinScaleDenominator>12500</MinScaleDenominator>
        <MaxScaleDenominator>50000</MaxScaleDenominator>
        <LineSymbolizer>
          <Stroke>
            <CssParameter name="stroke">#e55050</CssParameter>
            <CssParameter name="stroke-width">5</CssParameter>
            <CssParameter name="stroke-linejoin">round</CssParameter>
          </Stroke>
        </LineSymbolizer>
      </Rule>
      <Rule>
        <Filter xmlns="http://www.opengis.net/ogc">
          <PropertyIsEqualTo>
            <PropertyName>layer_id</PropertyName>
            <Literal>1</Literal>
          </PropertyIsEqualTo>
        </Filter>
        <MinScaleDenominator>2500</MinScaleDenominator>
        <MaxScaleDenominator>12500</MaxScaleDenominator>
        <LineSymbolizer>
          <Stroke>
            <CssParameter name="stroke">#e55050</CssParameter>
            <CssParameter name="stroke-width">7</CssParameter>
            <CssParameter name="stroke-linejoin">round</CssParameter>
          </Stroke>
        </LineSymbolizer>
      </Rule>
      <Rule>
        <Filter xmlns="http://www.opengis.net/ogc">
          <PropertyIsEqualTo>
            <PropertyName>layer_id</PropertyName>
            <Literal>1</Literal>
          </PropertyIsEqualTo>
        </Filter>
        <MaxScaleDenominator>2500</MaxScaleDenominator>
        <LineSymbolizer>
          <Stroke>
            <CssParameter name="stroke">#e55050</CssParameter>
            <CssParameter name="stroke-width">10</CssParameter>
            <CssParameter name="stroke-linejoin">round</CssParameter>
          </Stroke>
        </LineSymbolizer>
      </Rule>
    </FeatureTypeStyle>
    <!-- end of motorway -->
    <!-- start of motorway centerline -->
    <FeatureTypeStyle>
      <Rule>
        <Filter xmlns="http://www.opengis.net/ogc">
          <PropertyIsEqualTo>
            <PropertyName>layer_id</PropertyName>
            <Literal>1</Literal>
          </PropertyIsEqualTo>
        </Filter>
        <MinScaleDenominator>1500000</MinScaleDenominator>
        <MaxScaleDenominator>3000000</MaxScaleDenominator>
        <LineSymbolizer>
          <Stroke>
            <CssParameter name="stroke">#fae57d</CssParameter>
            <CssParameter name="stroke-width">1</CssParameter>
            <CssParameter name="stroke-linejoin">round</CssParameter>
          </Stroke>
        </LineSymbolizer>
      </Rule>
      <Rule>
        <Filter xmlns="http://www.opengis.net/ogc">
          <PropertyIsEqualTo>
            <PropertyName>layer_id</PropertyName>
            <Literal>1</Literal>
          </PropertyIsEqualTo>
        </Filter>
        <MinScaleDenominator>750000</MinScaleDenominator>
        <MaxScaleDenominator>1500000</MaxScaleDenominator>
        <LineSymbolizer>
          <Stroke>
            <CssParameter name="stroke">#fae57d</CssParameter>
            <CssParameter name="stroke-width">1.5</CssParameter>
            <CssParameter name="stroke-linejoin">round</CssParameter>
          </Stroke>
        </LineSymbolizer>
      </Rule>
      <Rule>
        <Filter xmlns="http://www.opengis.net/ogc">
          <PropertyIsEqualTo>
            <PropertyName>layer_id</PropertyName>
            <Literal>1</Literal>
          </PropertyIsEqualTo>
        </Filter>
        <MinScaleDenominator>50000</MinScaleDenominator>
        <MaxScaleDenominator>750000</MaxScaleDenominator>
        <LineSymbolizer>
          <Stroke>
            <CssParameter name="stroke">#ffe14c</CssParameter>
            <CssParameter name="stroke-width">1</CssParameter>
            <CssParameter name="stroke-linejoin">round</CssParameter>
          </Stroke>
        </LineSymbolizer>
      </Rule>
      <Rule>
        <Filter xmlns="http://www.opengis.net/ogc">
          <PropertyIsEqualTo>
            <PropertyName>layer_id</PropertyName>
            <Literal>1</Literal>
          </PropertyIsEqualTo>
        </Filter>
        <MinScaleDenominator>12500</MinScaleDenominator>
        <MaxScaleDenominator>50000</MaxScaleDenominator>
        <LineSymbolizer>
          <Stroke>
            <CssParameter name="stroke">#ffe14c</CssParameter>
            <CssParameter name="stroke-width">2</CssParameter>
            <CssParameter name="stroke-linejoin">round</CssParameter>
          </Stroke>
        </LineSymbolizer>
      </Rule>
      <Rule>
        <Filter xmlns="http://www.opengis.net/ogc">
          <PropertyIsEqualTo>
            <PropertyName>layer_id</PropertyName>
            <Literal>1</Literal>
          </PropertyIsEqualTo>
        </Filter>
        <MinScaleDenominator>2500</MinScaleDenominator>
        <MaxScaleDenominator>12500</MaxScaleDenominator>
        <LineSymbolizer>
          <Stroke>
            <CssParameter name="stroke">#ffe14c</CssParameter>
            <CssParameter name="stroke-width">3</CssParameter>
            <CssParameter name="stroke-linejoin">round</CssParameter>
          </Stroke>
        </LineSymbolizer>
      </Rule>
      <Rule>
        <Filter xmlns="http://www.opengis.net/ogc">
          <PropertyIsEqualTo>
            <PropertyName>layer_id</PropertyName>
            <Literal>1</Literal>
          </PropertyIsEqualTo>
        </Filter>
        <MaxScaleDenominator>2500</MaxScaleDenominator>
        <LineSymbolizer>
          <Stroke>
            <CssParameter name="stroke">#ffe14c</CssParameter>
            <CssParameter name="stroke-width">4</CssParameter>
            <CssParameter name="stroke-linejoin">round</CssParameter>
          </Stroke>
        </LineSymbolizer>
      </Rule>
    </FeatureTypeStyle>
    <!-- end of motorway centerline -->
    <!-- start of ref labels -->
    <FeatureTypeStyle>
      <Rule>
        <Filter xmlns="http://www.opengis.net/ogc">
          <PropertyIsEqualTo>
            <PropertyName>layer_id</PropertyName>
            <Literal>1</Literal>
          </PropertyIsEqualTo>
        </Filter>
        <MinScaleDenominator>50000</MinScaleDenominator>
        <MaxScaleDenominator>3000000</MaxScaleDenominator>
        <TextSymbolizer>
          <Label>
            <PropertyName xmlns="http://www.opengis.net/ogc">ref</PropertyName>
          </Label>
          <Font>
            <CssParameter name="font-size">10</CssParameter>
            <CssParameter name="font-family">Arial</CssParameter>
            <CssParameter name="font-weight">bold</CssParameter>
          </Font>
          <Fill>
            <CssParameter name="fill">#ffffff</CssParameter>
          </Fill>
          <Graphic>
            <ExternalGraphic>
              <OnlineResource xlink:href="motorway_ref.png" xlink:type="simple"/>
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
        <Filter xmlns="http://www.opengis.net/ogc">
          <PropertyIsEqualTo>
            <PropertyName>layer_id</PropertyName>
            <Literal>1</Literal>
          </PropertyIsEqualTo>
        </Filter>
        <MinScaleDenominator>1000</MinScaleDenominator>
        <MaxScaleDenominator>50000</MaxScaleDenominator>
        <TextSymbolizer>
          <Label>
            <PropertyName xmlns="http://www.opengis.net/ogc">ref</PropertyName>
          </Label>
          <Font>
            <CssParameter name="font-size">10</CssParameter>
            <CssParameter name="font-family">Arial</CssParameter>
            <CssParameter name="font-weight">bold</CssParameter>
          </Font>
          <Fill>
            <CssParameter name="fill">#ffffff</CssParameter>
          </Fill>
          <Graphic>
            <ExternalGraphic>
              <OnlineResource xlink:href="motorway_ref.png" xlink:type="simple"/>
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
  </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>