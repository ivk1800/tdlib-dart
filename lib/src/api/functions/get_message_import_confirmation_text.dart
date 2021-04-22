import '../tdapi.dart';

/// Returns a confirmation text to be shown to the user before starting
/// message import
/// Returns [Text]
class GetMessageImportConfirmationText extends TdFunction {
  GetMessageImportConfirmationText({required this.chatId});

  /// [chatId] Identifier of a chat to which the messages will be imported. It
  /// must be an identifier of a private chat with a mutual contact or an
  /// identifier of a supergroup chat with can_change_info administrator right
  final int chatId;

  static const String CONSTRUCTOR = 'getMessageImportConfirmationText';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR};
}
