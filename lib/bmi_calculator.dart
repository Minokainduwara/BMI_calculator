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
                  ElevatedButton(onPressed: () {}, child: Text("Male")),
                  ElevatedButton(onPressed: () {}, child: Text("FeMale")),
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