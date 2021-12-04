import '../tdapi.dart';

/// The user has too much chats with username, one of them must be made
/// private first
class CheckChatUsernameResultPublicChatsTooMuch
    extends CheckChatUsernameResult {
  const CheckChatUsernameResultPublicChatsTooMuch();

  static const String CONSTRUCTOR = 'checkChatUsernameResultPublicChatsTooMuch';

  static CheckChatUsernameResultPublicChatsTooMuch? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CheckChatUsernameResultPublicChatsTooMuch();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
