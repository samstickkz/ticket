import 'package:flutter/material.dart';
import 'package:untitled2/screens/all_hotels.dart';
import 'package:untitled2/screens/all_tickets.dart';
import 'package:untitled2/screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      //routes
      routes: {
        '/': (context) => const Homepage(),
        '/all_tickets': (context) => const AllTickets(),
        //hotel routes
        '/hotel': (context) => const AllHotels(),
      },
    );
  }
}
