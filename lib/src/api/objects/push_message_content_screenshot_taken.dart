import '../tdapi.dart';

/// A screenshot of a message in the chat has been taken
class PushMessageContentScreenshotTaken extends PushMessageContent {
  const PushMessageContentScreenshotTaken();

  static const String CONSTRUCTOR = 'pushMessageContentScreenshotTaken';

  static PushMessageContentScreenshotTaken? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PushMessageContentScreenshotTaken();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
