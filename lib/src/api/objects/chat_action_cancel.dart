import '../tdapi.dart';

/// The user has cancelled the previous action
class ChatActionCancel extends ChatAction {
  const ChatActionCancel();

  static const String CONSTRUCTOR = 'chatActionCancel';

  static ChatActionCancel? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatActionCancel();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
