CREATE INDEX osm_m_idx on multipolygons (building, aeroway, amenity, "natural", landuse, leisure, wetland, waterway, water);

VACUUM ANALYZE multipolygons;

CREATE TABLE osm_building (id serial primary key, name varchar(128), osm_tag varchar(128), category varchar(32), osm_id bigint, modified timestamp);

SELECT AddGeometryColumn('osm_building','geom',4326,'MULTIPOLYGON',2);

INSERT INTO osm_building (name,osm_tag,category,osm_id,modified,geom) SELECT CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name,cast(religion as varchar(128)) as religion,'pofw',CAST(FLOOR(CAST(COALESCE(osm_id, osm_way_id) AS NUMERIC))AS BIGINT) AS osm_id,osm_timestamp::TIMESTAMP AS modified,wkb_geometry FROM multipolygons WHERE (building is not null and building not in ('fixme','FixMe','FIXME','no','No','non','none','null')) and amenity='place_of_worship';

INSERT INTO osm_building (name,osm_tag,category,osm_id,modified,geom) SELECT CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name,cast(case when aeroway in ('terminal') then 'airport_terminal' when building in ('Bahnhof','train_station','Train_station','Train_Station','train_station;bus_station','train_station;station','train_station;yes','train_tation') then 'railway_station' else 'unknown' end as varchar(128)) as building_type,'transportation',CAST(FLOOR(CAST(COALESCE(osm_id, osm_way_id) AS NUMERIC))AS BIGINT) AS osm_id,osm_timestamp::TIMESTAMP AS modified,wkb_geometry FROM multipolygons where building in ('Bahnhof','bus station','train_station','Train_station','Train_Station','train_station;bus_station','train_station;station','train_station;yes','train_tation') or ((building is not null or building not in ('fixme','FixMe','FIXME','no','No','non','none','null')) and aeroway in ('terminal'));

INSERT INTO osm_building (name,osm_tag,category,osm_id,modified,geom) SELECT CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name,amenity,'medical',CAST(FLOOR(CAST(COALESCE(osm_id, osm_way_id) AS NUMERIC))AS BIGINT) AS osm_id,osm_timestamp::TIMESTAMP AS modified,wkb_geometry FROM multipolygons where (building is not null or building not in ('fixme','FixMe','FIXME','no','No','non','none','null')) and amenity = 'hospital';

INSERT INTO osm_building (name,osm_tag,category,osm_id,modified,geom) SELECT CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name,amenity,'education',CAST(FLOOR(CAST(COALESCE(osm_id, osm_way_id) AS NUMERIC))AS BIGINT) AS osm_id,osm_timestamp::TIMESTAMP AS modified,wkb_geometry FROM multipolygons where (building is not null or building not in ('fixme','FixMe','FIXME','no','No','non','none'',null')) and amenity in ('kindergarten','school','college','university');

INSERT INTO osm_building (name,osm_tag,category,osm_id,modified,geom) SELECT CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name,cast(building as varchar(128)) as building_type,'misc',CAST(FLOOR(CAST(COALESCE(osm_id, osm_way_id) AS NUMERIC))AS BIGINT) AS osm_id,osm_timestamp::TIMESTAMP AS modified,wkb_geometry FROM multipolygons where (building is not null or building not in ('fixme','FixMe','FIXME','no','No','non','none','null')) and building not in ('Bahnhof','bus station','train_station','Train_station','Train_Station','train_station;bus_station','train_station;station','train_station;yes','train_tation') and (amenity not in ('place_of_worship','hospital','kindergarten','school','college','university') or amenity is null) and (aeroway not in ('terminal') or aeroway is null);

CREATE INDEX osm_building_geom_idx on osm_building using gist (geom);

UPDATE osm_building set geom=ST_CollectionExtract(ST_Force_Collection(ST_MakeValid(geom)),3);

UPDATE osm_building set geom=cleangeometry(geom);

DELETE FROM osm_building where not ST_IsValid(geom);

CREATE INDEX osm_building_idx on osm_building (category);

VACUUM ANALYZE osm_building;

CREATE TABLE osm_landcover (id serial primary key, name varchar(128), osm_tag varchar(32), category varchar(32), area bigint, osm_id bigint, modified timestamp);

SELECT AddGeometryColumn('osm_landcover','geom',4326,'MULTIPOLYGON',2);

INSERT INTO osm_landcover (name,osm_tag,category,area,osm_id,modified,geom) SELECT CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name,CAST(CASE WHEN landuse in ('farm') THEN 'farm' WHEN landuse IN ('meadow') THEN 'meadow' WHEN landuse IN ('orchard') THEN 'orchard' WHEN landuse IN ('vineyard') THEN 'vineyard' ELSE 'unknown' END AS VARCHAR(32)) AS landcover_type,'agriculture',CAST(ROUND(st_area(st_intersection(wkb_geometry, st_makeenvelope(-180, -90, 180, 90, 4326))::GEOGRAPHY)) AS BIGINT) AS area_meters,CAST(FLOOR(CAST(COALESCE(osm_id, osm_way_id) AS NUMERIC))AS BIGINT) AS osm_id,osm_timestamp::TIMESTAMP AS modified,wkb_geometry FROM multipolygons WHERE landuse IN ('farm','meadow','orchard','vineyard');

