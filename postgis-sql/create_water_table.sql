SELECT 
CAST(CASE WHEN "natural" IN ('marsh') THEN 'marsh'
WHEN "natural" IN ('wetland') THEN 'wetland'
WHEN "natural" IN ('beach') THEN 'beach'
WHEN "natural" IN ('water') THEN 'water'
WHEN "natural" IN ('bay') THEN 'bay'
WHEN "natural" IN ('mud') THEN 'mud'
WHEN wetland IN ('mangrove') THEN 'mangrove'
WHEN waterway IN ('dock') THEN 'dock'
WHEN waterway IN ('drain') THEN 'drain'
WHEN waterway IN ('canal') THEN 'canal'
WHEN waterway IN ('riverbank') THEN 'riverbank'
WHEN waterway IN ('dam') THEN 'dam'
WHEN landuse IN ('basin') THEN 'basin'
WHEN landuse IN ('water') THEN 'water'
WHEN water IN ('lake') THEN 'lake'
WHEN water IN ('reservoir') THEN 'reservoir'
ELSE 'unknown' END AS VARCHAR(16)) AS water_type,
CAST(ROUND(st_area(st_intersection(wkb_geometry, st_makeenvelope(-180, -90, 180, 90, 4326))::GEOGRAPHY)) AS BIGINT) AS area_meters,
CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name, CAST(FLOOR(CAST(CASE WHEN osm_way_id IS NULL THEN osm_id ELSE osm_way_id END AS NUMERIC))AS BIGINT) AS osm_id, osm_timestamp::TIMESTAMP AS last_modified, wkb_geometry INTO water FROM multipolygons WHERE "natural" IN ('marsh','wetland','beach','water','bay','mud') OR wetland IN ('mangrove') OR waterway IN ('dock','drain','canal','riverbank','dam') OR landuse IN ('basin','water') OR water IN ('lake','reservoir');
CREATE INDEX water_geom_idx ON water USING GIST (wkb_geometry);
CREATE INDEX water_type_idx ON water (water_type);
CREATE INDEX area_meters_idx ON water (area_meters);
VACUUM VERBOSE ANALYZE water;

select * into water_lt_300000 from water where area_meters < 300000;
CREATE INDEX water_lt_300000_geom_idx ON water_lt_300000 USING GIST (wkb_geometry);
CREATE INDEX water_lt_300000_type_idx ON water_lt_300000 (water_type);
CREATE INDEX area_water_lt_300000_idx ON water_lt_300000 (area_meters);
VACUUM VERBOSE ANALYZE water_lt_300000;

select * into water_gte_300000 from water where area_meters >= 300000;
CREATE INDEX water_gte_300000_geom_idx ON water_gte_300000 USING GIST (wkb_geometry);
CREATE INDEX water_gte_300000_type_idx ON water_gte_300000 (water_type);
CREATE INDEX area_water_gte_300000_idx ON water_gte_300000 (area_meters);
VACUUM VERBOSE ANALYZE water_gte_300000;