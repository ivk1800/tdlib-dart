import '../tdapi.dart';

/// Returns a Telegram Passport authorization form for sharing data with a
/// service
/// Returns [PassportAuthorizationForm]
class GetPassportAuthorizationForm extends TdFunction {
  GetPassportAuthorizationForm(
      {required this.botUserId,
      required this.scope,
      required this.publicKey,
      required this.nonce});

  /// [botUserId] User identifier of the service's bot
  final int botUserId;

  /// [scope] Telegram Passport element types requested by the service
  final String scope;

  /// [publicKey] Service's public_key
  final String publicKey;

  /// [nonce] Authorization form nonce provided by the service
  final String nonce;

  static const String CONSTRUCTOR = 'getPassportAuthorizationForm';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'bot_user_id': this.botUserId,
        'scope': this.scope,
        'public_key': this.publicKey,
        'nonce': this.nonce,
        '@type': CONSTRUCTOR
      };
}
