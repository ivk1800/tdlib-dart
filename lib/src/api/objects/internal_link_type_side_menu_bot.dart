import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to a bot, which can be installed to the side menu. Call
/// searchPublicChat with the given bot username, check that the user is a bot
/// and can be added to attachment menu. Then, use getAttachmentMenuBot to
/// receive information about the bot. If the bot isn't added to side menu,
/// then show a disclaimer about Mini Apps being a third-party apps, ask the
/// user to accept their Terms of service and confirm adding the bot to side
/// and attachment menu. If the user accept the terms and confirms adding,
/// then use toggleBotIsAddedToAttachmentMenu to add the bot. If the bot is
/// added to side menu, then use getWebAppUrl with the given URL
@immutable
class InternalLinkTypeSideMenuBot extends InternalLinkType {
  const InternalLinkTypeSideMenuBot({
    required this.botUsername,
    required this.url,
  });

  /// [botUsername] Username of the bot
  final String botUsername;

  /// [url] URL to be passed to getWebAppUrl
  final String url;

  static const String constructor = 'internalLinkTypeSideMenuBot';

  static InternalLinkTypeSideMenuBot? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeSideMenuBot(
      botUsername: json['bot_username'] as String,
      url: json['url'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_username': botUsername,
        'url': url,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
