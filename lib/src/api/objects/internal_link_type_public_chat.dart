import '../tdapi.dart';

/// The link is a link to a chat by its username. Call searchPublicChat with
/// the given chat username to process the link
class InternalLinkTypePublicChat extends InternalLinkType {
  InternalLinkTypePublicChat({required this.chatUsername});

  /// [chatUsername] Username of the chat
  final String chatUsername;

  static const String CONSTRUCTOR = 'internalLinkTypePublicChat';

  static InternalLinkTypePublicChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypePublicChat(chatUsername: json['chat_username']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_username': this.chatUsername, '@type': CONSTRUCTOR};
}
