import 'dart:io';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';

class LoggingInterceptor extends Interceptor {
  Future<String> get _localPath async {
    final directory = await getExternalStorageDirectory();

    return directory!.path;
  }


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
  void onError(DioError error, ErrorInterceptorHandler handler) {
    _logError(error);
    super.onError(error, handler);
  }

  void _logRequest(RequestOptions options) {
    final log = StringBuffer()
      ..write('*** REQUEST ***\n')
      ..write('URI: ${options.uri}\n')
      ..write('Method: ${options.method}\n')
      ..write('Headers: ${options.headers}\n')
      ..write('Body: ${options.data}\n');

    _writeLogToFile(log.toString());
  }

  void _logResponse(Response response) {
    final log = StringBuffer()
      ..write('*** RESPONSE ***\n')
      ..write('URI: ${response.requestOptions.uri}\n')
      ..write('Status code: ${response.statusCode}\n')
      ..write('Headers: ${response.headers}\n')
      ..write('Body: ${response.data}\n');

    _writeLogToFile(log.toString());
  }

  void _logError(DioError error) {
    final log = StringBuffer()
      ..write('*** ERROR ***\n')
      ..write('URI: ${error.requestOptions.uri}\n')
      ..write('Error: ${error.error}\n')
      ..write('Stack trace: ${error.stackTrace}\n');

    _writeLogToFile(log.toString());
  }

  void _writeLogToFile(String log) async {
    print("LOGGING");
    // final file = await _localFile;

    final externalDir = await getExternalStorageDirectory();
    final filePath = '${externalDir!.path}/log.txt';
    final file = File(filePath);
    await file.writeAsString(log, mode: FileMode.append);
  }

  static Future<String> readLog() async {
    final externalDir = await getExternalStorageDirectory();
    final filePath = '${externalDir!.path}/log.txt';
    final file = File(filePath);
    String log = await file.readAsString();
    return log;
  }
}
