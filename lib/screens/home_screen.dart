import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = '/home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        
        onTap: (index) {
          // print(index);
        },
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon:
                ImageIcon(AssetImage('assets/images/icon_quran.png'), size: 36),
            label: 'Quran',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png'),
                size: 36),
            label: 'Hadeth',
          ),
          BottomNavigationBarItem(
            icon:
                ImageIcon(AssetImage('assets/images/icon_sebha.png'), size: 36),
            label: 'Sebha',
          ),
          BottomNavigationBarItem(
            icon:
                ImageIcon(AssetImage('assets/images/icon_radio.png'), size: 36),
            label: 'Radio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, size: 36),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
