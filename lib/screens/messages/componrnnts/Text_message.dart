import 'package:flutter/material.dart';
import 'package:messagingapp/modals/ChatMessage.dart';

import '../../../constants.dart';
class Textmessage extends StatelessWidget {
  const Textmessage({
    Key? key,required this.message
  }) : super(key: key);
  final ChatMessage message;
  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding * 0.75,
          vertical: kDefaultPadding / 2),
      decoration: BoxDecoration(
          color: kPrimaryColor.withOpacity(message.isSender ? 1 : 0.1),
          borderRadius: BorderRadius.circular(30)),

      child:  Text(message.text,
        style: TextStyle(color: message.isSender ? Colors.white : Theme.of(context).textTheme.bodyText1?.color),),

    );
  }
}
