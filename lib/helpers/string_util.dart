import 'package:intl/intl.dart';

class StringUtil {
  static String format(DateTime dateTime, {String format = "dd-MM-yyyy"}) {
    return DateFormat(format).format(dateTime);
  }
}
