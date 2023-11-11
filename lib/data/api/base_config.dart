import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

const String baseUrl = "https://api.tnpnsut.in";

abstract class BaseRepository {
  final dio = Dio();
  final storage = const FlutterSecureStorage();
}
