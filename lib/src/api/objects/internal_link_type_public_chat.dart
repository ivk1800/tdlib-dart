import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to a chat by its username. Call searchPublicChat with
/// the given chat username to process the link If the chat is found, open its
/// profile information screen or the chat itself. If draft text isn't empty
/// and the chat is a private chat, then put the draft text in the input field
@immutable
class InternalLinkTypePublicChat extends InternalLinkType {
  const InternalLinkTypePublicChat({
    required this.chatUsername,
    required this.draftText,
  });

  /// [chatUsername] Username of the chat
  final String chatUsername;

  /// [draftText] Draft text for message to send in the chat
  final String draftText;

  static const String constructor = 'internalLinkTypePublicChat';

  static InternalLinkTypePublicChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypePublicChat(
      chatUsername: json['chat_username'] as String,
      draftText: json['draft_text'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_username': chatUsername,
        'draft_text': draftText,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
