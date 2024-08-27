import 'package:flutter/material.dart';
class AppBuilderWidget extends StatelessWidget {
  final int RandomNumberDiverder;
  const AppBuilderWidget({super.key, required this.RandomNumberDiverder});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints){
      print("${constraints.constrainWidth()}");
      return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
      children:
        List.generate((constraints.constrainWidth()/RandomNumberDiverder).floor(),(index)=>const SizedBox(width: 2, height: 1, child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
        ),))

      );
    })  ;
  }
}

