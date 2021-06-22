import 'package:intl/intl.dart';

final _numberFormat = NumberFormat(null, 'id_ID');
final _dateFormat = DateFormat('dd MMMM yyyy', 'id_ID');

String formatNumber(int number) {
  return _numberFormat.format(number);
}

String formatDate(DateTime date) {
  return _dateFormat.format(date);
}
