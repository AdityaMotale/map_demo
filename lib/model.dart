import 'package:latlong2/latlong.dart';

class MapNode {
  final String name;
  final String price;
  final double avgRating;
  final int rantings;
  final List<String> images;
  final LatLng latLng;
  final String desc;

  const MapNode({
    required this.name,
    required this.price,
    required this.avgRating,
    required this.rantings,
    required this.images,
    required this.latLng,
    required this.desc,
  });
}
