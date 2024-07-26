import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/artical_model.dart';
import 'package:news_app_ui_setup/services/news_services.dart';
import 'package:news_app_ui_setup/widgets/news_container.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({required this.artical, super.key});
  final List<ArticalModel> artical;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return NewsTile(
            articalModel: artical[index],
          );
        },
        childCount: artical.length,
      ),
    );
  }
}
