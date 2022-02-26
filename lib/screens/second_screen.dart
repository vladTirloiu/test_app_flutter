import 'package:flutter/material.dart';
import 'first_screen.dart';

class MySecondScreen extends StatefulWidget {
  const MySecondScreen({Key? key}) : super(key: key);

  @override
  _MySecondScreenState createState() => _MySecondScreenState();
}

class _MySecondScreenState extends State<MySecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Hero(
              tag: 'circle_avatar',
              child: CircleAvatar(
                radius: 100,
                backgroundColor: currentColor,
                backgroundImage: const AssetImage('images/profile.png'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
