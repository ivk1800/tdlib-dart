import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a ready to send inline message. Use
/// sendInlineQueryResultMessage to send the message
@immutable
class PreparedInlineMessage extends TdObject {
  const PreparedInlineMessage({
    required this.inlineQueryId,
    required this.result,
    required this.chatTypes,
  });

  /// [inlineQueryId] Unique identifier of the inline query to pass to
  /// sendInlineQueryResultMessage
  final int inlineQueryId;

  /// [result] Resulted inline message of the query
  final InlineQueryResult result;

  /// [chatTypes] Types of the chats to which the message can be sent
  final TargetChatTypes chatTypes;

  static const String constructor = 'preparedInlineMessage';

  static PreparedInlineMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PreparedInlineMessage(
      inlineQueryId: int.tryParse(json['inline_query_id']) ?? 0,
      result: InlineQueryResult.fromJson(
        json['result'] as Map<String, dynamic>?,
      )!,
      chatTypes: TargetChatTypes.fromJson(
        json['chat_types'] as Map<String, dynamic>?,
      )!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'inline_query_id': inlineQueryId.toString(),
    'result': result.toJson(),
    'chat_types': chatTypes.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
