(function(){
  $('.carousel-showmanymoveone .item').each(function(){
    var itemToClone = $(this);

    for (var i=1;i<6;i++) {
      itemToClone = itemToClone.next();

      // wrap around if at end of item collection
      if (!itemToClone.length) {
        itemToClone = $(this).siblings(':first');
      }

      // grab item, clone, add marker class, add to collection
      itemToClone.children(':first-child').clone()
        .addClass("cloneditem-"+(i))
        .appendTo($(this));
    }
  });
}());

var mapa;
var  myLatLng = "";
function miposicion()
{
  if (navigator.geolocation) {

    navigator.geolocation.getCurrentPosition(function(position){
    var latitud = position.coords.latitude;
    var longitud = position.coords.longitude;

    mapa = new google.maps.Map(document.getElementById('mapa'), {
            center: {lat: latitud , lng: longitud},
            zoom: 16
          });

    var marker = new google.maps.Marker({
        position: {lat: latitud, lng:longitud},
        map: mapa,
        title: 'Hello World!'
      });
    marker.setMap(mapa);

    });


  } else {   alert("no se puede");
  }
}
miposicion();

function recarga()
{
  location.reload();
}
