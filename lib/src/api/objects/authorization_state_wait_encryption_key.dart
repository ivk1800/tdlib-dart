import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// TDLib needs an encryption key to decrypt the local database
class AuthorizationStateWaitEncryptionKey extends AuthorizationState {
  AuthorizationStateWaitEncryptionKey({required this.isEncrypted});

  /// [isEncrypted] True, if the database is currently encrypted
  final bool isEncrypted;

  static const String CONSTRUCTOR = 'authorizationStateWaitEncryptionKey';

  static AuthorizationStateWaitEncryptionKey? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuthorizationStateWaitEncryptionKey(
        isEncrypted: json['is_encrypted']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'is_encrypted': this.isEncrypted, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
