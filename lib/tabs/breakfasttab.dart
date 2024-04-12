import 'package:flutter/material.dart';

class BreakfastItem {
  final String imagePath;
  final String name;
  final String description;

  BreakfastItem({
    required this.imagePath,
    required this.name,
    required this.description,
  });
}

class BreakfastTab extends StatelessWidget {
  final List<BreakfastItem> breakfastItems = [
    BreakfastItem(
      imagePath: 'assets/images/cerials.jpeg',
      name: 'Cereals',
      description: 'Cereals and milk are a common breakfast choice. To prepare, pour cereal into a bowl and add milk.',
    ),
    BreakfastItem(
      imagePath: 'assets/images/chapati.jpeg',
      name: 'Chapati & Tea',
      description: 'Chapati is a type of Indian flatbread. It is usually served with tea. To prepare, make dough from flour and water, then roll it into thin circles and cook on a hot griddle.',
    ),
    BreakfastItem(
      imagePath: 'assets/images/smoothie.jpeg',
      name: 'Smoothie',
      description: 'Smoothies are a nutritious breakfast option made by blending fruits, yogurt, and ice. Customize with your favorite ingredients!',
    ),
    BreakfastItem(
      imagePath: 'assets/images/sweetpotatoes.jpeg',
      name: 'Sweet Potatoes',
      description: 'Sweet potatoes are a healthy and delicious breakfast option. They can be baked, boiled, or mashed, and served with toppings like butter or cinnamon.',
    ),
    BreakfastItem(
      imagePath: 'assets/images/pancakes.jpeg',
      name: 'Pancakes',
      description: 'Pancakes are a classic breakfast choice. Mix flour, eggs, milk, and baking powder to make batter. Cook on a hot griddle until golden brown.',
    ),
    BreakfastItem(
      imagePath: 'assets/images/fruits.jpeg',
      name: 'Fruits',
      description: 'Fruits are a refreshing and nutritious breakfast option. Enjoy them fresh or make a fruit salad with a variety of colorful fruits.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(breakfastItems.length, (index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsPage(
                    imagePath: breakfastItems[index].imagePath,
                    name: breakfastItems[index].name,
                    description: breakfastItems[index].description,
                  ),
                ),
              );
            },
            child: GridTile(
              footer: GridTileBar(
                backgroundColor: Colors.black54,
                title: Text(breakfastItems[index].name),
              ),
              child: Image.asset(
                breakfastItems[index].imagePath,
                fit: BoxFit.cover,
              ),
            ),
          );
        }),
      ),
    );
  }
}

class DetailsPage extends StatelessWidget {
  final String imagePath;
  final String name;
  final String description;

  const DetailsPage({
    required this.imagePath,
    required this.name,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(3.0),
            child: Image.asset(
              imagePath,
              width: 200,
              height: 200,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}








