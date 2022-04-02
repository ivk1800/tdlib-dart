import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The user is picking a sticker to send
class ChatActionChoosingSticker extends ChatAction {
  const ChatActionChoosingSticker();

  static const String CONSTRUCTOR = 'chatActionChoosingSticker';

  static ChatActionChoosingSticker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatActionChoosingSticker();
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
