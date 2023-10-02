class ArticleResponseModel {
  String status;
  int totalResults;
  List<Article> articles;

  ArticleResponseModel({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  factory ArticleResponseModel.fromJson(Map<String, dynamic> json) {
    List<Article> articlesList = [];
    if (json['articles'] != null) {
      for (var articleJson in json['articles']) {
        articlesList.add(Article.fromJson(articleJson));
      }
    }

    return ArticleResponseModel(
      status: json['status'],
      totalResults: json['totalResults'],
      articles: articlesList,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'status': status,
      'totalResults': totalResults,
      'articles': articles.map((article) => article.toJson()).toList(),
    };
    return data;
  }
}

class Article {
  Source source;
  String? author;
  String title;
  String description;
  String url;
  String? urlToImage;
  DateTime publishedAt;
  String content;

  Article({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      source: Source.fromJson(json['source']),
      author: json['author'],
      title: json['title'],
      description: json['description'],
      url: json['url'],
      urlToImage: json['urlToImage'],
      publishedAt: DateTime.parse(json['publishedAt']),
      content: json['content'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'source': source.toJson(),
      'author': author,
      'title': title,
      'description': description,
      'url': url,
      'urlToImage': urlToImage,
      'publishedAt': publishedAt.toIso8601String(),
      'content': content,
    };
    return data;
  }
}

class Source {
  String? id;
  String name;

  Source({
    required this.id,
    required this.name,
  });
  factory Source.fromJson(Map<String, dynamic> json) {
    return Source(
      id: json['id'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'id': id,
      'name': name,
    };
    return data;
  }
}
