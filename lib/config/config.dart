import 'package:flutter/foundation.dart';
import 'package:flutter_config/flutter_config.dart';

/// The `Config` class in Dart is an immutable class that holds the base URL for a REST API and the
/// client key for a Sentry SDK.
@immutable
class Config {
  const Config._();

  /// The base url of our REST API, to which all the requests will be sent.
  /// It is supplied at the time of building the apk or running the app:
  /// ```
  /// flutter build apk --debug --dart-define=BASE_URL=www.some_url.com
  /// ```
  /// OR
  /// ```
  /// flutter run --dart-define=BASE_URL=www.some_url.com
  /// ```
  static const baseUrl = String.fromEnvironment(
    'SERVER_DOMAIN',
    defaultValue: FlutterConfig.get("SERVER_DOMAIN"),
  );

  /// The client key for sentry SDK. The DSN tells the SDK where to
  /// send the events to.
  ///
  /// It is supplied at the time of building the apk or running the app:
  /// ```
  /// flutter build apk --debug --dart-define=SENTRY_DSN=www.some_url.com
  /// ```
  /// OR
  /// ```
  /// flutter run --dart-define=SENTRY_DSN=www.some_url.com
  /// ```
  static const sentryDSN = String.fromEnvironment(
    'SENTRY_DSN',
    defaultValue: FlutterConfig.get("SENTRY_DSN"),
  );
}
