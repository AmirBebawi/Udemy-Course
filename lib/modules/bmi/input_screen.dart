import 'package:flutter/material.dart';

import '../../models/bmi_model/bmi_method.dart';
import '../bmi_result/result_screen.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  Color containerColor = Color(0xFF1D1E33);
  Color backGroundColor = Color(0xFF111328);
  bool isMale = true;
  double height = 120;

  int weight = 65;

  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: backGroundColor,
        title: const Text(
          "BMI Calculator",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        decoration: BoxDecoration(
                          color: isMale ? Colors.blue : containerColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Image(
                              width: 100,
                              height: 120,
                              image: AssetImage(
                                'assets/male.png',
                              ),
                              color: Colors.white,
                            ),
                            Text(
                              'Male',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        decoration: BoxDecoration(
                          color: !isMale ? Colors.pinkAccent : containerColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: const [
                            Image(
                              image: AssetImage(
                                'assets/female.png',
                              ),
                              color: Colors.white,
                              width: 100,
                              height: 130,
                            ),
                            Text(
                              'Female',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                  color: containerColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Height',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white60,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'cm',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white60,
                          ),
                        ),
                      ],
                    ),
                    Slider.adaptive(
                      thumbColor: Colors.pinkAccent,
                      inactiveColor: Colors.white,
                      activeColor: Colors.white,
                      min: 80,
                      max: 270,
                      value: height,
                      onChanged: (value) {
                        setState(() {
                          height = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                        color: containerColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Weight',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white60,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '${weight}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                heroTag:'weight--',
                                mini: true,
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                backgroundColor: Colors.blueGrey[700],
                              ),
                              FloatingActionButton(
                                heroTag: 'weight++',
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                mini: true,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                backgroundColor: Colors.blueGrey[700],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                        color: containerColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Age',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white60,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '${age}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(
                                    () {
                                      age--;
                                    },
                                  );
                                },
                                heroTag: 'age--',
                                mini: true,
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                backgroundColor: Colors.blueGrey[700],
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(
                                    () {
                                      age++;
                                    },
                                  );
                                },
                                heroTag: 'age++',
                                mini: true,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                backgroundColor: Colors.blueGrey[700],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.pinkAccent,
            child: MaterialButton(
              height: 50,
              onPressed: () {
                CalculatorBrain calc = CalculatorBrain(
                  height: height.round(),
                  weight: weight,
                );
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultScreen(
                              bmi: calc.calculateBMI(),
                              result: calc.getResult(),
                              interpretation: calc.getInterpretation(),
                            )));
              },
              child: Text(
                'Calculate',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
