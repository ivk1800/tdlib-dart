import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Contains a list of chat invite link counts
class ChatInviteLinkCounts extends TdObject {
  ChatInviteLinkCounts({required this.inviteLinkCounts});

  /// [inviteLinkCounts] List of invite link counts
  final List<ChatInviteLinkCount> inviteLinkCounts;

  static const String CONSTRUCTOR = 'chatInviteLinkCounts';

  static ChatInviteLinkCounts? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatInviteLinkCounts(
        inviteLinkCounts: List<ChatInviteLinkCount>.from(
            (json['invite_link_counts'] ?? [])
                .map((item) => ChatInviteLinkCount.fromJson(item))
                .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'invite_link_counts':
            inviteLinkCounts.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
