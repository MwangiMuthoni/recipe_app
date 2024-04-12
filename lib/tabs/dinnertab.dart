import 'package:flutter/material.dart';
class DinnerItem {
  final String imagePath;
  final String name;
  final String description;

  DinnerItem({
    required this.imagePath,
    required this.name,
    required this.description,
  });
}

class DinnerTab extends StatelessWidget {
  final List<DinnerItem> dinnerItems = [
    DinnerItem(
      imagePath: 'assets/images/beef.jpeg',
      name: 'Beef Ugali',
      description: 'Beef Ugali Recipe:\n\nIngredients:\n- Beef\n- Ugali\n\nSteps:\n1. Cook beef until tender.\n2. Prepare Ugali according to the instructions.\n3. Serve beef with Ugali.',
    ),
    DinnerItem(
      imagePath: 'assets/images/bhajia.jpeg',
      name: 'Bhajia',
      description: 'Bhajia Recipe:\n\nIngredients:\n- Potatoes\n- Chickpea flour\n- Spices\n\nSteps:\n1. Slice potatoes thinly.\n2. Prepare a batter with chickpea flour and spices.\n3. Coat potato slices in the batter.\n4. Deep fry until golden brown.\n5. Serve hot.',
    ),
    DinnerItem(
      imagePath: 'assets/images/fish.jpeg',
      name: 'Fried Fish',
      description: 'Fried Fish Recipe:\n\nIngredients:\n- Fish fillets\n- Flour\n- Spices\n\nSteps:\n1. Mix flour and spices in a bowl.\n2. Coat fish fillets with the flour mixture.\n3. Heat oil in a pan.\n4. Fry fish fillets until golden brown.\n5. Drain excess oil on paper towels.\n6. Serve hot with lemon wedges and tartar sauce.',
    ),
    DinnerItem(
      imagePath: 'assets/images/pilau.jpeg',
      name: 'Pilau and Chicken',
      description: 'Pilau and Chicken Recipe:\n\nIngredients:\n- Rice\n- Chicken\n- Spices\n\nSteps:\n1. Marinate chicken pieces with spices.\n2. Cook rice with aromatic spices.\n3. In a separate pan, cook marinated chicken until tender.\n4. Serve hot pilau with cooked chicken.',
    ),
    DinnerItem(
      imagePath: 'assets/images/chicken.jpeg',
      name: 'Fried Chicken',
      description: 'Fried Chicken Recipe:\n\nIngredients:\n- Chicken pieces\n- Flour\n- Spices\n\nSteps:\n1. Marinate chicken pieces with spices.\n2. Coat chicken pieces with flour.\n3. Deep fry until golden brown and crispy.\n4. Serve hot with your favorite dipping sauce.',
    ),
    DinnerItem(
      imagePath: 'assets/images/NDUMAs.jpeg',
      name: 'Nduma Stew',
      description: 'Nduma Stew Recipe:\n\nIngredients:\n- Nduma (Arrowroot)\n- Tomatoes\n- Onions\n- Spices\n\nSteps:\n1. Peel and slice Nduma into chunks.\n2. In a pot, sauté onions until golden brown.\n3. Add chopped tomatoes and cook until soft.\n4. Add Nduma chunks and spices.\n5. Cook until Nduma is tender.\n6. Serve hot with chapati or rice.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(dinnerItems.length, (index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsPage(
                    imagePath: dinnerItems[index].imagePath,
                    name: dinnerItems[index].name,
                    description: dinnerItems[index].description,
                  ),
                ),
              );
            },
            child: GridTile(
              footer: GridTileBar(
                backgroundColor: Colors.black54,
                title: Text(dinnerItems[index].name),
              ),
              child: Image.asset(
                dinnerItems[index].imagePath,
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
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 16.0),
            Image.asset(
              imagePath,
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              description,
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
