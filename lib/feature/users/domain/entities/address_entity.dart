import 'package:api_integration_with_clean_architecture/feature/users/data/models/geo_model.dart';

class AddressEntity {
  const AddressEntity({this.street, this.suite, this.city, this.zipcode, this.geo});

  final String? street;
  final String? suite;
  final String? city;
  final String? zipcode;
  final Geo? geo;
}