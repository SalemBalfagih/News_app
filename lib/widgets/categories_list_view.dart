import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_model.dart';
import 'package:news_app_ui_setup/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(image: "assets/technology.jpeg", categoryName: "Technology"),
    CategoryModel(image: "assets/health.avif", categoryName: "Health"),
    CategoryModel(image: "assets/images.jpg", categoryName: "Business"),
    CategoryModel(image: "assets/science.avif", categoryName: "Science"),
    CategoryModel(image: "assets/images (1).jpg", categoryName: "Sports"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 85,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          },
        ));
  }
}
