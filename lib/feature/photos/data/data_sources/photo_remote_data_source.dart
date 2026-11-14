import 'package:api_integration_with_clean_architecture/core/constant/api_constant.dart';
import 'package:api_integration_with_clean_architecture/feature/photos/data/models/photo_model.dart';
import 'package:dio/dio.dart';

class PhotoRemoteDataSource {
  final Dio dio ;

  PhotoRemoteDataSource(this.dio);

  Future<List<PhotoModel>> getPhotos() async {
    try {
      final response = await dio.get(
        ApiConstant.photos,
      );

      final List data = response.data;

      return data
          .map((json) => PhotoModel.fromJson(json))
          .toList();
    } on DioException catch (e) {
      throw Exception(
        e.message ?? 'Something went wrong',
      );
    }
  }
}