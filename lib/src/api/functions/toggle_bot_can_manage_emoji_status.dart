import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Toggles whether the bot can manage emoji status of the current user
/// Returns [Ok]
@immutable
class ToggleBotCanManageEmojiStatus extends TdFunction {
  const ToggleBotCanManageEmojiStatus({
    required this.botUserId,
    required this.canManageEmojiStatus,
  });

  /// [botUserId] User identifier of the bot
  final int botUserId;

  /// [canManageEmojiStatus] Pass true if the bot is allowed to change emoji
  /// status of the user; pass false otherwise
  final bool canManageEmojiStatus;

  static const String constructor = 'toggleBotCanManageEmojiStatus';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'bot_user_id': botUserId,
    'can_manage_emoji_status': canManageEmojiStatus,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
