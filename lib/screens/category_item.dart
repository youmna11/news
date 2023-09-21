import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/models/category_model.dart';

class CategoryItem extends StatelessWidget {

  int index;
  CategoryModel categoryModel;
  CategoryItem(this.categoryModel,this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
            bottomRight: index.isOdd?Radius.circular(25):Radius.zero,
            bottomLeft: index.isEven?Radius.circular(25):Radius.zero,
          ),
          color: categoryModel.color
      ),
      child: Column(
        children: [
          Expanded(
              child: Image.asset(categoryModel.image)),
          Text(categoryModel.name,style: GoogleFonts.elMessiri(
              fontSize: 24,
              color: Colors.white
          ),),
        ],
      ),
    );
  }
}
