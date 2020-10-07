import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:themainnews/models/article_model.dart';
import 'package:http/http.dart' as http;

class News {

  List<ArticleModel> news  = [];

  Future<void> getNews() async{

    String url = "http://newsapi.org/v2/top-headlines?country=ng&apiKey=cc03ca1aad6f415cac10317bfd6abe2e";

    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if(jsonData['status'] == "ok"){
      jsonData["articles"].forEach((element){

        if(element['urlToImage'] != null && element['description'] != null){
          ArticleModel articleModel = ArticleModel(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            url: element['url'],
            urlToImage: element['urlToImage'],
            content: element["content"],
          );
          news.add(articleModel);
        }

      });
    }


  }


}

class CategoryNewsClass {

  List<ArticleModel> news  = [];

  Future<void> getNews(String category) async{

    String url = "http://newsapi.org/v2/top-headlines?category=$category&country=ng&apiKey=cc03ca1aad6f415cac10317bfd6abe2e";

    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if(jsonData['status'] == "ok"){
      jsonData["articles"].forEach((element){

        if(element['urlToImage'] != null && element['description'] != null){
          ArticleModel articleModel = ArticleModel(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            url: element['url'],
            urlToImage: element['urlToImage'],
            content: element["content"],
          );
          news.add(articleModel);
        }

      });
    }


  }


}
/// Countries API
// America class and Categories
class AmericaClass{
  List<ArticleModel> news  = [];

  Future<void> getNews() async{

    String url = "http://newsapi.org/v2/top-headlines?country=us&apiKey=cc03ca1aad6f415cac10317bfd6abe2e";

    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if(jsonData['status'] == "ok"){
      jsonData["articles"].forEach((element){

        if(element['urlToImage'] != null && element['description'] != null){
          ArticleModel articleModel = ArticleModel(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            url: element['url'],
            urlToImage: element['urlToImage'],
            content: element["content"],
          );
          news.add(articleModel);
        }

      });
    }


  }
}
class AmericaCategoryNewsClass {

  List<ArticleModel> news  = [];

  Future<void> getNews(String category) async{

    String url = "http://newsapi.org/v2/top-headlines?category=$category&country=us&apiKey=cc03ca1aad6f415cac10317bfd6abe2e";

    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if(jsonData['status'] == "ok"){
      jsonData["articles"].forEach((element){

        if(element['urlToImage'] != null && element['description'] != null){
          ArticleModel articleModel = ArticleModel(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            url: element['url'],
            urlToImage: element['urlToImage'],
            content: element["content"],
          );
          news.add(articleModel);
        }

      });
    }


  }


}
// End America class and Categories

// England class and Categories
class EnglandClass{
  List<ArticleModel> news  = [];

  Future<void> getNews() async{

    String url = "http://newsapi.org/v2/top-headlines?country=gb&apiKey=cc03ca1aad6f415cac10317bfd6abe2e";

    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if(jsonData['status'] == "ok"){
      jsonData["articles"].forEach((element){

        if(element['urlToImage'] != null && element['description'] != null){
          ArticleModel articleModel = ArticleModel(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            url: element['url'],
            urlToImage: element['urlToImage'],
            content: element["content"],
          );
          news.add(articleModel);
        }

      });
    }


  }
}
class EnglandCategoryNewsClass {

  List<ArticleModel> news  = [];

  Future<void> getNews(String category) async{

    String url = "http://newsapi.org/v2/top-headlines?category=$category&country=gb&apiKey=cc03ca1aad6f415cac10317bfd6abe2e";

    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if(jsonData['status'] == "ok"){
      jsonData["articles"].forEach((element){

        if(element['urlToImage'] != null && element['description'] != null){
          ArticleModel articleModel = ArticleModel(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            url: element['url'],
            urlToImage: element['urlToImage'],
            content: element["content"],
          );
          news.add(articleModel);
        }
      });
    }
  }
}
// End England class and Categories

// France class and Categories
class FranceClass{
  List<ArticleModel> news  = [];

  Future<void> getNews() async{

    String url = "http://newsapi.org/v2/top-headlines?language=fr&country=fr&apiKey=cc03ca1aad6f415cac10317bfd6abe2e";

    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if(jsonData['status'] == "ok"){
      jsonData["articles"].forEach((element){

        if(element['urlToImage'] != null && element['description'] != null){
          ArticleModel articleModel = ArticleModel(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            url: element['url'],
            urlToImage: element['urlToImage'],
            content: element["content"],
          );
          news.add(articleModel);
        }
      });
    }
  }
}
class FranceCategoryNewsClass {

  List<ArticleModel> news  = [];

