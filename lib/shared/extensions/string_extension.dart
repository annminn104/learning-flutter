import 'package:path/path.dart' as path;

import '../constants/app/utils.dart' show RegexES;

extension StringExt on String {
  /// The line `bool get isValidEmail => RegexES.emailRegex.hasMatch(this);` is defining a getter method
  /// called `isValidEmail` for the `String` class extension.
  bool get isValidEmail => RegexES.emailRegex.hasMatch(this);

  /// The line `bool get isValidName => RegexES.nameRegex.hasMatch(this);` is defining a getter method
  /// called `isValidName` for the `String` class extension. This getter method checks if the current
  /// string matches the regular expression pattern defined in `RegexES.nameRegex`. If the string
  /// matches the pattern, it returns `true`, indicating that the string is a valid name.
  bool get isValidName => RegexES.nameRegex.hasMatch(this);

  /// The line `bool get isValidContact => RegexES.contactRegex.hasMatch(this);` is defining a getter
  /// method called `isValidContact` for the `String` class extension. This getter method checks if the
  /// current string matches the regular expression pattern defined in `RegexES.contactRegex`. If the
  /// string matches the pattern, it returns `true`, indicating that the string is a valid contact.
  bool get isValidContact => RegexES.contactRegex.hasMatch(this);

  /// The line `bool get isValidErp => RegexES.erpRegex.hasMatch(this);` is defining a getter method
  /// called `isValidErp` for the `String` class extension. This getter method checks if the current
  /// string matches the regular expression pattern defined in `RegexES.erpRegex`. If the string matches
  /// the pattern, it returns `true`, indicating that the string is a valid ERP (Enterprise Resource
  /// Planning) identifier.
  bool get isValidErp => RegexES.erpRegex.hasMatch(this);

  /// The line `bool get isValidZipCode => RegexES.zipCodeRegex.hasMatch(this);` is defining a getter
  /// method called `isValidZipCode` for the `String` class extension. This getter method checks if the
  /// current string matches the regular expression pattern defined in `RegexES.zipCodeRegex`. If the
  /// string matches the pattern, it returns `true`, indicating that the string is a valid zip code.
  bool get isValidZipCode => RegexES.zipCodeRegex.hasMatch(this);

  /// The line `bool get isValidCreditCardNumber => RegexES.creditCardNumberRegex.hasMatch(this);` is
  /// defining a getter method called `isValidCreditCardNumber` for the `String` class extension. This
  /// getter method checks if the current string matches the regular expression pattern defined in
  /// `RegexES.creditCardNumberRegex`. If the string matches the pattern, it returns `true`, indicating
  /// that the string is a valid credit card number.
  bool get isValidCreditCardNumber =>
      RegexES.creditCardNumberRegex.hasMatch(this);

  /// The line `bool get isValidCreditCardCVV => RegexES.creditCardCVVRegex.hasMatch(this);` is defining
  /// a getter method called `isValidCreditCardCVV` for the `String` class extension. This getter method
  /// checks if the current string matches the regular expression pattern defined in
  /// `RegexES.creditCardCVVRegex`. If the string matches the pattern, it returns `true`, indicating
  /// that the string is a valid credit card CVV (Card Verification Value) number.
  bool get isValidCreditCardCVV => RegexES.creditCardCVVRegex.hasMatch(this);

  /// The line `bool get isValidCreditCardExpiry => RegexES.creditCardExpiryRegex.hasMatch(this);` is
  /// defining a getter method called `isValidCreditCardExpiry` for the `String` class extension. This
  /// getter method checks if the current string matches the regular expression pattern defined in
  /// `RegexES.creditCardExpiryRegex`. If the string matches the pattern, it returns `true`, indicating
  /// that the string is a valid credit card expiry date.
  bool get isValidCreditCardExpiry =>
      RegexES.creditCardExpiryRegex.hasMatch(this);

  /// The line `bool get isValidOtpDigit => RegexES.otpDigitRegex.hasMatch(this);` is defining a getter
  /// method called `isValidOtpDigit` for the `String` class extension. This getter method checks if the
  /// current string matches the regular expression pattern defined in `RegexES.otpDigitRegex`. If the
  /// string matches the pattern, it returns `true`, indicating that the string is a valid OTP (One-Time
  /// Password) digit.
  bool get isValidOtpDigit => RegexES.otpDigitRegex.hasMatch(this);

  /// The `capitalize` getter method is defined as an extension on the `String` class. It returns a new
  /// string where the first character is capitalized and the rest of the characters are converted to
  /// lowercase.
  String get capitalize =>
      this[0].toUpperCase() + this.substring(1).toLowerCase();

  /// The line `String get removeUnderScore => this.replaceAll('_', ' ');` is defining a getter method
  /// called `removeUnderScore` for the `String` class extension. This getter method replaces all
  /// occurrences of the underscore character `_` in the current string with a space character `' '`. It
  /// returns a new string with the underscores removed.
  String get removeUnderScore => this.replaceAll('_', ' ');

  /// The line `String get ext => p.extension(this);` is defining a getter method called `ext` for the
  /// `String` class extension. This getter method uses the `p.extension` function from the `path`
  /// package to get the file extension of the current string. It returns the file extension as a
  /// string.
  String get ext => path.extension(this);
}
