import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the draft message in the topic in a channel direct messages chat
/// administered by the current user
/// Returns [Ok]
@immutable
class SetDirectMessagesChatTopicDraftMessage extends TdFunction {
  const SetDirectMessagesChatTopicDraftMessage({
    required this.chatId,
    required this.topicId,
    this.draftMessage,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [topicId] Topic identifier
  final int topicId;

  /// [draftMessage] New draft message; pass null to remove the draft. All files
  /// in draft message content must be of the type inputFileLocal. Media
  /// thumbnails and captions are ignored
  final DraftMessage? draftMessage;

  static const String constructor = 'setDirectMessagesChatTopicDraftMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'topic_id': topicId,
    'draft_message': draftMessage?.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
