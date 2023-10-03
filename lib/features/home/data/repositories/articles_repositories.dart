import 'package:dio/dio.dart';
import 'package:flutter_news_app/features/home/data/repositories/articles_repositories_impl.dart';

import '../datasources/articles_remote_data_source.dart';
import '../models/article_response_model.dart';

class ArticlesRepositoriesImpl implements ArticlesRepositories {
  final ArticlesRemoteDataSource articlesRemoteDataSource;

  ArticlesRepositoriesImpl({required this.articlesRemoteDataSource});
 

  @override
  Future<List<Article>> getAllArticles() async {
    try {
    final List<Article> ariticle =   await articlesRemoteDataSource.getAllArticles();
   return ariticle;
    } on DioException {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }
}