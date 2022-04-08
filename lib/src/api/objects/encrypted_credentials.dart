import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains encrypted Telegram Passport data credentials
@immutable
class EncryptedCredentials extends TdObject {
  const EncryptedCredentials({
    required this.data,
    required this.hash,
    required this.secret,
  });

  /// [data] The encrypted credentials
  final String data;

  /// [hash] The decrypted data hash
  final String hash;

  /// [secret] Secret for data decryption, encrypted with the service's public
  /// key
  final String secret;

  static const String constructor = 'encryptedCredentials';

  static EncryptedCredentials? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EncryptedCredentials(
      data: json['data'],
      hash: json['hash'],
      secret: json['secret'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'data': data,
        'hash': hash,
        'secret': secret,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
