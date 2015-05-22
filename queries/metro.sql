SELECT way, station, name, UPPER(network) AS network,
  CASE UPPER(network) WHEN 'МОСКОВСКИЙ МЕТРОПОЛИТЕН' THEN 'msk-metro'
                      /*
                      WHEN 'ПЕТЕРБУРГСКИЙ МЕТРОПОЛИТЕН' THEN 'spb-metro'
                      WHEN 'НИЖЕГОРОДСКИЙ МЕТРОПОЛИТЕН' THEN 'niz-metro'
                      WHEN 'КАЗАНСКИЙ МЕТРОПОЛИТЕН' THEN 'kzn-metro'
                      WHEN 'САМАРСКИЙ МЕТРОПОЛИТЕН' THEN 'sam-metro'
                      WHEN 'ЕМУП «ЕКАТЕРИНБУРГСКИЙ МЕТРОПОЛИТЕН»' THEN 'ekb-metro'
                      WHEN 'НОВОСИБИРСКИЙ МЕТРОПОЛИТЕН' THEN 'nsk-metro'
                      WHEN 'МИНСКИЙ МЕТРОПОЛИТЕН' THEN 'min-metro'
                      WHEN 'WARSAW METRO' THEN 'waw-metro'
                      WHEN 'AMSTERDAM METRO' THEN 'ams-metro'
                      WHEN 'GLASGOW SUBWAY' THEN 'gla-metro'
                      WHEN 'TL' THEN 'lau-metro'
                      WHEN 'КП "КИЇВСЬКИЙ МЕТРОПОЛІТЕН"' THEN 'kyiv-metro'
                      WHEN 'КП «ХАРКІВСЬКИЙ МЕТРОПОЛІТЕН»' THEN 'kharkov-metro'
                      WHEN '"КП "ДНЕПРОПЕТРОВСКИЙ МЕТРОПОЛИТЕН""' THEN 'dnepr-metro'
                      WHEN "ATAC" THEN 'rome-metro'
                      WHEN "BAKI METROPOLITENI" THEN 'baki-metro'
                      WHEN "TBILISI METRO" THEN 'tbilisi-metro'
                      WHEN "АЛМАТИНСКИЙ МЕТРОПОЛИТЕН" THEN 'alm-metro'
                      WHEN "ТАШКЕНТСКИЙ МЕТРОПОЛИТЕН" THEN 'uzb-metro'
                      */
                      ELSE 'entrance'
  END AS metro_icon                   
FROM planet_osm_point
WHERE railway='subway_entrance'
  OR station='subway'