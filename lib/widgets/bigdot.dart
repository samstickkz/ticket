import 'package:flutter/material.dart';

class Bigdot extends StatelessWidget {
  const Bigdot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        
        border: Border.all(color: Colors.white, width: 2.5),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
