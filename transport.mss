/* ---- Subway stations --------------------------------------------------- */

#subway[zoom>=13] {

 // в осме у точек станций должен быть тег network, если его нет, то operator. 
  [zoom >= 14][station='subway'] {
    text-name: "[name]";
    text-face-name: @sans;
    text-fill: @subway_text;
    text-size: 11;
    text-allow-overlap: false;
    text-halo-radius: 1.5;
    text-halo-fill: @subway_halo;    
    //text-dx: 7;
    //text-dy: 7;
    text-placement-type: simple;
    //text-placements: "E,W,N,S,NE,NW,SW,SE";
    text-wrap-width: 80;
    text-dx: 11;
    text-dy: 11;
    text-placements: "S,N,E,W,SE,NW";
    marker-allow-overlap:false;
    marker-width: 12;
    [metro_icon='entrance-metro'] {
      marker-file: url('img/icon/metro/src/entrance-18.svg');
    }
    [metro_icon='msk-metro'] {
      marker-file: url('img/icon/metro/src/msk-metro-18.svg');
    }
    [metro_icon='spb-metro'] {
      marker-file: url('img/icon/metro/src/spb-metro-18.svg');
    }
    [metro_icon='niz-metro'] {
      marker-file: url('img/icon/metro/src/niz-metro-18.svg');
      marker-width: 12;
    }
    [metro_icon='kzn-metro'] {
      marker-file: url('img/icon/metro/src/kzn-metro-18.svg');
    }
    [metro_icon='sam-metro'] {
      marker-file: url('img/icon/metro/src/sam-metro-18.svg');
    }
    [metro_icon='ekb-metro'] {
      marker-file: url('img/icon/metro/src/ekb-metro-18.svg');
    }
    [metro_icon='nsk-metro'] {
      marker-file: url('img/icon/metro/src/nsk-metro-18.svg');
    }
    [metro_icon='min-metro'] {
      marker-file: url('img/icon/metro/src/min-metro-18.svg');
    }
    [metro_icon='waw-metro'] {
      marker-file: url('img/icon/metro/src/waw-metro-18.svg');
    }
    [metro_icon='ams-metro'] {
      marker-file: url('img/icon/metro/src/ams-metro-18.svg');
    }
    [metro_icon='gla-metro'] {
      marker-file: url('img/icon/metro/src/gla-metro-18.svg');
    }
    [metro_icon='lau-metro'] {
      marker-file: url('img/icon/metro/src/lau-metro-18.svg');
    }
  }
  [zoom >= 17][station='subway'] {
    text-size: 13;
    text-halo-radius: 2;
    marker-width: 18;
  }
}

/* ---- Subway platforms --------------------------------------------------- */

#platforms {  
  [type="subway_platform"][zoom>=17] {
    polygon-fill: #444;
    polygon-comp-op: minus;
  }  
}
//@rdz variables from osm-bright roads block
#pathways_underground[zoom>=17][zoom<=20] {
  line-cap: square;
  line-join: miter;
  line-color: #444;
  line-comp-op: minus;
  /*[zoom=15] {
    line-width: @rdz15_min / 4 + 2;
  }
  [zoom=16] {
    line-width: @rdz16_min / 4 + 2;
  }*/
  [zoom>=17] {
    line-width: @rdz17_min / 4 + 4;
  }
  [zoom>=18] {
    line-width: @rdz18_min / 4 + 6;
  }
}
/* ---- Bus and trolleybus stops and stations ----------------------------------- */
#transport_stops[zoom >= 16] {
  marker-allow-overlap: false;
  marker-width: 12;
  marker-ignore-placement: true;
  marker-max-error: 0.8;
  //marker-file: url('img/maki/src/bus-12.svg');
  marker-file: url('img/maki/src/bus-18i.svg');
  [zoom >= 18] {
    marker-width: 18;
    text-name: "[name]";
    text-face-name: @sans;
    text-fill: @bus_text;
    text-halo-fill: @bus_halo;
    text-size: 10;
    text-dx: 10;
    text-dy: 10;
    text-placement-type: simple;
    text-placements: "E,W,S,N";
    text-halo-radius: 1.5;
    text-wrap-width: 60;
  }
}
/* ---- Railways and stations --------------------------------------------------- */

#depots[zoom>=12] {
  marker-allow-overlap: false;
  marker-width: 16;
  marker-ignore-placement: false;
  marker-file: url('img/maki/src/rail-12i.svg');
  [zoom>=13] {
    text-name: "[name]";
    text-face-name: @sans;
    text-fill: @depot_text;
    text-halo-fill: @depot_halo;
    text-size: 10;
    text-dx: 10;
    text-dy: 10;
    text-placement-type: simple;
    text-placements: "S,N,E,W,NE,NW,SW,SE";
    text-halo-radius: 1.5;
    text-wrap-width: 30;
    //text-min-padding: 1;
  }
}

#railway_stations[zoom>=13] {
  [railway="station"],
  [railway="halt"]  {
    marker-file: url(img/icon/station.svg);
    marker-transform: rotate([angle], 0, 0);
    marker-ignore-placement: true;
    [len<=12],
    [zoom>=14] {
      text-name: "[name]";
      text-face-name: @sans;
      text-fill: @railway_text;
      text-halo-fill: @railway_halo;
      text-size: 10;
      text-dx: 7;
      text-dy: 7;
      text-placement-type: simple;
      text-placements: "E,W,N,S,NE,NW,SW,SE";
      [angle<45],[angle>=135][angle<225],[angle>=315][angle<405] {
          text-placements: "N,S,E,W,NE,NW,SW,SE";
      }
      text-allow-overlap: false;
      text-halo-radius: 1.5;
    }
  }
  [railway="tram_stop"][zoom>=16] {
    //marker-file: url(img/icon/halt.svg);
    //marker-transform: rotate([angle], 0, 0);
    marker-file: url('img/maki/src/rail-light-18i.svg');
    marker-width: 12;
    marker-ignore-placement: true;
    [zoom>=18] {
      marker-width: 18;
      text-name: "[name]";
      text-face-name: @sans;
      text-fill: @tram_text;
      text-halo-fill: @tram_halo;
      text-size: 10;
      text-dx: 11;
      text-dy: 11;
      text-wrap-width: 50;
      text-placement-type: simple;
      //text-placements: "S,N,E,W";
      text-placements: "E,W,N,S,NE,NW,SW,SE";
      [angle<45],[angle>=135][angle<225],[angle>=315][angle<405] {
          text-placements: "N,S,E,W,NE,NW,SW,SE";
      }
      text-allow-overlap: false;
      text-halo-radius: 1.5;
    }
  }
}

/* ---- Airports and aerodromes --------------------------------------------------- */

#airports[zoom>=11] {
  marker-allow-overlap: false;
  marker-width: 18;
  marker-ignore-placement: true;
  marker-file: url('img/maki/src/airport-18.svg');
  text-name: "[name]";
  text-face-name: @sans;
  text-fill: @airport_text;
  text-halo-fill: @airport_halo;
  text-size: 12;
  text-dx: 10;
  text-dy: 10;
  text-placement-type: simple;
  text-placements: "S,N,E,W";
  text-halo-radius: 1.5;
  text-wrap-width: 30;
  //text-min-padding: 1;
}