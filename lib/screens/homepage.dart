import 'package:flutter/material.dart';
import 'package:untitled2/res/media.dart';
import 'package:untitled2/res/styles/appstyles.dart';

import '../widgets/apptext.dart';
import '../widgets/ticket_view.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appstyles.bgColor,
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
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Apptext(
                  bigText: 'Popular',
                  smallText: 'See all',
                ),
                const SizedBox(
                  height: 20,
                ),
                const TicketView(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
