import 'package:flutter/material.dart';

import '../res/styles/appstyles.dart';

class TicketCircle extends StatelessWidget {
  // check if the circle is at the right or left ?
  final bool isRight;
  const TicketCircle({super.key, required this.isRight});

  @override
  Widget build(BuildContext context) {
    return    SizedBox( 
      width: 10,
      height: 20,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Appstyles.bgColor,
          borderRadius: isRight==true? const BorderRadius.only(
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10)):
              const BorderRadius.only(
              topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10)

          ),
        ),
      ),
    );
  }
}
