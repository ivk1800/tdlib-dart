import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The message is from a forum topic history
@immutable
class MessageSourceForumTopicHistory extends MessageSource {
  const MessageSourceForumTopicHistory();

  static const String constructor = 'messageSourceForumTopicHistory';

  static MessageSourceForumTopicHistory? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageSourceForumTopicHistory();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
