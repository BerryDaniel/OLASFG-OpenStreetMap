SELECT CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name, CAST(FLOOR(CAST(osm_id AS NUMERIC))AS BIGINT) AS osm_id, osm_timestamp::TIMESTAMP AS last_modified, wkb_geometry INTO border_country FROM lines WHERE admin_level in ('2');
CREATE INDEX border_country_geom_idx ON border_country USING GIST (wkb_geometry);