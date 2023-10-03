import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_news_app/features/home/data/models/article_response_model.dart';
import 'package:flutter_news_app/features/home/data/repositories/articles_repositories_impl.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
    final ArticlesRepositories articlesRepositories;

  HomeBloc({required this.articlesRepositories}) : super(HomeInitial()) {
    on<GetArtileDataEvent>((event, emit) async {
      emit(ArticleLoadingState());
      try {
      final List<Article> article = await articlesRepositories.getAllArticles(); 
      emit(ArticleLoadedState(article: article)) ;
      } catch (e) {
        emit(ArticleFailureState(errorMessage: e.toString()));
      }
    });
  }
}
