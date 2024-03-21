import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Sample data
  final List<Map<String, String>> userData = [
    {
      "name": "Bima Kaka Bani Adam",
      "hobby": "sepak bola",
      "image": "https://cdn.icon-icons.com/icons2/3708/PNG/512/man_person_people_avatar_icon_230017.png", 
    },
    {
      "name": "D dank shuwparman",
      "hobby": "Adventure",
      "image": "https://cdn.icon-icons.com/icons2/3708/PNG/512/man_person_people_avatar_icon_230017.png", 
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('User Profiles'),
          backgroundColor: Colors.blue,
          
        ),
        body: ListView.builder(
          itemCount: userData.length,
          itemBuilder: (BuildContext context, int index) {
            return UserCard(
              userData: userData[index],
            );
          },
        ),
      ),
    );
  }
}

class UserCard extends StatelessWidget {
  final Map<String, String> userData;

  UserCard({
    required this.userData,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(userData['image']!),
        ),
        title: Text(userData['name']!),
        subtitle: Text(userData['hobby']!),
        trailing: Icon(Icons.more_vert)
      ),
    );
  }
}