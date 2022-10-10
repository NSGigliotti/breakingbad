import 'package:dio/dio.dart';

abstract class HttpMetod {
  static const String post = 'POST';
  static const String get = 'GET';
  static const String put = 'PUT';
  static const String delete = 'DELETE';
  static const String patch = 'PATCH';
}

class HttpManeger {
  Future<List<dynamic>> restRequest({
    required String url,
    Map? body,
  }) async {
    Dio dio = Dio();

    try {
      Response response = await dio.get(url);

      return response.data;
    } on DioError catch (error) {
      return error.response?.data ?? {};
    } catch (error) {
      return [];
    }
  }
}
