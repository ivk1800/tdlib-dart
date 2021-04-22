import '../tdapi.dart';

/// The secret chat is not yet created; waiting for the other user to get
/// online
class SecretChatStatePending extends SecretChatState {
  const SecretChatStatePending();

  static const String CONSTRUCTOR = 'secretChatStatePending';

  static SecretChatStatePending? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SecretChatStatePending();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
