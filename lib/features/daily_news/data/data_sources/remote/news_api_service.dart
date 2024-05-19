
import "package:dio/dio.dart";
import "package:flutter_mvvm/features/daily_news/data/models/article_model.dart";
import "package:retrofit/dio.dart";
import "../../../../../core/constant/constants.dart";
import "package:retrofit/http.dart";

part 'news_api_service.g.dart';


@RestApi(baseUrl: baseNetworkUrl)
abstract class NewsApiService{
  factory NewsApiService(Dio dio) = _NewsApiService;

  @GET('/top-headlines')
  Future <HttpResponse<List<ArticleModel>>> getNewsArticle({
    @Query("apikey") String ? apikey,
    @Query("sources") String ? sources,
  });
}