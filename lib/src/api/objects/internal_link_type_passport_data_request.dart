import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link contains a request of Telegram passport data. Call
/// getPassportAuthorizationForm with the given parameters to process the link
/// if the link was received from outside of the application; otherwise,
/// ignore it
@immutable
class InternalLinkTypePassportDataRequest extends InternalLinkType {
  const InternalLinkTypePassportDataRequest({
    required this.botUserId,
    required this.scope,
    required this.publicKey,
    required this.nonce,
    required this.callbackUrl,
  });

  /// [botUserId] User identifier of the service's bot
  final int botUserId;

  /// [scope] Telegram Passport element types requested by the service
  final String scope;

  /// [publicKey] Service's public key
  final String publicKey;

  /// [nonce] Unique request identifier provided by the service
  final String nonce;

  /// [callbackUrl] An HTTP URL to open once the request is finished, canceled,
  /// or failed with the parameters tg_passport=success, tg_passport=cancel, or
  /// tg_passport=error&error=... respectively.. If empty, then onActivityResult
  /// method must be used to return response on Android, or the link
  /// tgbot{bot_user_id}://passport/success or
  /// tgbot{bot_user_id}://passport/cancel must be opened otherwise
  final String callbackUrl;

  static const String constructor = 'internalLinkTypePassportDataRequest';

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
      callbackUrl: json['callback_url'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        'scope': scope,
        'public_key': publicKey,
        'nonce': nonce,
        'callback_url': callbackUrl,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
