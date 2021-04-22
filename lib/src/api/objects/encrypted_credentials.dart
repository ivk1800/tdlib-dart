import '../tdapi.dart';

/// Contains encrypted Telegram Passport data credentials
class EncryptedCredentials extends TdObject {
  EncryptedCredentials(
      {required this.data, required this.hash, required this.secret});

  /// [data] The encrypted credentials
  final String data;

  /// [hash] The decrypted data hash
  final String hash;

  /// [secret] Secret for data decryption, encrypted with the service's public
  /// key
  final String secret;

  static const String CONSTRUCTOR = 'encryptedCredentials';

  static EncryptedCredentials? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EncryptedCredentials(
        data: json['data'], hash: json['hash'], secret: json['secret']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'data': this.data,
        'hash': this.hash,
        'secret': this.secret,
        '@type': CONSTRUCTOR
      };
}
