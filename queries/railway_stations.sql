(SELECT way,railway,station,name,length(name) AS len,
  (SELECT 90+degrees(ST_Azimuth(ST_StartPoint(inter), ST_EndPoint(inter))) 
   FROM (SELECT ST_Intersection(r.way, ST_Buffer(p.way, 100)) AS inter 
         FROM planet_osm_line r
         WHERE r.railway IN ('rail', 'tram', 'monorail', 'light_rail', 'funicular', 'narrow_gauge') AND r.way && ST_Buffer(p.way, 100)
         ORDER BY ST_Distance(r.way, p.way) LIMIT 1
        ) rr
  ) AS angle 
 FROM planet_osm_point p 
 WHERE railway IN ('station', 'halt', 'tram_stop') AND (station IS NULL OR (station != 'subway' AND station != 'disused'))
) AS data