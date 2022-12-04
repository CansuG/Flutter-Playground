import 'package:flutter/material.dart';
import 'bottom_navigation_bar.dart';
import 'appbar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[

          Padding(
            padding: EdgeInsets.all(30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text("Upcoming Conferences",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    )),
                Container(
                  padding: EdgeInsets.only(left: 60.0, top: 5.0),
                  child:    Text(
                    "View All >>",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.blueAccent,
                        fontSize: 10.0),
                  ),
                ),

              ],
            ),
          ),

          Row(
            children: <Widget>[

              Padding(
                padding: EdgeInsets.only(left: 50.0), child: Image.asset("assets/cnf_1.png", width: 140,),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0), child: Image.asset("assets/cnf_2.png", width: 140,),
              ),

            ],
          ),

          Row(

            children: <Widget>[
              Padding(padding: EdgeInsets.only(left: 50.0), child: SizedBox(width: 140, child: Text("Applying Education in a Complex World")),),
              Padding(padding: EdgeInsets.only(left: 15.0, top: 15.0 ), child: SizedBox(width: 140, child: Text("HERITAGES: Past And Present - Built And Social")),),
            ],

          ),

          SizedBox(height: 30.0,),

          Padding(
            padding: EdgeInsets.all(30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text("Favorites",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    )),

              ],
            ),
          ),

          Row(
            children: <Widget>[

              Padding(
                padding: EdgeInsets.only(left: 50.0), child: Image.asset("assets/cnf_3.png", width: 140,),
              ),

            ],
          ),

          Row(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(left: 50.0, top: 10.0), child: SizedBox(width: 140, child: Text("New Perspectives in Science Education")),),

            ],

          ),
        ],
      ),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }

}
