import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Adds or removes a bot to attachment menu. Bot can be added to attachment
/// menu, only if userTypeBot.can_be_added_to_attachment_menu == true
/// Returns [Ok]
@immutable
class ToggleBotIsAddedToAttachmentMenu extends TdFunction {
  const ToggleBotIsAddedToAttachmentMenu({
    required this.botUserId,
    required this.isAdded,
    required this.allowWriteAccess,
  });

  /// [botUserId] Bot's user identifier
  final int botUserId;

  /// [isAdded] Pass true to add the bot to attachment menu; pass false to
  /// remove the bot from attachment menu
  final bool isAdded;

  /// [allowWriteAccess] Pass true if the current user allowed the bot to send
  /// them messages. Ignored if is_added is false
  final bool allowWriteAccess;

  static const String constructor = 'toggleBotIsAddedToAttachmentMenu';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        'is_added': isAdded,
        'allow_write_access': allowWriteAccess,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
