import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  Color containerColor = Color(0xFF1D1E33);
  Color backGroundColor = Color(0xFF111328);
  final String? bmi;
  final String? result;
  final String? interpretation;

  ResultScreen({this.bmi, this.result, this.interpretation});

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
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              " Your Result ",
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                  color: containerColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      '${result}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.green,
                      ),
                    ),
                    Text(
                      "${bmi}",
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "${interpretation}",
                      maxLines: 3,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.pinkAccent,
            height: 50 ,
            child: MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Re-Calculate",
                style: TextStyle(
                  fontWeight: FontWeight.bold ,
                  fontSize: 30 ,
                  color: Colors.white ,
                ),
              ),
            ),
          ) ,
        ],
      ),
    );
  }
}
