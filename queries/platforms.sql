SELECT way, CASE (near_metro_line AND near_metro_station_point)
                 WHEN true THEN 'subway_platform'
                 ELSE 'platform'
            END AS type, name
FROM 
  (SELECT way, "railway" AS type, name, ST_intersects(ST_PointOnSurface(way),
  (SELECT ST_Collect(ST_Buffer(way,30))
    FROM planet_osm_line
    WHERE railway='subway')
  ) AS near_metro_line,
  ST_intersects(ST_Centroid(way), (SELECT ST_Collect(ST_Buffer(way,250))
                                     FROM planet_osm_point
                                     WHERE railway IN ('station','halt') AND station='subway')
                                   ) AS near_metro_station_point
  FROM planet_osm_polygon
  WHERE railway = 'platform') AS platforms
ORDER BY type, name
