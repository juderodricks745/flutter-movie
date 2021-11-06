
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchDefaultWidget extends StatelessWidget {
  const SearchDefaultWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedTextKit(
        animatedTexts: [
          RotateAnimatedText("Avengers", textStyle: context.textTheme.headline5),
          RotateAnimatedText("Flash", textStyle: context.textTheme.headline5),
          RotateAnimatedText("The Dark Knight", textStyle: context.textTheme.headline5),
          RotateAnimatedText("Doctor Who", textStyle: context.textTheme.headline5),
          RotateAnimatedText("Ocean's 11", textStyle: context.textTheme.headline5),
        ],
        isRepeatingAnimation: true,
        repeatForever: true,
        pause: const Duration(milliseconds: 300),
      ),
    );
  }
}