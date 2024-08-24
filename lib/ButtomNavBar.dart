import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/screens/homepage.dart';

class Buttomnavbar extends StatefulWidget {
  const Buttomnavbar({super.key});

  @override
  State<Buttomnavbar> createState() => _ButtomnavbarState();
}

class _ButtomnavbarState extends State<Buttomnavbar> {
  int _selectedIndex = 0;

  final Appscreens = [
    Homepage(),
    Text('sam'),
    Text('sj'),
    Text('sds'),
  ];

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    print('selected index: $_selectedIndex');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Appscreens[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
            label: 'Tickets',
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
            label: 'Tickets',
          ),
        ],
        selectedItemColor: Colors.amber[800],
      ),
    );
  }
}