INSERT INTO osm_landcover (name,osm_tag,category,area,osm_id,modified,geom) SELECT CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name,CAST(CASE WHEN "natural" IN ('wood') OR landuse IN ('wood') THEN 'wood' WHEN landuse IN ('forest') THEN 'forest' WHEN landuse IN ('conservation') THEN 'conservation' ELSE 'unknown' END AS VARCHAR(32)) AS landcover_type,'forest',CAST(ROUND(st_area(st_intersection(wkb_geometry, st_makeenvelope(-180, -90, 180, 90, 4326))::GEOGRAPHY)) AS BIGINT) AS area_meters,CAST(FLOOR(CAST(COALESCE(osm_id, osm_way_id) AS NUMERIC))AS BIGINT) AS osm_id,osm_timestamp::TIMESTAMP AS modified,wkb_geometry FROM multipolygons WHERE landuse IN ('forest','conservation','wood') OR "natural" IN ('wood');

INSERT INTO osm_landcover (name,osm_tag,category,area,osm_id,modified,geom) SELECT CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name,CAST(CASE WHEN leisure IN ('recreation_ground') OR landuse IN ('recreation_ground') THEN 'recreation_ground' WHEN landuse IN ('grass') THEN 'grass' WHEN leisure IN ('conservation') THEN 'conservation' WHEN leisure IN ('park') THEN 'park' WHEN leisure IN ('playground') THEN 'playground' WHEN leisure IN ('nature_reserve') THEN 'nature_reserve' WHEN leisure IN ('common') THEN 'common' WHEN leisure IN ('pitch') THEN 'pitch' ELSE 'unknown' END AS VARCHAR(32)) AS landcover_type,'grassland',CAST(ROUND(st_area(st_intersection(wkb_geometry, st_makeenvelope(-180, -90, 180, 90, 4326))::GEOGRAPHY)) AS BIGINT) AS area_meters,CAST(FLOOR(CAST(COALESCE(osm_id, osm_way_id) AS NUMERIC))AS BIGINT) AS osm_id,osm_timestamp::TIMESTAMP AS modified,wkb_geometry FROM multipolygons WHERE leisure IN ('park','playground','nature_reserve','common','pitch','recreation_ground') OR landuse IN ('recreation_ground','grass');

INSERT INTO osm_landcover (name,osm_tag,category,area,osm_id,modified,geom) SELECT CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name,CAST(landuse AS VARCHAR(32)) AS landcover_type,'military',CAST(ROUND(st_area(st_intersection(wkb_geometry, st_makeenvelope(-180, -90, 180, 90, 4326))::GEOGRAPHY)) AS BIGINT) AS area_meters,CAST(FLOOR(CAST(COALESCE(osm_id, osm_way_id) AS NUMERIC))AS BIGINT) AS osm_id,osm_timestamp::TIMESTAMP AS modified,wkb_geometry FROM multipolygons WHERE landuse IN ('military');

INSERT INTO osm_landcover (name,osm_tag,category,area,osm_id,modified,geom) SELECT CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name,CAST("natural" AS VARCHAR(32)) AS landcover_type,'shrub',CAST(ROUND(st_area(st_intersection(wkb_geometry, st_makeenvelope(-180, -90, 180, 90, 4326))::GEOGRAPHY)) AS BIGINT) AS area_meters,CAST(FLOOR(CAST(COALESCE(osm_id, osm_way_id) AS NUMERIC))AS BIGINT) AS osm_id,osm_timestamp::TIMESTAMP AS modified,wkb_geometry FROM multipolygons WHERE "natural" IN ('scrub');

INSERT INTO osm_landcover (name,osm_tag,category,area,osm_id,modified,geom) SELECT CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name,CAST(CASE WHEN "natural" IN ('marsh') THEN 'marsh' WHEN "natural" IN ('wetland') THEN 'wetland' WHEN "natural" IN ('beach') THEN 'beach' WHEN "natural" IN ('water') THEN 'water' WHEN "natural" IN ('bay') THEN 'bay' WHEN "natural" IN ('mud') THEN 'mud' WHEN wetland IN ('mangrove') THEN 'mangrove' WHEN waterway IN ('dock') THEN 'dock' WHEN waterway IN ('drain') THEN 'drain' WHEN waterway IN ('canal') THEN 'canal' WHEN waterway IN ('riverbank') THEN 'riverbank' WHEN waterway IN ('dam') THEN 'dam' WHEN landuse IN ('basin') THEN 'basin' WHEN landuse IN ('water') THEN 'water' WHEN water IN ('lake') THEN 'lake' WHEN water IN ('reservoir') THEN 'reservoir' ELSE 'unknown' END AS VARCHAR(16)) AS water_type,'water',CAST(ROUND(st_area(st_intersection(wkb_geometry, st_makeenvelope(-180, -90, 180, 90, 4326))::GEOGRAPHY)) AS BIGINT) AS area_meters,CAST(FLOOR(CAST(COALESCE(osm_id, osm_way_id) AS NUMERIC))AS BIGINT) AS osm_id,osm_timestamp::TIMESTAMP AS modified,wkb_geometry FROM multipolygons WHERE "natural" IN ('marsh','wetland','beach','water','bay','mud') OR wetland IN ('mangrove') OR waterway IN ('dock','drain','canal','riverbank','dam') OR landuse IN ('basin','water') OR water IN ('lake','reservoir');

CREATE INDEX osm_landcover_geom_idx on osm_landcover using gist (geom);

UPDATE osm_landcover set geom=ST_CollectionExtract(ST_Force_Collection(ST_MakeValid(geom)),3);

UPDATE osm_landcover set geom=cleangeometry(geom);

DELETE FROM osm_landcover where not ST_IsValid(geom);

UPDATE osm_landcover set area=CAST(ROUND(st_area(st_intersection(geom, st_makeenvelope(-180, -90, 180, 90, 4326))::GEOGRAPHY)) AS BIGINT);

CREATE INDEX osm_landcover_idx on osm_landcover (category);

CREATE INDEX osm_landcover_area_idx on osm_landcover (area);

VACUUM ANALYZE osm_landcover;

