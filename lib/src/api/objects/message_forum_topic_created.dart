import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A forum topic has been created
@immutable
class MessageForumTopicCreated extends MessageContent {
  const MessageForumTopicCreated({
    required this.name,
    required this.icon,
  });

  /// [name] Name of the topic
  final String name;

  /// [icon] Icon of the topic
  final ForumTopicIcon icon;

  static const String constructor = 'messageForumTopicCreated';

  static MessageForumTopicCreated? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageForumTopicCreated(
      name: json['name'] as String,
      icon: ForumTopicIcon.fromJson(json['icon'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        'icon': icon.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
