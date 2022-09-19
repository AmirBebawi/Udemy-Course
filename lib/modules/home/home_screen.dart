import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            print("Menu Icon Clicked");
          },
          icon: Icon(
            Icons.menu,
          ),
        ),
        title: Text(
          "BMI",
        ),
        actions: [
          IconButton(
            onPressed: () {
              print("Notification icon Clicked");
            },
            icon: Icon(
              Icons.notifications,
            ),
          ),
        ],
        actionsIconTheme: IconThemeData(
          color: Colors.amber,
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image(
                      image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2015/04/19/08/33/flower-729512__340.jpg",
                      ),
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      padding: EdgeInsetsDirectional.all(10),
                      width: 200,
                      color: Colors.black.withOpacity(0.4),
                      child: Text(
                        "Flower",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
