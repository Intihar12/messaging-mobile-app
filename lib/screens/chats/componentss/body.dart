import 'package:flutter/material.dart';
import 'package:messagingapp/components/filled_outline_button.dart';
import 'package:messagingapp/constants.dart';
import 'package:messagingapp/modals/Chat.dart';
import 'package:messagingapp/screens/messages/message_screen.dart';

import 'chat_card.dart';
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: kPrimaryColor,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(kDefaultPadding,0 ,kDefaultPadding,kDefaultPadding),
            child: Row(
              children: [
                FillOutlineButton(press: (){}, text: "Recent message"),
                SizedBox(height: kDefaultPadding,),
                FillOutlineButton(press: (){}, text: "Active", isFilled: false,)
              ],
            ),
          ),
        ),
        Expanded(
         child: ListView.builder(
             itemCount: chatsData.length,
             itemBuilder: (context, index)=> chatCard(chat: chatsData[index],

        press:()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>messagescreen()),),)),
        ),

      ],

    );
  }
}

