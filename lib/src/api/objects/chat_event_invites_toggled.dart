import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The can_invite_users permission of a supergroup chat was toggled
@immutable
class ChatEventInvitesToggled extends ChatEventAction {
  const ChatEventInvitesToggled({
    required this.canInviteUsers,
  });

  /// [canInviteUsers] New value of can_invite_users permission
  final bool canInviteUsers;

  static const String constructor = 'chatEventInvitesToggled';

  static ChatEventInvitesToggled? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventInvitesToggled(
      canInviteUsers: json['can_invite_users'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'can_invite_users': canInviteUsers,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
