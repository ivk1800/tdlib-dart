import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Replaces current primary invite link for a chat with a new primary invite
/// link. Available for basic groups, supergroups, and channels. Requires
/// administrator privileges and can_invite_users right
/// Returns [ChatInviteLink]
class ReplacePrimaryChatInviteLink extends TdFunction {
  ReplacePrimaryChatInviteLink({required this.chatId});

  /// [chatId] Chat identifier
  final int chatId;

  static const String CONSTRUCTOR = 'replacePrimaryChatInviteLink';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
