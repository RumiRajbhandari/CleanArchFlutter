import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapMarkerModel {
  int id;
  String title;
  LatLng latLng;

  MapMarkerModel({this.id, this.title, this.latLng});
}
