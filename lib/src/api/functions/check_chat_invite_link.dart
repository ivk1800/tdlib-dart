import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Checks the validity of an invite link for a chat and returns information
/// about the corresponding chat
/// Returns [ChatInviteLinkInfo]
class CheckChatInviteLink extends TdFunction {
  CheckChatInviteLink({required this.inviteLink});

  /// [inviteLink] Invite link to be checked
  final String inviteLink;

  static const String CONSTRUCTOR = 'checkChatInviteLink';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'invite_link': this.inviteLink, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
