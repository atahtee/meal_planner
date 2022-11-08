import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FoodTypeCard extends StatelessWidget {
  FoodTypeCard({Key? key, required this.image, required this.title, required this.isSelected});

  final String image;
  final String title;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          
            color: isSelected ? Color(0xFF83D6C1) :  Colors.grey[300] , 
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              height: 100,
              width: 100,
              image: AssetImage(
                image,
              ),
              fit: BoxFit.fill,
            ),
            Text(
              title,
              style: TextStyle(
                color: isSelected ? Colors.grey[500] : Colors.blueGrey[800],
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
