import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SourceItem extends StatelessWidget {

  String txt;
  bool isSelected;

  SourceItem(this.txt,this.isSelected);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border.all(
              color: Color(0xFF39A552)
          ),
          borderRadius: BorderRadius.circular(24),
          color: isSelected?Color(0xFF39A552):
          Colors.transparent
      ),
      child: Text(txt,
        style: GoogleFonts.exo(
            color: isSelected?Colors.white:Color(0xFF39A552),
            fontSize: 14,
            fontWeight: FontWeight.w200
        ),
      ),
    );
  }
}
