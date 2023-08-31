import 'package:intl/intl.dart';

extension DateExt on DateTime {
 /// The function `toTimeAgoLabel` returns a string representing the time elapsed since a given date, in
 /// a human-readable format.
 /// 
 /// Args:
 ///   numericIntervals (bool): A boolean parameter that determines whether the time intervals should be
 /// displayed as numeric values (e.g. "1 day ago") or as labels (e.g. "Yesterday"). If set to true, the
 /// intervals will be displayed as numeric values. If set to false, the intervals will be displayed as
 /// labels. Defaults to false
 /// 
 /// Returns:
 ///   a string representing the time interval between the current DateTime and the DateTime object it
 /// is called on. The returned string is a label indicating how long ago the time was.
  String toTimeAgoLabel({bool numericIntervals = false}) {
    final now = DateTime.now();
    final durationSinceNow = now.difference(this);

    final inDays = durationSinceNow.inDays;
    if (inDays >= 1) {
      if ((inDays / 7).floor() >= 1) {
        return numericIntervals ? '1 week ago' : 'Last week';
      } else if (inDays >= 2) {
        return '$inDays days ago';
      } else {
        return numericIntervals ? '1 day ago' : 'Yesterday';
      }
    }

    final inHours = durationSinceNow.inHours;
    if (inHours >= 1) {
      if (inHours >= 2) {
        return '$inHours hours ago';
      } else {
        return numericIntervals ? '1 hour ago' : 'An hour ago';
      }
    }

    final inMinutes = durationSinceNow.inMinutes;
    if (inMinutes >= 1) {
      if (inMinutes >= 2) {
        return '$inMinutes minutes ago';
      } else {
        return numericIntervals ? '1 minute ago' : 'A minute ago';
      }
    }

    final inSeconds = durationSinceNow.inSeconds;
    return inSeconds >= 3 ? '$inSeconds seconds ago' : 'Just now';
  }

/// The function `toTimeToGoLabel` returns a label indicating the time interval until a given date, with
/// options for numeric intervals.
/// 
/// Args:
///   numericIntervals (bool): A boolean parameter that determines whether the output should use numeric
/// intervals or not. If set to true, the output will include the exact number of days, hours, minutes,
/// or seconds. If set to false, the output will use more general terms like "Tomorrow" or "Next week".
/// Defaults to false
/// 
/// Returns:
///   a string indicating the time interval until the current time. The returned string can be in
/// various formats depending on the value of the `numericIntervals` parameter.
  String toTimeToGoLabel({bool numericIntervals = false}) {
    final now = DateTime.now();
    final durationToNow = this.difference(now);

    final inDays = durationToNow.inDays;
    if (inDays >= 1) {
      if ((inDays / 7).floor() >= 1) {
        return numericIntervals ? 'In 1 week' : 'Next week';
      } else if (inDays >= 2) {
        return 'In $inDays days';
      } else {
        return numericIntervals ? 'In 1 day' : 'Tomorrow';
      }
    }

    final inHours = durationToNow.inHours;
    if (inHours >= 1) {
      if (inHours >= 2) {
        return 'In $inHours hours';
      } else {
        return numericIntervals ? 'In 1 hour' : 'In an hour';
      }
    }

    final inMinutes = durationToNow.inMinutes;
    if (inMinutes >= 1) {
      if (inMinutes >= 2) {
        return 'In $inMinutes minutes';
      } else {
        return numericIntervals ? 'In 1 minute' : 'In a minute';
      }
    }

    final inSeconds = durationToNow.inSeconds;
    return inSeconds >= 3 ? 'In $inSeconds seconds' : 'Just about now';
  }

/// The function converts a DateTime object to a formatted string representation.
/// 
/// Args:
///   format (String): The format parameter is a string that specifies the desired format for the date.
/// It uses a combination of letters and symbols to represent different components of the date and time.
/// For example, 'd' represents the day of the month, 'MMM' represents the abbreviated month name, 'y'
/// represents the. Defaults to d MMM, y - hh:mm a
/// 
/// Returns:
///   The formatted date string according to the specified format.
  String toDateString([String format = 'd MMM, y - hh:mm a']) {
    return DateFormat(format).format(this);
  }
}
