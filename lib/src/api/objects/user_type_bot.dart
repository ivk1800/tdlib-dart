import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A bot (see https://core.telegram.org/bots)
@immutable
class UserTypeBot extends UserType {
  const UserTypeBot({
    required this.canBeEdited,
    required this.canJoinGroups,
    required this.canReadAllGroupMessages,
    required this.hasMainWebApp,
    required this.isInline,
    required this.inlineQueryPlaceholder,
    required this.needLocation,
    required this.canConnectToBusiness,
    required this.canBeAddedToAttachmentMenu,
    required this.activeUserCount,
  });

  /// [canBeEdited] True, if the bot is owned by the current user and can be
  /// edited using the methods toggleBotUsernameIsActive,
  /// reorderBotActiveUsernames, setBotProfilePhoto, setBotName,
  /// setBotInfoDescription, and setBotInfoShortDescription
  final bool canBeEdited;

  /// [canJoinGroups] True, if the bot can be invited to basic group and
  /// supergroup chats
  final bool canJoinGroups;

  /// [canReadAllGroupMessages] True, if the bot can read all messages in basic
  /// group or supergroup chats and not just those addressed to the bot. In
  /// private and channel chats a bot can always read all messages
  final bool canReadAllGroupMessages;

  /// [hasMainWebApp] True, if the bot has the main Web App
  final bool hasMainWebApp;

  /// [isInline] True, if the bot supports inline queries
  final bool isInline;

  /// [inlineQueryPlaceholder] Placeholder for inline queries (displayed on the
  /// application input field)
  final String inlineQueryPlaceholder;

  /// [needLocation] True, if the location of the user is expected to be sent
  /// with every inline query to this bot
  final bool needLocation;

  /// [canConnectToBusiness] True, if the bot supports connection to Telegram
  /// Business accounts
  final bool canConnectToBusiness;

  /// [canBeAddedToAttachmentMenu] True, if the bot can be added to attachment
  /// or side menu
  final bool canBeAddedToAttachmentMenu;

  /// [activeUserCount] The number of recently active users of the bot
  final int activeUserCount;

  static const String constructor = 'userTypeBot';

  static UserTypeBot? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UserTypeBot(
      canBeEdited: json['can_be_edited'] as bool,
      canJoinGroups: json['can_join_groups'] as bool,
      canReadAllGroupMessages: json['can_read_all_group_messages'] as bool,
      hasMainWebApp: json['has_main_web_app'] as bool,
      isInline: json['is_inline'] as bool,
      inlineQueryPlaceholder: json['inline_query_placeholder'] as String,
      needLocation: json['need_location'] as bool,
      canConnectToBusiness: json['can_connect_to_business'] as bool,
      canBeAddedToAttachmentMenu:
          json['can_be_added_to_attachment_menu'] as bool,
      activeUserCount: json['active_user_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'can_be_edited': canBeEdited,
        'can_join_groups': canJoinGroups,
        'can_read_all_group_messages': canReadAllGroupMessages,
        'has_main_web_app': hasMainWebApp,
        'is_inline': isInline,
        'inline_query_placeholder': inlineQueryPlaceholder,
        'need_location': needLocation,
        'can_connect_to_business': canConnectToBusiness,
        'can_be_added_to_attachment_menu': canBeAddedToAttachmentMenu,
        'active_user_count': activeUserCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
