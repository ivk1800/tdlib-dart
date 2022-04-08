import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns a Telegram Passport authorization form for sharing data with a
/// service
/// Returns [PassportAuthorizationForm]
@immutable
class GetPassportAuthorizationForm extends TdFunction {
  const GetPassportAuthorizationForm({
    required this.botUserId,
    required this.scope,
    required this.publicKey,
    required this.nonce,
  });

  /// [botUserId] User identifier of the service's bot
  final int botUserId;

  /// [scope] Telegram Passport element types requested by the service
  final String scope;

  /// [publicKey] Service's public key
  final String publicKey;

  /// [nonce] Unique request identifier provided by the service
  final String nonce;

  static const String constructor = 'getPassportAuthorizationForm';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        'scope': scope,
        'public_key': publicKey,
        'nonce': nonce,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
