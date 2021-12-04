import '../tdapi.dart';

/// Returns list of participant identifiers, which can be used to join video
/// chats in a chat
/// Returns [MessageSenders]
class GetVideoChatAvailableParticipants extends TdFunction {
  GetVideoChatAvailableParticipants({required this.chatId});

  /// [chatId] Chat identifier
  final int chatId;

  static const String CONSTRUCTOR = 'getVideoChatAvailableParticipants';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR};
}
