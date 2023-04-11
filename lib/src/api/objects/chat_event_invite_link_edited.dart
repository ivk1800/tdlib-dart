import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A chat invite link was edited
@immutable
class ChatEventInviteLinkEdited extends ChatEventAction {
  const ChatEventInviteLinkEdited({
    required this.oldInviteLink,
    required this.newInviteLink,
  });

  /// [oldInviteLink] Previous information about the invite link
  final ChatInviteLink oldInviteLink;

  /// [newInviteLink] New information about the invite link
  final ChatInviteLink newInviteLink;

  static const String constructor = 'chatEventInviteLinkEdited';

  static ChatEventInviteLinkEdited? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventInviteLinkEdited(
      oldInviteLink: ChatInviteLink.fromJson(
          json['old_invite_link'] as Map<String, dynamic>?)!,
      newInviteLink: ChatInviteLink.fromJson(
          json['new_invite_link'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'old_invite_link': oldInviteLink.toJson(),
        'new_invite_link': newInviteLink.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
