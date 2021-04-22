import '../tdapi.dart';

/// A newly created basic group
class PushMessageContentBasicGroupChatCreate extends PushMessageContent {
  const PushMessageContentBasicGroupChatCreate();

  static const String CONSTRUCTOR = 'pushMessageContentBasicGroupChatCreate';

  static PushMessageContentBasicGroupChatCreate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PushMessageContentBasicGroupChatCreate();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
