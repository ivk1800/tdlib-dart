import '../tdapi.dart';

/// The can_invite_users permission of a supergroup chat was toggled
class ChatEventInvitesToggled extends ChatEventAction {
  ChatEventInvitesToggled({required this.canInviteUsers});

  /// [canInviteUsers] New value of can_invite_users permission
  final bool canInviteUsers;

  static const String CONSTRUCTOR = 'chatEventInvitesToggled';

  static ChatEventInvitesToggled? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventInvitesToggled(canInviteUsers: json['can_invite_users']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'can_invite_users': this.canInviteUsers, '@type': CONSTRUCTOR};
}
