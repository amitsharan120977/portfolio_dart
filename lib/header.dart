import 'dart:math';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_dart/colors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeaderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: VxBox(
              child: VStack([
        ZStack(
          [
            PictureWidget(),
            Row(
              children: [
                VStack([
                  if (context.isMobile) 50.heightBox else 10.heightBox,
                  // CustomAppBar().shimmer(primaryColor: Coolors.accentColor),
                  280.heightBox,
                  VxBox()
                      .color(Colers.accentColor)
                      .size(200, 10)
                      .make()
                      .px4()
                      .shimmer(
                          primaryColor: Colors.deepPurple,
                          secondaryColor: Colors.cyan.shade50),
                  // 30.heightBox,
                ]).pSymmetric(
                  h: context.percentWidth * 7,
                  v: 32,
                ),
                Expanded(
                  child: VxResponsive(
                    medium: IntroductionWidget()
                        .pOnly(left: 120)
                        .h(context.percentHeight * 60),
                    large: IntroductionWidget()
                        .pOnly(left: 120)
                        .h(context.percentHeight * 60),
                    fallback: const Offstage(),
                  ),
                )
              ],
            ).w(context.screenWidth)
          ],
        )
      ]))
          .size(context.screenWidth, context.percentHeight * 60)
          .color(Colers.secondaryColor)
          .make(),
    );
  }
}

class IntroductionWidget extends StatelessWidget {
  const IntroductionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nameWidget = "KUMPALI"
        .text
        .white
        .xl6
        .lineHeight(1)
        .size(context.isMobile ? 15 : 20)
        .bold
        .make()
        .shimmer(
            primaryColor: Colors.deepPurple,
            secondaryColor: Colors.cyan.shade50);
    // final tagline = " ~ love to assist you ~"
    //     .text
    //     .blueGray50
    //     // .italic
    //     .fontFamily("RougeScript")
    //     .xl5
    //     .make();
    return VStack(
      [
        [
          nameWidget,
          // tagline,
          Text(
            " ~ love to assist you ~ ",
            style: TextStyle(
                fontFamily: "RougeScript",
                fontSize: 40,
                color: Colors.blueGrey.shade50),
          ),
          60.heightBox,
          // " We are on the way".text.white.xl5.make().w(context.isMobile
          //     ? context.screenWidth
          //     : context.percentWidth * 20),
          SizedBox(
            width: 400.0,
            child: DefaultTextStyle(
              style: const TextStyle(
                fontSize: 40.0,
                fontFamily: 'Agne',
              ),
              child: AnimatedTextKit(
                totalRepeatCount: 100,
                animatedTexts: [
                  TypewriterAnimatedText(
                    'We are on the way',
                    textStyle: TextStyle(color: Colors.cyanAccent),
                  ),
                ],
                onTap: () {
                  print("Tap Event");
                },
              ),
            ),
          ),
        ].vStack(),
        // ElevatedButton(
        //   onPressed: () {
        //     launch("https://kumpali.com");
        //   },
        //   style: ElevatedButton.styleFrom(
        //       onSurface: Vx.purple700,
        //       onPrimary: Colers.accentColor,
        //       shape: RoundedRectangleBorder(
        //           borderRadius: BorderRadius.circular(30)),
        //       textStyle: TextStyle(color: Colers.primaryColor)),
        //   child: "Visit kumpali.com".text.make(),
        // ).h(50),
        // 20.heightBox,
        // SocialAccounts(),
      ],
      crossAlignment: CrossAxisAlignment.center,
      alignment: MainAxisAlignment.center,
    );
  }
}

// class CustomAppBar extends StatelessWidget {
//   const CustomAppBar({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Icon(
//       CupertinoIcons.decrease_indent,
//       size: 50,
//     );
//   }
// }

class PictureWidget extends StatelessWidget {
  const PictureWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      origin: Offset(context.percentWidth * 2, 0),
      transform: Matrix4.rotationY(0),
      child: Image.asset(
        "assets/images/logo1.png",
        fit: BoxFit.cover,
        height: context.percentHeight * 60,
      ),
    );
  }
}

class SocialAccounts extends StatelessWidget {
  const SocialAccounts({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return [
      Icon(
        FontAwesomeIcons.twitter,
        color: Colors.white,
      ).mdClick(() {
        launch("https://twitter.com/leanersumit");
      }).make(),
      20.widthBox,
      Icon(
        FontAwesomeIcons.instagram,
        color: Colors.white,
      ).mdClick(() {
        launch("https://www.instagram.com/amit_sharan1/");
      }).make(),
      20.widthBox,
      Icon(
        FontAwesomeIcons.facebook,
        color: Colors.white,
      ).mdClick(() {
        launch("https://www.facebook.com/amit.sharan.1840");
      }).make(),
      20.widthBox,
      Icon(
        FontAwesomeIcons.github,
        color: Colors.white,
      ).mdClick(() {
        launch("https://github.com/amitsharan120977");
      }).make()
    ].hStack();
  }
}
