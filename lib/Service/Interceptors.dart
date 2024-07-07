import 'package:dio/dio.dart';

class CustomInterseptors extends InterceptorsWrapper {
  CustomInterseptors()
      : super(
          onRequest:
              (RequestOptions options, RequestInterceptorHandler handler) {
            print(options.uri);
            return handler.next(options);
          },
          onResponse: (Response response, ResponseInterceptorHandler handler) {
            return handler.next(response);
          },
          onError: (DioError e, ErrorInterceptorHandler handler) {
            return handler.next(e);
          },
        );
}
