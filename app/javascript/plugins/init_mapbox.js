var mapElement = document.getElementById('map');

const buildMap = () => {
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  var map = new mapboxgl.Map({
    container: 'map', // container id
    style: 'mapbox://styles/mapbox/streets-v11', // stylesheet location
    center: [0.0851446, 44.3141892 ], // starting position [lng, lat]
    zoom: 15 // starting zoom
  });

  new mapboxgl.Marker()
      .setLngLat([ 0.0851446, 44.3141892 ])
      .addTo(map);
  ;

  map.addControl(new mapboxgl.NavigationControl());
};


const initMapbox = () => {
  if (mapElement) {
    const map = buildMap();
  }
};

export { initMapbox };


