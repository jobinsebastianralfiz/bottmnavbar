import 'package:bottomnavdemo/bottomNavProvider.dart';
import 'package:bottomnavdemo/fav_page.dart';
import 'package:bottomnavdemo/home_page.dart';
import 'package:bottomnavdemo/profile_page.dart';
import 'package:bottomnavdemo/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int _selectedIndex = 0;

  List<Widget> widgetOptions = [
    HomePage(),
    FavPage(),
    ProfilePage(),
    SettingsPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
        ),
        bottomNavigationBar: Consumer<BottomNavBarProvider>(
          builder: (context, navProvider, child) {
            return BottomNavigationBar(
              currentIndex: navProvider.currentIndex,
              onTap: (index) {
                navProvider.updateIndex(index);
              },
              backgroundColor: Theme.of(context).primaryColor,
              items: const [
                BottomNavigationBarItem(
                    backgroundColor: Colors.deepPurple,
                    icon: Icon(Icons.home),
                    label: "Home"), //0
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite), label: "Fav"), //1
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: "Profile"), //2
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: "Setting") //3
              ],
            );
          },
        ),
        body: widgetOptions.elementAt(
            Provider.of<BottomNavBarProvider>(context).currentIndex));
  }
}
