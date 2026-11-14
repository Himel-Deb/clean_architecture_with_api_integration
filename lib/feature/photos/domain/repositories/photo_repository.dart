import 'package:api_integration_with_clean_architecture/feature/photos/domain/entities/photo.dart';

abstract class PhotoRepository {
  Future <List<Photo>> getPhoto();
}
