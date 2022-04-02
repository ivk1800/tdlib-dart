import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A text message
class PushMessageContentText extends PushMessageContent {
  PushMessageContentText({required this.text, required this.isPinned});

  /// [text] Message text
  final String text;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String CONSTRUCTOR = 'pushMessageContentText';

  static PushMessageContentText? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentText(
        text: json['text'], isPinned: json['is_pinned']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'text': this.text, 'is_pinned': this.isPinned, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
