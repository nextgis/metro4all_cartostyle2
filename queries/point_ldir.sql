create or replace function point_ldir(geometry, float)
    returns double precision as
$$
    select degrees(st_azimuth(st_closestpoint(way, $1),$1)) as angle
    from planet_osm_line
    where way && st_expand($1, $2)
        and railway IN ('rail', 'tram', 'monorail', 'light_rail', 'funicular', 'narrow_gauge')
    order by st_distance(way, $1) asc
    limit 1
$$
language 'sql'
stable;