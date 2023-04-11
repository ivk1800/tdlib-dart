import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The chat needs to be chosen by the user among chats of the specified types
@immutable
class TargetChatChosen extends TargetChat {
  const TargetChatChosen({
    required this.allowUserChats,
    required this.allowBotChats,
    required this.allowGroupChats,
    required this.allowChannelChats,
  });

  /// [allowUserChats] True, if private chats with ordinary users are allowed
  final bool allowUserChats;

  /// [allowBotChats] True, if private chats with other bots are allowed
  final bool allowBotChats;

  /// [allowGroupChats] True, if basic group and supergroup chats are allowed
  final bool allowGroupChats;

  /// [allowChannelChats] True, if channel chats are allowed
  final bool allowChannelChats;

  static const String constructor = 'targetChatChosen';

  static TargetChatChosen? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TargetChatChosen(
      allowUserChats: json['allow_user_chats'] as bool,
      allowBotChats: json['allow_bot_chats'] as bool,
      allowGroupChats: json['allow_group_chats'] as bool,
      allowChannelChats: json['allow_channel_chats'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'allow_user_chats': allowUserChats,
        'allow_bot_chats': allowBotChats,
        'allow_group_chats': allowGroupChats,
        'allow_channel_chats': allowChannelChats,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
