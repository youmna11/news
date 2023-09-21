import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/NewsDataModel.dart';

class NewsItem extends StatelessWidget {
  Articles articles;
  NewsItem(this.articles);


  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      elevation: 12,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(18),
                  topLeft: Radius.circular(18),
                ),
                child: Image.network(articles.urlToImage??"",
                  width: double.infinity,
                  fit: BoxFit.fill,
                  height: 200,),
              ),
              SizedBox(height: 8,),
              Text(articles.title??"",maxLines: 1,style: GoogleFonts.aBeeZee(
                  fontWeight: FontWeight.bold,
                  fontSize: 15
              ),),
              Text(articles.description??"",maxLines: 2,style: GoogleFonts.quicksand(
                  fontSize: 12,
                  fontWeight: FontWeight.w400
              ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(articles.author?.substring(0,5)??"",style: GoogleFonts.elMessiri(
                      fontSize: 12,
                      fontWeight: FontWeight.w300
                  ),),
                  Text(articles.publishedAt?.substring(0,10)??""),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
