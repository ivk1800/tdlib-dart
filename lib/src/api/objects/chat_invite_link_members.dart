import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of chat members joined a chat via an invite link
@immutable
class ChatInviteLinkMembers extends TdObject {
  const ChatInviteLinkMembers({
    required this.totalCount,
    required this.members,
  });

  /// [totalCount] Approximate total number of chat members found
  final int totalCount;

  /// [members] List of chat members, joined a chat via an invite link
  final List<ChatInviteLinkMember> members;

  static const String constructor = 'chatInviteLinkMembers';

  static ChatInviteLinkMembers? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatInviteLinkMembers(
      totalCount: json['total_count'] as int,
      members: List<ChatInviteLinkMember>.from(
          ((json['members'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => ChatInviteLinkMember.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_count': totalCount,
        'members': members.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
