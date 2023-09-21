import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerItem extends StatelessWidget {

  Function onClicked;
  DrawerItem(this.onClicked);

  static int CATEGORY=1;
  static int SETTING=2;


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.green,
            height: 300,
            alignment: Alignment.center,
            child: Text("News App",
              style: GoogleFonts.aBeeZee(
                  fontSize: 28,
                  color: Colors.white
              ),),
          ),
          InkWell(
            onTap: (){
              onClicked(CATEGORY);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Categories"),
            ),
          ),
          InkWell(
            onTap: (){
              onClicked(SETTING);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Settings"),
            ),
          ),
        ],
      ),
    );
  }
}