  Future<void> getNews(String category) async{

    String url = "http://newsapi.org/v2/top-headlines?category=$category&language=fr&country=fr&apiKey=cc03ca1aad6f415cac10317bfd6abe2e";

    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if(jsonData['status'] == "ok"){
      jsonData["articles"].forEach((element){

        if(element['urlToImage'] != null && element['description'] != null){
          ArticleModel articleModel = ArticleModel(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            url: element['url'],
            urlToImage: element['urlToImage'],
            content: element["content"],
          );
          news.add(articleModel);
        }
      });
    }
  }
}
// End France class and Categories

// China class and Categories
class ChinaClass{
  List<ArticleModel> news  = [];

  Future<void> getNews() async{

    String url = "http://newsapi.org/v2/top-headlines?language=zh&country=cn&apiKey=cc03ca1aad6f415cac10317bfd6abe2e";

    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if(jsonData['status'] == "ok"){
      jsonData["articles"].forEach((element){

        if(element['urlToImage'] != null && element['description'] != null){
          ArticleModel articleModel = ArticleModel(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            url: element['url'],
            urlToImage: element['urlToImage'],
            content: element["content"],
          );
          news.add(articleModel);
        }
      });
    }
  }
}
class ChinaCategoryNewsClass {

  List<ArticleModel> news  = [];

  Future<void> getNews(String category) async{

    String url = "http://newsapi.org/v2/top-headlines?category=$category&language=zh&country=cn&apiKey=cc03ca1aad6f415cac10317bfd6abe2e";

    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if(jsonData['status'] == "ok"){
      jsonData["articles"].forEach((element){

        if(element['urlToImage'] != null && element['description'] != null){
          ArticleModel articleModel = ArticleModel(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            url: element['url'],
            urlToImage: element['urlToImage'],
            content: element["content"],
          );
          news.add(articleModel);
        }

      });
    }


  }


}
// End China class and Categories

// Germany class and Categories
class GermanyClass{
  List<ArticleModel> news  = [];

  Future<void> getNews() async{

    String url = "http://newsapi.org/v2/top-headlines?language=de&country=de&apiKey=cc03ca1aad6f415cac10317bfd6abe2e";

    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if(jsonData['status'] == "ok"){
      jsonData["articles"].forEach((element){

        if(element['urlToImage'] != null && element['description'] != null){
          ArticleModel articleModel = ArticleModel(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            url: element['url'],
            urlToImage: element['urlToImage'],
            content: element["content"],
          );
          news.add(articleModel);
        }
      });
    }
  }
}
class GermanyCategoryNewsClass {

  List<ArticleModel> news  = [];

  Future<void> getNews(String category) async{

    String url = "http://newsapi.org/v2/top-headlines?category=$category&language=de&country=de&apiKey=cc03ca1aad6f415cac10317bfd6abe2e";

    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if(jsonData['status'] == "ok"){
      jsonData["articles"].forEach((element){

        if(element['urlToImage'] != null && element['description'] != null){
          ArticleModel articleModel = ArticleModel(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            url: element['url'],
            urlToImage: element['urlToImage'],
            content: element["content"],
          );
          news.add(articleModel);
        }
      });
    }
  }
}
// End Germany class and Categories

// Canada class and Categories
class CanadaClass{
  List<ArticleModel> news  = [];

  Future<void> getNews() async{

    String url = "http://newsapi.org/v2/top-headlines?language=en&country=ca&apiKey=cc03ca1aad6f415cac10317bfd6abe2e";

    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if(jsonData['status'] == "ok"){
      jsonData["articles"].forEach((element){

        if(element['urlToImage'] != null && element['description'] != null){
          ArticleModel articleModel = ArticleModel(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            url: element['url'],
            urlToImage: element['urlToImage'],
            content: element["content"],
          );
          news.add(articleModel);
        }
      });
    }
  }
}
class CanadaCategoryNewsClass {

  List<ArticleModel> news  = [];

  Future<void> getNews(String category) async{

    String url = "http://newsapi.org/v2/top-headlines?category=$category&language=en&country=ca&apiKey=cc03ca1aad6f415cac10317bfd6abe2e";

    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if(jsonData['status'] == "ok"){
      jsonData["articles"].forEach((element){

        if(element['urlToImage'] != null && element['description'] != null){
          ArticleModel articleModel = ArticleModel(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            url: element['url'],
            urlToImage: element['urlToImage'],
            content: element["content"],
          );
          news.add(articleModel);
        }
      });
    }
  }
}
// End Canada class and Categories

// Brazil class and Categories
class BrazilClass{
  List<ArticleModel> news  = [];

  Future<void> getNews() async{

    String url = "http://newsapi.org/v2/top-headlines?language=pt&country=br&apiKey=cc03ca1aad6f415cac10317bfd6abe2e";

    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if(jsonData['status'] == "ok"){
      jsonData["articles"].forEach((element){

        if(element['urlToImage'] != null && element['description'] != null){
          ArticleModel articleModel = ArticleModel(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            url: element['url'],
            urlToImage: element['urlToImage'],
            content: element["content"],
          );
          news.add(articleModel);
        }
      });
    }
  }
}
class BrazilCategoryNewsClass {

