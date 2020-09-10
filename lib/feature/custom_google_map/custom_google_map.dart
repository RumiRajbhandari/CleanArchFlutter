import 'package:clean_arch_flutter_demo/feature/custom_google_map/map_marker_model.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CustomGoogleMap extends StatefulWidget {
  final List<MapMarkerModel> mapMarkerModelList;

  CustomGoogleMap(this.mapMarkerModelList);

  @override
  _CustomGoogleMapState createState() => _CustomGoogleMapState();
}

class _CustomGoogleMapState extends State<CustomGoogleMap> {
  GoogleMapController mapController;
  static const zoomLevel = 16.0;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      onMapCreated: _onMapCreated,
      initialCameraPosition: CameraPosition(target: _getZoomPosition(), zoom: zoomLevel),
      markers: _mapToMarkers(),
    );
  }

  LatLng _getZoomPosition() {
    if (widget.mapMarkerModelList.length > 0) {
      return widget.mapMarkerModelList.first.latLng;
    } else {
      return LatLng(0.0, 0.0);
    }
  }

  Set<Marker> _mapToMarkers() {
    var set = widget.mapMarkerModelList
        .map((e) => Marker(
            markerId: MarkerId(e.id.toString()),
            position: e.latLng,
            infoWindow: InfoWindow(title: e.title)))
        .toSet();
    print('se >>>>>>>>>>>>>>>>>>>>is $set');
    return set;
  }
}
