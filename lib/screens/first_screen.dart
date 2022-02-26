import 'package:exercice_app/screens/second_screen.dart';
import 'package:flutter/material.dart';

Color currentColor = Colors.white54;

class MyFirstScreen extends StatefulWidget {
  const MyFirstScreen({Key? key}) : super(key: key);

  @override
  State<MyFirstScreen> createState() => _MyFirstScreenState();
}

class _MyFirstScreenState extends State<MyFirstScreen> {
  GlobalKey<ScaffoldState> sKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: sKey,
      backgroundColor: Colors.black54,
      drawer: SizedBox(
        width: 200,
        child: Drawer(
          backgroundColor: Colors.green,
          child: ListView(
            children: [
              DrawerHeader(
                child: Hero(
                  tag: 'circle_avatar',
                  child: CircleAvatar(
                    backgroundColor: currentColor,
                    backgroundImage: const AssetImage('images/profile.png'),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (c) => const MySecondScreen()));
                },
                child: const ListTile(
                  title: Text(
                    'Profile',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (c) => const MySecondScreen()));
                },
                child: const ListTile(
                  title: Text(
                    'Chat',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (c) => const MySecondScreen()));
                },
                child: const ListTile(
                  title: Text(
                    'Invite to Group',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (c) => const MySecondScreen()));
                },
                child: const ListTile(
                  title: Text(
                    'Report',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(primary: currentColor),
                child: const Text('Call'),
              )
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 70,
            right: 20,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  currentColor = Colors.blue;
                });
                sKey.currentState!.openDrawer();
              },
              child: const CircleAvatar(
                backgroundImage: AssetImage('images/profile.png'),
                // child: Icon(Icons.person),
              ),
            ),
          ),
          Positioned(
            bottom: 40,
            right: 70,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  currentColor = Colors.purple;
                });
                sKey.currentState!.openDrawer();
              },
              child: const CircleAvatar(
                backgroundColor: Colors.purple,
                backgroundImage: AssetImage('images/profile.png'),
                // child: Icon(Icons.person),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            right: 120,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  currentColor = Colors.red;
                });
                sKey.currentState!.openDrawer();
              },
              child: const CircleAvatar(
                backgroundColor: Colors.red,
                backgroundImage: AssetImage('images/profile.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
