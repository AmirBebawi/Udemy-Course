import 'package:flutter/material.dart';

import '../../models/user_model/user_model.dart';


class UserScreen extends StatelessWidget {
  List<UserModel> data = [
    UserModel(
      name: 'Amir Bebawi Naeem ',
      id: 1,
      phone: '01273274863',
    ),
    UserModel(
      name: 'Amira Ebrahim',
      id: 2,
      phone: '01288667913',
    ),
    UserModel(
      name: 'Sabah Rawdi Rizk',
      id: 3,
      phone: '01226024418',
    ),
    UserModel(
      name: 'Mam',
      id: 4,
      phone: '01273163816',
    ),
    UserModel(
      name: 'Dad',
      id: 5,
      phone: '01223794471',
    ),
    UserModel(
      name: 'Isaac Bebawi Naeem',
      id: 6,
      phone: '01206175402',
    ),
    UserModel(
      name: 'Manal Bebawi Naeem ',
      id: 7,
      phone: '01225186896',
    ),
    UserModel(
      name: 'Me',
      id: 8,
      phone: '01288667913',
    ),
    UserModel(
      name: 'Kerolos Elia',
      id: 9,
      phone: '01212011887',
    ),
    UserModel(
      name: 'Wezaa',
      id: 10,
      phone: '01272717363',
    ),
  ];

  UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Users",
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => buildUserItem(data[index]),
        separatorBuilder: (context, index) => Padding(
          padding: EdgeInsetsDirectional.only(
            start: 20,
          ),
          child: Container(
            height: 1.0,
            width: double.infinity,
            color: Colors.grey[300],
          ),
        ),
        itemCount: data.length,
      ),
    );
  }

  Widget buildUserItem(UserModel users) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25.0,
              backgroundColor: Colors.blue,
              child: Text(
                users.id.toString(),
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    users.name!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                  ),
                  Text(
                    users.phone!,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
