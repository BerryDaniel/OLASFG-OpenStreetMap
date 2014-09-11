SELECT CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name, CAST(FLOOR(CAST(osm_id AS NUMERIC))AS BIGINT) AS osm_id, osm_timestamp::TIMESTAMP AS last_modified, wkb_geometry INTO place_continent FROM points WHERE place = 'continent';
CREATE INDEX place_continent_geom_idx ON place_continent USING GIST (wkb_geometry);

SELECT CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name, CAST(FLOOR(CAST(osm_id AS NUMERIC))AS BIGINT) AS osm_id, osm_timestamp::TIMESTAMP AS last_modified, wkb_geometry INTO place_country FROM points WHERE place = 'country';
CREATE INDEX place_country_geom_idx ON place_country USING GIST (wkb_geometry);

SELECT CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name, CAST(FLOOR(CAST(osm_id AS NUMERIC))AS BIGINT) AS osm_id, osm_timestamp::TIMESTAMP AS last_modified, wkb_geometry INTO place_state FROM points WHERE place = 'state';
CREATE INDEX place_state_geom_idx ON place_state USING GIST (wkb_geometry);

SELECT CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name, CAST(FLOOR(CAST(osm_id AS NUMERIC))AS BIGINT) AS osm_id, osm_timestamp::TIMESTAMP AS last_modified, wkb_geometry INTO place_county FROM points WHERE place = 'county';
CREATE INDEX place_county_geom_idx ON place_county USING GIST (wkb_geometry);

SELECT CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name, CAST(FLOOR(CAST(osm_id AS NUMERIC))AS BIGINT) AS osm_id, osm_timestamp::TIMESTAMP AS last_modified, wkb_geometry INTO place_city FROM points WHERE place IN ('city','metropolis');
CREATE INDEX place_city_geom_idx ON place_city USING GIST (wkb_geometry);

SELECT CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name, CAST(FLOOR(CAST(osm_id AS NUMERIC))AS BIGINT) AS osm_id, osm_timestamp::TIMESTAMP AS last_modified, wkb_geometry INTO place_large_town FROM points WHERE place IN ('town','large_town');
CREATE INDEX place_large_town_geom_idx ON place_large_town USING GIST (wkb_geometry);

SELECT CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name, CAST(FLOOR(CAST(osm_id AS NUMERIC))AS BIGINT) AS osm_id, osm_timestamp::TIMESTAMP AS last_modified, wkb_geometry INTO place_suburb FROM points WHERE place IN ('suburb');
CREATE INDEX place_suburb_geom_idx ON place_suburb USING GIST (wkb_geometry);

SELECT CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name, CAST(FLOOR(CAST(osm_id AS NUMERIC))AS BIGINT) AS osm_id, osm_timestamp::TIMESTAMP AS last_modified, wkb_geometry INTO place_neighborhood FROM points WHERE place IN ('village','hamlet');
CREATE INDEX place_neighborhood_geom_idx ON place_neighborhood USING GIST (wkb_geometry);