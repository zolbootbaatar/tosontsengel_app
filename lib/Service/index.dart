import 'Interceptors.dart';
import 'package:dio/dio.dart';

class ApiService {
  final dio;

  ApiService()
      : dio = Dio(
          BaseOptions(
            baseUrl: 'https://tosontsengel.khs.gov.mn',
            receiveTimeout: const Duration(seconds: 30),
            sendTimeout: const Duration(seconds: 30),
          ),
        )..interceptors.add(CustomInterseptors());

  Future<dynamic> getRequest(String path) async {
    try {
      final response = await dio.get(
        path,
        options: Options(headers: {
          'Content-type': 'application/json',
          'token': '601464e7-1702-44a3-94a7-06b7b64a8eb1'
        }),
      );
      return response;
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e);
    } catch (e) {
      print(e);
      throw Exception(e);
    }
  }

  Future<dynamic> postRequest(String path, {dynamic body}) async {
    try {
      final response = await dio.post(
        path,
        data: body,
        options: Options(headers: {'Content-type': 'application/json'}),
      );
      return response.data;
    } on DioError catch (e) {
      print('----------${e.message}');
      throw Exception(e);
    } catch (e) {
      print(e.toString());

      throw Exception(e);
    }
  }

  Future<dynamic> deleteRequest(String path) async {
    try {
      final response = await dio.delete(
        path,
        options: Options(headers: {'Content-type': 'application/json'}),
      );
      return response.data;
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e);
    } catch (e) {
      print(e.toString());

      throw Exception(e);
    }
  }

  Future<dynamic> putRequest(String path, {dynamic body}) async {
    try {
      final response = await dio.put(
        path,
        data: body,
        options: Options(headers: {'Content-type': 'application/json'}),
      );
      return response.data;
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e);
    } catch (e) {
      print(e.toString());

      throw Exception(e);
    }
  }
}
