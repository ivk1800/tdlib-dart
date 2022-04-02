import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns forwarded copies of a channel message to different public
/// channels. For optimal performance, the number of returned messages is
/// chosen by TDLib
/// Returns [FoundMessages]
class GetMessagePublicForwards extends TdFunction {
  GetMessagePublicForwards(
      {required this.chatId,
      required this.messageId,
      required this.offset,
      required this.limit});

  /// [chatId] Chat identifier of the message
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [offset] Offset of the first entry to return as received from the previous
  /// request; use empty string to get first chunk of results
  final String offset;

  /// [limit] The maximum number of messages to be returned; must be positive
  /// and can't be greater than 100. For optimal performance, the number of
  /// returned messages is chosen by TDLib and can be smaller than the specified
  /// limit
  final int limit;

  static const String CONSTRUCTOR = 'getMessagePublicForwards';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        'offset': this.offset,
        'limit': this.limit,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
