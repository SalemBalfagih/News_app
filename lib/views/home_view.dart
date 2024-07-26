import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/categories_list_view.dart';
import 'package:news_app_ui_setup/widgets/category_card.dart';
import 'package:news_app_ui_setup/widgets/news_container.dart';
import 'package:news_app_ui_setup/widgets/news_list_view.dart';
import 'package:news_app_ui_setup/widgets/news_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromARGB(0, 213, 24, 24),
          centerTitle: true,
          title: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "News",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              Text("Cloud", style: TextStyle(fontSize: 20, color: Colors.amber))
            ],
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: CategoriesListView(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 10,
                ),
              ),
              NewsListViewBuilder(
                category: "general",
              )
            ],
          ),
        ));
  }
}
