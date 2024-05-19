
class ArticleListModel  {
  final List<ArticleModel> articleList;
  const ArticleListModel({required this.articleList});

  factory ArticleListModel.fromJson(Map<String, dynamic> json){
    return ArticleListModel(
      articleList: (json['articles'] as List<dynamic>).map((e) => ArticleModel.fromJson(e)).toList()

      );

    
  }
}

class ArticleModel  {
  final String? title, description, url, content,author, urlToImage, publishedAt;
  final SourceModel source;

  const ArticleModel({
    required this.title, 
    required this.description, 
    required this.url, 
    required this.content, 
    required this.source, 
    required this.author, 
    required this.publishedAt, 
    required this.urlToImage});

    factory ArticleModel.fromJson(Map<String, dynamic> map){
      return ArticleModel(
        title: map['title'] ?? "Article Title", 
        description: map['description'] ?? "description", 
        url: map['url'], 
        content: map['content'] ?? "", 
        source: SourceModel.fromJson(map['source']), 
        author: map['author'] ?? "unknown", 
        publishedAt: map['publishedAt'] ?? "", 
        urlToImage: map['urlToImage'] ?? "");
    }

    
}
class SourceModel  {
  final String? id;
  final String? name;
  
  const SourceModel({required this.id, required this.name});
  factory SourceModel.fromJson(Map<String, dynamic>map){
    return SourceModel(
      id: map['id'] ?? "", 
      name: map['name'] ?? "",);
  }

}