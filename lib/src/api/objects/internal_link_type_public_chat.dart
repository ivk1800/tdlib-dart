import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to a chat by its username. Call searchPublicChat with
/// the given chat username to process the link. If the chat is found, open
/// its profile information screen or the chat itself. If draft text isn't
/// empty and the chat is a private chat with a regular user, then put the
/// draft text in the input field
@immutable
class InternalLinkTypePublicChat extends InternalLinkType {
  const InternalLinkTypePublicChat({
    required this.chatUsername,
    required this.draftText,
    required this.openProfile,
  });

  /// [chatUsername] Username of the chat
  final String chatUsername;

  /// [draftText] Draft text for message to send in the chat
  final String draftText;

  /// [openProfile] True, if chat profile information screen must be opened;
  /// otherwise, the chat itself must be opened
  final bool openProfile;

  static const String constructor = 'internalLinkTypePublicChat';

  static InternalLinkTypePublicChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypePublicChat(
      chatUsername: json['chat_username'] as String,
      draftText: json['draft_text'] as String,
      openProfile: json['open_profile'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_username': chatUsername,
        'draft_text': draftText,
        'open_profile': openProfile,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
