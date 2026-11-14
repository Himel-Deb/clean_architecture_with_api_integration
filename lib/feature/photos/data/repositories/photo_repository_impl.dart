import 'package:api_integration_with_clean_architecture/feature/photos/data/data_sources/photo_remote_data_source.dart';
import 'package:api_integration_with_clean_architecture/feature/photos/domain/entities/photo.dart';
import 'package:api_integration_with_clean_architecture/feature/photos/domain/repositories/photo_repository.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoRemoteDataSource photoRemoteDataSource;

  PhotoRepositoryImpl(this.photoRemoteDataSource);

  @override
  Future<List<Photo>> getPhoto() async {
    return await photoRemoteDataSource.getPhotos();
  }

}