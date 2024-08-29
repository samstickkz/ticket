import 'package:flutter/material.dart';

import '../res/styles/appstyles.dart';

class TextStyle3rd extends StatelessWidget {
  const TextStyle3rd({super.key});

  @override
  Widget build(BuildContext context) {
    return  Text('LDN',
        style: Appstyles.HeadLine3.copyWith(
            color: Colors.white));
  }
}
