import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A message with a poll
class PushMessageContentPoll extends PushMessageContent {
  PushMessageContentPoll(
      {required this.question,
      required this.isRegular,
      required this.isPinned});

  /// [question] Poll question
  final String question;

  /// [isRegular] True, if the poll is regular and not in quiz mode
  final bool isRegular;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String CONSTRUCTOR = 'pushMessageContentPoll';

  static PushMessageContentPoll? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentPoll(
        question: json['question'],
        isRegular: json['is_regular'],
        isPinned: json['is_pinned']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'question': this.question,
        'is_regular': this.isRegular,
        'is_pinned': this.isPinned,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
