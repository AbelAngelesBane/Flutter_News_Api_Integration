import 'package:equatable/equatable.dart';


class ArticleListEntity extends Equatable{
  final List<ArticleEntity> articleListEntity;
  const ArticleListEntity({
    required this.articleListEntity});


  @override
  // TODO: implement props
  List<Object?> get props {
    return [
      articleListEntity
    ];
  }
  }

class ArticleEntity extends Equatable{
  final String? title, description, url, content,author, urlToImage, publishedAt;
  final SourceEntity source;
  const ArticleEntity({
    required this.title, 
    required this.description,
    required this.url,
    required this.content, 
    required this.source,
    required this.author,
    required this.publishedAt,
    required this.urlToImage});
    
      @override
      // TODO: implement props
      List<Object?> get props {
        return [
          title,
          description,
          url,
          content,
          source,
          author,
          publishedAt,
          urlToImage
        ];
      }
}

class SourceEntity extends Equatable{
  final String? id, name;
  const SourceEntity({
    required this.id, 
    required this.name});
    
      @override
      // TODO: implement props
      List<Object?> get props{
        return [
          id,
          name
        ];
      }

}
  
