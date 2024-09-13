import 'package:flutter/material.dart';
import 'package:untitled2/res/media.dart';
import 'package:untitled2/res/styles/appStyles.dart';

class Hotels extends StatelessWidget {
  const Hotels({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.6,
      height: 350,
      decoration: BoxDecoration(
        color: appStyles.primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            // width: size.width * 0.6,
            height: 180,
            decoration: BoxDecoration(
              color: appStyles.primaryColor,
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                  image: AssetImage(AppMedia.hotelRoom), fit: BoxFit.cover),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
