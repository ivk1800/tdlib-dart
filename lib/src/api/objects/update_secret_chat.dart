import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Some data of a secret chat has changed. This update is guaranteed to come
/// before the secret chat identifier is returned to the application
@immutable
class UpdateSecretChat extends Update {
  const UpdateSecretChat({
    required this.secretChat,
  });

  /// [secretChat] New data about the secret chat
  final SecretChat secretChat;

  static const String constructor = 'updateSecretChat';

  static UpdateSecretChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateSecretChat(
      secretChat:
          SecretChat.fromJson(json['secret_chat'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'secret_chat': secretChat.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
