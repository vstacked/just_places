class PlaceDetailEntity {
  final String formattedAddress;
  final LocationEntity location;

  const PlaceDetailEntity({
    required this.formattedAddress,
    required this.location,
  });
}

class LocationEntity {
  final double lat;
  final double lng;

  const LocationEntity(this.lat, this.lng);
}
