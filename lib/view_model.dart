import 'dart:math';

import 'package:latlong2/latlong.dart';

import 'model.dart';

class MapViewModel {
  final int maxDataItems;

  const MapViewModel({this.maxDataItems = 0});

  List<String> shuffleImages(List<String> inputImages) {
    final List<String> shuffledImages = List.from(inputImages);
    shuffledImages.shuffle();
    return shuffledImages;
  }

  List<MapNode> generateMapNodes(int count, LatLng initialCenter) {
    final List<MapNode> mapNodes = [];

    for (int i = 0; i < count; i++) {
      final double latOffset = Random().nextDouble() / 12;
      final double lngOffset = Random().nextDouble() / -25;

      final double newLat = initialCenter.latitude + latOffset;
      final double newLng = initialCenter.longitude + lngOffset;

      mapNodes.add(
        MapNode(
          name: "Generated Hotel $i",
          desc: "Ultra clean homely stay",
          price: "₹${Random().nextInt(5000)}",
          avgRating: (Random().nextDouble() * 5).roundToDouble(),
          rantings: Random().nextInt(30),
          images: shuffleImages([
            "https://lh5.googleusercontent.com/p/AF1QipOKsZqZv5pT1e8b8o6rU1DIxdBRjCzA9NBFF5MQ=w408-h306-k-no",
            "https://lh3.googleusercontent.com/gps-proxy/AMy85WLs7-if82AFA9F0rsvMbsfAUfAcP0Dwr8DN-u4QDL0dfVE_SkdVeVF9-NJ-QKHJtyWJvSiNB04XNdooIgmD_rkEJ9Hh1ZanIE5_L0sVyLP47h25vlr-EX3tv2z_c4gH_HEogJrgNqYUIp7WB2kmv62w4lx0U0gHeDL1Z-e8oeAkbYAwBe40JDkyRw=w408-h272-k-no",
            "https://lh5.googleusercontent.com/p/AF1QipNvpkbHCsruGwYaEUyXOdPE-QofR0tVLD_J31B7=w408-h328-k-no",
          ]),
          latLng: LatLng(newLat, newLng),
        ),
      );
    }

    return mapNodes;
  }
}
