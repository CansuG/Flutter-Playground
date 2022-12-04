import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.lime,

      title: Row(

        children: <Widget>[
          Container(
            child: Icon(Icons.account_circle_rounded, size: 38, color: Colors.black,),
          ),

          Column(
            children: <Widget> [

              Container(
                padding: EdgeInsets.only(right: 70.0),
                child: Text("Welcome", style: GoogleFonts.wallpoet(color: Colors.black, fontSize: 15.0)),
              ),
              Container(
                padding: EdgeInsets.only(left: 10.0),
                child: Text("Cansu Gürel", style: GoogleFonts.wallpoet(color: Colors.black, fontSize: 20.0)),
              ),

            ],
          ),


        ],
      ),
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.location_on_outlined, color: Colors.black),
              Text("Eskişehir", style: TextStyle(color: Colors.black)),
            ],
          ),
        ),
      ],
    );
  }
}