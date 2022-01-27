import 'package:flutter/material.dart';
import 'package:messagingapp/components/primary_button.dart';
import 'package:messagingapp/constants.dart';
import 'package:messagingapp/screens/chats/chats_screen.dart';


class signinorsignup extends StatelessWidget {
  const signinorsignup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              Spacer(flex: 2,),
              Image.asset(
                MediaQuery.of(context).platformBrightness == Brightness.light ?
                "assets/icons/Logo_light.png" : "assets/icons/Logo_dark.png" , height: 148,),
              Spacer(),
              PrimaryButton(
                text: "Sign in ",
                press: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>chatsscreen() )),
              ),
              SizedBox(height: kDefaultPadding * 1.5,),
              PrimaryButton(
                color: Theme.of(context).colorScheme.secondary,
                text: "Sign up, ",
                press: (){},
              ),
              Spacer(flex: 3,)
            ],
          ),
        ),
      ),
    );
  }
}
