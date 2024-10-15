import 'package:flutter/material.dart';
import 'package:islami/tabs/hadeth/hadeth_tab.dart';
import 'package:islami/tabs/quran/quran_tab.dart';
import 'package:islami/tabs/radio/radio_tab.dart';
import 'package:islami/tabs/sebha/sebha_tab.dart';
import 'package:islami/tabs/settings/settings_tab.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = '/home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<Widget> screens = [
    const QuranTab(),
    const HadethTab(),
    const SebhaTab(),
    const RadioTab(),
    const SettingsTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        currentIndex: selectedIndex,
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
