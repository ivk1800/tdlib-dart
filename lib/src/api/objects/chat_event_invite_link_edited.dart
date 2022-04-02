import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A chat invite link was edited
class ChatEventInviteLinkEdited extends ChatEventAction {
  ChatEventInviteLinkEdited(
      {required this.oldInviteLink, required this.newInviteLink});

  /// [oldInviteLink] Previous information about the invite link
  final ChatInviteLink oldInviteLink;

  /// [newInviteLink] New information about the invite link
  final ChatInviteLink newInviteLink;

  static const String CONSTRUCTOR = 'chatEventInviteLinkEdited';

  static ChatEventInviteLinkEdited? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventInviteLinkEdited(
        oldInviteLink: ChatInviteLink.fromJson(json['old_invite_link'])!,
        newInviteLink: ChatInviteLink.fromJson(json['new_invite_link'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'old_invite_link': this.oldInviteLink.toJson(),
        'new_invite_link': this.newInviteLink.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
