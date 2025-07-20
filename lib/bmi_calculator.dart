import 'package:bmicalc/constants.dart';
import 'package:flutter/material.dart';

class BMICalculatorPage extends StatefulWidget {
  const BMICalculatorPage({super.key});

  @override
  State<BMICalculatorPage> createState() => _BMICalculatorPageState();
}

class _BMICalculatorPageState extends State<BMICalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BMI Calculator'),
      ),
      body: Container(
        color: Colors.blue[50],
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
         children:[
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    color: kTileColor,
                    child: const Column(
                      children: [
                        Icon(
                          Icons.male,
                          size: 50,
                          color: kActiveCardColor,
                          ),
                        Text(
                          "Male",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: kActiveCardColor
                            )
                    
                          )
                      ],
                    ),
                  ),
                  const SizedBox(width: 50),
                  Container(
                    padding: const EdgeInsets.all(20),
                    color: kTileColor,
                    child: const Column(
                      children: [
                        Icon(
                          Icons.female,
                          size: 50,
                          color: kInactiveCardColor,
                        ),
                        Text(
                          "Female",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: kInactiveCardColor,
                            )
                        )
                      ],
                    ),
                  ),
                  ],
              ),
              Column(
                children:[
                  Text("Height"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("185", style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        ),
                        ),
                      Text("cm"),
                    ],
                  ),
                  Slider(
                    min: 80,
                    max: 220,
                    value: 183,
                    onChanged: (value) {},
                    )
                ]
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text("Weight"),
                      Text("74",style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      )
                      ),
                      //Text("kg"),
                  
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            elevation: 0,
                            shape: ShapeBorder.lerp(
                              CircleBorder(),
                              CircleBorder(),
                              0.5,
                            ),
                            onPressed: (){},
                            child: Icon(Icons.remove),
                          ),
                  
                          FloatingActionButton(
                            elevation: 0,
                            shape: ShapeBorder.lerp(
                              CircleBorder(),
                              CircleBorder(),
                              0.5,
                            ),
                            onPressed: (){},
                            child: Icon(Icons.add),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 50),
                  Column(
                    children: [
                      Text("Height"),
                      Text("164",style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      )
                      ),
                      //Text("kg"),
                  
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            elevation: 0,
                            shape: ShapeBorder.lerp(
                              CircleBorder(),
                              CircleBorder(),
                              0.5,
                            ),
                            onPressed: (){},
                            child: Icon(Icons.remove),
                          ),
                  
                          FloatingActionButton(
                            elevation: 0,
                            shape: ShapeBorder.lerp(
                              CircleBorder(),
                              CircleBorder(),
                              0.5,
                            ),
                            onPressed: (){},
                            child: Icon(Icons.add),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          ElevatedButton(onPressed: () {}, child: Text("Calculate BMI")),
         ],
        ),
      ),
    );
  }
}