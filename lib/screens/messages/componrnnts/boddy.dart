import 'package:flutter/material.dart';
import 'package:messagingapp/constants.dart';
import 'package:messagingapp/modals/ChatMessage.dart';

import 'Text_message.dart';
import 'chat_inputfield.dart';
import 'message.dart';
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
     Expanded(
       child: Padding(
         padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
         child: ListView.builder(
           itemCount: demeChatMessages.length,
           itemBuilder: (context,index)=> Message(message: demeChatMessages[index],)),
       ),),
      chatinputfield(),
       ],);
  }
}




