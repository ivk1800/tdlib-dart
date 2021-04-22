import '../tdapi.dart';

/// The secret chat is ready to use
class SecretChatStateReady extends SecretChatState {
  const SecretChatStateReady();

  static const String CONSTRUCTOR = 'secretChatStateReady';

  static SecretChatStateReady? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SecretChatStateReady();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
