import 'package:flutter/material.dart';

import '../util/burger_tile.dart';

class BurgerTab extends StatelessWidget {
  List burgerOnSale = [
    ['Cheesburger', "36", Colors.blue, 'assets/images/cheeseburger.png'],
    ['Chickenburger', "45", Colors.red, 'assets/images/chickenburger.png'],
    ['Hotdog', "84", Colors.purple, 'assets/images/hot-dog.png'],
    ['Fishburger', "95", Colors.brown, 'assets/images/fishburger.png'],
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: burgerOnSale.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1 / 1.5),
      itemBuilder: (context, index) {
        return BurgerTile(
            burgerFlavor: burgerOnSale[index][0],
            burgerPrice: burgerOnSale[index][1],
            burgerColor: burgerOnSale[index][2],
            imageName: burgerOnSale[index][3]);
      },
    );
  }
}
