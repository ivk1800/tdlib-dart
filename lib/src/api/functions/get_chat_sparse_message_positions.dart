import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns sparse positions of messages of the specified type in the chat to
/// be used for shared media scroll implementation. Returns the results in
/// reverse chronological order (i.e., in order of decreasing message_id)..
/// Cannot be used in secret chats or with searchMessagesFilterFailedToSend
/// filter without an enabled message database
/// Returns [MessagePositions]
class GetChatSparseMessagePositions extends TdFunction {
  GetChatSparseMessagePositions(
      {required this.chatId,
      required this.filter,
      required this.fromMessageId,
      required this.limit});

  /// [chatId] Identifier of the chat in which to return information about
  /// message positions
  final int chatId;

  /// [filter] Filter for message content. Filters searchMessagesFilterEmpty,
  /// searchMessagesFilterMention and searchMessagesFilterUnreadMention are
  /// unsupported in this function
  final SearchMessagesFilter filter;

  /// [fromMessageId] The message identifier from which to return information
  /// about message positions
  final int fromMessageId;

  /// [limit] The expected number of message positions to be returned; 50-2000.
  /// A smaller number of positions can be returned, if there are not enough
  /// appropriate messages
  final int limit;

  static const String CONSTRUCTOR = 'getChatSparseMessagePositions';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'filter': this.filter.toJson(),
        'from_message_id': this.fromMessageId,
        'limit': this.limit,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
