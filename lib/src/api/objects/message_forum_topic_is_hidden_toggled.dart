import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A General forum topic has been hidden or unhidden
@immutable
class MessageForumTopicIsHiddenToggled extends MessageContent {
  const MessageForumTopicIsHiddenToggled({
    required this.isHidden,
  });

  /// [isHidden] True, if the topic was hidden; otherwise, the topic was
  /// unhidden
  final bool isHidden;

  static const String constructor = 'messageForumTopicIsHiddenToggled';

  static MessageForumTopicIsHiddenToggled? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageForumTopicIsHiddenToggled(
      isHidden: json['is_hidden'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_hidden': isHidden,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
