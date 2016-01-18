$(document).ready(function(){
		handler = Gmaps.build('Google');
			handler.buildMap({ provider: {}, internal: {id: 'map'}}, function(){
			  markers = handler.addMarkers([
			    {
			      lat: 44.10737,
			      lng: 0.88878,
			      zoom: -10,
			      infowindow: "LE TOUT VA BIEN<br> 30 place Sylvain Dumon <br> 82400 Valence d'Agen"
			    }
			  ]);
	  handler.bounds.extendWith(markers);
	  handler.fitMapToBounds();
	  handler.getMap().setZoom(18);
	});
});

