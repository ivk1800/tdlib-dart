import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A new member joined the chat via an invite link
class PushMessageContentChatJoinByLink extends PushMessageContent {
  const PushMessageContentChatJoinByLink();

  static const String CONSTRUCTOR = 'pushMessageContentChatJoinByLink';

  static PushMessageContentChatJoinByLink? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PushMessageContentChatJoinByLink();
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
