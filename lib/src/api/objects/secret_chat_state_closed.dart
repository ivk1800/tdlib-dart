import '../tdapi.dart';

/// The secret chat is closed
class SecretChatStateClosed extends SecretChatState {
  const SecretChatStateClosed();

  static const String CONSTRUCTOR = 'secretChatStateClosed';

  static SecretChatStateClosed? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SecretChatStateClosed();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
