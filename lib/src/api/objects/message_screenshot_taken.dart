import '../tdapi.dart';

/// A screenshot of a message in the chat has been taken
class MessageScreenshotTaken extends MessageContent {
  const MessageScreenshotTaken();

  static const String CONSTRUCTOR = 'messageScreenshotTaken';

  static MessageScreenshotTaken? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageScreenshotTaken();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
