//Colocar marcadores en el mapa
//   void onTap(LatLng position){
//     final id = _markers.length.toString();
//     final markerId = MarkerId(id);
//     final marker = Marker(
//       markerId: markerId,
//       position: position,
//       draggable: true,
//       anchor: const Offset(0, 0),
//       onTap: (){
//         _markersController.sink.add(id);
//       },
//       onDragEnd: (newPosition) {
//         print("new position $newPosition");
//       }
//     );
//     _markers[markerId] = marker;
//     notifyListeners();
//   }

//Colocar polylines en el mapa
  // void onTap(LatLng position) async{
  //   final PolylineId polylineId = PolylineId(_polylineId);
  //   late Polyline polyline;

  //   if (_polylines.containsKey(polylineId)) {
  //     final tmp = _polylines[polylineId]!;
  //     polyline = tmp.copyWith(
  //       pointsParam: [...tmp.points, position]);
  //   } else {
  //     final color = Colors.primaries[_polylines.length];
  //     polyline = Polyline(
  //       polylineId: polylineId, 
  //       points: [position],
  //       width: 5,
  //       color: color,
  //       startCap: Cap.roundCap,
  //       endCap: Cap.roundCap,
  //     );
  //   }

  //   _polylines[polylineId] = polyline;
  //   notifyListeners();
  // }