import 'package:flutter/material.dart';
import 'package:messagingapp/screens/welcom/welcom_screen.dart';

void main(){(runApp(messagingapp()));}


class messagingapp extends StatelessWidget {
  const messagingapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home:  welcomScreen(),
    );
  }
}
