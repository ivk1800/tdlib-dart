import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to the main Web App of a bot. Call searchPublicChat
/// with the given bot username, check that the user is a bot and has the main
/// Web App. If the bot can be added to attachment menu, then use
/// getAttachmentMenuBot to receive information about the bot, then if the bot
/// isn't added to side menu, show a disclaimer about Mini Apps being
/// third-party applications, ask the user to accept their Terms of service
/// and confirm adding the bot to side and attachment menu, then if the user
/// accepts the terms and confirms adding, use
/// toggleBotIsAddedToAttachmentMenu to add the bot. Then, use getMainWebApp
/// with the given start parameter and open the returned URL as a Web App
@immutable
class InternalLinkTypeMainWebApp extends InternalLinkType {
  const InternalLinkTypeMainWebApp({
    required this.botUsername,
    required this.startParameter,
    required this.isCompact,
  });

  /// [botUsername] Username of the bot
  final String botUsername;

  /// [startParameter] Start parameter to be passed to getMainWebApp
  final String startParameter;

  /// [isCompact] True, if the Web App must be opened in the compact mode
  /// instead of the full-size mode
  final bool isCompact;

  static const String constructor = 'internalLinkTypeMainWebApp';

  static InternalLinkTypeMainWebApp? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeMainWebApp(
      botUsername: json['bot_username'] as String,
      startParameter: json['start_parameter'] as String,
      isCompact: json['is_compact'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_username': botUsername,
        'start_parameter': startParameter,
        'is_compact': isCompact,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
