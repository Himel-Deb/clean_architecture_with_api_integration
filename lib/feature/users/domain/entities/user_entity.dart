import 'package:api_integration_with_clean_architecture/feature/users/data/models/address_model.dart';
import 'package:api_integration_with_clean_architecture/feature/users/data/models/company_model.dart';

class UserEntity {

  const UserEntity({
      this.id,
      this.name,
      this.username,
      this.email,
      this.address,
      this.phone,
      this.website,
      this.company});
  
  final int? id;
  final String? name;
  final String? username;
  final String? email;
  final Address? address;
  final String? phone;
  final String? website;
  final Company? company;
}