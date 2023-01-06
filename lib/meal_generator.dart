import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'FoodTypeCard.dart';

class MealGenerator extends StatefulWidget {
  MealGenerator({Key? key}) : super(key: key);

  @override
  State<MealGenerator> createState() => _MealGeneratorState();
}

class _MealGeneratorState extends State<MealGenerator> {
  List<String> meals = [
    '1 meal',
    '2 meals',
    '3 meals',
    '4 meals',
    '5 meals',
    '6 meals'
  ];
  Object selected = '4 meals';

  bool isvegSelected = false;
  bool _isAnythingSelected = false;
  bool _isLowCarbSelected = false;
  bool _isPaleoSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: CircleAvatar(
                      radius: 22,
                      backgroundImage: AssetImage('assets/images/profile_pic.jpg'),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    'Hi Atati',
                    style: TextStyle(
                        color: Colors.blueGrey[800],
                        fontSize: 21,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
                color: Colors.blue[800],
                iconSize: 22,
              )
            ],
          ),
        ),
        body: Padding(
          padding:
              const EdgeInsets.only(top: 10, left: 30, right: 30, bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 13.0),
                child: Text(
                  'Let Us Know your diet.',
                  style: TextStyle(
                    color: Colors.blueGrey[800],
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.45,
                    child: Expanded(
                      child: Container(
                        child: GridView(
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                          ),
                          children: [
                            FoodTypeCard(
                              image: "assets/images/meal5.jpeg",
                              title: 'Anything',
                              isSelected: _isAnythingSelected,
                            ),
                            FoodTypeCard(
                              image: "assets/images/paleo.jpeg",
                              title: 'Paleo Diet',
                              isSelected: _isPaleoSelected,
                            ),
                            FoodTypeCard(
                              image: "assets/images/vegetarian1.jpg",
                              title: 'Vegetarian',
                              isSelected: isvegSelected,
                            ),
                            FoodTypeCard(
                              image: "assets/images/low-carb.jpeg",
                              title: 'Low-Carb Diet',
                              isSelected: _isLowCarbSelected,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'I want to eat',
                        style: TextStyle(
                            color: Colors.blueGrey[800],
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    width: 0.0, style: BorderStyle.none)),
                            filled: true,
                            fillColor: Colors.grey[300],
                            hintText: '1500 Calories',
                            hintStyle: TextStyle(
                              color: Colors.grey[500],
                              fontWeight: FontWeight.bold,
                            ),
                            suffixText: 'Not sure?',
                            suffixStyle: TextStyle(
                                color: Colors.green[800],
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'In how many meals?',
                        style: TextStyle(
                          color: Colors.blueGrey[800],
                          fontSize: 19.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DropdownButton(
                            onChanged: (value) {
                              setState(() {
                                selected = value!;
                              });
                            },
                            underline: SizedBox.shrink(),
                            isExpanded: true,
                            value: selected,
                            style: TextStyle(
                                color: Colors.grey[500],
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                            items: meals.map((String value) {
                              return DropdownMenuItem(
                                  value: value, child: Text(value));
                            }).toList(),
                          ),
                        ),
                      )
                    ]),
              ))
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Padding(
            padding: EdgeInsets.only(left: 30.0, right: 30, top: 0, bottom: 20),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.blueGrey[800],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  onPressed: () {},
                  child: Text(
                    'Generate',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  )),
            ),
          ),
        ));
  }
}
