import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// Esta pantalla recibe los datos de nombre, apellido y coordenadas
class MapScreen extends StatefulWidget {
  final String name;
  final String surname;
  final double lat;
  final double lng;

  const MapScreen({
    super.key,
    required this.name,
    required this.surname,
    required this.lat,
    required this.lng,
  });

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController mapController;

  // Creamos un marcador con datos fijos de ciudad/país
  late final Marker userMarker = Marker(
    markerId: MarkerId('user_marker'),
    position: LatLng(widget.lat, widget.lng), // Pavel Abrue Torres - 2023-1066 
    infoWindow: InfoWindow(
      title: '${widget.name} ${widget.surname}',
      snippet: 'Ciudad: Santo Domingo, País: República Dominicana', // valor fijo mientras Geocoding no funciona
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mapa del Usuario'),
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(widget.lat, widget.lng),
          zoom: 14,
        ),
        markers: {userMarker},
        onMapCreated: (controller) {
          mapController = controller;
        },
      ),
    );
  }
}