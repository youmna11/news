import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/screens/sources_title.dart';
import 'package:news_app/shared/network/remote/api_manager.dart';

class NewsScreen extends StatelessWidget {

  CategoryModel categoryModel;
  NewsScreen(this.categoryModel);


  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: ApiManager.getSources(categoryModel.id),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text("Something went Wrong"));
          }
          var sources = snapshot.data?.sources ?? [];
          return SourcesTitle(sources);
        });
  }
}
