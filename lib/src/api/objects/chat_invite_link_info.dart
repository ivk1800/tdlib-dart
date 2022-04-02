import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Contains information about a chat invite link
class ChatInviteLinkInfo extends TdObject {
  ChatInviteLinkInfo(
      {required this.chatId,
      required this.accessibleFor,
      required this.type,
      required this.title,
      this.photo,
      required this.description,
      required this.memberCount,
      required this.memberUserIds,
      required this.createsJoinRequest,
      required this.isPublic});

  /// [chatId] Chat identifier of the invite link; 0 if the user has no access
  /// to the chat before joining
  final int chatId;

  /// [accessibleFor] If non-zero, the amount of time for which read access to
  /// the chat will remain available, in seconds
  final int accessibleFor;

  /// [type] Type of the chat
  final ChatType type;

  /// [title] Title of the chat
  final String title;

  /// [photo] Chat photo; may be null
  final ChatPhotoInfo? photo;

  /// param_[description] Chat description
  final String description;

  /// [memberCount] Number of members in the chat
  final int memberCount;

  /// [memberUserIds] User identifiers of some chat members that may be known to
  /// the current user
  final List<int> memberUserIds;

  /// [createsJoinRequest] True, if the link only creates join request
  final bool createsJoinRequest;

  /// [isPublic] True, if the chat is a public supergroup or channel, i.e. it
  /// has a username or it is a location-based supergroup
  final bool isPublic;

  static const String CONSTRUCTOR = 'chatInviteLinkInfo';

  static ChatInviteLinkInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatInviteLinkInfo(
        chatId: json['chat_id'],
        accessibleFor: json['accessible_for'],
        type: ChatType.fromJson(json['type'])!,
        title: json['title'],
        photo: ChatPhotoInfo.fromJson(json['photo']),
        description: json['description'],
        memberCount: json['member_count'],
        memberUserIds: List<int>.from(
            (json['member_user_ids'] ?? []).map((item) => item).toList()),
        createsJoinRequest: json['creates_join_request'],
        isPublic: json['is_public']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'accessible_for': this.accessibleFor,
        'type': this.type.toJson(),
        'title': this.title,
        'photo': this.photo?.toJson(),
        'description': this.description,
        'member_count': this.memberCount,
        'member_user_ids': memberUserIds.map((item) => item).toList(),
        'creates_join_request': this.createsJoinRequest,
        'is_public': this.isPublic,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
