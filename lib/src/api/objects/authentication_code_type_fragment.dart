import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A digit-only authentication code is delivered to https://fragment.com. The
/// user must be logged in there via a wallet owning the phone number's NFT
@immutable
class AuthenticationCodeTypeFragment extends AuthenticationCodeType {
  const AuthenticationCodeTypeFragment({
    required this.url,
    required this.length,
  });

  /// [url] URL to open to receive the code
  final String url;

  /// [length] Length of the code
  final int length;

  static const String constructor = 'authenticationCodeTypeFragment';

  static AuthenticationCodeTypeFragment? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuthenticationCodeTypeFragment(
      url: json['url'] as String,
      length: json['length'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        'length': length,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
