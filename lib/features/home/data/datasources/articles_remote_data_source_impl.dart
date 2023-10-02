import 'package:dio/dio.dart';
import 'package:flutter_news_app/features/home/data/models/article_response_model.dart';

import '../../../../core/network/api_end_points.dart';
import '../../../../core/network/dio_client.dart';
import 'articles_remote_data_source.dart';

class ArticlesRemoteDataSourceImpl implements ArticlesRemoteDataSource {
  final DioProvider dio;
  ArticlesRemoteDataSourceImpl({required this.dio});

  @override
  Future<List<Article>> getAllArticles() async {
    try {
      Response response = await dio.client.post(ApiEndPoints.baseUrl);
      // final responseBody = response.data;
      final List<dynamic> jsonBody = response.data;

      List<Article> articles =
          jsonBody.map((json) => Article.fromJson(json)).toList();
      return articles;
    } on DioException {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }
}
