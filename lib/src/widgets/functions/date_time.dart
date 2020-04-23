import 'package:flutter/material.dart';

Future<DateTime> pickDate(BuildContext context) async {
  DateTime datepick = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now().add(Duration(days: -365)),
      lastDate: DateTime.now().add(Duration(days: 365)));
  return datepick;
}

Future<TimeOfDay> pickTime(BuildContext context) async {
  TimeOfDay timepick =
      await showTimePicker(context: context, initialTime: TimeOfDay.now());
  return timepick;
}
