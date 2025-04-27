import 'package:intl/intl.dart';

// Cara nambahin function ke int

extension IntegerExt on int {
  String get currencyFormatRp => NumberFormat.currency(
    locale: 'id',
    symbol: 'Rp. ',
    decimalDigits: 0,
  ).format(this);
}
  