import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_news_app/core/network/dio_client.dart';
import 'package:flutter_news_app/features/home/data/datasources/articles_remote_data_source_impl.dart';
import 'package:flutter_news_app/features/home/data/repositories/articles_repositories.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/home_bloc.dart';

class HomePage extends StatelessWidget {
  static const id = "home_page";
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(articlesRepositories: ArticlesRepositoriesImpl(articlesRemoteDataSource: ArticlesRemoteDataSourceImpl(dio: DioProvider()))),
      child: Scaffold(
        body: TextButton(onPressed: () {
         BlocProvider.of<HomeBloc>(context).add(GetArtileDataEvent());
        }, child: Text('Button')),
      ),
    );
  }
}
