extension IntExt on int {
  /// The line `Duration get milliseconds => Duration(milliseconds: this);` is defining a getter method
  /// called `milliseconds` on the `int` type.
  Duration get milliseconds => Duration(milliseconds: this);

  /// The line `Duration get microseconds => Duration(microseconds: this);` is defining a getter method
  /// called `microseconds` on the `int` type. This getter method returns a `Duration` object with the
  /// value of the `int` multiplied by the number of microseconds.
  Duration get microseconds => Duration(microseconds: this);

  /// The line `Duration get seconds => Duration(seconds: this);` is defining a getter method called
  /// `seconds` on the `int` type. This getter method returns a `Duration` object with the value of the
  /// `int` multiplied by the number of seconds.
  Duration get seconds => Duration(seconds: this);
}
