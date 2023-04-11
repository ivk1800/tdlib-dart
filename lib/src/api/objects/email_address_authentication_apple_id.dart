import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An authentication token received through Apple ID
@immutable
class EmailAddressAuthenticationAppleId extends EmailAddressAuthentication {
  const EmailAddressAuthenticationAppleId({
    required this.token,
  });

  /// [token] The token
  final String token;

  static const String constructor = 'emailAddressAuthenticationAppleId';

  static EmailAddressAuthenticationAppleId? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EmailAddressAuthenticationAppleId(
      token: json['token'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'token': token,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
