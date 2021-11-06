import 'package:flutter/material.dart';
import 'package:flutter_movie/utils/date_ext.dart';
import 'package:flutter_movie/utils/string_ext.dart';

class TextBottomMarginWidget extends StatelessWidget {
  const TextBottomMarginWidget({Key? key, required this.inputString, required this.marginBottom,
    required this.isDate, required this.isBold})
      : super(key: key);

  final bool isDate;
  final bool isBold;
  final String? inputString;
  final double marginBottom;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: inputString.ifNotNullOrBlank(),
      child: Padding(
        padding: EdgeInsets.only(bottom: marginBottom),
        child: Text(
          isDate ? inputString.format() : (inputString ?? ""),
          style: TextStyle(
            fontSize: _fontSize(isBold),
            fontWeight: _fontWeight(isBold),
          ),
        ),
      ),
    );
  }

  double _fontSize(bool isBold) {
    return isBold ? 18 : 14;
  }

  FontWeight _fontWeight(bool isBold) {
    return isBold ? FontWeight.bold : FontWeight.normal;
  }
}
