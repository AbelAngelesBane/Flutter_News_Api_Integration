import 'package:flutter_mvvm/core/resources/data_sources.dart';
import '../entities/article_entity.dart';

abstract class ArticleRepository{
  Future<DataState<List<ArticleEntity>>> getNewsArticle();
}