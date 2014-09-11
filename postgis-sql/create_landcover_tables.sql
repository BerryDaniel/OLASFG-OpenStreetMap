SELECT 
CAST(CASE WHEN "natural" IN ('wood') OR landuse IN ('wood') THEN 'wood'
WHEN landuse IN ('forest') THEN 'forest'
WHEN landuse IN ('conservation') THEN 'conservation'
ELSE 'unknown' END AS VARCHAR(32)) AS landcover_type,
CAST(ROUND(st_area(st_intersection(wkb_geometry, st_makeenvelope(-180, -90, 180, 90, 4326))::GEOGRAPHY)) AS BIGINT) AS area_meters,
CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name, CAST(FLOOR(CAST(CASE WHEN osm_way_id IS NULL THEN osm_id ELSE osm_way_id END AS NUMERIC))AS BIGINT) AS osm_id, osm_timestamp::TIMESTAMP AS last_modified, wkb_geometry INTO landcover_forest FROM multipolygons WHERE landuse IN ('forest','conservation','wood') OR "natural" IN ('wood');
CREATE INDEX forest_geom_idx ON landcover_forest USING GIST (wkb_geometry);
CREATE INDEX forest_type_idx ON landcover_forest (landcover_type);
CREATE INDEX forest_idx ON landcover_forest (area_meters);

SELECT 
CAST("natural" AS VARCHAR(32)) AS landcover_type,
CAST(ROUND(st_area(st_intersection(wkb_geometry, st_makeenvelope(-180, -90, 180, 90, 4326))::GEOGRAPHY)) AS BIGINT) AS area_meters,
CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name, CAST(FLOOR(CAST(CASE WHEN osm_way_id IS NULL THEN osm_id ELSE osm_way_id END AS NUMERIC))AS BIGINT) AS osm_id, osm_timestamp::TIMESTAMP AS last_modified, wkb_geometry INTO landcover_shrub FROM multipolygons WHERE "natural" IN ('scrub');
CREATE INDEX shrub_geom_idx ON landcover_shrub USING GIST (wkb_geometry);
CREATE INDEX shrub_type_idx ON landcover_shrub (landcover_type);
CREATE INDEX shrub_idx ON landcover_shrub (area_meters);

SELECT 
CAST(CASE WHEN leisure IN ('recreation_ground') OR landuse IN ('recreation_ground') THEN 'recreation_ground'
WHEN landuse IN ('grass') THEN 'grass'
WHEN leisure IN ('conservation') THEN 'conservation'
WHEN leisure IN ('park') THEN 'park'
WHEN leisure IN ('playground') THEN 'playground'
WHEN leisure IN ('nature_reserve') THEN 'nature_reserve'
WHEN leisure IN ('common') THEN 'common'
WHEN leisure IN ('pitch') THEN 'pitch'
ELSE 'unknown' END AS VARCHAR(32)) AS landcover_type,
CAST(ROUND(st_area(st_intersection(wkb_geometry, st_makeenvelope(-180, -90, 180, 90, 4326))::GEOGRAPHY)) AS BIGINT) AS area_meters,
CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name, CAST(FLOOR(CAST(CASE WHEN osm_way_id IS NULL THEN osm_id ELSE osm_way_id END AS NUMERIC))AS BIGINT) AS osm_id, osm_timestamp::TIMESTAMP AS last_modified, wkb_geometry INTO landcover_grassland FROM multipolygons WHERE leisure IN ('park','playground','nature_reserve','common','pitch','recreation_ground') OR landuse IN ('recreation_ground','grass');
CREATE INDEX grassland_geom_idx ON landcover_grassland USING GIST (wkb_geometry);
CREATE INDEX grassland_type_idx ON landcover_grassland (landcover_type);
CREATE INDEX grassland_idx ON landcover_grassland (area_meters);

SELECT 
CAST(CASE WHEN landuse in ('farm') THEN 'farm'
WHEN landuse IN ('meadow') THEN 'meadow'
WHEN landuse IN ('orchard') THEN 'orchard'
WHEN landuse IN ('vineyard') THEN 'vineyard'
ELSE 'unknown' END AS VARCHAR(32)) AS landcover_type,
CAST(ROUND(st_area(st_intersection(wkb_geometry, st_makeenvelope(-180, -90, 180, 90, 4326))::GEOGRAPHY)) AS BIGINT) AS area_meters,
CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name, CAST(FLOOR(CAST(CASE WHEN osm_way_id IS NULL THEN osm_id ELSE osm_way_id END AS NUMERIC))AS BIGINT) AS osm_id, osm_timestamp::TIMESTAMP AS last_modified, wkb_geometry INTO landcover_agriculture FROM multipolygons WHERE landuse IN ('farm','meadow','orchard','vineyard');
CREATE INDEX agriculture_geom_idx ON landcover_agriculture USING GIST (wkb_geometry);
CREATE INDEX agriculture_type_idx ON landcover_agriculture (landcover_type);
CREATE INDEX agriculture_idx ON landcover_agriculture (area_meters);

SELECT 
CAST(landuse AS VARCHAR(32)) AS landcover_type,
CAST(ROUND(st_area(st_intersection(wkb_geometry, st_makeenvelope(-180, -90, 180, 90, 4326))::GEOGRAPHY)) AS BIGINT) AS area_meters, 
CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name, CAST(FLOOR(CAST(CASE WHEN osm_way_id IS NULL THEN osm_id ELSE osm_way_id END AS NUMERIC))AS BIGINT) AS osm_id, osm_timestamp::TIMESTAMP AS last_modified, wkb_geometry INTO landcover_military FROM multipolygons WHERE landuse IN ('military');
CREATE INDEX military_geom_idx ON landcover_military USING GIST (wkb_geometry);
CREATE INDEX military_type_idx ON landcover_military (landcover_type);
CREATE INDEX military_idx ON landcover_military (area_meters);


