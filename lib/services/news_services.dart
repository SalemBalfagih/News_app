import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/artical_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

  Future<List<ArticalModel>> getNews(String category) async {
    try {
      Response response = await dio.get(
          "https://newsapi.org/v2/top-headlines?country=us&apiKey=3c88955c487e4d9db668f011dd85e737&category=$category");

      Map<String, dynamic> jsondata = response.data;
      List<dynamic> articals = jsondata["articles"];
      List<ArticalModel> articalesList = [];

      for (var artical in articals) {
        ArticalModel articalModel = ArticalModel.fromJson(artical);
        articalesList.add(articalModel);
      }
      return articalesList;
    } catch (e) {
      return [];
    }
  }
}
