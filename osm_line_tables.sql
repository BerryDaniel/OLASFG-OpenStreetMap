CREATE INDEX osm_l_idx on lines (aeroway, admin_level, boundary, railway, highway);

VACUUM ANALYZE lines;

CREATE TABLE osm_border (id serial primary key, name varchar(128), boundary varchar(64), category varchar(32),osm_id bigint, modified timestamp);

SELECT AddGeometryColumn('osm_border','geom',4326,'LINESTRING',2);

INSERT INTO osm_border (name,boundary,category,osm_id,modified,geom) SELECT CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name, CAST(boundary AS VARCHAR(64)) AS boundary,admin_level, CAST(FLOOR(CAST(osm_id AS NUMERIC))AS BIGINT) AS osm_id, osm_timestamp::TIMESTAMP AS modified, wkb_geometry FROM lines WHERE admin_level in ('2','4','6');

CREATE INDEX osm_border_geom_idx on osm_border using gist (geom);

DELETE FROM osm_border where not ST_IsValid(geom);

CREATE INDEX osm_border_idx on osm_border (boundary,category);

VACUUM ANALYZE osm_border;

CREATE TABLE osm_transportation (id serial primary key, name varchar(128), osm_tag varchar(32), category varchar(32), ref varchar(8), oneway int, osm_id bigint, modified timestamp);

SELECT AddGeometryColumn('osm_transportation','geom',4326,'LINESTRING',2);

INSERT INTO osm_transportation (name,osm_tag,category,ref,oneway,osm_id,modified,geom) SELECT CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name, cast(aeroway as varchar(32)) as osm_tag,'aeroway',CAST(CASE WHEN length(regexp_replace(replace(regexp_replace(ref,'\;(.*)|\,(.*)',''),' ',''),'^(?!.*[0-9])','')) > 8 THEN null ELSE UPPER(regexp_replace(replace(regexp_replace(ref,'\;(.*)|\,(.*)',''),' ',''),'^(?!.*[0-9])','')) END AS VARCHAR(8)) AS ref,CAST(CASE WHEN oneway = 'yes' THEN 1 ELSE 0 END AS INT) AS oneway,CAST(FLOOR(CAST(osm_id AS NUMERIC))AS BIGINT) AS osm_id, osm_timestamp::timestamp as modified, wkb_geometry from lines where aeroway in ('runway','taxiway');

INSERT INTO osm_transportation (name,osm_tag,category,ref,oneway,osm_id,modified,geom) SELECT CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name,CAST(railway AS VARCHAR(32)) AS rail_type,'railway',CAST(CASE WHEN length(regexp_replace(replace(regexp_replace(ref,'\;(.*)|\,(.*)',''),' ',''),'^(?!.*[0-9])','')) > 8 THEN null ELSE UPPER(regexp_replace(replace(regexp_replace(ref,'\;(.*)|\,(.*)',''),' ',''),'^(?!.*[0-9])','')) END AS VARCHAR(8)) AS ref,CAST(CASE WHEN oneway = 'yes' THEN 1 ELSE 0 END AS INT) AS oneway,CAST(FLOOR(CAST(osm_id AS NUMERIC))AS BIGINT) AS osm_id,osm_timestamp::TIMESTAMP AS modified,wkb_geometry FROM lines WHERE railway IN ('rail','tram','light_rail','narrow_gauge','funicular','disused','subway');

INSERT INTO osm_transportation (name,osm_tag,category,ref,oneway,osm_id,modified,geom) SELECT CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name, CAST(highway AS VARCHAR(32)) AS road_type,'alley',CAST(CASE WHEN length(regexp_replace(replace(regexp_replace(ref,'\;(.*)|\,(.*)',''),' ',''),'^(?!.*[0-9])','')) > 8 THEN null ELSE UPPER(regexp_replace(replace(regexp_replace(ref,'\;(.*)|\,(.*)',''),' ',''),'^(?!.*[0-9])','')) END AS VARCHAR(8)) AS ref, CAST(CASE WHEN oneway = 'yes' THEN 1 ELSE 0 END AS INT) AS oneway, CAST(FLOOR(CAST(osm_id AS NUMERIC))AS BIGINT) AS osm_id, osm_timestamp::TIMESTAMP AS modified, wkb_geometry FROM lines WHERE highway IN ('service');

INSERT INTO osm_transportation (name,osm_tag,category,ref,oneway,osm_id,modified,geom) SELECT CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name, CAST(highway AS VARCHAR(32)) AS road_type,'interchange',CAST(CASE WHEN length(regexp_replace(replace(regexp_replace(ref,'\;(.*)|\,(.*)',''),' ',''),'^(?!.*[0-9])','')) > 8 THEN null ELSE UPPER(regexp_replace(replace(regexp_replace(ref,'\;(.*)|\,(.*)',''),' ',''),'^(?!.*[0-9])','')) END AS VARCHAR(8)) AS ref, CAST(CASE WHEN oneway = 'yes' THEN 1 ELSE 0 END AS INT) AS oneway, CAST(FLOOR(CAST(osm_id AS NUMERIC))AS BIGINT) AS osm_id, osm_timestamp::TIMESTAMP AS modified, wkb_geometry FROM lines WHERE highway IN ('motorway_link');

