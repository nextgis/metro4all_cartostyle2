# metro4all_cartostyle2
Another try at map style

Setup Instructions
------------------

### 1. Download shapefiles

You will need to download and extract shapefiles before continuing. 

Download them to the `shp` directory in project's folder. You can do this with `wget` like:

    wget http://data.openstreetmapdata.com/land-polygons-split-3857.zip

Once downloaded, extract them from their zip files. 

### 2. Run the shapefiles through shapeindex

Shapeindex is a tool that improves performance for shapefiles in Tilemill. 

Mac and Linux users already have Shapeindex installed through Tilemill but Windows users will need to download [Shapeindex for Windows][] before continuing. 

To run Shapeindex on Mac and Linux, go to the terminal, move to the shp directory of osm-bright, run shapeindex in each shp subdirectory like: 

shapeindex land-polygons-split-3857.shp

[Shapeindex for Windows]: http://mapnik.s3.amazonaws.com/dist/archive/shapeindex-2.2.0-win-x86_32.zip
