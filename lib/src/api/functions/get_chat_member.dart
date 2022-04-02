import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns information about a single member of a chat
/// Returns [ChatMember]
class GetChatMember extends TdFunction {
  GetChatMember({required this.chatId, required this.memberId});

  /// [chatId] Chat identifier
  final int chatId;

  /// [memberId] Member identifier
  final MessageSender memberId;

  static const String CONSTRUCTOR = 'getChatMember';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'member_id': this.memberId.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
