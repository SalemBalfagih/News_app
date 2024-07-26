import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/artical_model.dart';
import 'package:news_app_ui_setup/models/category_model.dart';
import 'package:news_app_ui_setup/widgets/news_list_view_builder.dart';

class CategoryVeiw extends StatelessWidget {
  const CategoryVeiw({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          NewsListViewBuilder(
            category: category,
          ),
        ],
      ),
    );
  }
}
