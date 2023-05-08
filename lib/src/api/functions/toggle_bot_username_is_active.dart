import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes active state for a username of a bot. The editable username can't
/// be disabled. May return an error with a message
/// "USERNAMES_ACTIVE_TOO_MUCH" if the maximum number of active usernames has
/// been reached. Can be called only if userTypeBot.can_be_edited == true
/// Returns [Ok]
@immutable
class ToggleBotUsernameIsActive extends TdFunction {
  const ToggleBotUsernameIsActive({
    required this.botUserId,
    required this.username,
    required this.isActive,
  });

  /// [botUserId] Identifier of the target bot
  final int botUserId;

  /// [username] The username to change
  final String username;

  /// [isActive] Pass true to activate the username; pass false to disable it
  final bool isActive;

  static const String constructor = 'toggleBotUsernameIsActive';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        'username': username,
        'is_active': isActive,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
