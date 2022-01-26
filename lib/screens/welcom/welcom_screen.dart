import 'package:flutter/material.dart';

class welcomScreen extends StatelessWidget {
  const welcomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset("assets/images/welcome_image.png"),
            Text("Welcom to over freedom\ Messaging app", textAlign: TextAlign.center,
              style:  Theme.of(context).textTheme.headline5?.copyWith(fontWeight: FontWeight.bold),),
            Text("Fredom take any person of you\ mother language",
              textAlign: TextAlign.center,
              style: TextStyle(color: Theme.of(context).textTheme.bodyText1?.color?.withOpacity(0.64)),),
          ],
        ),
      ),
    );
  }
}
