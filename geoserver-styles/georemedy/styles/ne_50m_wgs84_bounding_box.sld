<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0" 
 xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd" 
 xmlns="http://www.opengis.net/sld" 
 xmlns:ogc="http://www.opengis.net/ogc" 
 xmlns:xlink="http://www.w3.org/1999/xlink" 
 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <NamedLayer>
    <Name>ne_bbox</Name>
    <UserStyle>
      <Title>ne_bbox</Title>
      <Abstract></Abstract>
      <FeatureTypeStyle>
        <Rule>
          <PolygonSymbolizer>
            <Fill>
              <GraphicFill>
                <Graphic>
                  <ExternalGraphic>
                    <OnlineResource xlink:type="simple" xlink:href="water.png" />
                    <Format>image/png</Format>
                  </ExternalGraphic>  
                </Graphic>
              </GraphicFill>
            </Fill>
          </PolygonSymbolizer>
        </Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>