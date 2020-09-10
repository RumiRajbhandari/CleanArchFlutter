import 'package:clean_arch_flutter_demo/feature/custom_google_map/custom_google_map.dart';
import 'package:clean_arch_flutter_demo/feature/custom_google_map/map_marker_model.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: CustomGoogleMap(
            [MapMarkerModel(id: 1, title: "Outlet One", latLng: LatLng(27.7138239, 85.3018875))]));
  }
}
