import '../models/article_response_model.dart';

abstract class ArticlesRemoteDataSource {
  Future<List<Article>> getAllArticles();
}
