import '../tdapi.dart';

/// Informs TDLib that a sponsored message was viewed by the user
/// Returns [Ok]
class ViewSponsoredMessage extends TdFunction {
  ViewSponsoredMessage(
      {required this.chatId, required this.sponsoredMessageId});

  /// [chatId] Identifier of the chat with the sponsored message
  final int chatId;

  /// [sponsoredMessageId] The identifier of the sponsored message being viewed
  final int sponsoredMessageId;

  static const String CONSTRUCTOR = 'viewSponsoredMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'sponsored_message_id': this.sponsoredMessageId,
        '@type': CONSTRUCTOR
      };
}
