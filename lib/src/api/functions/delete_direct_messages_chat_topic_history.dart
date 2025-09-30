import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Deletes all messages in the topic in a channel direct messages chat
/// administered by the current user
/// Returns [Ok]
@immutable
class DeleteDirectMessagesChatTopicHistory extends TdFunction {
  const DeleteDirectMessagesChatTopicHistory({
    required this.chatId,
    required this.topicId,
  });

  /// [chatId] Chat identifier of the channel direct messages chat
  final int chatId;

  /// [topicId] Identifier of the topic which messages will be deleted
  final int topicId;

  static const String constructor = 'deleteDirectMessagesChatTopicHistory';

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
