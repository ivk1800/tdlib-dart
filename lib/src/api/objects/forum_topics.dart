import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a list of forum topics
@immutable
class ForumTopics extends TdObject {
  const ForumTopics({
    required this.totalCount,
    required this.topics,
    required this.nextOffsetDate,
    required this.nextOffsetMessageId,
    required this.nextOffsetMessageThreadId,
  });

  /// [totalCount] Approximate total number of forum topics found
  final int totalCount;

  /// [topics] List of forum topics
  final List<ForumTopic> topics;

  /// [nextOffsetDate] Offset date for the next getForumTopics request
  final int nextOffsetDate;

  /// [nextOffsetMessageId] Offset message identifier for the next
  /// getForumTopics request
  final int nextOffsetMessageId;

  /// [nextOffsetMessageThreadId] Offset message thread identifier for the next
  /// getForumTopics request
  final int nextOffsetMessageThreadId;

  static const String constructor = 'forumTopics';

  static ForumTopics? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ForumTopics(
      totalCount: json['total_count'] as int,
      topics: List<ForumTopic>.from(
          ((json['topics'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => ForumTopic.fromJson(item))
              .toList()),
      nextOffsetDate: json['next_offset_date'] as int,
      nextOffsetMessageId: json['next_offset_message_id'] as int,
      nextOffsetMessageThreadId: json['next_offset_message_thread_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_count': totalCount,
        'topics': topics.map((item) => item.toJson()).toList(),
        'next_offset_date': nextOffsetDate,
        'next_offset_message_id': nextOffsetMessageId,
        'next_offset_message_thread_id': nextOffsetMessageThreadId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
