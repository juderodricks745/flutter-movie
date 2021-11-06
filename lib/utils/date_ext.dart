import 'package:intl/intl.dart';

extension DateExtension on String? {
  String format() {
    if (this == null) return "";
    return DateFormat("dd MMM yyyy").format(DateTime.parse(this!));
  }
}