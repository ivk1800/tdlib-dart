import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Contains a list of chat members joined a chat via an invite link
class ChatInviteLinkMembers extends TdObject {
  ChatInviteLinkMembers({required this.totalCount, required this.members});

  /// [totalCount] Approximate total count of chat members found
  final int totalCount;

  /// [members] List of chat members, joined a chat via an invite link
  final List<ChatInviteLinkMember> members;

  static const String CONSTRUCTOR = 'chatInviteLinkMembers';

  static ChatInviteLinkMembers? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatInviteLinkMembers(
        totalCount: json['total_count'],
        members: List<ChatInviteLinkMember>.from((json['members'] ?? [])
            .map((item) => ChatInviteLinkMember.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'total_count': this.totalCount,
        'members': members.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
