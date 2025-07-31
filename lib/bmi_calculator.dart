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
        backgroundColor: kBackgroundColor,
        centerTitle: true,
        title: const Text(
          'BMI Calculator',
          style: TextStyle(
            color: kActiveCardColor,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),)
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        color: kBackgroundColor,
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
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: kTileColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
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
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: kTileColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      
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
                  ),
                  ],
              ),
              const SizedBox(height: 25),
              Container(
                padding: const EdgeInsets.all(20),
                color: kTileColor,
                child: Column(
                  children:[
                    const Text(
                      "Height",
                      style: TextStyle(
                        color: kActiveCardColor,
                      ),
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("185", style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: kActiveCardColor,
                          ),
                          ),
                        Text(
                          "cm",
                          style: TextStyle(
                            color: kActiveCardColor,
                          )
                        ),
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
              ),

              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      color: kTileColor,
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Text(
                            "Weight",
                            style: TextStyle(
                              color: kActiveCardColor,
                            ),
                          ),
                          Text("74",style: TextStyle(
                            color: kActiveCardColor,
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
                    
                              SizedBox(width: 20),
                      
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
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Container(
                      color: kTileColor,
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Text(
                            "Height",
                            style: TextStyle(
                              color: kActiveCardColor,
                            ),
                          ),
                          Text("164",style: TextStyle(
                            color: kActiveCardColor,
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
                    
                              SizedBox(width: 20),
                    
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
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 25),
          ElevatedButton(onPressed: () {}, child: Text("Calculate BMI")),
         ],
        ),
      ),
    );
  }
}