 SELECT way, highway AS type, access, 'fill' AS render
  FROM planet_osm_line
  WHERE (highway IS NOT NULL)
    AND highway IN ('footway', 'steps')
    AND (z_order < 0)
  ORDER BY z_order
