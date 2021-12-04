import '../tdapi.dart';

/// Changes the photo of a chat. Supported only for basic groups, supergroups
/// and channels. Requires can_change_info administrator right
/// Returns [Ok]
class SetChatPhoto extends TdFunction {
  SetChatPhoto({required this.chatId, this.photo});

  /// [chatId] Chat identifier
  final int chatId;

  /// [photo] New chat photo; pass null to delete the chat photo
  final InputChatPhoto? photo;

  static const String CONSTRUCTOR = 'setChatPhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'photo': this.photo?.toJson(),
        '@type': CONSTRUCTOR
      };
}
