import 'package:flutter/material.dart';

class BurgerTile extends StatelessWidget {
  final String burgerFlavor;
  final String burgerPrice;
  final burgerColor;
  final String imageName;

  final double borderRadius = 12;

  const BurgerTile(
      {super.key,
      required this.burgerFlavor,
      required this.burgerPrice,
      this.burgerColor,
      required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: burgerColor[50],
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: Column(
            children: [
              //price
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: burgerColor[100],
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(borderRadius),
                          topRight: Radius.circular(borderRadius)),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Text(
                      '\$' + burgerPrice,
                      style: TextStyle(
                          color: burgerColor[800],
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ],
              ),
              //donut picture
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 46.0, vertical: 16),
                child: Image.asset(imageName),
              ),

              //donut flavor
              Text(
                burgerFlavor,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                'Dunkins',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 8,
              ),

              //love icon + add button
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //love icon
                    Icon(
                      Icons.favorite,
                      color: Colors.pink,
                    ),

                    //plus button
                    Icon(
                      Icons.add,
                      color: Colors.grey[800],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