INSERT INTO osm_transportation (name,osm_tag,category,ref,oneway,osm_id,modified,geom) SELECT CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name, CAST(highway AS VARCHAR(32)) AS road_type,'motorway',CAST(CASE WHEN length(regexp_replace(replace(regexp_replace(ref,'\;(.*)|\,(.*)',''),' ',''),'^(?!.*[0-9])','')) > 8 THEN null ELSE UPPER(regexp_replace(replace(regexp_replace(ref,'\;(.*)|\,(.*)',''),' ',''),'^(?!.*[0-9])','')) END AS VARCHAR(8)) AS ref, CAST(CASE WHEN oneway = 'yes' THEN 1 ELSE 0 END AS INT) AS oneway, CAST(FLOOR(CAST(osm_id AS NUMERIC))AS BIGINT) AS osm_id, osm_timestamp::TIMESTAMP AS modified, wkb_geometry FROM lines WHERE highway IN ('motorway');

INSERT INTO osm_transportation (name,osm_tag,category,ref,oneway,osm_id,modified,geom) SELECT CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name, CAST(highway AS VARCHAR(32)) AS road_type,'primary',CAST(CASE WHEN length(regexp_replace(replace(regexp_replace(ref,'\;(.*)|\,(.*)',''),' ',''),'^(?!.*[0-9])','')) > 8 THEN null ELSE UPPER(regexp_replace(replace(regexp_replace(ref,'\;(.*)|\,(.*)',''),' ',''),'^(?!.*[0-9])','')) END AS VARCHAR(8)) AS ref, CAST(CASE WHEN oneway = 'yes' THEN 1 ELSE 0 END AS INT) AS oneway, CAST(FLOOR(CAST(osm_id AS NUMERIC))AS BIGINT) AS osm_id, osm_timestamp::TIMESTAMP AS modified, wkb_geometry FROM lines WHERE highway IN ('primary','primary_link');

INSERT INTO osm_transportation (name,osm_tag,category,ref,oneway,osm_id,modified,geom) SELECT CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name, CAST(highway AS VARCHAR(32)) AS road_type,'secondary',CAST(CASE WHEN length(regexp_replace(replace(regexp_replace(ref,'\;(.*)|\,(.*)',''),' ',''),'^(?!.*[0-9])','')) > 8 THEN null ELSE UPPER(regexp_replace(replace(regexp_replace(ref,'\;(.*)|\,(.*)',''),' ',''),'^(?!.*[0-9])','')) END AS VARCHAR(8)) AS ref, CAST(CASE WHEN oneway = 'yes' THEN 1 ELSE 0 END AS INT) AS oneway, CAST(FLOOR(CAST(osm_id AS NUMERIC))AS BIGINT) AS osm_id, osm_timestamp::TIMESTAMP AS modified, wkb_geometry FROM lines WHERE highway IN ('secondary','secondary_link');

INSERT INTO osm_transportation (name,osm_tag,category,ref,oneway,osm_id,modified,geom) SELECT CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name, CAST(highway AS VARCHAR(32)) AS road_type,'tertiary',CAST(CASE WHEN length(regexp_replace(replace(regexp_replace(ref,'\;(.*)|\,(.*)',''),' ',''),'^(?!.*[0-9])','')) > 8 THEN null ELSE UPPER(regexp_replace(replace(regexp_replace(ref,'\;(.*)|\,(.*)',''),' ',''),'^(?!.*[0-9])','')) END AS VARCHAR(8)) AS ref, CAST(CASE WHEN oneway = 'yes' THEN 1 ELSE 0 END AS INT) AS oneway, CAST(FLOOR(CAST(osm_id AS NUMERIC))AS BIGINT) AS osm_id, osm_timestamp::TIMESTAMP AS modified, wkb_geometry FROM lines WHERE highway IN ('tertiary','residential','living_street','unclassified','tertiary_link','residential_link','unclassified_link');

INSERT INTO osm_transportation (name,osm_tag,category,ref,oneway,osm_id,modified,geom) SELECT CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name, CAST(highway AS VARCHAR(32)) AS road_type,'trunk',CAST(CASE WHEN length(regexp_replace(replace(regexp_replace(ref,'\;(.*)|\,(.*)',''),' ',''),'^(?!.*[0-9])','')) > 8 THEN null ELSE UPPER(regexp_replace(replace(regexp_replace(ref,'\;(.*)|\,(.*)',''),' ',''),'^(?!.*[0-9])','')) END AS VARCHAR(8)) AS ref, CAST(CASE WHEN oneway = 'yes' THEN 1 ELSE 0 END AS INT) AS oneway, CAST(FLOOR(CAST(osm_id AS NUMERIC))AS BIGINT) AS osm_id, osm_timestamp::TIMESTAMP AS modified, wkb_geometry FROM lines WHERE highway IN ('trunk','trunk_link');

INSERT INTO osm_transportation (name,osm_tag,category,ref,oneway,osm_id,modified,geom) SELECT CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name, CAST(highway AS VARCHAR(32)) AS road_type,'walkway',CAST(CASE WHEN length(regexp_replace(replace(regexp_replace(ref,'\;(.*)|\,(.*)',''),' ',''),'^(?!.*[0-9])','')) > 8 THEN null ELSE UPPER(regexp_replace(replace(regexp_replace(ref,'\;(.*)|\,(.*)',''),' ',''),'^(?!.*[0-9])','')) END AS VARCHAR(8)) AS ref, CAST(CASE WHEN oneway = 'yes' THEN 1 ELSE 0 END AS INT) AS oneway, CAST(FLOOR(CAST(osm_id AS NUMERIC))AS BIGINT) AS osm_id, osm_timestamp::TIMESTAMP AS modified, wkb_geometry FROM lines WHERE highway IN ('pedestrian','footway','path','track');

CREATE INDEX osm_tran_geom_idx on osm_transportation using gist (geom);

delete from osm_transportation where not ST_IsValid(geom);

CREATE INDEX osm_tran_idx on osm_transportation (osm_tag,category,oneway);

VACUUM ANALYZE osm_transportation;


