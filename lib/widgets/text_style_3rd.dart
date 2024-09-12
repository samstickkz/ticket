import 'package:flutter/material.dart';

import '../res/styles/appStyles.dart';

class TextStyle3rd extends StatelessWidget {
  const TextStyle3rd({super.key});

  @override
  Widget build(BuildContext context) {
    return  Text('LDN',
        style: appStyles.headLine3.copyWith(
            color: Colors.white));
  }
}
