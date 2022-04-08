import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Replaces current primary invite link for a chat with a new primary invite
/// link. Available for basic groups, supergroups, and channels. Requires
/// administrator privileges and can_invite_users right
/// Returns [ChatInviteLink]
@immutable
class ReplacePrimaryChatInviteLink extends TdFunction {
  const ReplacePrimaryChatInviteLink({
    required this.chatId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  static const String constructor = 'replacePrimaryChatInviteLink';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
