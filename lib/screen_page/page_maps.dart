import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class MapsFlutter extends StatefulWidget {
  const MapsFlutter({Key? key}) : super(key: key);

  @override
  State<MapsFlutter> createState() => _MapsFlutterState();
}

class _MapsFlutterState extends State<MapsFlutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Maps Flutter'),
        backgroundColor: Colors.deepPurple,
      ),
      body:
      GoogleMap(
        myLocationEnabled: true,
        initialCameraPosition: const CameraPosition(
            target: LatLng(-0.9145393574758512, 100.46614925234854), zoom: 16),
        mapType: MapType.normal,
        markers: {
          const Marker(
              markerId: MarkerId("Politeknik Negeri Padang"),
              position: LatLng(-0.9145393574758512, 100.46614925234854),
              infoWindow: InfoWindow(
                  title: 'Politeknik Negeri Padang',
                  snippet: 'Jl. Kampus, Limau Manis, Kec. Pauh, Kota Padang, Sumatera Barat 25164'))
        },
      ),
    );
  }
}
