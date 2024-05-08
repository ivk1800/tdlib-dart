import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A digit-only authentication code is delivered via Firebase Authentication
/// to the official iOS application
@immutable
class AuthenticationCodeTypeFirebaseIos extends AuthenticationCodeType {
  const AuthenticationCodeTypeFirebaseIos({
    required this.receipt,
    required this.pushTimeout,
    required this.length,
  });

  /// [receipt] Receipt of successful application token validation to compare
  /// with receipt from push notification
  final String receipt;

  /// [pushTimeout] Time after the next authentication method is supposed to be
  /// used if verification push notification isn't received, in seconds
  final int pushTimeout;

  /// [length] Length of the code
  final int length;

  static const String constructor = 'authenticationCodeTypeFirebaseIos';

  static AuthenticationCodeTypeFirebaseIos? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuthenticationCodeTypeFirebaseIos(
      receipt: json['receipt'] as String,
      pushTimeout: json['push_timeout'] as int,
      length: json['length'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'receipt': receipt,
        'push_timeout': pushTimeout,
        'length': length,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
