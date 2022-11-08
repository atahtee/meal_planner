import 'package:bachelorapp/meal_generator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFd9b627),
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/background.jpg'),
                  fit: BoxFit.cover)),
          child: SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Stack(
              children: [
                Column(
                  children: [
                    Text(
                      'Meal Planner',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.blueGrey[700],
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Create Your Diet Plan Here In Seconds',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.blueGrey[700],
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Reach your diet and nutritional goals with our calorie calculator, weekly meal plans, grocery lists and more',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Positioned(
                    bottom: 0.0,
                    left: 0.0,
                    right: 0.0,
                    child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.blueGrey[800],
                            padding: EdgeInsets.symmetric(vertical: 15),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => MealGenerator()));
                        },
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        )))
              ],
            ),
          ))),
    );
  }
}
