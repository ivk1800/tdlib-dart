import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains basic information about a forum topic
@immutable
class ForumTopicInfo extends TdObject {
  const ForumTopicInfo({
    required this.messageThreadId,
    required this.name,
    required this.icon,
    required this.creationDate,
    required this.creatorId,
    required this.isOutgoing,
    required this.isClosed,
  });

  /// [messageThreadId] Message thread identifier of the topic
  final int messageThreadId;

  /// [name] Name of the topic
  final String name;

  /// [icon] Icon of the topic
  final ForumTopicIcon icon;

  /// [creationDate] Date the topic was created
  final int creationDate;

  /// [creatorId] Identifier of the creator of the topic
  final MessageSender creatorId;

  /// [isOutgoing] True, if the topic was created by the current user
  final bool isOutgoing;

  /// [isClosed] True, if the topic is closed
  final bool isClosed;

  static const String constructor = 'forumTopicInfo';

  static ForumTopicInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ForumTopicInfo(
      messageThreadId: json['message_thread_id'],
      name: json['name'],
      icon: ForumTopicIcon.fromJson(json['icon'])!,
      creationDate: json['creation_date'],
      creatorId: MessageSender.fromJson(json['creator_id'])!,
      isOutgoing: json['is_outgoing'],
      isClosed: json['is_closed'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message_thread_id': messageThreadId,
        'name': name,
        'icon': icon.toJson(),
        'creation_date': creationDate,
        'creator_id': creatorId.toJson(),
        'is_outgoing': isOutgoing,
        'is_closed': isClosed,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