  List<ArticleModel> news  = [];

  Future<void> getNews(String category) async{

    String url = "http://newsapi.org/v2/top-headlines?category=$category&language=pt&country=br&apiKey=cc03ca1aad6f415cac10317bfd6abe2e";

    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if(jsonData['status'] == "ok"){
      jsonData["articles"].forEach((element){

        if(element['urlToImage'] != null && element['description'] != null){
          ArticleModel articleModel = ArticleModel(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            url: element['url'],
            urlToImage: element['urlToImage'],
            content: element["content"],
          );
          news.add(articleModel);
        }
      });
    }
  }
}
// End Brazil class and Categories

// Italy class and Categories
class ItalyClass{
  List<ArticleModel> news  = [];

  Future<void> getNews() async{

    String url = "http://newsapi.org/v2/top-headlines?language=it&country=it&apiKey=cc03ca1aad6f415cac10317bfd6abe2e";

    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if(jsonData['status'] == "ok"){
      jsonData["articles"].forEach((element){

        if(element['urlToImage'] != null && element['description'] != null){
          ArticleModel articleModel = ArticleModel(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            url: element['url'],
            urlToImage: element['urlToImage'],
            content: element["content"],
          );
          news.add(articleModel);
        }
      });
    }
  }
}
class ItalyCategoryNewsClass {

  List<ArticleModel> news  = [];

  Future<void> getNews(String category) async{

    String url = "http://newsapi.org/v2/top-headlines?category=$category&language=it&country=it&apiKey=cc03ca1aad6f415cac10317bfd6abe2e";

    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if(jsonData['status'] == "ok"){
      jsonData["articles"].forEach((element){

        if(element['urlToImage'] != null && element['description'] != null){
          ArticleModel articleModel = ArticleModel(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            url: element['url'],
            urlToImage: element['urlToImage'],
            content: element["content"],
          );
          news.add(articleModel);
        }
      });
    }
  }
}
// End Italy class and Categories

// Japan class and Categories
class JapanClass{
  List<ArticleModel> news  = [];

  Future<void> getNews() async{

    String url = "http://newsapi.org/v2/top-headlines?language=ja&country=jp&apiKey=cc03ca1aad6f415cac10317bfd6abe2e";

    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if(jsonData['status'] == "ok"){
      jsonData["articles"].forEach((element){

        if(element['urlToImage'] != null && element['description'] != null){
          ArticleModel articleModel = ArticleModel(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            url: element['url'],
            urlToImage: element['urlToImage'],
            content: element["content"],
          );
          news.add(articleModel);
        }
      });
    }
  }
}
class JapanCategoryNewsClass {

  List<ArticleModel> news  = [];

  Future<void> getNews(String category) async{

    String url = "http://newsapi.org/v2/top-headlines?category=$category&language=ja&country=jp&apiKey=cc03ca1aad6f415cac10317bfd6abe2e";

    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if(jsonData['status'] == "ok"){
      jsonData["articles"].forEach((element){

        if(element['urlToImage'] != null && element['description'] != null){
          ArticleModel articleModel = ArticleModel(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            url: element['url'],
            urlToImage: element['urlToImage'],
            content: element["content"],
          );
          news.add(articleModel);
        }
      });
    }
  }
}
// End Japan class and Categories

// SouthAfrica class and Categories
class SouthAfricaClass{
  List<ArticleModel> news  = [];

  Future<void> getNews() async{

    String url = "http://newsapi.org/v2/top-headlines?language=af&country=za&apiKey=cc03ca1aad6f415cac10317bfd6abe2e";

    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if(jsonData['status'] == "ok"){
      jsonData["articles"].forEach((element){

        if(element['urlToImage'] != null && element['description'] != null){
          ArticleModel articleModel = ArticleModel(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            url: element['url'],
            urlToImage: element['urlToImage'],
            content: element["content"],
          );
          news.add(articleModel);
        }
      });
    }
  }
}


class SouthAfricaCategoryNewsClass {

  List<ArticleModel> news  = [];

  Future<void> getNews(String category) async{

    String url = "http://newsapi.org/v2/top-headlines?category=$category&language=af&country=za&apiKey=cc03ca1aad6f415cac10317bfd6abe2e";

    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if(jsonData['status'] == "ok"){
      jsonData["articles"].forEach((element){

        if(element['urlToImage'] != null && element['description'] != null){
          ArticleModel articleModel = ArticleModel(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            url: element['url'],
            urlToImage: element['urlToImage'],
            content: element["content"],
          );
          news.add(articleModel);
        }
      });
    }
  }
}
// End SouthAfrica class and Categories