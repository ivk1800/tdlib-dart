import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns the total number of Telegram Stars received by the channel chat
/// for direct messages from the given topic
/// Returns [StarCount]
@immutable
class GetDirectMessagesChatTopicRevenue extends TdFunction {
  const GetDirectMessagesChatTopicRevenue({
    required this.chatId,
    required this.topicId,
  });

  /// [chatId] Chat identifier of the channel direct messages chat administered
  /// by the current user
  final int chatId;

  /// [topicId] Identifier of the topic
  final int topicId;

  static const String constructor = 'getDirectMessagesChatTopicRevenue';

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
