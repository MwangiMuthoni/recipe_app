import 'package:flutter/material.dart';
import 'package:recipe_app/myrecipe.dart';
import 'package:recipe_app/tabs/breakfasttab.dart';
import 'package:recipe_app/tabs/lunchtab.dart';
import 'package:recipe_app/tabs/dinnertab.dart';
import 'package:recipe_app/about.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            elevation: 0,
            floating: true,
            pinned: true,
            snap: true,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/tabbar.jpg',
                fit: BoxFit.cover,
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(50.0),
              child: Container(
                color: Colors.white,
                child: TabBar(
                  controller: _tabController,
                  tabs: [
                    Tab(text: 'BreakFast'),
                    Tab(text: 'Lunch'),
                    Tab(text: 'Dinner'),
                  ],
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            child: TabBarView(
              controller: _tabController,
              children: [
                BreakfastTab(),
                LunchTab(),
                DinnerTab(),
              ],
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.yellow[200],
               image: DecorationImage(
               image: AssetImage('assets/images/logojuu.jpeg'),
              fit: BoxFit.contain,
                   ),
              ),

              child: Text(
                '',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 24,
                ),
              ),
            ),
        
            Expanded(
              child: Container(
                      decoration: BoxDecoration(
                        color: Colors.yellow[200],
                      ),
              ),
            ),
            ListTile(
            
              title: Text('Home'),
              leading: Icon(Icons.home),
              onTap: () {
                // Navigate to Home screen
                Navigator.pop(context);
              },
            ),
            
            ListTile(
              title: Text('Recipe Categories'),
              leading: Icon(Icons.menu_book_outlined),
              onTap: () {
                // Navigate to My Recipes screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Recipe()),
                );
              },
            ),

            ListTile(
              title: Text('About Us/Contact'),
              leading: Icon(Icons.contacts_outlined),
              onTap: () {
                // Navigate to About Us/Contact screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutUs()),
                );
              },
            ),
            
          ],
        ),
      ),
    );
  }
}
  
    
      