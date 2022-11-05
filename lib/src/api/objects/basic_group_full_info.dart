import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains full information about a basic group
@immutable
class BasicGroupFullInfo extends TdObject {
  const BasicGroupFullInfo({
    this.photo,
    required this.description,
    required this.creatorUserId,
    required this.members,
    this.inviteLink,
    required this.botCommands,
  });

  /// [photo] Chat photo; may be null if empty or unknown. If non-null, then it
  /// is the same photo as in chat.photo
  final ChatPhoto? photo;

  /// param_[description] Group description. Updated only after the basic group
  /// is opened
  final String description;

  /// [creatorUserId] User identifier of the creator of the group; 0 if unknown
  final int creatorUserId;

  /// [members] Group members
  final List<ChatMember> members;

  /// [inviteLink] Primary invite link for this group; may be null. For chat
  /// administrators with can_invite_users right only. Updated only after the
  /// basic group is opened
  final ChatInviteLink? inviteLink;

  /// [botCommands] List of commands of bots in the group
  final List<BotCommands> botCommands;

  static const String constructor = 'basicGroupFullInfo';

  static BasicGroupFullInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BasicGroupFullInfo(
      photo: ChatPhoto.fromJson(json['photo']),
      description: json['description'],
      creatorUserId: json['creator_user_id'],
      members: List<ChatMember>.from((json['members'] ?? [])
          .map((item) => ChatMember.fromJson(item))
          .toList()),
      inviteLink: ChatInviteLink.fromJson(json['invite_link']),
      botCommands: List<BotCommands>.from((json['bot_commands'] ?? [])
          .map((item) => BotCommands.fromJson(item))
          .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'photo': photo?.toJson(),
        'description': description,
        'creator_user_id': creatorUserId,
        'members': members.map((item) => item.toJson()).toList(),
        'invite_link': inviteLink?.toJson(),
        'bot_commands': botCommands.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
