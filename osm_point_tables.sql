CREATE INDEX osm_p_idx on points (amenity, place, capital);

VACUUM ANALYZE points;

CREATE TABLE osm_amenity (id serial primary key, name varchar(128), category varchar(32), religion varchar(32), osm_id bigint, modified timestamp);

SELECT AddGeometryColumn('osm_amenity','geom',4326,'POINT',2);

INSERT INTO osm_amenity (name,category,religion,osm_id,modified,geom) SELECT CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name,CAST(amenity AS VARCHAR(32)) AS category,CAST(religion AS VARCHAR(32)) AS religion, CAST(FLOOR(CAST(osm_id AS NUMERIC))AS BIGINT) AS osm_id,osm_timestamp::TIMESTAMP AS modified,wkb_geometry FROM points WHERE amenity IN ('embassy','hospital','place_of_worship','police','school');

CREATE INDEX osm_amenity_geom_idx on osm_amenity using gist (geom);

CREATE INDEX osm_amenity_idx on osm_amenity (category);

VACUUM ANALYZE osm_amenity;

CREATE TABLE osm_place (id serial primary key, name varchar(128), capital int, category varchar(32), osm_id bigint, modified timestamp);

SELECT AddGeometryColumn('osm_place','geom',4326,'POINT',2);

INSERT INTO osm_place (name,capital,category,osm_id,modified,geom) SELECT CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name,CAST(CASE WHEN capital in ('yes') THEN 1 ELSE 0 END AS INT) AS capital,'city',CAST(FLOOR(CAST(osm_id AS NUMERIC))AS BIGINT) AS osm_id,osm_timestamp::TIMESTAMP AS modified,wkb_geometry FROM points WHERE place IN ('city','metropolis');

INSERT INTO osm_place (name,capital,category,osm_id,modified,geom) SELECT CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name,0,'continent',CAST(FLOOR(CAST(osm_id AS NUMERIC))AS BIGINT) AS osm_id,osm_timestamp::TIMESTAMP AS modified,wkb_geometry FROM points WHERE place = 'continent';

INSERT INTO osm_place (name,capital,category,osm_id,modified,geom) SELECT CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name,0,'country',CAST(FLOOR(CAST(osm_id AS NUMERIC))AS BIGINT) AS osm_id,osm_timestamp::TIMESTAMP AS modified,wkb_geometry FROM points WHERE place = 'country';

INSERT INTO osm_place (name,capital,category,osm_id,modified,geom) SELECT CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name,0,'county',CAST(FLOOR(CAST(osm_id AS NUMERIC))AS BIGINT) AS osm_id,osm_timestamp::TIMESTAMP AS modified,wkb_geometry FROM points WHERE place = 'county';

INSERT INTO osm_place (name,capital,category,osm_id,modified,geom) SELECT CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name,0,'large_town',CAST(FLOOR(CAST(osm_id AS NUMERIC))AS BIGINT) AS osm_id,osm_timestamp::TIMESTAMP AS modified,wkb_geometry FROM points WHERE place IN ('town','large_town');

INSERT INTO osm_place (name,capital,category,osm_id,modified,geom) SELECT CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name,0,'neighborhood',CAST(FLOOR(CAST(osm_id AS NUMERIC))AS BIGINT) AS osm_id,osm_timestamp::TIMESTAMP AS modified,wkb_geometry FROM points WHERE place IN ('village','hamlet');

INSERT INTO osm_place (name,capital,category,osm_id,modified,geom) SELECT CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name,0,'state',CAST(FLOOR(CAST(osm_id AS NUMERIC))AS BIGINT) AS osm_id,osm_timestamp::TIMESTAMP AS modified,wkb_geometry FROM points WHERE place = 'state';

INSERT INTO osm_place (name,capital,category,osm_id,modified,geom) SELECT CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name,0,'suburb',CAST(FLOOR(CAST(osm_id AS NUMERIC))AS BIGINT) AS osm_id,osm_timestamp::TIMESTAMP AS modified,wkb_geometry FROM points WHERE place IN ('suburb');

CREATE INDEX osm_place_geom_idx on osm_place using gist (geom);

CREATE INDEX osm_place_idx on osm_place (capital,category);

VACUUM ANALYZE osm_place;




