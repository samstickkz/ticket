import 'package:flutter/material.dart';
import 'package:untitled2/res/styles/appStyles.dart';

class Apptext extends StatelessWidget {
  const Apptext({super.key, required this.bigText, required this.smallText, required this.func});

  final String bigText;
  final String smallText;
  final VoidCallback func;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style: appStyles.headLine2),
        InkWell(
          onTap: (){
            //navigate to all ticket screen
            func();

          },
        child:  Text(smallText, style: appStyles.headLine3),
        )

      ],
    );
  }
}
