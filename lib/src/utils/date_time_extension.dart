import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String toFormatedDate() {
    final date = DateFormat('MMMM dd, yyyy').format(this);
    return date;
  }
  String toShortFormatedDate() {
    final date = DateFormat('dd/MM/yyyy').format(this);
    return date;
  }
}
