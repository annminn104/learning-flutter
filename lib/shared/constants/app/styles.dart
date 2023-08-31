import 'package:flutter/material.dart';

/// The above class defines constants for different sizes of icons.
@immutable
class IconSizes {
  const IconSizes._();

  static const double sm19 = 19;
  static const double med22 = 22;
  static const double lg27 = 27;
}

/// The `Insets` class provides constants for creating `SizedBox` and `Spacer` widgets with predefined
/// dimensions.
@immutable
class Insets {
  const Insets._();

  /// [SizedBox] of height **3**.
  static const gapH3 = SizedBox(height: 3);

  /// [SizedBox] of width **3**.
  static const gapW3 = SizedBox(width: 3);

  /// [SizedBox] of height **5**.
  static const gapH5 = SizedBox(height: 5);

  /// [SizedBox] of width **5**.
  static const gapW5 = SizedBox(width: 5);

  /// [SizedBox] of height **10**.
  static const gapH10 = SizedBox(height: 10);

  /// [SizedBox] of width **10**
  static const gapW10 = SizedBox(width: 10);

  /// [SizedBox] of height **15**.
  static const gapH15 = SizedBox(height: 15);

  /// [SizedBox] of height **15**.
  static const gapW15 = SizedBox(width: 15);

  /// [SizedBox] of height **20**.
  static const gapH20 = SizedBox(height: 20);

  /// [SizedBox] of height **20**.
  static const gapW20 = SizedBox(width: 20);

  /// [SizedBox] of height **25**.
  static const gapH25 = SizedBox(height: 25);

  /// [SizedBox] of height **25**.
  static const gapW25 = SizedBox(width: 25);

  /// [SizedBox] of height **30**.
  static const gapH30 = SizedBox(height: 30);

  /// [SizedBox] of height **30**.
  static const gapW30 = SizedBox(width: 30);

  /// [Spacer] for adding infinite gaps, as much as the constraints
  /// allow.
  static const expand = Spacer();

  /// The value for bottom padding of buttons in the app.
  /// It is measured from the bottom of the screen, that is
  /// behind the android system navigation.
  /// Used to prevent overlapping of android navigation with the button.
  static const bottomInsets = SizedBox(height: 38);

  /// The value for a smaller bottom padding of buttons in the app.
  /// It is measured from the bottom of the screen, that is
  /// behind the android system navigation.
  /// Used to prevent overlapping of android navigation with the button.
  static const bottomInsetsLow = SizedBox(height: 20);
}


/// The `Corners` class provides predefined `BorderRadius` values for rounding corners in Dart.
@immutable
class Corners {
  const Corners._();

  /// [BorderRadius] rounded on all corners by **4**
  static const BorderRadius rounded4 = BorderRadius.all(Radius.circular(4));

  /// [BorderRadius] rounded on all corners by **7**
  static const BorderRadius rounded7 = BorderRadius.all(Radius.circular(7));

  /// [BorderRadius] rounded on all corners by **9**
  static const BorderRadius rounded9 = BorderRadius.all(Radius.circular(9));

  /// [BorderRadius] rounded on all corners by **10**
  static const BorderRadius rounded10 = BorderRadius.all(Radius.circular(10));

  /// [BorderRadius] rounded on all corners by **15**
  static const BorderRadius rounded15 = BorderRadius.all(Radius.circular(15));

  /// [BorderRadius] rounded on all corners by **20**
  static const BorderRadius rounded20 = BorderRadius.all(Radius.circular(20));

  /// [BorderRadius] rounded on all corners by **50**
  static const BorderRadius rounded50 = BorderRadius.all(Radius.circular(50));
}


/// The `Shadows` class in Dart defines different types of box shadows for use in UI design.
@immutable
class Shadows {
  const Shadows._();

  static const List<BoxShadow> universal = [
    BoxShadow(
      color: Color.fromRGBO(51, 51, 51, 0.15),
      blurRadius: 10,
    ),
  ];

  static const elevated = <BoxShadow>[
    BoxShadow(
      color: Color.fromARGB(76, 158, 158, 158),
      blurRadius: 3,
      spreadRadius: -0.2,
      offset: Offset(2, 0),
    ),
    BoxShadow(
      color: Color.fromARGB(76, 158, 158, 158),
      blurRadius: 3,
      spreadRadius: -0.2,
      offset: Offset(-2, 0),
    ),
  ];

  static const List<BoxShadow> small = [
    BoxShadow(
      color: Color.fromRGBO(51, 51, 51, .15),
      blurRadius: 3,
      offset: Offset(0, 1),
    ),
  ];
}
