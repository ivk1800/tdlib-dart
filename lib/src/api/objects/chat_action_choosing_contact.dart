import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The user is picking a contact to send
class ChatActionChoosingContact extends ChatAction {
  const ChatActionChoosingContact();

  static const String CONSTRUCTOR = 'chatActionChoosingContact';

  static ChatActionChoosingContact? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatActionChoosingContact();
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
