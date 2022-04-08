import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user is under certain restrictions in the chat. Not supported in basic
/// groups and channels
@immutable
class ChatMemberStatusRestricted extends ChatMemberStatus {
  const ChatMemberStatusRestricted({
    required this.isMember,
    required this.restrictedUntilDate,
    required this.permissions,
  });

  /// [isMember] True, if the user is a member of the chat
  final bool isMember;

  /// [restrictedUntilDate] Point in time (Unix timestamp) when restrictions
  /// will be lifted from the user; 0 if never. If the user is restricted for
  /// more than 366 days or for less than 30 seconds from the current time, the
  /// user is considered to be restricted forever
  final int restrictedUntilDate;

  /// [permissions] User permissions in the chat
  final ChatPermissions permissions;

  static const String constructor = 'chatMemberStatusRestricted';

  static ChatMemberStatusRestricted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatMemberStatusRestricted(
      isMember: json['is_member'],
      restrictedUntilDate: json['restricted_until_date'],
      permissions: ChatPermissions.fromJson(json['permissions'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_member': isMember,
        'restricted_until_date': restrictedUntilDate,
        'permissions': permissions.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
