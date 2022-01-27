

import 'package:flutter/material.dart';
import 'package:messagingapp/constants.dart';

import 'componrnnts/boddy.dart';
class messagescreen extends StatelessWidget {
//  const messagescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
        automaticallyImplyLeading: false,
        title: Row(
      children: [
      //  BackButton(),
        Icon(
            Icons.arrow_back, size: 16,
          // color: Theme.of(context).textTheme.bodyText1?.color?.withOpacity(0.8)
        ),


        CircleAvatar(
          backgroundImage: AssetImage("assets/images/user_2.png"),
        ),
        SizedBox(width: kDefaultPadding * 0.75,),
        Column(
          children: [
          Text("Kritin watson", style: TextStyle(fontSize: 16),),
          Text("Active 3m ago", style: TextStyle(fontSize: 12),),
        ],)
      ],
    ),
    actions: [
      IconButton( icon: Icon(Icons.local_phone), onPressed: (){},),
      IconButton( icon: Icon(Icons.videocam), onPressed: (){},),
      SizedBox(width: kDefaultPadding / 5,)
    ],
    );
  }
}
