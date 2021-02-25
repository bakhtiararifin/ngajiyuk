import 'package:intl/intl.dart';

class Formatter {
  static final numberFormat = NumberFormat(null, 'id_ID');
  static final dateFormat = DateFormat('dd MMMM yyyy', 'id_ID');

  static String formatNumber(int number) {
    return numberFormat.format(number);
  }

  static String formatDate(DateTime date) {
    return dateFormat.format(date);
  }
}
