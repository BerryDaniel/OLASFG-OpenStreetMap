OLASFG-OpenStreetMap
====================

(EPSG:4326) OpenStreetMap data - ogr2ogr loaded and styled for GeoServer

Note: OpenStreetMap is open data, licensed under the Open Data Commons Open Database License and requires that you use the credit “© OpenStreetMap contributors”. http://www.openstreetmap.org/copyright

The data was styled based off of the http://open.mapquest.com/

- Download the planet file at http://planet.osm.org/pbf/planet-latest.osm.pbf
- Download PostgresSQL (9.3 used) and PostGIS (2.1.5 used) at http://www.postgresql.org/download/
- Install (GDAL/OGR >= 1.10.0), binaries can be found at http://trac.osgeo.org/gdal/wiki/DownloadingGdalBinaries or download QGIS at http://www.qgis.org/en/site/
- Load the OpenStreetMap data into PostgreSQL using the following commands:

```createdb -U postgres osm_usa

ogr2ogr --config OGR_INTERLEAVED_READING YES --config OSM_MAX_TMPFILE_SIZE {ADD DEDICATED MEMORY IN MB, E.G. 8000} -f PostgreSQL "PG:host=localhost user={ADD USER} dbname=osm password={ADD PASSWORD}" planet-latest.osm.pbf --debug on```

Example:
ogr2ogr --config OSM_CONFIG_FILE osmconf.ini --config OGR_INTERLEAVED_READING YES --config OSM_MAX_TMPFILE_SIZE {ADD DEDICATED MEMORY IN MB, E.G. 8000} -f PostgreSQL "PG:host=localhost user=postgres dbname=osm password=postgres" planet-latest.osm.pbf points --debug on

- After the ogr2ogr import has finished run the following scripts:
	- OLASFG-OpenStreetMap/postgis-sql/cleanGeometry/cleanGeometry.sql
	- OLASFG-OpenStreetMap/postgis-sql/cleanGeometry/cleanup__geometry.sql

- After the geometries have been cleaned up, run all remaining scripts in the OLASFG-OpenStreetMap/postgis-sql directory to build the required tables
- Download and install GeoServer at http://geoserver.org/
- Add the OLASFG-OpenStreetMap\geoserver\data\workspaces\georemedy directory to your local geoserver/data/workspace directory
- Modify the georemedy/osm/datastore.xml to your PostgreSQL settings
- Start Geoserver and view the georemedy:basemap

Example Screenshot at ~ 1:50,000 scale:

![](http://georemedy.com/wp-content/uploads/2014/09/Example-1.png)

Example Screenshot at ~ 1:10,000 scale:

![](http://georemedy.com/wp-content/uploads/2014/09/Example-2.png)
