import 'package:flutter/material.dart';

class AppBuilderWidget extends StatelessWidget {
  final int RandomNumberDiverder;
  final double width;
  const AppBuilderWidget(
      {super.key, required this.RandomNumberDiverder, this.width = 3});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(
              (constraints.constrainWidth() / RandomNumberDiverder).floor(),
              (index) => SizedBox(
                    width: width,
                    height: 1,
                    child: const DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                  )));
    });
  }
}
