import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

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

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
