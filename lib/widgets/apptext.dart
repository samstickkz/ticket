import 'package:flutter/material.dart';
import 'package:untitled2/res/styles/appStyles.dart';

class Apptext extends StatelessWidget {
  const Apptext({super.key, required this.bigText, required this.smallText});

  final String bigText;
  final String smallText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style: appStyles.headLine2),
        InkWell(
          onTap: (){

          },
        child:  Text(smallText, style: appStyles.headLine3),
        )

      ],
    );
  }
}
