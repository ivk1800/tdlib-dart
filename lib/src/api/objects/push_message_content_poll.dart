import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A message with a poll
@immutable
class PushMessageContentPoll extends PushMessageContent {
  const PushMessageContentPoll({
    required this.question,
    required this.isRegular,
    required this.isPinned,
  });

  /// [question] Poll question
  final String question;

  /// [isRegular] True, if the poll is regular and not in quiz mode
  final bool isRegular;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String constructor = 'pushMessageContentPoll';

  static PushMessageContentPoll? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentPoll(
      question: json['question'],
      isRegular: json['is_regular'],
      isPinned: json['is_pinned'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'question': question,
        'is_regular': isRegular,
        'is_pinned': isPinned,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
