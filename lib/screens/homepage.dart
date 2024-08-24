import 'package:flutter/material.dart';
import 'package:untitled2/res/media.dart';
import 'package:untitled2/res/styles/appstyles.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Good morning',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        Text('Book Ticket', style: Appstyles.HeadLine),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage(AppMedia.logo),
                          // fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      height: 50,
                      width: 50,
                    )
                  ],
                ),
                Row()
              ],
            ),
          )
        ],
      ),
    );
  }
}
