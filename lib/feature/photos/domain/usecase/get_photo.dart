import 'package:api_integration_with_clean_architecture/feature/photos/domain/entities/photo.dart';
import 'package:api_integration_with_clean_architecture/feature/photos/domain/repositories/photo_repository.dart';

class GetPhoto {
  final PhotoRepository repository ;
  GetPhoto(this.repository);

  Future<List<Photo>> call(){
    return repository.getPhoto();
  } 
}