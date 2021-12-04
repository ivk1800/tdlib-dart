import '../tdapi.dart';

/// A new member was accepted to the chat by an administrator
class PushMessageContentChatJoinByRequest extends PushMessageContent {
  const PushMessageContentChatJoinByRequest();

  static const String CONSTRUCTOR = 'pushMessageContentChatJoinByRequest';

  static PushMessageContentChatJoinByRequest? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PushMessageContentChatJoinByRequest();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
