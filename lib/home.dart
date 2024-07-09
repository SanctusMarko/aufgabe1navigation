import 'package:flutter/material.dart';
import 'likes.dart';
import 'news.dart';
import 'profile.dart';

class AppHome extends StatefulWidget {
  const AppHome({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AppHomeState createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  int currentIndex = 0;
  final List<Widget> screens = [
    const NewsScreen(),
    const LikesScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyApp'),
        backgroundColor: Colors.green, // Postavljanje zelene boje AppBar-a
      ),
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.newspaper), label: 'News'),
          NavigationDestination(icon: Icon(Icons.favorite), label: 'Likes'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
