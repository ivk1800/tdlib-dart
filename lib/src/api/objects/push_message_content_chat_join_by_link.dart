import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A new member joined the chat via an invite link
@immutable
class PushMessageContentChatJoinByLink extends PushMessageContent {
  const PushMessageContentChatJoinByLink();

  static const String constructor = 'pushMessageContentChatJoinByLink';

  static PushMessageContentChatJoinByLink? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PushMessageContentChatJoinByLink();
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
