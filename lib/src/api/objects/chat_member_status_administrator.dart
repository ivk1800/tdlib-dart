import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user is a member of the chat and has some additional privileges. In
/// basic groups, administrators can edit and delete messages sent by others,
/// add new members, ban unprivileged members, and manage video chats. In
/// supergroups and channels, there are more detailed options for
/// administrator privileges
@immutable
class ChatMemberStatusAdministrator extends ChatMemberStatus {
  const ChatMemberStatusAdministrator({
    required this.customTitle,
    required this.canBeEdited,
    required this.rights,
  });

  /// [customTitle] A custom title of the administrator; 0-16 characters without
  /// emojis; applicable to supergroups only
  final String customTitle;

  /// [canBeEdited] True, if the current user can edit the administrator
  /// privileges for the called user
  final bool canBeEdited;

  /// [rights] Rights of the administrator
  final ChatAdministratorRights rights;

  static const String constructor = 'chatMemberStatusAdministrator';

  static ChatMemberStatusAdministrator? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatMemberStatusAdministrator(
      customTitle: json['custom_title'],
      canBeEdited: json['can_be_edited'],
      rights: ChatAdministratorRights.fromJson(json['rights'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'custom_title': customTitle,
        'can_be_edited': canBeEdited,
        'rights': rights.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
