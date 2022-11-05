import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A forum topic has been closed or opened
@immutable
class MessageForumTopicIsClosedToggled extends MessageContent {
  const MessageForumTopicIsClosedToggled({
    required this.isClosed,
  });

  /// [isClosed] True if the topic was closed or reopened
  final bool isClosed;

  static const String constructor = 'messageForumTopicIsClosedToggled';

  static MessageForumTopicIsClosedToggled? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageForumTopicIsClosedToggled(
      isClosed: json['is_closed'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_closed': isClosed,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
