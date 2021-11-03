import 'package:dash_chat/dash_chat.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_dart/colors.dart';
import 'package:portfolio_dart/footer.dart';

import 'package:velocity_x/velocity_x.dart';

import 'header.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool chatting_status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colers.secondaryColor,
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              chatting_status = true;
            });
            // ChatMessage(
            //   text: "Hello",
            //   user: ChatUser(
            //     name: "Fayeed",
            //     uid: "123456789",
            //     avatar:
            //         "https://www.wrappixel.com/ampleadmin/assets/images/users/4.jpg",
            //   ),
            //   createdAt: DateTime.now(),
            //   image:
            //       "http://www.sclance.com/images/picture/Picture_753248.jpg",
            // );
          },
          child: chatting_status
              ? Column(
                  children: [
                    Container(
                      height: 300,
                      width: 200,
                      color: Colors.pink,
                    )
                  ],
                )
              : Icon(Icons.message)),
      body: VStack([
        HeaderScreen(),
        if (context.isMobile) IntroductionWidget().p16(),
        // MiddleScreen(),
        FooterScreen(),
      ]).scrollVertical(),
    );
  }
}
