import '../tdapi.dart';

/// The link contains a request of Telegram passport data. Call
/// getPassportAuthorizationForm with the given parameters to process the link
/// if the link was received from outside of the app, otherwise ignore it
class InternalLinkTypePassportDataRequest extends InternalLinkType {
  InternalLinkTypePassportDataRequest(
      {required this.botUserId,
      required this.scope,
      required this.publicKey,
      required this.nonce,
      required this.callbackUrl});

  /// [botUserId] User identifier of the service's bot
  final int botUserId;

  /// [scope] Telegram Passport element types requested by the service
  final String scope;

  /// [publicKey] Service's public key
  final String publicKey;

  /// [nonce] Unique request identifier provided by the service
  final String nonce;

  /// [callbackUrl] An HTTP URL to open once the request is finished or canceled
  /// with the parameter tg_passport=success or tg_passport=cancel respectively.
  /// If empty, then the link tgbot{bot_user_id}://passport/success or
  /// tgbot{bot_user_id}://passport/cancel needs to be opened instead
  final String callbackUrl;

  static const String CONSTRUCTOR = 'internalLinkTypePassportDataRequest';

  static InternalLinkTypePassportDataRequest? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypePassportDataRequest(
        botUserId: json['bot_user_id'],
        scope: json['scope'],
        publicKey: json['public_key'],
        nonce: json['nonce'],
        callbackUrl: json['callback_url']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'bot_user_id': this.botUserId,
        'scope': this.scope,
        'public_key': this.publicKey,
        'nonce': this.nonce,
        'callback_url': this.callbackUrl,
        '@type': CONSTRUCTOR
      };
}
