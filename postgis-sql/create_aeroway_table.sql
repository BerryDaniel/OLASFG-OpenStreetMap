select CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name, cast(aeroway as varchar(32)) as aeroway_type, cast(osm_id as bigint) as osm_id, osm_timestamp::timestamp as last_modified, wkb_geometry into aeroway from lines where aeroway in ('runway','taxiway');
create index aeroway_geom_idx on aeroway using gist (wkb_geometry);
create index aeroway_idx on aeroway (aeroway_type);
vacuum verbose analyze aeroway;