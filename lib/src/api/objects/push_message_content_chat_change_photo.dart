import '../tdapi.dart';

/// A chat photo was edited
class PushMessageContentChatChangePhoto extends PushMessageContent {
  const PushMessageContentChatChangePhoto();

  static const String CONSTRUCTOR = 'pushMessageContentChatChangePhoto';

  static PushMessageContentChatChangePhoto? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PushMessageContentChatChangePhoto();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
