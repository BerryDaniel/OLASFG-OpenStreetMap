--creates new buildng_pofw table
select CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name, cast(religion as varchar(128)) as religion, cast(case when osm_way_id is null then osm_id else osm_way_id end as bigint) as osm_id, osm_timestamp::timestamp as last_modified, wkb_geometry into buildng_pofw from multipolygons where (building is not null and building not in ('fixme','FixMe','FIXME','no','No','non','none','null')) and amenity='place_of_worship';
create index buildng_pofw_geom_idx on buildng_pofw using gist (wkb_geometry);
create index pofw_building_religion_idx on buildng_pofw (religion);
vacuum verbose analyze buildng_pofw;

--creates new building_transportation table
select CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name, cast(case when aeroway in ('terminal') then 'airport_terminal' when building in ('Bahnhof','train_station','Train_station','Train_Station','train_station;bus_station','train_station;station','train_station;yes','train_tation') then 'railway_station' else 'unknown' end as varchar(25)) as building_type, cast(case when osm_way_id is null then osm_id else osm_way_id end as bigint) as osm_id, osm_timestamp::timestamp as last_modified, wkb_geometry into building_transportation from  multipolygons where building in ('Bahnhof','bus station','train_station','Train_station','Train_Station','train_station;bus_station','train_station;station','train_station;yes','train_tation') or ((building is not null or building not in ('fixme','FixMe','FIXME','no','No','non','none','null')) and aeroway in ('terminal'));
create index building_transportation_geom_idx on building_transportation using gist (wkb_geometry);
create index building_transportation_type_idx on building_transportation (building_type);
vacuum verbose analyze building_transportation;

--creates new building_medical
select CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name, cast(case when osm_way_id is null then osm_id else osm_way_id end as bigint) as osm_id, osm_timestamp::timestamp as last_modified, wkb_geometry into building_medical from multipolygons where (building is not null or building not in ('fixme','FixMe','FIXME','no','No','non','none','null')) and amenity = 'hospital';
create index building_medical_geom_idx on building_medical using gist (wkb_geometry);
vacuum verbose analyze building_medical;

--creates new building_education
select CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name, cast(amenity as varchar(25)) as education_type, cast(case when osm_way_id is null then osm_id else osm_way_id end as bigint) as osm_id, osm_timestamp::timestamp as last_modified, wkb_geometry into building_education from multipolygons where (building is not null or building not in ('fixme','FixMe','FIXME','no','No','non','none'',null')) and amenity in ('kindergarten','school','college','university');
create index building_education_geom_idx on building_education using gist (wkb_geometry);
create index building_education_type_idx on building_education (education_type);
vacuum verbose analyze building_education;

--create building_misc table
select cast(building as varchar(64)) as building_type, CAST(COALESCE(name_en,int_name,name) AS VARCHAR(128)) AS name, cast(case when osm_way_id is null then osm_id else osm_way_id end as bigint) as osm_id, osm_timestamp::timestamp as last_modified, wkb_geometry into building_misc from multipolygons where (building is not null or building not in ('fixme','FixMe','FIXME','no','No','non','none','null')) and building not in ('Bahnhof','bus station','train_station','Train_station','Train_Station','train_station;bus_station','train_station;station','train_station;yes','train_tation') and (amenity not in ('place_of_worship','hospital','kindergarten','school','college','university') or amenity is null) and (aeroway not in ('terminal') or aeroway is null);
create index building_misc_geom_idx on building_misc using gist (wkb_geometry);
create index building_misc_type_idx on building_misc (building_type);
vacuum verbose analyze building_misc;
