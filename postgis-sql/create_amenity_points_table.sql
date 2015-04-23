SELECT 
CAST(amenity AS VARCHAR(32)) AS amenity_type,
CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name, CAST(FLOOR(CAST(osm_id AS NUMERIC))AS BIGINT) AS osm_id, osm_timestamp::TIMESTAMP AS last_modified, wkb_geometry INTO amenity_points FROM points WHERE amenity IN ('embassy','hospital','place_of_worship','police','school');
CREATE INDEX amenity_points_geom_idx ON amenity_points USING GIST (wkb_geometry);
CREATE INDEX amenity_idx ON amenity_points (amenity);
