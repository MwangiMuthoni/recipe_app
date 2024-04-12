
import 'package:flutter/material.dart';
import 'package:recipe_app/tabs/breakfasttab.dart';
import 'package:recipe_app/tabs/lunchtab.dart';
import 'package:recipe_app/tabs/dinnertab.dart';

class Recipe extends StatelessWidget {
  const Recipe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        title: Text('My Recipes'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          SizedBox(height:50,width: 50,),
          ListTile(
            title: Text('Breakfast'),
            leading: Image.asset('assets/images/brekomenu.jpeg' , height: 200 ,width: 200,),
            
            onTap: () {
              // Navigate to BreakfastTab
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BreakfastTab()),
              );
            },
          ),
          SizedBox(height: 90 , width: 100,), // Add space between tiles
          ListTile(
            title: Text('Lunch'),
            leading: Image.asset('assets/images/lunchmenu.jpeg' , height: 400 ,width: 200),
            
            onTap: () {
              // Navigate to LunchTab
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LunchTab()),
              );
            },
          ),
          SizedBox(height: 90), // Add space between tiles
          ListTile(
            title: Text('Dinner'),
            leading: Image.asset('assets/images/dinnermenu.jpeg', height: 200 ,width: 200, ),
            
            onTap: () {
              // Navigate to DinnerTab
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DinnerTab()),
              );
            },
          ),
        ],
      ),
    );
  }
}
