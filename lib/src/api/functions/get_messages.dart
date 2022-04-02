import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns information about messages. If a message is not found, returns
/// null on the corresponding position of the result
/// Returns [Messages]
class GetMessages extends TdFunction {
  GetMessages({required this.chatId, required this.messageIds});

  /// [chatId] Identifier of the chat the messages belong to
  final int chatId;

  /// [messageIds] Identifiers of the messages to get
  final List<int> messageIds;

  static const String CONSTRUCTOR = 'getMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_ids': messageIds.map((item) => item).toList(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
