import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An authentication token received through Google ID
@immutable
class EmailAddressAuthenticationGoogleId extends EmailAddressAuthentication {
  const EmailAddressAuthenticationGoogleId({
    required this.token,
  });

  /// [token] The token
  final String token;

  static const String constructor = 'emailAddressAuthenticationGoogleId';

  static EmailAddressAuthenticationGoogleId? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EmailAddressAuthenticationGoogleId(
      token: json['token'],
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
