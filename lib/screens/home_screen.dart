import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/screens/drawer.dart';
import 'package:news_app/screens/source_item.dart';
import 'package:news_app/screens/sources_title.dart';
import 'package:news_app/shared/network/remote/api_manager.dart';
import '../models/category_model.dart';
import 'categories_screen.dart';
import 'news_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName="home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerItem(onDrawerClicked),
      appBar: AppBar(
        title: Text("News App",style: GoogleFonts.elMessiri
          (fontWeight: FontWeight.w100),),
        backgroundColor: Color(0xFF39A552),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search))
        ],
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
          borderSide: BorderSide(
            color: Colors.transparent
          )
        ),
      ),
      body: model==null?CategoriesScreen(onCategoryClick)
          :NewsScreen(model!),
    );
  }
  CategoryModel? model=null;

  onCategoryClick(categoryModel){
    model=categoryModel;
    setState(() {

    });
  }
  onDrawerClicked(number){
    if(number==DrawerItem.CATEGORY){
      model=null;
      Navigator.pop(context);
      setState(() {

      });
    }else if(number==DrawerItem.SETTING){

    }
  }
}
