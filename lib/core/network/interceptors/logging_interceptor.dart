import 'package:dio/dio.dart';

class LoggingInterceptor extends Interceptor {


  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    _logRequest(options);
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    _logResponse(response);
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    _logError(err);
    super.onError(err, handler);
  }

  void _logRequest(RequestOptions options) {
    final log = StringBuffer()
      ..write('*** REQUEST ***\n')
      ..write('URI: ${options.uri}\n')
      ..write('Method: ${options.method}\n')
      ..write('Headers: ${options.headers}\n')
      ..write('Body: ${options.data}\n');

    
  }

  void _logResponse(Response response) {
    final log = StringBuffer()
      ..write('*** RESPONSE ***\n')
      ..write('URI: ${response.requestOptions.uri}\n')
      ..write('Status code: ${response.statusCode}\n')
      ..write('Headers: ${response.headers}\n')
      ..write('Body: ${response.data}\n');

   
  }

  void _logError(DioError error) {
    final log = StringBuffer()
      ..write('*** ERROR ***\n')
      ..write('URI: ${error.requestOptions.uri}\n')
      ..write('Error: ${error.error}\n')
      ..write('Stack trace: ${error.stackTrace}\n');

    
  }

  
}
