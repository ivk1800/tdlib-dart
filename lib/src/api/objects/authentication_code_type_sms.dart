import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An authentication code is delivered via an SMS message to the specified
/// phone number
@immutable
class AuthenticationCodeTypeSms extends AuthenticationCodeType {
  const AuthenticationCodeTypeSms({
    required this.length,
  });

  /// [length] Length of the code
  final int length;

  static const String constructor = 'authenticationCodeTypeSms';

  static AuthenticationCodeTypeSms? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuthenticationCodeTypeSms(
      length: json['length'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'length': length,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
