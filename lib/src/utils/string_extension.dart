import 'package:intl/intl.dart';

extension StrintExtension on String {
  DateTime toDate() {
    final date = DateFormat('yyyy-MM-ddTHH:mm').parse(this);
    return date;
  }

  String formatCardNumber() {
    if (length < 4) return this;
    String lastFourDigits = substring(length - 4);
    return '********$lastFourDigits';
  }
}
