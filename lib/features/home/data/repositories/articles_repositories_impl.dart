import '../models/article_response_model.dart';

abstract class ArticlesRepositories {
  Future<List<Article>> getAllArticles();
}