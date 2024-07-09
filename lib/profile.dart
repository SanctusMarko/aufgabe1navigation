import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Text('Profile',
              style: TextStyle(
                fontSize: 24,
              )),
          SizedBox(
            height: 20,
          ),
          Icon(Icons.person, size: 40),
          Text("Max Musterman", style: TextStyle(fontSize: 24))
        ],
      ),
    );
  }
}
