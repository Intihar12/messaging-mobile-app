
import 'package:flutter/material.dart';
import 'package:messagingapp/constants.dart';

import 'componentss/body.dart';
class chatsscreen extends StatefulWidget {
  const chatsscreen({Key? key}) : super(key: key);

  @override
  State<chatsscreen> createState() => _chatsscreenState();
}

class _chatsscreenState extends State<chatsscreen> {
  int _selectedIndex=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      floatingActionButton: FloatingActionButton(
        onPressed:(){},
        child: Icon(Icons.person_add_alt_1, color: Colors.white,),
      ),

      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      onTap: (value){
        setState(() {
          _selectedIndex=value;
        });
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.messenger,), label: "chat"),
        BottomNavigationBarItem(icon: Icon(Icons.people),label: "people"),
        BottomNavigationBarItem(icon: Icon(Icons.call),label: "call"),
       BottomNavigationBarItem(

   icon: CircleAvatar(
     radius: 14,
     backgroundImage: AssetImage("assets/images/user_2.png"),
 ),
 label: "profile"
 )
      ],
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      automaticallyImplyLeading: false,
      title: Text("Chats"),
      actions: [
        IconButton(onPressed: (){},
          icon: Icon(Icons.search))],
    );
  }
}
