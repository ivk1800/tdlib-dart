import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to an attachment menu bot to be opened in the specified
/// or a chosen chat. Process given target_chat to open the chat.. Then call
/// searchPublicChat with the given bot username, check that the user is a bot
/// and can be added to attachment menu. Then use getAttachmentMenuBot to
/// receive information about the bot.. If the bot isn't added to attachment
/// menu, then user needs to confirm adding the bot to attachment menu. If
/// user confirms adding, then use toggleBotIsAddedToAttachmentMenu to add
/// it.. If the attachment menu bot can't be used in the opened chat, show an
/// error to the user. If the bot is added to attachment menu and can be used
/// in the chat, then use openWebApp with the given URL
@immutable
class InternalLinkTypeAttachmentMenuBot extends InternalLinkType {
  const InternalLinkTypeAttachmentMenuBot({
    required this.targetChat,
    required this.botUsername,
    required this.url,
  });

  /// [targetChat] Target chat to be opened
  final TargetChat targetChat;

  /// [botUsername] Username of the bot
  final String botUsername;

  /// [url] URL to be passed to openWebApp
  final String url;

  static const String constructor = 'internalLinkTypeAttachmentMenuBot';

  static InternalLinkTypeAttachmentMenuBot? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeAttachmentMenuBot(
      targetChat: TargetChat.fromJson(json['target_chat'])!,
      botUsername: json['bot_username'],
      url: json['url'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'target_chat': targetChat.toJson(),
        'bot_username': botUsername,
        'url': url,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
