import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// An authentication code is delivered via a phone call to the specified
/// phone number
class AuthenticationCodeTypeCall extends AuthenticationCodeType {
  AuthenticationCodeTypeCall({required this.length});

  /// [length] Length of the code
  final int length;

  static const String CONSTRUCTOR = 'authenticationCodeTypeCall';

  static AuthenticationCodeTypeCall? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuthenticationCodeTypeCall(length: json['length']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'length': this.length, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
