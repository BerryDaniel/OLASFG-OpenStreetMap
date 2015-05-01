OLASFG-OpenStreetMap
====================

(EPSG:4326) OpenStreetMap data - ogr2ogr loaded and styled for GeoServer

Note: OpenStreetMap is open data, licensed under the Open Data Commons Open Database License and requires that you use the credit “© OpenStreetMap contributors”. http://www.openstreetmap.org/copyright

The data was styled based off of the http://open.mapquest.com/

- Download the planet file at http://planet.osm.org/pbf/planet-latest.osm.pbf or a smaller extract at http://download.geofabrik.de/
- Download PostgresSQL (9.3 used) and PostGIS (2.1.5 used) at http://www.postgresql.org/download/
- Install (GDAL/OGR >= 1.10.0), binaries can be found at http://trac.osgeo.org/gdal/wiki/DownloadingGdalBinaries
- Load the OpenStreetMap data into PostgreSQL using the following commands:

```
createdb -U postgres osm
```
```
psql -U postgres -d osm_usa -c "CREATE EXTENSION postgis;"
```
```
psql -U postgres -d osm_usa -a -f cleanGeometry.sql
```
```
ogr2ogr --config OSM_CONFIG_FILE osmconf.ini --config OGR_INTERLEAVED_READING YES --config OSM_MAX_TMPFILE_SIZE 8000 -f PostgreSQL "PG:host=localhost user=postgres dbname=osm password=postgres" planet-latest.osm.pbf points --debug on
```
```
psql -U postgres -d osm -a -f osm_point_tables.sql
```
```
psql -U postgres -d osm -a -c "DROP TABLE points;"
```
```
ogr2ogr --config OSM_CONFIG_FILE osmconf.ini --config OGR_INTERLEAVED_READING YES --config OSM_MAX_TMPFILE_SIZE 8000 -f PostgreSQL "PG:host=localhost user=postgres dbname=osm password=postgres" planet-latest.osm.pbf lines --debug on
```
```
psql -U postgres -d osm -a -f osm_line_tables.sql
```
```
psql -U postgres -d osm -a -c "DROP TABLE lines;"
```
```
ogr2ogr --config OSM_CONFIG_FILE osmconf.ini --config OGR_INTERLEAVED_READING YES --config OSM_MAX_TMPFILE_SIZE 8000 -f PostgreSQL "PG:host=localhost user=postgres dbname=osm password=postgres" planet-latest.osm.pbf multipolygons --debug on
```
```
psql -U postgres -d osm -a -f osm_polygon_tables.sql
```
```
psql -U postgres -d osm -a -c "DROP TABLE multipolygons;"
```

- Download and install GeoServer at http://geoserver.org/
- Download the OLASFG-OpenStreetMap.zip (410 MB) at http://download.georemedy.com/OLASFG-OpenStreetMap.zip
- Unzip the openstreetmap.zip into your local geoserver/data/workspace directory
- Modify the geoserver/data/workspace/openstreetmap/pg/datastore.xml to your PostgreSQL settings
- Start Geoserver and view the openstreetmap:basemap

Note: Contains osm_land data from http://openstreetmapdata.com/data/land-polygons (Data is copyright OpenStreetMap contributors and available under the ODbL.)

Important: The sld files reference Unifont Medium font, if you don't have that specific font installed you can download unifont-7.0.06.ttf at http://download.georemedy.com/unifont-7.0.06.ttf or http://unifoundry.com/pub/unifont-7.0.06/font-builds/unifont-7.0.06.ttf.
Note: GPL Unifont is licensed under GPL - http://en.wikipedia.org/wiki/GPL

If you need to add the TTF file then copy the file to your geoserver/data/styles directory and restart GeoServer.

Example Screenshot at ~ 1:136,000 scale:

![](http://georemedy.com/wp-content/uploads/2015/04/basemap_136k.png)
