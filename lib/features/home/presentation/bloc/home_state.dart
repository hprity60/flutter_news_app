part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();  

  @override
  List<Object> get props => [];
}
class HomeInitial extends HomeState {}

class ArticleLoadingState extends HomeState {
  
}

class ArticleLoadedState extends HomeState {
  final List<Article> article;

  const ArticleLoadedState({required this.article});
  @override
  List<Object> get props => [article];
}

class ArticleFailureState extends HomeState {
  final String errorMessage;

  const ArticleFailureState({required this.errorMessage});
  @override
  List<Object> get props => [errorMessage];
}