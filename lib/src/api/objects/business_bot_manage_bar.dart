import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a business bot that manages the chat
@immutable
class BusinessBotManageBar extends TdObject {
  const BusinessBotManageBar({
    required this.botUserId,
    required this.manageUrl,
    required this.isBotPaused,
    required this.canBotReply,
  });

  /// [botUserId] User identifier of the bot
  final int botUserId;

  /// [manageUrl] URL to be opened to manage the bot
  final String manageUrl;

  /// [isBotPaused] True, if the bot is paused. Use
  /// toggleBusinessConnectedBotChatIsPaused to change the value of the field
  final bool isBotPaused;

  /// [canBotReply] True, if the bot can reply
  final bool canBotReply;

  static const String constructor = 'businessBotManageBar';

  static BusinessBotManageBar? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessBotManageBar(
      botUserId: json['bot_user_id'] as int,
      manageUrl: json['manage_url'] as String,
      isBotPaused: json['is_bot_paused'] as bool,
      canBotReply: json['can_bot_reply'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        'manage_url': manageUrl,
        'is_bot_paused': isBotPaused,
        'can_bot_reply': canBotReply,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
