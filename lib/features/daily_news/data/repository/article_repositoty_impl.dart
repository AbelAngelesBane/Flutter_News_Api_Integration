import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_mvvm/core/constant/constants.dart';
import 'package:flutter_mvvm/features/daily_news/data/data_sources/remote/news_api_service.dart';
import 'package:flutter_mvvm/features/daily_news/domain/entities/article_entity.dart';

import '../../../../core/resources/data_sources.dart';
import '../../domain/repository/article_repository.dart';

class ArticleRepositoryImpl implements ArticleRepository{
  final NewsApiService apiService;
  ArticleRepositoryImpl(this.apiService);

  @override
  Future<DataState<List<ArticleEntity>>> getNewsArticle() async {

    final httpResponse = await apiService.getNewsArticle(
      apikey: apikey,
      sources: sources
    );

    if (httpResponse.response.statusCode == HttpStatus.ok){
      return DataSuccess(httpResponse.data)
    }
    else{
      DataFailed(
        DioException(response: httpResponse.response,error: httpResponse, type: DioExceptionType.badResponse, requestOptions: httpResponse.response.requestOptions)
      );
    }
  }


 
  
}