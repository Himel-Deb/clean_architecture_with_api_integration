import 'package:api_integration_with_clean_architecture/core/network/dio_network.dart';
import 'package:api_integration_with_clean_architecture/feature/photos/data/data_sources/photo_remote_data_source.dart';
import 'package:api_integration_with_clean_architecture/feature/photos/data/repositories/photo_repository_impl.dart';
import 'package:api_integration_with_clean_architecture/feature/photos/domain/usecase/get_photo.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final dioClient = DioClient();
  final remoteDataSource = PhotoRemoteDataSource(dioClient.dio);
  final repository = PhotoRepositoryImpl(remoteDataSource);
  final getPhoto = GetPhoto(repository);

  try {
    final photos = await getPhoto();

    print('total photo: ${photos.length}');

    for (final photo in photos.take(5)) {
      print('${photo.id} | ${photo.title} | ${photo.thumbnailUrl}');
    }
  } catch (e) {
    print('Error: $e');
  }

  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("data"),
    );
  }
}