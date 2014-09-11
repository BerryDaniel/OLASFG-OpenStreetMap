-- create road_motorway table
SELECT CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name, CAST(highway AS VARCHAR(32)) AS road_type, CAST(CASE WHEN length(regexp_replace(replace(regexp_replace(ref,'\;(.*)|\,(.*)',''),' ',''),'^(?!.*[0-9])','')) > 8 THEN null ELSE UPPER(regexp_replace(replace(regexp_replace(ref,'\;(.*)|\,(.*)',''),' ',''),'^(?!.*[0-9])','')) END AS VARCHAR(8)) AS ref, CAST(CASE WHEN oneway = 'yes' THEN 1 ELSE 0 END AS INT) AS oneway, CAST(FLOOR(CAST(osm_id AS NUMERIC))AS BIGINT) AS osm_id, osm_timestamp::TIMESTAMP AS lASt_modified, wkb_geometry INTO road_motorway FROM lines WHERE highway IN ('motorway');
CREATE INDEX road_motorway_geom_idx on road_motorway using gist (wkb_geometry);
CREATE INDEX road_motorway_idx on road_motorway (road_type,oneway);
VACUUM ANALYZE road_motorway;
-- create road_interchange table
SELECT CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name, CAST(highway AS VARCHAR(32)) AS road_type, CAST(CASE WHEN length(regexp_replace(replace(regexp_replace(ref,'\;(.*)|\,(.*)',''),' ',''),'^(?!.*[0-9])','')) > 8 THEN null ELSE UPPER(regexp_replace(replace(regexp_replace(ref,'\;(.*)|\,(.*)',''),' ',''),'^(?!.*[0-9])','')) END AS VARCHAR(8)) AS ref, CAST(CASE WHEN oneway = 'yes' THEN 1 ELSE 0 END AS INT) AS oneway, CAST(FLOOR(CAST(osm_id AS NUMERIC))AS BIGINT) AS osm_id, osm_timestamp::TIMESTAMP AS lASt_modified, wkb_geometry INTO road_interchange FROM lines WHERE highway IN ('motorway_link');
CREATE INDEX road_interchange_geom_idx on road_interchange using gist (wkb_geometry);
CREATE INDEX road_interchange_idx on road_interchange (road_type,oneway);
VACUUM ANALYZE road_interchange;
-- create road_trunk table
SELECT CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name, CAST(highway AS VARCHAR(32)) AS road_type, CAST(CASE WHEN length(regexp_replace(replace(regexp_replace(ref,'\;(.*)|\,(.*)',''),' ',''),'^(?!.*[0-9])','')) > 8 THEN null ELSE UPPER(regexp_replace(replace(regexp_replace(ref,'\;(.*)|\,(.*)',''),' ',''),'^(?!.*[0-9])','')) END AS VARCHAR(8)) AS ref, CAST(CASE WHEN oneway = 'yes' THEN 1 ELSE 0 END AS INT) AS oneway, CAST(FLOOR(CAST(osm_id AS NUMERIC))AS BIGINT) AS osm_id, osm_timestamp::TIMESTAMP AS lASt_modified, wkb_geometry INTO road_trunk FROM lines WHERE highway IN ('trunk','trunk_link');
CREATE INDEX road_trunk_geom_idx on road_trunk using gist (wkb_geometry);
CREATE INDEX road_trunk_idx on road_trunk (road_type,oneway);
VACUUM ANALYZE road_trunk;
-- create road_primary table
SELECT CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name, CAST(highway AS VARCHAR(32)) AS road_type, CAST(CASE WHEN length(regexp_replace(replace(regexp_replace(ref,'\;(.*)|\,(.*)',''),' ',''),'^(?!.*[0-9])','')) > 8 THEN null ELSE UPPER(regexp_replace(replace(regexp_replace(ref,'\;(.*)|\,(.*)',''),' ',''),'^(?!.*[0-9])','')) END AS VARCHAR(8)) AS ref, CAST(CASE WHEN oneway = 'yes' THEN 1 ELSE 0 END AS INT) AS oneway, CAST(FLOOR(CAST(osm_id AS NUMERIC))AS BIGINT) AS osm_id, osm_timestamp::TIMESTAMP AS lASt_modified, wkb_geometry INTO road_primary FROM lines WHERE highway IN ('primary','primary_link');
CREATE INDEX road_primary_geom_idx on road_primary using gist (wkb_geometry);
CREATE INDEX road_primary_idx on road_primary (road_type,oneway);
VACUUM ANALYZE road_primary;
-- create road_secondary table
SELECT CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name, CAST(highway AS VARCHAR(32)) AS road_type, CAST(CASE WHEN length(regexp_replace(replace(regexp_replace(ref,'\;(.*)|\,(.*)',''),' ',''),'^(?!.*[0-9])','')) > 8 THEN null ELSE UPPER(regexp_replace(replace(regexp_replace(ref,'\;(.*)|\,(.*)',''),' ',''),'^(?!.*[0-9])','')) END AS VARCHAR(8)) AS ref, CAST(CASE WHEN oneway = 'yes' THEN 1 ELSE 0 END AS INT) AS oneway, CAST(FLOOR(CAST(osm_id AS NUMERIC))AS BIGINT) AS osm_id, osm_timestamp::TIMESTAMP AS lASt_modified, wkb_geometry INTO road_secondary FROM lines WHERE highway IN ('secondary','secondary_link');
CREATE INDEX road_secondary_geom_idx on road_secondary using gist (wkb_geometry);
CREATE INDEX road_secondary_idx on road_secondary (road_type,oneway);
VACUUM ANALYZE road_secondary;
-- create road_tertiary table
SELECT CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name, CAST(highway AS VARCHAR(32)) AS road_type, CAST(CASE WHEN oneway = 'yes' THEN 1 ELSE 0 END AS INT) AS oneway, CAST(FLOOR(CAST(osm_id AS NUMERIC))AS BIGINT) AS osm_id, osm_timestamp::TIMESTAMP AS lASt_modified, wkb_geometry INTO road_tertiary FROM lines WHERE highway IN ('tertiary','residential','living_street','unclASsified','tertiary_link','residential_link','unclASsified_link');
CREATE INDEX road_tertiary_geom_idx on road_tertiary using gist (wkb_geometry);
CREATE INDEX road_tertiary_idx on road_tertiary (road_type,oneway);
VACUUM ANALYZE road_tertiary;
-- create road_alley table
SELECT CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name, CAST(highway AS VARCHAR(32)) AS road_type, CAST(CASE WHEN oneway = 'yes' THEN 1 ELSE 0 END AS INT) AS oneway, CAST(FLOOR(CAST(osm_id AS NUMERIC))AS BIGINT) AS osm_id, osm_timestamp::TIMESTAMP AS lASt_modified, wkb_geometry INTO road_alley FROM lines WHERE highway IN ('service');
CREATE INDEX road_alley_geom_idx on road_alley using gist (wkb_geometry);
CREATE INDEX road_alley_idx on road_alley (road_type,oneway);
VACUUM ANALYZE road_alley;
--create road_walkway table
SELECT CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name, CAST(highway AS VARCHAR(32)) AS road_type, CAST(CASE WHEN oneway = 'yes' THEN 1 ELSE 0 END AS INT) AS oneway, CAST(FLOOR(CAST(osm_id AS NUMERIC))AS BIGINT) AS osm_id, osm_timestamp::TIMESTAMP AS lASt_modified, wkb_geometry INTO road_walkway FROM lines WHERE highway IN ('pedestrian','footway','path','track');
CREATE INDEX road_walkway_geom_idx on road_walkway using gist (wkb_geometry);
CREATE INDEX road_walkway_idx on road_walkway (road_type,oneway);
VACUUM ANALYZE road_walkway;