import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A digit-only authentication code is delivered via a phone call to the
/// specified phone number
@immutable
class AuthenticationCodeTypeCall extends AuthenticationCodeType {
  const AuthenticationCodeTypeCall({
    required this.length,
  });

  /// [length] Length of the code
  final int length;

  static const String constructor = 'authenticationCodeTypeCall';

  static AuthenticationCodeTypeCall? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuthenticationCodeTypeCall(
      length: json['length'] as int,
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
