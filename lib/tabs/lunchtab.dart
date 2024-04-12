import 'package:flutter/material.dart';

class LunchItem {
  final String imagePath;
  final String name;
  final String description;

  LunchItem({
    required this.imagePath,
    required this.name,
    required this.description,
  });
}

class LunchTab extends StatelessWidget {
  final List<LunchItem> lunchItems = [
    LunchItem(
      imagePath: 'assets/images/eggsr.jpeg',
      name: 'eggs and rice',
      description:
          'Ingredients:\n\nCooked rice\nEggs\nSalt and pepper to taste\n\nInstructions:\n1. Heat a skillet over medium heat and add a little oil.\n2. Crack the eggs into the skillet and cook until the whites are set but the yolks are still runny, or to your desired doneness.\n3. Serve the eggs over a bed of cooked rice. Season with salt and pepper to taste.',
    ),
    LunchItem(
      imagePath: 'assets/images/githeri.jpeg',
      name: 'Githeri',
      description:
          'Ingredients:\n\nDried maize kernels\nDried beans (such as kidney beans)\nWater\nSalt to taste\n\nInstructions:\n1. Soak the dried maize kernels and beans separately overnight.\n2. Drain the water and rinse both the maize and beans.\n3. In a large pot, combine the maize and beans, cover with water, and bring to a boil.\n4. Reduce the heat to a simmer and cook until both the maize and beans are tender.\n5. Season with salt to taste and serve hot.',
    ),
    LunchItem(
      imagePath: 'assets/images/mukimo.jpeg',
      name: 'Mukimo',
      description:
          'Ingredients:\n\nPotatoes\nGreen peas\nCorn kernels\nSalt to taste\n\nInstructions:\n1. Peel and chop the potatoes into small pieces. Boil them until soft.\n2. Boil the green peas and corn kernels until tender.\n3. Drain the potatoes and mash them, then add the boiled peas and corn.\n4. Mix everything together until well combined. Add salt to taste.\n5. Serve hot as a side dish.',
    ),
    LunchItem(
      imagePath: 'assets/images/rice.jpeg',
      name: 'rice and beans',
      description:
          'Ingredients:\n\nRice\nBeans (canned or cooked from dry)\nOnion (optional)\nGarlic (optional)\nSalt and pepper to taste\n\nInstructions:\n1. Cook the rice according to package instructions.\n2. If using onion and garlic, sauté them in a pan until softened.\n3. Add the cooked beans to the pan and heat through.\n4. Season with salt and pepper to taste.\n5. Serve the beans over the cooked rice.',
    ),
    LunchItem(
      imagePath: 'assets/images/chips.jpeg',
      name: 'chips',
      description:
          'Ingredients:\n\nPotatoes\nOil for frying\nSalt to taste\n\nInstructions:\n1. Peel the potatoes and cut them into thin slices.\n2. Rinse the potato slices in cold water to remove excess starch.\n3. Heat the oil in a deep fryer or large pot to 350°F (175°C).\n4. Fry the potato slices in batches until golden brown and crispy.\n5. Remove the chips from the oil and drain them on paper towels.\n6. Season with salt while still hot and serve immediately.',
    ),
    LunchItem(
      imagePath: 'assets/images/peas.jpeg',
      name: 'peas',
      description:
          'Ingredients:\n\nGreen peas (fresh or frozen)\nButter\nSalt and pepper to taste\n\nInstructions:\n1. If using fresh peas, shell them and rinse them under cold water. If using frozen peas, thaw them.\n2. In a saucepan, melt butter over medium heat.\n3. Add the peas to the saucepan and cook until tender, stirring occasionally.\n4. Season with salt and pepper to taste.\n5. Serve hot as a side dish.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(lunchItems.length, (index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsPage(
                    imagePath: lunchItems[index].imagePath,
                    name: lunchItems[index].name,
                    description: lunchItems[index].description,
                  ),
                ),
              );
            },
            child: GridTile(
              footer: GridTileBar(
                backgroundColor: Colors.black54,
                title: Text(lunchItems[index].name),
              ),
              child: Image.asset(
                lunchItems[index].imagePath,
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



