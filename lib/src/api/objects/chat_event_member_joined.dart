import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A new member joined the chat
class ChatEventMemberJoined extends ChatEventAction {
  const ChatEventMemberJoined();

  static const String CONSTRUCTOR = 'chatEventMemberJoined';

  static ChatEventMemberJoined? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatEventMemberJoined();
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
