import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns messages in a chat. The messages are returned in a reverse
/// chronological order (i.e., in order of decreasing message_id). For optimal
/// performance, the number of returned messages is chosen by TDLib. This is
/// an offline request if only_local is true
/// Returns [Messages]
@immutable
class GetChatHistory extends TdFunction {
  const GetChatHistory({
    required this.chatId,
    required this.fromMessageId,
    required this.offset,
    required this.limit,
    required this.onlyLocal,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [fromMessageId] Identifier of the message starting from which history must
  /// be fetched; use 0 to get results from the last message
  final int fromMessageId;

  /// [offset] Specify 0 to get results from exactly the message from_message_id
  /// or a negative offset up to 99 to get additionally some newer messages
  final int offset;

  /// [limit] The maximum number of messages to be returned; must be positive
  /// and can't be greater than 100. If the offset is negative, the limit must
  /// be greater than or equal to -offset. For optimal performance, the number
  /// of returned messages is chosen by TDLib and can be smaller than the
  /// specified limit
  final int limit;

  /// [onlyLocal] Pass true to get only messages that are available without
  /// sending network requests
  final bool onlyLocal;

  static const String constructor = 'getChatHistory';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'from_message_id': fromMessageId,
        'offset': offset,
        'limit': limit,
        'only_local': onlyLocal,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
