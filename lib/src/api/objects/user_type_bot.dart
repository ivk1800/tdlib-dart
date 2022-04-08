import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A bot (see https://core.telegram.org/bots)
@immutable
class UserTypeBot extends UserType {
  const UserTypeBot({
    required this.canJoinGroups,
    required this.canReadAllGroupMessages,
    required this.isInline,
    required this.inlineQueryPlaceholder,
    required this.needLocation,
  });

  /// [canJoinGroups] True, if the bot can be invited to basic group and
  /// supergroup chats
  final bool canJoinGroups;

  /// [canReadAllGroupMessages] True, if the bot can read all messages in basic
  /// group or supergroup chats and not just those addressed to the bot. In
  /// private and channel chats a bot can always read all messages
  final bool canReadAllGroupMessages;

  /// [isInline] True, if the bot supports inline queries
  final bool isInline;

  /// [inlineQueryPlaceholder] Placeholder for inline queries (displayed on the
  /// application input field)
  final String inlineQueryPlaceholder;

  /// [needLocation] True, if the location of the user is expected to be sent
  /// with every inline query to this bot
  final bool needLocation;

  static const String constructor = 'userTypeBot';

  static UserTypeBot? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UserTypeBot(
      canJoinGroups: json['can_join_groups'],
      canReadAllGroupMessages: json['can_read_all_group_messages'],
      isInline: json['is_inline'],
      inlineQueryPlaceholder: json['inline_query_placeholder'],
      needLocation: json['need_location'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'can_join_groups': canJoinGroups,
        'can_read_all_group_messages': canReadAllGroupMessages,
        'is_inline': isInline,
        'inline_query_placeholder': inlineQueryPlaceholder,
        'need_location': needLocation,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
