import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// TDLib needs an encryption key to decrypt the local database
@immutable
class AuthorizationStateWaitEncryptionKey extends AuthorizationState {
  const AuthorizationStateWaitEncryptionKey({
    required this.isEncrypted,
  });

  /// [isEncrypted] True, if the database is currently encrypted
  final bool isEncrypted;

  static const String constructor = 'authorizationStateWaitEncryptionKey';

  static AuthorizationStateWaitEncryptionKey? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuthorizationStateWaitEncryptionKey(
      isEncrypted: json['is_encrypted'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_encrypted': isEncrypted,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
