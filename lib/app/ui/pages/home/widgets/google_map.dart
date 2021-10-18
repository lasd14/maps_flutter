import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

import '../home_controller.dart';

class MapView extends StatelessWidget {
  const MapView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeController>(
      builder: (_, controller, gpsMessageWidget) {

      if(!controller.gpsEnabled){
        return gpsMessageWidget!;
      }

      final initialCameraPosition = CameraPosition(
        target: LatLng(
          controller.initialPosition!.latitude, 
          controller.initialPosition!.longitude
        ),
        zoom: 17  
      );

        return GoogleMap(
            onMapCreated: controller.onMapCreated,
            markers: controller.markers,
            polylines: controller.polylines,
            polygons: controller.polygons,
            initialCameraPosition: initialCameraPosition,
            myLocationButtonEnabled: true,
            myLocationEnabled: true,
            zoomControlsEnabled: true,
            onTap: controller.onTap,
        );
      },
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Para utilizar la app debe habilitar el GPS', textAlign: TextAlign.center,),
            const SizedBox(height: 10,),
            ElevatedButton(
              onPressed: (){
                final controller = context.read<HomeController>();
                controller.turnOnGPS();
              }, 
              child: const Text('Encender GPS')
            )
          ],
        ),
      ),
    );
  }
}