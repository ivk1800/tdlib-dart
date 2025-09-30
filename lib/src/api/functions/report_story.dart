import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Reports a story to the Telegram moderators
/// Returns [ReportStoryResult]
@immutable
class ReportStory extends TdFunction {
  const ReportStory({
    required this.storyPosterChatId,
    required this.storyId,
    required this.optionId,
    required this.text,
  });

  /// [storyPosterChatId] The identifier of the poster of the story to report
  final int storyPosterChatId;

  /// [storyId] The identifier of the story to report
  final int storyId;

  /// [optionId] Option identifier chosen by the user; leave empty for the
  /// initial request
  final String optionId;

  /// [text] Additional report details; 0-1024 characters; leave empty for the
  /// initial request
  final String text;

  static const String constructor = 'reportStory';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'story_poster_chat_id': storyPosterChatId,
    'story_id': storyId,
    'option_id': optionId,
    'text': text,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
