import 'package:flutter/material.dart';

class ImageErrorWidget extends StatelessWidget {
  const ImageErrorWidget({Key? key, required this.width, required this.height}) : super(key: key);
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: width,
        height: height,
        child: Image.asset("assets/images/tmdb_logo.png"),
      ),
    );
  }
}