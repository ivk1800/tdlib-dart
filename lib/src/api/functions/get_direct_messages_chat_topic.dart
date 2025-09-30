import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns information about the topic in a channel direct messages chat
/// administered by the current user
/// Returns [DirectMessagesChatTopic]
@immutable
class GetDirectMessagesChatTopic extends TdFunction {
  const GetDirectMessagesChatTopic({
    required this.chatId,
    required this.topicId,
  });

  /// [chatId] Chat identifier of the channel direct messages chat
  final int chatId;

  /// [topicId] Identifier of the topic to get
  final int topicId;

  static const String constructor = 'getDirectMessagesChatTopic';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'topic_id': topicId,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
