import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Reports a story to the Telegram moderators
/// Returns [Ok]
@immutable
class ReportStory extends TdFunction {
  const ReportStory({
    required this.storySenderChatId,
    required this.storyId,
    required this.reason,
    required this.text,
  });

  /// [storySenderChatId] The identifier of the sender of the story to report
  final int storySenderChatId;

  /// [storyId] The identifier of the story to report
  final int storyId;

  /// [reason] The reason for reporting the story
  final ReportReason reason;

  /// [text] Additional report details; 0-1024 characters
  final String text;

  static const String constructor = 'reportStory';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'story_sender_chat_id': storySenderChatId,
        'story_id': storyId,
        'reason': reason.toJson(),
        'text': text,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
