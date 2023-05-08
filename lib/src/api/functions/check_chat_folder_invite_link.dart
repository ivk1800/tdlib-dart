import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Checks the validity of an invite link for a chat folder and returns
/// information about the corresponding chat folder
/// Returns [ChatFolderInviteLinkInfo]
@immutable
class CheckChatFolderInviteLink extends TdFunction {
  const CheckChatFolderInviteLink({
    required this.inviteLink,
  });

  /// [inviteLink] Invite link to be checked
  final String inviteLink;

  static const String constructor = 'checkChatFolderInviteLink';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'invite_link': inviteLink,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
