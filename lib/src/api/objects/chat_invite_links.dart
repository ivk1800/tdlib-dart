import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Contains a list of chat invite links
class ChatInviteLinks extends TdObject {
  ChatInviteLinks({required this.totalCount, required this.inviteLinks});

  /// [totalCount] Approximate total count of chat invite links found
  final int totalCount;

  /// [inviteLinks] List of invite links
  final List<ChatInviteLink> inviteLinks;

  static const String CONSTRUCTOR = 'chatInviteLinks';

  static ChatInviteLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatInviteLinks(
        totalCount: json['total_count'],
        inviteLinks: List<ChatInviteLink>.from((json['invite_links'] ?? [])
            .map((item) => ChatInviteLink.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'total_count': this.totalCount,
        'invite_links': inviteLinks.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
