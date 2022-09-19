
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  static int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() =>count++);
              },
              child: Text(
                "+",
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20 ,end: 20 ,),
              child: Text(
                "$count",
                style: TextStyle(
                  fontWeight: FontWeight.bold ,
                  fontSize: 30,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() =>count--);
              },
              child: Text(
                "-",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
