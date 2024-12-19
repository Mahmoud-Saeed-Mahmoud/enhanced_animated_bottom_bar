import 'package:enhanced_animated_bottom_bar/enhanced_animated_bottom_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      home: Scaffold(
        body: const Center(
          child: Text('Content Area'),
        ),
        bottomNavigationBar: EnhancedAnimatedBottomBar(
          items: [
            NavigationItem(
              title: 'Home',
              icon: Icon(Icons.home_rounded, size: 30),
              selectedIcon: Icon(
                Icons.home_filled,
                color: Colors.white,
                size: 30,
              ),
              color: Colors.blue,
              gradientColors: [Colors.blue.shade300, Colors.blue.shade700],
              badge: '2',
            ),
            NavigationItem(
              title: 'Chat',
              icon: Image.asset(
                'assets/icon_outlined_chat.png',
                height: 30,
                width: 30,
              ),
              selectedIcon: Image.asset(
                'assets/icon_filled_chat.png',
                height: 30,
                width: 30,
              ),
              color: Colors.purple,
              gradientColors: [Colors.purple.shade300, Colors.purple.shade700],
              badge: '5',
            ),
            NavigationItem(
              title: 'Profile',
              icon: Icon(Icons.person_outline_rounded, size: 30),
              selectedIcon:
                  Icon(Icons.person_rounded, color: Colors.white, size: 30),
              color: Colors.pink,
              gradientColors: [Colors.pink.shade300, Colors.pink.shade700],
            ),
            NavigationItem(
              title: 'Settings',
              icon: Icon(
                Icons.settings_outlined,
                size: 30,
              ),
              selectedIcon:
                  Icon(Icons.settings_rounded, color: Colors.white, size: 30),
              color: Colors.orange,
              gradientColors: [Colors.orange.shade300, Colors.orange.shade700],
            ),
          ],
          onItemSelected: (index) {
            print('Selected index: $index');
          },
          backgroundColor: Colors.white.withValues(alpha: 0.9),
        ),
      ),
    );
  }
}
