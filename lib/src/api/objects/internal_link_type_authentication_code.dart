import '../tdapi.dart';

/// The link contains an authentication code. Call checkAuthenticationCode
/// with the code if the current authorization state is
/// authorizationStateWaitCode
class InternalLinkTypeAuthenticationCode extends InternalLinkType {
  InternalLinkTypeAuthenticationCode({required this.code});

  /// [code] The authentication code
  final String code;

  static const String CONSTRUCTOR = 'internalLinkTypeAuthenticationCode';

  static InternalLinkTypeAuthenticationCode? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeAuthenticationCode(code: json['code']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'code': this.code, '@type': CONSTRUCTOR};
}
