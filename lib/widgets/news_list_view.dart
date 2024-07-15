import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/news_container.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return NewsTile();
        },
        childCount: 10,
      ),
    );
    // ListView.builder(
    //   physics: NeverScrollableScrollPhysics(),
    //   shrinkWrap: true,
    //   itemCount: 10,
    //   itemBuilder: (context, index) {
    //     return NewsTile();
    //   },
    // );
  }
}
