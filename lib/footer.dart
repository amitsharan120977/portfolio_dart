import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:portfolio_dart/header.dart';
import 'package:velocity_x/velocity_x.dart';

import 'colors.dart';

class FooterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        VxDevice(
          mobile: VStack(
            [
              "Want Assistance?\nLet's talk.".text.center.white.xl2.make(),
              10.heightBox,
              "kumpali@gmail.com"
                  .text
                  .color(Colers.accentColor)
                  .semiBold
                  .make()
                  .box
                  .border(color: Colers.accentColor)
                  .p16
                  .rounded
                  .make()
            ],
            crossAlignment: CrossAxisAlignment.center,
          ),
          web: HStack(
            [
              "Want Assistance?\nLet's talk.".text.center.white.xl2.make(),
              10.widthBox,
              "kumpali@gmail.com"
                  .text
                  .color(Colers.accentColor)
                  .semiBold
                  .make()
                  .box
                  .border(color: Colers.accentColor)
                  .p16
                  .rounded
                  .make(),
            ],
            alignment: MainAxisAlignment.spaceAround,
          ).w(context.safePercentWidth * 70).scale150().p16(),
        ),
        50.heightBox,
        // CustomAppBar(),
        10.heightBox,
        "Thanks for coming, ".richText.semiBold.white.withTextSpanChildren(
            ["that's all folks.".textSpan.gray500.make()]).make(),
        10.heightBox,
        SocialAccounts(),
        30.heightBox,
        [
          "Made in India with".text.purple500.make().shimmer(),
          10.widthBox,
          Icon(
            Icons.favorite_rounded,
            color: Vx.red500,
            size: 14,
          )
        ].hStack(crossAlignment: CrossAxisAlignment.center),

        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [],
        )
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).wFull(context).p16();
  }
}
